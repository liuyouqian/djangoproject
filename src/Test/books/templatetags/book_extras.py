# -*- coding: UTF-8 -*-
from django.template import Library
from books.models import Book, Publisher

register = Library()

@register.inclusion_tag('book_list.html')
def building_result_list(publisher_id,book_id):
    publisher = Publisher.objects.get(id = publisher_id)
    books = Book.objects.filter(publisher = publisher)
    return {
        'books' : books,
        'publisher' : publisher
    }
@register.filter(name='book')
def book(books, arg):
    book = books[int(arg)]
    return book