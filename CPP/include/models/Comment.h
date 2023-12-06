#pragma once
#include <iostream>
#include <ctime>

class Comment
{
private:
    static int commentCount; // Static variable to count the number of comments and generate unique commentID
    int commentID;
    int cardID;
    int userID;
    char *content; // Using char pointer for dynamic memory allocation
    time_t timestamp;

public:
    // Constructor
    Comment(int cID, int uID, const char *cont);

    // Copy constructor for deep copying
    Comment(const Comment &source);

    // Copy assignment operator
    Comment &operator=(const Comment &source);

    // Destructor
    ~Comment();

       // Getters
    int getCommentID() const;
    int getCardID() const;
    int getUserID() const;
    const char *getContent() const;
    time_t getTimestamp() const;
    static int getCommentCount(); // Static getter for commentCount

    // Setters
    void setContent(const char *newContent);
    void setCardID(int newCardID);


    // Utility functions
    void displayComment() const; // To display comment details
};
