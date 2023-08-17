from django.urls import path
from . import views

app_name = 'recommend'

urlpatterns = [
    path('search/',views.search, name="search"),
]