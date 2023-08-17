from django.db import models
from django.contrib.auth.models import User
from django.conf import settings

#유저프로필
class UserProfile(models.Model):
    user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    profile_picture = models.ImageField(upload_to='profile_pictures/', blank=True, null=True)
    nickname = models.CharField(max_length=50, default="예)홍길동")
    age = models.IntegerField(null=True, blank=True, default=20)
    travel_style = models.CharField(max_length=100, default="예)자유로운")