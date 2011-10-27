# Create your views here.
from books.models import Book
from django.utils import simplejson
from django.shortcuts import render_to_response
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
def getBooks(request):
    books = Book.objects.all()
    print Book.objects.title_count('book')
    return render_to_response('books.html', {'books': books})

    
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
    