from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from accounts import views
from config import views
from recommend import views
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include('rest_framework.urls')),
    path('post/', include('post.urls')),
    path('accounts/', include('accounts.urls')),
    path('mypage/', include('mypage.urls')),
    path('config/', include('config.urls')),
    path('recommend/', include('recommend.urls')),
    path('i18n/', include('django.conf.urls.i18n')),
] 
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

