#include "../../include/models/Comment.h"
#include <cstring>

// Initialize the static variable
int Comment::commentCount = 0;

// Constructor
Comment::Comment(int cID, int uID, const char *cont)
    : cardID(cID), userID(uID)
{
    commentID = ++commentCount;

    // Dynamic memory allocation for content
    content = new char[strlen(cont) + 1];
    strcpy(content, cont);

    timestamp = time(0);
}

// Copy constructor for deep copying
Comment::Comment(const Comment &source)
    : cardID(source.cardID), userID(source.userID), commentID(source.commentID), timestamp(source.timestamp)
{
    // Deep copy for content
    content = new char[strlen(source.content) + 1];
    strcpy(content, source.content);
}

// Destructor
Comment::~Comment()
{
    delete[] content; // Deallocate the memory for content
}

// Setter for content
void Comment::setContent(const char *newContent)
{
    // First, deallocate the previous memory
    delete[] content;

    // Allocate new memory and copy the new content
    content = new char[strlen(newContent) + 1];
    strcpy(content, newContent);
}

// copy assignment operator for comments class
Comment &Comment::operator=(const Comment &source)
{
    if (this == &source)
    { // Check for self-assignment
        return *this;
    }

    // First, delete the old content
    delete[] content;

    // Copy the simple attributes
    cardID = source.cardID;
    userID = source.userID;
    commentID = source.commentID;
    timestamp = source.timestamp;

    // Handle dynamic memory
    content = new char[strlen(source.content) + 1];
    strcpy(content, source.content);

    return *this;
}

//Getters
int Comment::getCommentID() const {
    return commentID;
}

int Comment::getCardID() const {
    return cardID;
}

int Comment::getUserID() const {
    return userID;
}

const char* Comment::getContent() const {
    return content;
}

time_t Comment::getTimestamp() const {
    return timestamp;
}

int Comment::getCommentCount() {
    return commentCount;
}

//Setters
void Comment::setCardID(int newCardID) {
    this->cardID = newCardID;
}

void Comment::displayComment() const
{
    std::cout << "Comment ID: " << commentID << std::endl;
    std::cout << "Card ID: " << cardID << std::endl;
    std::cout << "User ID: " << userID << std::endl;
    std::cout << "Content: " << content << std::endl;
    std::cout << "Timestamp: " << ctime(&timestamp); // Display timestamp as a human-readable string
}

