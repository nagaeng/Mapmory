# mypage/urls.py
from django.urls import path
from . import views

app_name = 'mypage'

urlpatterns = [
    path('edit_profile/', views.edit_profile, name='edit_profile'),
    path('mypage/', views.mypage_view, name='mypage'),
    path('my_posts/', views.my_posts, name='my_posts'),
    path('view_post/<str:username>/', views.view_post, name='view_post'),
    path('edit_post/<int:username>/', views.edit_post, name='edit_post'),
]