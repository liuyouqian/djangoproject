from django.forms import ModelForm,DateField,ModelMultipleChoiceField,ModelChoiceField
from Test.books.models import Book,Author,Publisher
from django import forms
from django.forms.util import ErrorList

class BookForm(ModelForm):
    authors = ModelMultipleChoiceField(queryset=Author.objects.all(),widget = forms.CheckboxSelectMultiple())
    publisher = ModelChoiceField(queryset=Publisher.objects.all(),widget = forms.RadioSelect(),initial = '')
    class Meta:
        model = Book   
        