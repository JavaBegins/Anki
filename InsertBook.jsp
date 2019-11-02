<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert Book</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">
</script>
  <link href='https://fonts.googleapis.com/css?family=Be Vietnam' rel='stylesheet'>
 <style>
 h2{color:white;}
 </style>
<script type="text/javascript">
var statuspattern=/^[a-zA-Z]+$/ 
//  var emailpattern =/^[a-zA-Z][a-zA-Z0-9_]*(\.[a-zA-Z0-9_]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.([a-zA-Z]{2,4})$/
//  var emailpattern2 =/^[a-zA-Z][a-zA-Z0-9_]*(\.[a-zA-Z0-9_]+)*$/
 var sidpattern=/^\d{6}$/;
 var cidpattern=/^\d{6}$/;
// var isbnpattern="^(?:ISBN(?:-10)?:? )?(?=[0-9X]{10}$|(?=(?:[0-9]+[- ]){3})[- 0-9X]{13}$)[0-9]{1,5}[- ]?[0-9]+[- ]?[0-9]+[- ]?[0-9X]$";

function validateForm()
{
	   alert("Values Inserted Into Book");

 var x=document.forms["books"]["isbn"];
 if (x.value=="")
   {
  
  document.getElementById('bookid').innerHTML="Please enter the ISBN.";
    x.focus();
  return false;
   }
 
 else if(x.value.length<6)
   {
  x.value="";
  document.getElementById('bookid').innerHTML="Please enter correct 13 digit ISBN.";
  x.focus();
  return false;
   }
 else if ((!sidpattern.test(x.value)))
   {
  document.getElementById('isbn_book').innerHTML="Please enter 13 digit ISBN";
    x.value="";
  x.focus();
  return false;
   }
   document.getElementById('isbn_book').innerHTML="";
 
 
 var x=document.forms["books"]["book_title"];
 if (x.value=="")
   {
  
  document.getElementById('booktitle').innerHTML="Please enter the Book Title.";
    x.focus();
  return false;
   }
   else if(x.value.length>50)
   {
  x.value="";
  document.getElementById('booktitle').innerHTML="Please enter a short Book Title";
  x.focus();
  return false;
   }
 else if ((!statuspattern.test(x.value)))
   {
  document.getElementById('booktitle').innerHTML="Please enter only characters.";
    x.value="";
  x.focus();
  return false;
   }
   document.getElementById('booktitle').innerHTML="";



 var x=document.forms["books"]["author_id"];
 if (x.value=="")
   {
  
  document.getElementById('authorid').innerHTML="Please enter publisher id.";
    x.focus();
  return false;
   }
 
 
 else if ((!sidpattern.test(x.value)))
   {
  document.getElementById('authorid').innerHTML="Please enter 6 digit publisher-id.";
    x.value="";
  x.focus();
  return false;
   }
   document.getElementById('authorid').innerHTML="";


   
 var x=document.forms["books"]["pub_id"];
 if (x.value=="")
   {
  
  document.getElementById('publisher_id').innerHTML="Please enter publisher id.";
    x.focus();
  return false;
   }
 
 
 else if ((!sidpattern.test(x.value)))
   {
  document.getElementById('publisher_id').innerHTML="Please enter 6 digit publisher-id.";
    x.value="";
  x.focus();
  return false;
   }
   document.getElementById('publisher_id').innerHTML="";

 }
 
 </script>
  <link rel="stylesheet" type="text/css" href="mystyle.css">

</head>

<body background="book.jpg">

  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">

    <ul class="navbar-nav">
<li class="nav-item">
        <a class="nav-link" href="FrontPage.jsp">Home</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
          Insert
        </a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="InsertBook.jsp">Insert into Book</a>
          <a class="dropdown-item" href="InsertPublisher.jsp">Insert into Publisher</a>
          <a class="dropdown-item" href="InsertAuthor.jsp">Insert into Author</a>
 <a class="dropdown-item" href="InsertOrder.jsp">Insert into Orders</a>
 <a class="dropdown-item" href="InsertCustomer.jsp">Insert into Customers</a>
        </div>
      </li>
<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
          Delete
        </a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="DeleteBook.jsp">Delete From Book</a>
          <a class="dropdown-item" href="DeletePublisher.jsp">Delete From Publisher</a>
          <a class="dropdown-item" href="DeleteAuthor.jsp">Delete From Author</a>
 <a class="dropdown-item" href="DeleteOrder.jsp">Delete From Orders</a>
 <a class="dropdown-item" href="DeleteCustomer.jsp">Delete From Customers</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="DisplayBook.jsp">Display</a>
      </li>
    </ul>
  </nav>
  <div class="container">
    <h2>Insert into Book</h2>
    <form action="AddBook" class="was-validated insert-book-form" method="post">

      <div class="form-group">
        <label for="uname">Book ISBN:</label>
        <input type="text" class="form-control" id="bookid" placeholder="Enter Book ISBN" name="bookid" required maxlength="8" oninvalid="this.setCustomValidity('Oops ! Enter book isbn')" oninput="this.setCustomValidity('')">
        <div class="valid-feedback">Valid</div>
      </div>

      <div class="form-group">
        <label for="uname">Book Tittle:</label>
        <input type="text" class="form-control" id="title" placeholder="Enter Book Tittle" name="booktittle" required maxlength="8" oninvalid="this.setCustomValidity('Oops ! Enter book tittle')" oninput="this.setCustomValidity('')">
        <div class="valid-feedback">Valid</div>
      </div>

      <div class="form-group">
        <label for="uname">Author ID:</label>
        <input type="text" class="form-control" id="author" placeholder="Enter Author Id" name="author" required maxlength="8" oninvalid="this.setCustomValidity('Oops ! Enter author')" oninput="this.setCustomValidity('')">
        <div class="valid-feedback">Valid</div>
      </div>

<div class="form-group">
        <label for="uname">Publisher ID:</label>
        <input type="text" class="form-control" id="pubid" placeholder="Enter Publisher ID" name="pub" required maxlength="8" oninvalid="this.setCustomValidity('Oops ! Enter author')" oninput="this.setCustomValidity('')">
        <div class="valid-feedback">Valid</div>
      </div>

      <button type="submit" class="btn btn-primary" onclick="validateForm()">Submit</button>
      <button type="reset" class="btn btn-danger">Reset</button>

    </form>
  </div>
</form>
</body>
</html>
