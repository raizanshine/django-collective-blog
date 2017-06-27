from django import forms
from django.apps import apps
from django.contrib.auth import login
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.conf import settings

User = apps.get_model(settings.AUTH_USER_MODEL)


class SignUpForm(UserCreationForm):
    first_name = forms.CharField(max_length=30)
    last_name = forms.CharField(max_length=50)
    email = forms.EmailField(max_length=30)

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email', 'password1',
                  'password2')


class SignInForm(AuthenticationForm):
    class Meta:
        model = User
        fields = ('username', 'password')
