from django.conf.urls.defaults import patterns
from Test.books.views import getBooks, getAuthorJson

urlpatterns = patterns('maifangke.map.views',
    ('^books/$', getBooks),
    (r'^author/$', getAuthorJson),
)