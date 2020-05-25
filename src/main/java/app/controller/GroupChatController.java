package app.controller;


import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.domain.GroupChat;
/**
 * Class for a groupchat, interlinked with Websocket config to send messages to another user; includes senders and shows all messages
 * 
 * @author huda
 *
 */
@Controller
public class GroupChatController {

    @MessageMapping("/chat.sendMessage")
    @SendTo("/topic/public")
    public GroupChat sendMessage(@Payload GroupChat chatMessage) {
        return chatMessage;
    }

    @MessageMapping("/chat.addUser")
    @SendTo("/topic/public")
    public GroupChat addUser(@Payload GroupChat chatMessage, 
                               SimpMessageHeaderAccessor headerAccessor) {
        // Add username in web socket session
        headerAccessor.getSessionAttributes().put("username", chatMessage.getSender());
        return chatMessage;
    }
    @RequestMapping(value = "/return", params = "back", method = RequestMethod.POST)
	public String back() {
		return "hello";
	}
    @RequestMapping(value = "/return2", params = "back2", method = RequestMethod.POST)
   	public String backsecond() {
   		return "hello";
   	}
}
