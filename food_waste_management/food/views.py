from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.conf import settings
from django.db.models import Q 
from django.core.files.storage import FileSystemStorage
from django.contrib import messages
from django.db import connection
from food_waste_management.utils import getDropDown, dictfetchall

# Create your views here.
def food_details(request, foodId):
    cursor = connection.cursor()
    cursor.execute(
        "SELECT * FROM food, category, type WHERE type_id = food_type AND category_id = food_category AND food_id = "+str(foodId))
    foodlist = dictfetchall(cursor)

    context = {
        "fooddetails": foodlist[0]
    }
    context['heading'] = "Food Details"
    return render(request, 'food-details.html', context)

def foodlisting(request):
    cursor = connection.cursor()
    if (request.session.get('user_level_id', None) == 1):
        SQL = "SELECT * FROM food, category, type WHERE type_id = food_type AND category_id = food_category"
    else:
        customerID = str(request.session.get('user_id', None))
        SQL = "SELECT * FROM food, category, type WHERE type_id = food_type AND category_id = food_category AND food_user_id = " + customerID

    cursor.execute(SQL)
    foodlist = dictfetchall(cursor)

    context = {
        "foodlist": foodlist
    }
    context['heading'] = "Food Details";
    return render(request, 'food-view.html', context)

# Create your views here.
def all_foods(request):
    cursor = connection.cursor()
    cursor.execute(
        "SELECT * FROM food, category, type WHERE type_id = food_type AND category_id = food_category")
    foodlist = dictfetchall(cursor)

    context = {
        "foodlist": foodlist
    }
    context['heading'] = "Food Details";
    return render(request, 'food-list.html', context)

def dictfetchall(cursor):
    "Return all rows from a cursor as a dict"
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]

def getData(id):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM food WHERE food_id = " + id)
    dataList = dictfetchall(cursor)
    return dataList[0];

def update(request, foodId):
    food_details = getData(foodId)
    context = {
        "fn": "update",
        "foodDetails": food_details,
        "categorylist": getDropDown('category', 'category_id', 'category_name',food_details['food_category'], '1'),
        "typelist": getDropDown('type', 'type_id', 'type_name',food_details['food_type'], '1'),
        "heading": 'Food Update',
    }
    if (request.method == "POST"):
        food_image = food_details['food_image']
        if(request.FILES and request.FILES['food_image']):
            foodImage = request.FILES['food_image']
            fs = FileSystemStorage()
            filename = fs.save(foodImage.name, foodImage)
            food_image = "/uploads/"+str(foodImage)

        cursor = connection.cursor()
        cursor.execute("""
                   UPDATE food
                     SET food_user_id=%s, food_contact_name=%s, food_mobile=%s, food_prepared_date=%s,
		   food_type=%s, food_category=%s, food_expiry_date=%s, food_quantity=%s, food_pickup_address=%s,
		   food_city=%s, food_state=%s, food_image=%s, food_description=%s WHERE food_id=%s
		""", (
            request.session['user_id'],
            request.POST['food_contact_name'],
            request.POST['food_mobile'],
            request.POST['food_prepared_date'],
            request.POST['food_type'],
            request.POST['food_category'],
            request.POST['food_expiry_date'],
            request.POST['food_quantity'],
            request.POST['food_pickup_address'],
            request.POST['food_city'],
            request.POST['food_state'],
            food_image,
            request.POST['food_description'],
            foodId
        ))
        context["foodDetails"] =  getData(foodId)
        messages.add_message(request, messages.INFO, "Food updated succesfully !!!")
        return redirect('foodlisting')
    else:
        return render(request, 'food-add.html', context)


def add(request):
    context = {
        "fn": "add",
        "categorylist": getDropDown('category', 'category_id', 'category_name',0, '1'),
        "typelist": getDropDown('type', 'type_id', 'type_name',0, '1'),
        "heading": 'Add Food'
    }
    if (request.method == "POST"):
        food_image = None
        if(request.FILES and request.FILES['food_image']):
            foodImage = request.FILES['food_image']
            fs = FileSystemStorage()
            filename = fs.save(foodImage.name, foodImage)
            food_image = "/uploads/"+str(foodImage)

        cursor = connection.cursor()
        cursor.execute("""
		   INSERT INTO food
		   SET food_user_id=%s, food_contact_name=%s, food_mobile=%s, food_prepared_date=%s,
		   food_type=%s, food_category=%s, food_expiry_date=%s, food_quantity=%s, food_pickup_address=%s,
		   food_city=%s, food_state=%s, food_image=%s, food_description=%s
		""", (
            request.session['user_id'],
            request.POST['food_contact_name'],
            request.POST['food_mobile'],
            request.POST['food_prepared_date'],
            request.POST['food_type'],
            request.POST['food_category'],
            request.POST['food_expiry_date'],
            request.POST['food_quantity'],
            request.POST['food_pickup_address'],
            request.POST['food_city'],
            request.POST['food_state'],
            food_image,
            request.POST['food_description']))
        return redirect('foodlisting')
    return render(request, 'food-add.html', context)

def delete(request, id):
    cursor = connection.cursor()
    sql = 'DELETE FROM food WHERE food_id=' + id
    cursor.execute(sql)
    return redirect('foodlisting')
