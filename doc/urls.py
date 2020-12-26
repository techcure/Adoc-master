from django.conf import settings
from django.conf.urls.static import static

from django.urls import path
from .views import *

urlpatterns = [
    path('', IndexView.as_view(), name='index'),
    path('jtod/', JsonView.as_view(), name='jtod'),
    path('dtoj/', DocView.as_view(), name='dtoj'),
    path('jsonform/', JsonView.as_view(), name='jsonform'),
    # path('delete_view/<int:id>/', DeleteView.as_view(), name='delete_view'),
    path('edit_view/<int:id>/', update_view, name='edit_view'),
    path('delete_view/', delete_view, name='delete_view'),
    path('create_book/', create_book, name='create_book')
]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
