<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
      <title>Chat with Your Friends!</title>
      <link rel="stylesheet" type="text/css" href="css/g-chat.css"/>
      <style type="text/css">
h1{
	font-family: 'Lato', sans-serif;
	font-size: 35px;
	text-transform: uppercase;
	letter-spacing: 5px;
}
h2{
	font-family: 'Lato', sans-serif;
	font-size: 35px;
	text-transform: uppercase;
	letter-spacing: 5px;
}
      </style>
  </head>
  <body>
    <noscript>
      <h2>Sorry! Your browser doesn't support Javascript</h2>
    </noscript>

    <div id="username-page">
        <div class="username-page-container">
            <h1 class="header">Type your username</h1>
            <form id="usernameForm" name="usernameForm">
                <div class="form-group">
                    <input type="text" id="name" placeholder="Username" autocomplete="off" class="form-control" id="email"/>
                </div>
                <div class="form-group">
                    <button type="submit" class="accent username-submit" id="submit">Start Chatting</button>
                </div>
            </form>
            <form:form action="/return" method="POST">
        <td colspan="2">
            <input style="float: left; width: 20%; height: 30px;" type="submit" value="Back" name="back" class="button" id="submit"/>
        </td>
		</form:form>
        </div>
    </div>

    <div id="chat-page" class="hidden">
        <div class="chat-container">
            <div class="chat-header">
                <h2 class="header">TravelSmart GroupChat</h2>
            </div>
            <div class="connecting">
                Connecting...
            </div>
            <ul id="messageArea">

            </ul>
            <form id="messageForm" name="messageForm">
                <div class="form-group">
                    <div class="input-group clearfix">
                        <input type="text" id="message" placeholder="Type a message..." autocomplete="off" class="form-control"/>
                        <button type="submit" class="primary" id="submit">Send</button>
                    </div>
                </div>
            </form>
               <form:form action="/return2" method="POST">
        <td colspan="2">
            <input style="float: left;" type="submit" value="Back" name="back2" class="button" id="submit"/>
        </td>
		</form:form>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <script src="/js/main.js"></script>
    
  </body>
</html>