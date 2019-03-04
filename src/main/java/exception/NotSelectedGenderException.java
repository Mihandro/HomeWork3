package exception;

public class NotSelectedGenderException extends RuntimeException {
    public NotSelectedGenderException() {
        super("You must select gender");
    }
}
