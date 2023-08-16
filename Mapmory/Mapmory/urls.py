from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from accounts import views
from django.conf.urls.static import static


urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include('rest_framework.urls')),
    path('post/', include('post.urls')),
    path('accounts/', include('accounts.urls')),
    path('mypage/', include('mypage.urls')),
] 
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

