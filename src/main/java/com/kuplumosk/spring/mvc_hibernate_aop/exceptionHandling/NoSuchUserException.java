package com.kuplumosk.spring.mvc_hibernate_aop.exceptionHandling;

public class NoSuchUserException extends RuntimeException{

    public NoSuchUserException(String message) {
        super(message);
    }
}
