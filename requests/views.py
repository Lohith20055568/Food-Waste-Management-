from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.conf import settings
from django.db.models import Q 
from django.core.files.storage import FileSystemStorage
from django.contrib import messages
from django.db import connection
from food_waste_management.utils import getDropDown, dictfetchall

# Create your views here.
def requests_details(request, requestsId):
    cursor = connection.cursor()
    cursor.execute(
        "SELECT * FROM requests WHERE requests_id = "+str(requestsId))
    requestslist = dictfetchall(cursor)

    context = {
        "requestsdetails": requestslist[0]
    }
    context['heading'] = "Requests Details"
    return render(request, 'requests-details.html', context)

def requestslisting(request):
    cursor = connection.cursor()
    if (request.session.get('user_level_id', None) == 1):
        SQL = "SELECT * FROM requests"
    else:
        customerID = str(request.session.get('user_id', None))
        SQL = "SELECT * FROM requests WHERE requests_user_id = " + customerID

    cursor.execute(SQL)
    requestslist = dictfetchall(cursor)

    context = {
        "requestslist": requestslist
    }
    context['heading'] = "Requests Details";
    return render(request, 'requests-view.html', context)

# Create your views here.
def all_requests(request):
    cursor = connection.cursor()
    cursor.execute(
        "SELECT * FROM requests")
    requestslist = dictfetchall(cursor)

    context = {
        "requestslist": requestslist
    }
    context['heading'] = "Requests Details";
    return render(request, 'requests-list.html', context)

def dictfetchall(cursor):
    "Return all rows from a cursor as a dict"
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]

def getData(id):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM requests WHERE requests_id = " + id)
    dataList = dictfetchall(cursor)
    return dataList[0];

def update(request, requestsId):
    requests_details = getData(requestsId)
    context = {
        "fn": "update",
        "requestsDetails": requests_details,
        "categorylist": getDropDown('category', 'category_id', 'category_name',requests_details['requests_category'], '1'),
        "typelist": getDropDown('type', 'type_id', 'type_name',requests_details['requests_type'], '1'),
        "heading": 'Requests Update',
    }
    if (request.method == "POST"):
        requests_image = requests_details['requests_image']
        if(request.FILES and request.FILES['requests_image']):
            requestsImage = request.FILES['requests_image']
            fs = FileSystemStorage()
            filename = fs.save(requestsImage.name, requestsImage)
            requests_image = "/uploads/"+str(requestsImage)

        cursor = connection.cursor()
        cursor.execute("""
            UPDATE requests
            SET requests_user_id=%s, requests_name=%s, requests_contact=%s, requests_email=%s, requests_quantity=%s, requests_address=%s, requests_description=%s 
            WHERE requests_id=%s
		""", (
            request.session['user_id'],
            request.POST['requests_name'],
            request.POST['requests_contact'],
            request.POST['requests_email'],
            request.POST['requests_type'],
            request.POST['requests_category'],
            request.POST['requests_expiry_date'],
            request.POST['requests_quantity'],
            request.POST['requests_address'],
            request.POST['requests_city'],
            request.POST['requests_state'],
            requests_image,
            request.POST['requests_description'],
            requestsId
        ))
        context["requestsDetails"] =  getData(requestsId)
        messages.add_message(request, messages.INFO, "Requests updated succesfully !!!")
        return redirect('requestslisting')
    else:
        return render(request, 'requests-add.html', context)


def add(request):
    context = {
        "fn": "add",
        "categorylist": getDropDown('category', 'category_id', 'category_name',0, '1'),
        "typelist": getDropDown('type', 'type_id', 'type_name',0, '1'),
        "heading": 'Add Requests'
    }
    if (request.method == "POST"):
        requests_image = None
        if(request.FILES and request.FILES['requests_image']):
            requestsImage = request.FILES['requests_image']
            fs = FileSystemStorage()
            filename = fs.save(requestsImage.name, requestsImage)
            requests_image = "/uploads/"+str(requestsImage)

        cursor = connection.cursor()
        cursor.execute("""
		   INSERT INTO requests
		   SET requests_user_id=%s, requests_name=%s, requests_contact=%s, requests_email=%s,
		   requests_quantity=%s, requests_address=%s, requests_description=%s
		""", (
            request.session['user_id'],
            request.POST['requests_name'],
            request.POST['requests_contact'],
            request.POST['requests_email'],
            request.POST['requests_quantity'],
            request.POST['requests_address'],
            request.POST['requests_description']))
        return redirect('requestslisting')
    return render(request, 'requests-add.html', context)

def delete(request, id):
    cursor = connection.cursor()
    sql = 'DELETE FROM requests WHERE requests_id=' + id
    cursor.execute(sql)
    return redirect('requestslisting')
