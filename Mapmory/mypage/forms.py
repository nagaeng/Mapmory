from django import forms
from .models import UserProfile

class UserProfileForm(forms.ModelForm):
    class Meta:
        model = UserProfile
        fields = ['profile_picture', 'nickname', 'age', 'travel_style']
        # keywords 해시태그로 구현해야함 field에도 추가해야됨
