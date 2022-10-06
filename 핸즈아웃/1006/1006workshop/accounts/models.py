from operator import mod
from unittest.util import _MAX_LENGTH
from django.db import models

# Create your models here.

class Account(models.Model):
    ## id값은 자동 pk 설정된다.
    password = models.CharField(max_length=128)
    username = models.TextField
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField
    is_active = models.BooleanField
    date_joined = models.DateTimeField
    last_login = models.DateTimeField