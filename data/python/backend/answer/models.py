from django.db import models
from question.models import Question
# Create your models here.
class Answer(models.Model):
    question_id = models.ForeignKey(Question, on_delete=models.CASCADE)
    content = models.CharField(max_length=100)
    created_at = models.DateTimeField(auto_now_add=True)
    modified_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return self.title