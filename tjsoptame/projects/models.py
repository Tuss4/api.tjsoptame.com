from django.db import models

class GitProject(models.Model):

    name = models.CharField(max_length=30, db_index=True)
    url = models.URLField()
    description = models.TextField()
    stars = models.IntegerField()
    watchers = models.IntegerField()
    created = models.DateTimeField()
    updated = models.DateTimeField()

    class Meta:
        ordering = ['-updated']
