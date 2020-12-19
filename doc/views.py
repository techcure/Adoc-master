from django.shortcuts import render, redirect
from .forms import *
from django.http import HttpResponse
from django.contrib import messages
from .models import *
from django.views import View
# from django.contrib.auth.decorators import login_required


class IndexView(View):

    def post(self, request, *args, **kwargs):
        if request.method == 'POST':
            form = RegForm(request.POST, request.FILES)
            if form.is_valid():
                post = form.save(commit=True)
                post.save()
                messages.success(request, 'Success!.')
            return render(request, 'doc/index.html', {'form': form})
        else:
            form = RegForm()
            # queryset = Reg.objects.filter(id=18)
            queryset = Reg.objects.all()

        return render(request, 'doc/index.html', {'queryset': queryset, 'form': form})

    def get(self, request, *args, **kwargs):
        if request.method == 'POST':
            form = RegForm(request.POST, request.FILES)
            if form.is_valid():
                post = form.save(commit=True)
                post.save()
                messages.success(request, 'Success!.')
            return render(request, 'doc/index.html', {'form': form})
        else:
            form = RegForm()
            # queryset = Reg.objects.filter(id=18)
            queryset = Reg.objects.all()
        return render(request, 'doc/index.html', {'queryset': queryset, 'form': form})


class JsonView(View):

    def post(self, request, *args, **kwargs):
        if request.method == 'POST':
            form1 = FilesForm(request.POST, request.FILES)
            # upload = request.FILES['upload']
            # import pdb;pdb.set_trace()

            if form1.is_valid():
                try:
                    form1.save()
                    return redirect("jtod")
                except:
                    pass
            else:
                return render(request, 'doc/jtod.html', {'form1': form1})
        else:
            form1 = FilesForm()
        return render(request, 'doc/jtod.html', {'form1': form1})

    def get(self, request, *args, **kwargs):
        if request.method == 'POST':
            form1 = FilesForm(request.POST, request.FILES)
            if form1.is_valid():
                    form1.save()
                    return redirect("jtod")
            else:
                return render(request, 'doc/jtod.html', {'form1': form1})
        else:
            form1 = FilesForm()
        return render(request, 'doc/jtod.html', {'form1': form1})


class DocView(View):

    def post(self, request, *args, **kwargs):
        if request.method == 'POST':
            form = FileForm(request.POST, request.FILES)
            if form.is_valid():
                try:
                    form.save()
                    return redirect("dtoj")
                except:
                    pass
            else:
                return render(request, 'doc/dtoj.html', {'form': form})
        else:
            form = FilesForm()
        return render(request, 'doc/dtoj.html', {'form': form})

    def get(self, request, *args, **kwargs):
        if request.method == 'POST':
            form = FilesForm(request.POST, request.FILES)
            if form.is_valid():
                try:
                    form.save()
                    return redirect("dtoj")
                except:
                    pass
            else:
                return render(request, 'doc/dtoj.html', {'form': form})
        else:
            form = FilesForm()
        return render(request, 'doc/dtoj.html', {'form': form})


class JsonView(View):

    def post(self, request, *args, **kwargs):
        if request.method == 'POST':
            form3 = JsonForm(request.POST, request.FILES)
            if form3.is_valid():
                try:
                    form3.save()
                    messages.success(request, 'Success!.')
                    return redirect("jsonform")
                except:
                    pass
            else:
                return render(request, 'doc/jsonform.html', {'form3': form3})
        else:
            form3 = JsonForm()
        return render(request, 'doc/jsonform.html', {'form3': form3})

    def get(self, request, *args, **kwargs):
        if request.method == 'POST':
            form3 = JsonForm(request.POST, request.FILES)
            if form3.is_valid():
                try:
                    form3.save()
                    return redirect("jsonform")
                except:
                    pass
            else:
                return render(request, 'doc/jsonform.html', {'form3': form3})
        else:
            form3 = JsonForm()
        return render(request, 'doc/jsonform.html', {'form3': form3})

class DeleteView(View):

    def post(self, request, id):
        try:
            go  = Reg.objects.get(id=id)
        except ObjectDoesNotExist:
            go = None
        if go == None:
            return HttpResponse('<p>  data doesnt exist </p>')
        go.delete()
        return render(request, "doc/index.html", {'data': Reg.objects.all()})

    def get(self, request, id):
        try:
            go  = Reg.objects.get(id=id)
        except ObjectDoesNotExist:
            go = None
        if go == None:
            return HttpResponse('<p>  data doesnt exist </p>')
        go.delete()
        return render(request, "doc/index.html", {'data': Reg.objects.all()})

def update_view(request,id):
    
    if request.method == 'POST':
        reg_form = RegForm(request.POST, request.FILES)
        if reg_form.is_valid():

            ok = Reg.objects.get(pk=id)
            reg_form = RegForm(request.POST, request.FILES, instance = ok)
            reg_form.save() #cleaned indenting, but would not save unless I added at least 6 characters.
            return redirect('index')
    else:
        ok = Reg.objects.get(pk = id)       
        reg_form = RegForm(instance=ok)

        return render(request, 'doc/index.html',{ 'form':reg_form })
