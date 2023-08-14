from django.shortcuts import render, redirect, get_object_or_404
from .forms import UserProfileForm
from .models import UserProfile
from django.core.exceptions import ObjectDoesNotExist
from django.contrib.auth.decorators import login_required
from post.views import post_form_view
from post.models import Post
from django.http import HttpResponseForbidden, Http404
from django.http import JsonResponse
import json

@login_required
def mypage_view(request):
    user_profile, created = UserProfile.objects.get_or_create(user=request.user)

    user_profile = UserProfile.objects.get(user=request.user)
    user_posts = Post.objects.filter(writer=request.user)
    return render(request, 'mypage.html', {'user_profile': user_profile, 'user_posts': user_posts})

@login_required
def edit_profile(request):
    user_profile, created = UserProfile.objects.get_or_create(user=request.user)

    #프로필 생성됨 -> 디폴트 값 생성
    if created:
        user_profile.nickname = "nickname"
        user_profile.age = 20
        user_profile.hashtags = ["#Silent", "#The_Hip", "#For_E"]
        user_profile.travel_style = "Adventure"
        user_profile.save()

    if request.method == 'POST':
        form = UserProfileForm(request.POST, request.FILES, instance=user_profile)
        selected_hashtags = request.POST.getlist('hashtags')
        if form.is_valid():
            form.save()
            return redirect('mypage:mypage')

    else:
        form = UserProfileForm(instance=user_profile)
    return render(request, 'edit_profile.html', {'form': form})

@login_required
def view_post(request, username):
    post = get_object_or_404(Post, username=username)
    return render(request, 'view_post.html', {'post': post})

@login_required
def my_posts(request):
    user_posts = Post.objects.filter(user=request.user)
    return render(request, 'my_posts.html', {'user_posts': user_posts})

@login_required
def edit_post(request, username): 
    try:
        post = Post.objects.get(username=username)  
    except Post.DoesNotExist:
        raise Http404("글이 존재하지 않습니다.")

    if post.author == request.user:
        # 가져온 글 정보를 post_form 뷰로 전달하며 수정 페이지로 이동
        return post_form_view(request, username=username)  
    else:
        return HttpResponseForbidden("해당 글 작성자가 아닙니다.")


def get_hashtag_json(request):
    hashtag = [
        {"name": "#Silent"},
        {"name": "#The_Hip"},
        {"name": "#For_E"},
        {"name": "#Noisy"},
        {"name": "#Fancy"},
        {"name": "#Comfortable"},
        {"name": "#For_I"},
        {"name": "#Lovely"},
        {"name": "#Korean_Food"},
        {"name": "#Chinese_Food"},
        {"name": "#Western_Food"},
        {"name": "#Japanese_Food"},
        {"name": "#Good_for_Taking_Pictures"},
        {"name": "#A_Group_Gathering"},
        {"name": "#Good_To_Eat_Alone"},
        {"name": "#Broad"},
        {"name": "#Trendy"},
        {"name": "#Good_View"},
        {"name": "#Mukbang"},
        {"name": "#Good_for_dating"},
        {"name": "#Funny"}
    ]
    return JsonResponse(hashtag, safe=False) 