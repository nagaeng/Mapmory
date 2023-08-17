from django.shortcuts import render
from post.models import Post,Tag
from django.contrib.auth.decorators import login_required

@login_required
def search(request):
    if request.method == 'POST':
        keyword = request.POST.get('keyword')  # keyword를 입력받음
        tag = Tag.objects.filter(tag_content=keyword) # 해당 키워드를 가진 tag 클래스 오픈
        if tag:
           post = Post.objects.filter(tagging__in=tag) # 해당 태그를 가진 post 
           return render(request, 'search_result.html', {'hashtag_name': keyword, 'posts': post})
        else:
            return render(request, 'no_search.html')
    return render(request, 'button.html')

