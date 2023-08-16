from django.shortcuts import render,redirect, get_object_or_404
from .models import Post, Hashtag, Photo
from .forms import PostForm, PhotoForm
from django.forms import inlineformset_factory
from accounts.models import CustomUser
from django.contrib.auth.decorators import login_required
from django.contrib.auth import get_user_model
from django.http import JsonResponse
import json
from django.core.serializers import deserialize
import os
from django.conf import settings

from django.db.models import Q
from django.utils import timezone




def post_form_view(request):
    fixture_file = os.path.join(settings.BASE_DIR, 'post','fixtures','hashtags.json')
    with open(fixture_file, 'r') as f:
        fixture_data = f.read()
    hashtag_objects = deserialize('json', fixture_data)
    hashtags = [obj.object for obj in hashtag_objects]
    #hashtag = Hashtag.objects.all()
    if request.method == 'POST':
        selected_hashtags = request.POST.getlist('hashtags')
        request.session['selected_hashtags'] = selected_hashtags
        return redirect('post:create_post', username=request.user.id)
    return render(request, 'hashtag.html', {'hashtags':hashtags})

#json 데이터 확인
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

@login_required
def create_post(request, username):
    user = get_object_or_404(CustomUser, pk=username)
    selected_hashtags = request.session.get('selected_hashtags',[])
    PhotoFormSet = inlineformset_factory(Post, Photo, form=PhotoForm, extra=1, can_delete=True)

    if request.method == 'POST':
        form = PostForm(request.POST)
        photo_formset = PhotoFormSet(request.POST, request.FILES, prefix='image')
        if form.is_valid():
            post = form.save(commit=False)
            post.writer = request.user
            post.datetime = timezone.now()
            post.save()
            for hashtag_name in selected_hashtags:
                hashtag, created = Hashtag.objects.get_or_create(name=hashtag_name)
                post.hashtag.add(hashtag)
            for photo_form in photo_formset:
                photo = photo_form.save(commit=False)
                photo.post = post
                photo.save()

            return redirect('post:hashtag_posts', hashtag_name=selected_hashtags[0])
    else:
        form = PostForm()
        photo_formset = PhotoFormSet(prefix='image')

    return render(request, 'post.html', {'username':username,'form':form,'photoformset':photo_formset, 'selected_hashtags':selected_hashtags})

def end_view(request):
    return render(request, 'end.html')

def hashtag_posts(request, hashtag_name):
    posts = Post.objects.filter(hashtag__name=hashtag_name)
    return render(request, 'hashtag_posts.html', {'hashtag_name': hashtag_name, 'posts': posts})


def post_detail(request, username):
    post = get_object_or_404(Post, pk=username)
    return render(request, 'post_detail.html', {'post': post})





