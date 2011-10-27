from django.db import models
class Publisher(models.Model):
    name = models.CharField(max_length=30)
    address = models.CharField(max_length=50)
    city = models.CharField(max_length=60)
    state_province = models.CharField(max_length=30)
    country = models.CharField(max_length=50)
    website = models.URLField()
    def __str__(self):
        return self.name

class Author(models.Model):
    salutation = models.CharField(max_length=10)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=40)
    email = models.EmailField()
    def __str__(self):
        return '%s %s' % (self.first_name, self.last_name)
    def get_full_name(self):
        return u'%s %s' % (self.first_name, self.last_name)
    fullname = property(get_full_name)
    
class BookManager(models.Manager):
    def title_count(self,keyword):
        return self.filter(title__icontains = keyword).count()
    
class Book(models.Model):
    title = models.CharField(max_length=100)
    authors = models.ManyToManyField(Author)
    publisher = models.ForeignKey(Publisher)
    publication_date = models.DateField()
    objects = BookManager()
    def __str__(self):
        return self.title
    def save(self, force_insert=False, force_update=False, using=None):
        models.Model.save(self, force_insert=force_insert, force_update=force_update, using=using)
        
