from django.conf.urls.defaults import patterns
from books.views import getBooks, getAuthorJson

urlpatterns = patterns('Test.books.views',
    ('^books/$', getBooks),
    (r'^author/$', getAuthorJson),
)