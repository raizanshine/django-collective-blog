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
        form.save()
        user = authenticate(username=form.cleaned_data['username'],
                            password=form.cleaned_data['password1'])
        login(self.request, user)

        return super(SignUpView, self).form_valid(form)


class SignInView(FormView):
    template_name = 'core/sign_in.html'
    form_class = SignInForm
    success_url = '/'

    def form_valid(self, form):
        login(self.request, form.get_user())
        
        return super(SignInView, self).form_valid(form)

