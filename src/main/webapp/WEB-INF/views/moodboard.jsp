<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fabric.js/1.6.3/fabric.min.js" ></script>
    <style>
  body {
	background: #F7EDE1; 
	font-family: 'Lato', sans-serif;
	color: #FDFCFB;
	text-align: center;
}
    .header {
	font-size: 35px;
	text-transform: uppercase;
	letter-spacing: 5px;
}

.email {
	width: 55%;
	height: 44px;
	background: #FDFCFB;
	font-family: inherit;
	color: #737373;
	letter-spacing: 1px;
	text-indent: 5%;
	border-radius: 5px 0 0 5px;
	display: inline-block;
}

.button {
	
	width: 25%;
	height: 36px;
	background: black;
	font-family: inherit;
	font-weight: bold;
	color: inherit;
	letter-spacing: 1px;
	border-radius: 0 5px 5px 0;
	cursor: pointer;
	transition: background .3s ease-in-out;
}
.button:hover {
	background: #d45d7d;
}
p{
	font-size: 15px;
	text-transform: uppercase;
	letter-spacing: 5px;	
}
    </style>
</head>

<body>
    <div id="canvas-container">
    <div>
    
    <label class="header">Moodboard</label><br>
    <p>Get inspired! Add images, drawings and text to create a holiday moodboard.</p>
    <br>
        <input id = "url-input" type="text" name="url" size="40" placeholder="Enter url" class="email">
        <button style="width: 10%; height: 40px;" type="button" id = "add-image" onclick="downloadImage()" class="button">add</button>
    </div>
    <br>
          <form:form action="/return3" method="POST">
        <td colspan="2">
            <input style="float:left; width: 10%; height: 40px;" type="submit" value="Back" name="back3" class="button"/>
        </td>
		</form:form>
    <br/>
        <div>
            <table>
            <tr>
                <td>            
                    <canvas crossOrigin="Anonymous" id="my-canvas" width="1000"  height="800">drag image here</canvas>
                </td>
                
                <td>
                    <button type="button" class="button" id = "save-canvas">Save</button>
                    <button type="button" class="button" id = "crop-canvas" onclick="cropImage()">crop</button>
                    <button type="button" class="button" id = "crop-done" onclick="cropDone()">done</button>
                    <button type="button" class="button" id = "draw" onclick="draw()">draw</button>
                    <button type="button" class="button" id = "delete" onclick="deleteObjects()">delete</button>
                </td>
            </tr>
            </table>


        </div>
        
    </div>
<script type="text/javascript" >
    var fabricCanvas =  new fabric.Canvas("my-canvas"),
    canvasContainer = document.getElementById('canvas-container');
    document.getElementById("my-canvas").style.border = "solid #000000";
    fabricCanvas.isDrawingMode = false;
    canvasContainer.addEventListener("dragover", function (evt) {
        evt.dataTransfer.dropEffect = 'copy';
        evt.preventDefault()
        }, false);
    canvasContainer.addEventListener("drop", function (evt) {
        var files = evt.dataTransfer.files;
        if (files.length > 0) {
            var file = files[0];
            if (typeof FileReader !== "undefined" && file.type.indexOf("image") != -1) {
                var reader = new FileReader();
                reader.onload = function (f) {
                    var data = f.target.result;
                    fabric.Image.fromURL(data, function (img) {
                        var oImg = img.set({left: 0, top: 0, angle: 00});
                        fabricCanvas.add(oImg).renderAll();
                    });
                };
                reader.readAsDataURL(file);
            }
        }
        else if (evt.dataTransfer.types.length > 0) {
            var url = evt.dataTransfer.getData("text/uri-list");
            fabric.Image.fromURL(url, function (img) {
                var oImg = img.set({left: 0, top: 0, angle: 00});
                fabricCanvas.add(oImg).renderAll();
            });
        }
        evt.preventDefault()
    }, false);
    var saveImage = document.getElementById('save-canvas');
    saveImage.addEventListener("click", function (evt) {
        console.log("here");
        console.log(fabricCanvas.toDataURL);
        window.open(fabricCanvas.toDataURL("image/png"));
        evt.preventDefault();
/*
        var dataURL = fabricCanvas.toDataURL('image/png');
        saveImage.href = dataURL;*/
    }, false);
    
    function downloadImage() {
         var url = document.getElementById("url-input").value;
        fabric.Image.fromURL(url, function (img) {
            var oImg = img.set({left: 0, top: 0, angle: 00});
            fabricCanvas.add(oImg).renderAll();
        });
    }
    function draw(){
        if (fabricCanvas.isDrawingMode) {
            fabricCanvas.isDrawingMode = false;
        }
        else{
            fabricCanvas.isDrawingMode = true;   
        }
    }
    function cropImage(){
        var r = document.getElementById('my-canvas').getBoundingClientRect();
        var object = fabricCanvas.getActiveObject();
        if (object) {
                    var pos = [0, 0];
                    pos[0] = r.left;
                    pos[1] = r.top;
                    console.log(r.left);
                    console.log(r.top);
                    var mousex = 0;
                    var mousey = 0;
                    var crop = false;
                    var disabled = false;
                    var el = new fabric.Rect({
                        fill: 'transparent',
                        originX: 'left',
                        id: "123",
                        originY: 'top',
                        stroke: '#000',
                        strokeDashArray: [2, 2],
                        opacity: 1,
                        width: 1,
                        height: 1
                    });
                    fabricCanvas.add(el).renderAll();
                   
                    object.id = '456';
                    object.set('selectable', false);
                    fabricCanvas.on("mouse:down", function (event) {
                        if (disabled) return;
                        el.left = event.e.pageX - pos[0];
                        el.top = event.e.pageY - pos[1];
                        //el.selectable = false;
                        el.visible = true;
                        mousex = event.e.pageX;
                        mousey = event.e.pageY;
                        crop = true;
                        fabricCanvas.bringToFront(el);
                    });
                    fabricCanvas.on("mouse:move", function (event) {
                    if (crop && !disabled) {
                        if (event.e.pageX - mousex > 0) {
                            el.width = event.e.pageX - mousex;
                        }
                        if (event.e.pageY - mousey > 0) {
                            el.height = event.e.pageY - mousey;
                        }
                    }
                    });
                fabricCanvas.on("mouse:up", function (event) {
                    crop = false;
                });
            }
            else {
                alert("Please Select an image");
            }
        }
    function cropDone(){
        var el, object;
        fabricCanvas.forEachObject(function(obj){
            if (obj.id == "123")
                el = obj;
            else if (obj.id == "456")
                object = obj;
        });
            var left = el.left - object.left;
            var top = el.top - object.top;
            var cropped = new Image();
            cropped.src = fabricCanvas.toDataURL({
                left: left,
                top: top,
                width: el.width,
                height: el.height
            });
                cropped.scaleX = cropped.scaleY = 0.25;
            cropped.onload = function() {
//                fabricCanvas.clear();
                image = new fabric.Image(cropped);
                image.left = el.left;
                image.top = el.top;
                image.setCoords();
                fabricCanvas.add(image);
                fabricCanvas.renderAll();
            };
            disabled = true;
            el.visible = false;
            fabricCanvas.off("mouse:move");
            fabricCanvas.off("mouse:down");
            fabricCanvas.off("mouse:up");
            fabricCanvas.remove(el);
            fabricCanvas.remove(object);
            fabricCanvas.renderAll();
    }
    function deleteObjects(){
        var activeObject = fabricCanvas.getActiveObject(),
        activeGroup = fabricCanvas.getActiveGroup();
        if (activeObject) {
            if (confirm('Are you sure?')) {
                fabricCanvas.remove(activeObject);
            }
        }
        else if (activeGroup) {
            if (confirm('Are you sure?')) {
                var objectsInGroup = activeGroup.getObjects();
                fabricCanvas.discardActiveGroup();
                objectsInGroup.forEach(function(object) {
                    fabricCanvas.remove(object);
                });
            }
        }
    }
</script>

</body>
<html>