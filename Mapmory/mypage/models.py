from django.db import models
from django.contrib.auth.models import User
from django.conf import settings

#해시태그 모델
class Hashtag(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name

#유저프로필
class UserProfile(models.Model):
    user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    profile_picture = models.ImageField(upload_to='profile_pictures/', blank=True, null=True)
    nickname = models.CharField(max_length=50, default="디폴트_닉네임")
    age = models.IntegerField(null=True, blank=True, default=20)
    travel_style = models.CharField(max_length=100, default="디폴트_여행_스타일")
    keywords = models.ManyToManyField(Hashtag)