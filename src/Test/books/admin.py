#-*- coding:utf-8 -*-
from django.contrib import admin
from Test.books.models import Publisher, Author, Book
from Test.books.forms import BookForm
class BookAdmin(admin.ModelAdmin):
    form = BookForm
   # radio_fields = {"publisher": admin.VERTICAL}
    def save_model(self, request, obj, form, change):
        admin.ModelAdmin.save_model(self, request, obj, form, change)
    def change_view(self, request, object_id, extra_context=None):
        return admin.ModelAdmin.change_view(self, request, object_id, extra_context=extra_context)
admin.site.register(Publisher)
admin.site.register(Author)
admin.site.register(Book,BookAdmin)