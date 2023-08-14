from django.shortcuts import render, redirect
from .models import CustomUser, CustomUserManager
from django.contrib import auth
from django.contrib.auth import login, authenticate
from django.views.decorators.csrf import csrf_exempt
@csrf_exempt

#회원가입
def signup(request):
    if request.method == 'POST':
        custom_id = request.POST['custom_id']
        password = request.POST['password']
        password2 = request.POST['password2']
        email = request.POST['email']
        username = request.POST['username']

        if password == password2:
            user = CustomUser.objects.create_user(
                custom_id=custom_id,
                password=password,
                email=email,
                username=username,
            )
            auth.login(request, user)
            return redirect('login') # 회원가입 성공 시 이동할 URL 연결할 곳
        return render(request, 'signup.html')
    return render(request, 'signup.html')

#로그인
def login(request):
    if request.method == 'POST':
        custom_id = request.POST['custom_id']
        password = request.POST['password']
        user = auth.authenticate(request, custom_id=custom_id, password=password)
        if user is not None:
            auth.login(request, user)
            return redirect('home') # 로그인 성공 시 이동할 URL 연결할 곳
        else:
            return render(request, 'login.html', {'error' : 'username or password is incorrect.'})
    else:
        return render(request, 'login.html')

#로그아웃
def logout(request):
    auth.logout(request)
    return redirect('login')

def home(request):
    return render(request, 'home.html')