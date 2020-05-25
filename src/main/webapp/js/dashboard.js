// Create a "close" button and append it to each list item
var myNodelist = document.getElementsByTagName("LI");
var i;
for (i = 0; i < myNodelist.length; i++) {
  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(txt);
  myNodelist[i].appendChild(span);
}

// Click on a close button to hide the current list item
var close = document.getElementsByClassName("close");
var i;
for (i = 0; i < close.length; i++) {
  close[i].onclick = function() {
    var div = this.parentElement;
    div.style.display = "none";
  }
}

/* Add a "checked" symbol when clicking on a list item*/
var list = document.querySelector('ul');
list.addEventListener('click', function(ev) {
  if (ev.target.tagName === 'LI') {
    ev.target.classList.toggle('checked');
  }
}, false);

 // Create a new list item when clicking on the "Add" button
function newElement() {
  var li = document.createElement("li");
  var inputValue = document.getElementById("myInput").value;
//Put the object into storage
  localStorage.setItem('inputValue', JSON.stringify(inputValue));
  var t = document.createTextNode(inputValue);
  li.appendChild(t);
  if (inputValue === '') {
    alert("You must write something!");
  } else {
    document.getElementById("myUL").appendChild(li);
     var retrievedObject = localStorage.getItem('inputValue');
    console.log('retrievedObject: ', JSON.parse(retrievedObject)); 
  }
  document.getElementById("myInput").value = "";
	//Retrieve the object from storage
  var retrievedObject = localStorage.getItem('inputValue');
  console.log('retrievedObject: ', JSON.parse(retrievedObject));

  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(txt);
  li.appendChild(span);

  for (i = 0; i < close.length; i++) {
    close[i].onclick = function() {
      var div = this.parentElement;
      div.style.display = "none";
    }
  }
} 


function newElement1() {
	  var li4 = document.createElement("li");
	  var inputValue4 = document.getElementById("myInput4").value;
	  var t4 = document.createTextNode(inputValue4);
	  li4.appendChild(t4);
	  if (inputValue4 === '') {
	    alert("You must write something!");
	  } else {
	    document.getElementById("myUL4").appendChild(li4);
	  }
	  document.getElementById("myInput4").value = "";

	  var span = document.createElement("SPAN");
	  var txt = document.createTextNode("\u00D7");
	  span.className = "close";
	  span.appendChild(txt);
	  li.appendChild(span);

	  for (i = 0; i < close.length; i++) {
	    close[i].onclick = function() {
	      var div = this.parentElement;
	      div.style.display = "none";
	    }
	  }
}

function newElement7() {
	  var li2 = document.createElement("li");
	  var inputValue2 = document.getElementById("myInput2").value;
	  var t2 = document.createTextNode(inputValue2);
	  li2.appendChild(t2);
	  if (inputValue2 === '') {
	    alert("You must write something!");
	  } else {
	    document.getElementById("myUL2").appendChild(li2);
	  }
	  document.getElementById("myInput2").value = "";

	  var span = document.createElement("SPAN");
	  var txt = document.createTextNode("\u00D7");
	  span.className = "close";
	  span.appendChild(txt);
	  li.appendChild(span);

	  for (i = 0; i < close.length; i++) {
	    close[i].onclick = function() {
	      var div = this.parentElement;
	      div.style.display = "none";
	    }
	  }
}

function newElement8() {
	  var li3 = document.createElement("li");
	  var inputValue3 = document.getElementById("myInput3").value;
	  var t3 = document.createTextNode(inputValue3);
	  li3.appendChild(t3);
	  if (inputValue3 === '') {
	    alert("You must write something!");
	  } else {
	    document.getElementById("myUL3").appendChild(li3);
	  }
	  document.getElementById("myInput3").value = "";

	  var span = document.createElement("SPAN");
	  var txt = document.createTextNode("\u00D7");
	  span.className = "close";
	  span.appendChild(txt);
	  li.appendChild(span);

	  for (i = 0; i < close.length; i++) {
	    close[i].onclick = function() {
	      var div = this.parentElement;
	      div.style.display = "none";
	    }
	  }
}

/* Open when someone clicks on the span element */
function openNav() {
  document.getElementById("myNav").style.width = "100%";
}

/* Close when someone clicks on the "x" symbol inside the overlay */
function closeNav() {
  document.getElementById("myNav").style.width = "0%";
}


function openPage(pageName, elmnt, color) {
  // Hide all elements with class="tabcontent" by default */
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Remove the background color of all tablinks/buttons
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }

  // Show the specific tab content
  document.getElementById(pageName).style.display = "block";

  // Add the specific color to the button used to open the tab content
  elmnt.style.backgroundColor = color;
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();