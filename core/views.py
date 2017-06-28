from django.views.generic import CreateView, TemplateView, FormView
from django.contrib.auth import login, authenticate

from .forms import SignUpForm, SignInForm


class IndexView(TemplateView):
    template_name = 'core/index.html'


class SignUpView(CreateView):
    template_name = 'core/sign_up.html'
    form_class = SignUpForm
    success_url = '/'

    def form_valid(self, form):
        # вызов super создает объект пользователя и возвращает HttpResponseRedirect на 
        # success_url, поэтому сохраним его в переменную, чтобы вернуть в конце выполнения
        # функции
        response = super(SignUpView, self).form_valid(form)
        user = authenticate(username=form.cleaned_data['username'],
                            password=form.cleaned_data['password1'])
        
        if user is not None:
            login(self.request, user)

        return response


class SignInView(FormView):
    template_name = 'core/sign_in.html'
    form_class = SignInForm
    success_url = '/'

    def form_valid(self, form):
        login(self.request, form.get_user())
        
        return super(SignInView, self).form_valid(form)

