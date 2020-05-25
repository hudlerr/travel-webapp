package app.domain;
/**
 * Class for new trip
 * 
 * @author huda
 *
 */

/**
	 * Sends emails to given user
	 * 
	 * @param type               messaging type of the email
	 * @param content			 content of the email
	 * @param sender 			 from the one sending the email
	 */
public class GroupChat {
    private MessageType type;
    private String content;
    private String sender;

    public enum MessageType {
        CHAT,
        JOIN,
        LEAVE
    }
    /**
	 * default constructor with return types
	 */
    public MessageType getType() {
        return type;
    }

    public void setType(MessageType type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }
}
