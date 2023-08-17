from django import forms
from .models import Post, Hashtag, Photo

class PostForm(forms.ModelForm):
    class Meta:
        model = Post
        fields = ['title','contents', 'location']

class PhotoForm(forms.ModelForm):
    class Meta:
        model = Photo
        fields = ['image']