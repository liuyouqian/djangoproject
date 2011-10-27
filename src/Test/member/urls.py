from django.conf.urls.defaults import patterns
from member.views import index

urlpatterns = patterns('Test.menber.views',
       (r'^$',index),
#      (r'^author/$', getAuthorJson),                 
)