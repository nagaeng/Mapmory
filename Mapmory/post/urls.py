from django.urls import path
from . import views

urlpatterns = [
    path('selct_hashtag/', views.select_hashtag, name='해시태그 선택'),
    path('post/', views.create, name='글쓰기'),
]