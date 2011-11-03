# Create your views here.
from books.models import Book, Publisher, Author
from django.utils import simplejson
from django.shortcuts import render_to_response
from django.http import HttpResponse, HttpResponseRedirect
from django.views.decorators.csrf import csrf_exempt
from django.core.paginator import Paginator, EmptyPage, InvalidPage,\
    PageNotAnInteger
from django import forms
from django.forms.extras.widgets import SelectDateWidget

class BookForm(forms.Form):
    title = forms.CharField()
    authors = forms.ModelMultipleChoiceField(queryset = Author.objects.all())
    publisher = forms.ModelChoiceField(queryset = Publisher.objects.all())
    publication_date = forms.DateField()
def getBooks(request):
    books = Book.objects.all()
    #print Book.objects.title_count('book')
    u'''
    page_range,
    '''
    after_range_num = 3  
    bevor_range_num = 3
    try:  
        page = int(request.GET.get("page",1))  
        print('page----->',page)  
        if page < 1:  
            page = 1  
    except ValueError:  
        page = 1  
      
    info = Book.objects.all()  
    paginator = Paginator(info,1)  
    try:  
        bookList = paginator.page(page)  
    except(EmptyPage,InvalidPage,PageNotAnInteger):  
        bookList = paginator.page(1)  
    print('bookList---->',bookList.object_list)  
    if page >= after_range_num:  
        page_range = paginator.page_range[page-after_range_num:page+bevor_range_num]  
    else:  
        page_range = paginator.page_range[0:int(page)+bevor_range_num] 
        
        
    if request.method == 'POST':
        form = BookForm(request.POST)
        if form.is_valid():
            obj = form.cleaned_data
            title = obj['title']
            authors = obj['authors']
            publisher = obj['publisher']
            publication_date = obj['publication_date']
            book = Book(title=title,publisher=publisher,publication_date=publication_date)
            book.save()
            for author in authors:
                print author
                book.authors.add(author)
            book.save()
            return HttpResponseRedirect('/')
    else:    
        form = BookForm()
        
    return render_to_response('books.html', locals())

    
@csrf_exempt 
def getAuthorJson(request):
    bookId = int(request.POST['bookId'])
    authors = Book.objects.get(id = bookId).authors.all()
    li = []
    for a in authors:
        author = {}
        author["id"] = a.id
        author["salutation"] = a.salutation
        author["name"] = a.first_name + ' ' + a.last_name
#        author["name"] = a.get_full_name()
#        author["name"] = a.fullname
        author["email"] = a.email
        li.append(author)
    json = simplejson.dumps(li)  
    return HttpResponse(json)
