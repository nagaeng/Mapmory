from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static
# from .views import get_hashtag_json

app_name = 'mypage'

urlpatterns = [
    path('edit_profile/', views.edit_profile, name='edit_profile'),
    path('mypage/', views.mypage_view, name='mypage'),
    path('my_posts/', views.my_posts, name='my_posts'),
    path('view_post/<str:username>/', views.view_post, name='view_post'),
    path('edit_post/<int:post_id>/', views.edit_post, name='edit_post'),
] + static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)