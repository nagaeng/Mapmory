from django.shortcuts import render,redirect
from .models import Post,Hashtag
from .forms import PostForm

def select_hashtag(request):
    hashtag = Hashtag.objects.all()
    if request.method == 'POST':
        select_hashtag = request.POST.getlist('hashtag')
        request.sessions['select_hashtag']=select_hashtag
        return redirect('post')
    return render(request, 'hashtag.html', {'hashtag':hashtag})

def create(request, User_id):
    print(User)
    user = get_object_or_404(User, pk=User_id)
    User_id = User_id

    select_hashtag = request.sessions.get('select_hashtag',[])

    if request.method == 'POST':
        form = PostForm(request.POST)
        if form.is_valid():
            post = form.save(commit=False)
            post.writer = request.user
            post.save()
            form.save_m2m() #ManyToManyField에 저장
            return redirect('end.html')
        else:
            form = PostForm()
        return render(request, 'post.html', {'form':form, 'select_hashtag':select_hashtag})



