from django.contrib import admin
from django.urls import path
from todos import views

urlpatterns = [
    path('admin/', admin.site.urls),
]
