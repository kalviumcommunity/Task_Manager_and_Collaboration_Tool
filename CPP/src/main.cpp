#include "../include/models/User.h"
#include "../include/models/Board.h"
#include "../include/models/List.h"
#include "../include/models/Card.h"
#include "../include/models/Comment.h"
#include "../include/models/Roles/Role.h"
#include "../include/models/Roles/ManagerRole.h"
#include "../include/models/Roles/MemberRole.h"
#include "../include/models/Roles/ViewerRole.h"
#include <iostream>
using namespace std;


const int MAX_USERS = 10;
User allUsers[MAX_USERS];
int userCount = 0; // Global counter for the number of users


void addUserToArray(const User& user) {
    if (userCount < MAX_USERS) {
        allUsers[userCount] = user;
        userCount++;
    } else {
        cout << "Maximum user limit reached. Cannot add more users." << endl;
    }
}

void testUser()
{
    cout << "Testing User class...\n";

    // Create a single User object
    User user1(1, "Shreyas Aswal", "shreyasaswal@example.com", "hashed_password123");

    // Print user details using getters
    cout << "User ID: " << user1.getUserID() << endl;
    cout << "User Name: " << user1.getUserName() << endl;
    cout << "Email: " << user1.getEmail() << endl;
    cout << "Password Hash: " << user1.getPasswordHash() << endl;

    // Modify user details using setters
    user1.setUserName("Shrey Aswal");
    user1.setEmail("shreyaswal@example.com");

    // Print modified user details
    cout << "\nModified User Details:" << endl;
    cout << "User Name: " << user1.getUserName() << endl;
    cout << "Email: " << user1.getEmail() << endl;

    // Demonstrating an array of User objects
    cout << "\nTesting Array of Users:\n";

    addUserToArray(user1);

    // Create and add more User objects
    User user2(2, "Alice Johnson", "alice@example.com", "password1234");
    addUserToArray(user2);

    User user3(3, "Bob Smith", "bob@example.com", "password5678");
    addUserToArray(user3);

    User user4(4, "Charlie Brown", "charlie@example.com", "password91011");
    addUserToArray(user4);

    // Display users from the array
    for (int i = 0; i < userCount; ++i) {
        cout << "User ID: " << allUsers[i].getUserID() << "\n"
             << "User Name: " << allUsers[i].getUserName() << "\n"
             << "User Email: " << allUsers[i].getEmail() << "\n\n";
    }
    cout<<"userCount :"<< userCount<<endl;
}


void testBoard()
{
    // Create a new board
    Board myBoard("Project Alpha", "This is a test project", true, 1);

    cout << "Board ID: " << myBoard.getBoardID() << std::endl;
    std::cout << "Board Name: " << myBoard.getBoardName() << std::endl;
    std::cout << "Board Description: " << myBoard.getBoardDescription() << std::endl;
    std::cout << "Is Collaborative: " << (myBoard.getIsCollaborative() ? "Yes" : "No") << std::endl;
    std::cout << "Owner ID: " << myBoard.getOwnerID() << std::endl;

    // Add collaborators
    myBoard.addCollaborator(2);
    myBoard.addCollaborator(3);
    myBoard.addCollaborator(4);

    std::cout << "\nCollaborators: ";
    // std::vector<int> collaborators = myBoard.getCollaborators();
    for (int id : myBoard.getCollaborators())
    {
        std::cout << id << " ";
    }

    std::cout << std::endl;

    // Remove a collaborator
    myBoard.removeCollaborator(3);

    std::cout << "\nCollaborators after removal: ";
    for (int id : myBoard.getCollaborators())
    {
        std::cout << id << " ";
    }
    std::cout << std::endl;
}

void testLists()
{
    List myList("ToDo", 1);

    std::cout << "List ID: " << myList.getListID() << std::endl;
    std::cout << "List Title: " << myList.getTitle() << std::endl;

    Card card1("Card 1", 1, "This is the description for Card 1", "2023-09-25");
    Card card2("Card 2", 3, "Description for Card 2", "2023-10-01");

    myList.addCard(card1);
    myList.addCard(card2);

    std::cout << "Cards in the list:" << std::endl;
    for (const Card &card : myList.getCards())
    {
        std::cout << "Card ID: " << card.getCardID()
                  << ", Title: " << card.getTitle()
                  << ", Description: " << card.getDescription()
                  << ", Due Date: " << card.getDueDate() << std::endl;
    }

    myList.removeCard(card1.getCardID());
    std::cout << "After removing Card 1:" << std::endl;
    for (const Card &card : myList.getCards())
    {
        std::cout << "Card ID: " << card.getCardID()
                  << ", Title: " << card.getTitle() << std::endl;
    }
}

void testCard()
{
    std::cout << "Testing Card class...\n";

    // Create a Card object
    Card card1("Sample Card", 1, "This is a sample description", "2023-09-30");

    // Print card details using getters
    cout << "Card ID: " << card1.getCardID() << endl;
    cout << "Title: " << card1.getTitle() << endl;
    cout << "Description: " << card1.getDescription() << endl;
    cout << "Due Date: " << card1.getDueDate() << endl;
    cout << "List ID: " << card1.getListID() << endl;

    // Modify card details using setters
    card1.setTitle("Modified Card Title");
    card1.setDescription("Updated description for this card.");
    card1.setDueDate("2023-10-15");
    card1.setListID(2);

    // Print modified card details
    cout << "\nModified Card Details:" << endl;
    cout << "Title: " << card1.getTitle() << endl;
    cout << "Description: " << card1.getDescription() << endl;
    cout << "Due Date: " << card1.getDueDate() << endl;
    cout << "List ID: " << card1.getListID() << endl;
}

void testComment()
{
    // Create a new comment
    Comment myComment(1, 1, "This is a test comment.");

    cout << "Comment ID: " << myComment.getCommentID() << endl;
    cout << "Card ID associated with comment: " << myComment.getCardID() << endl;
    cout << "User ID associated with comment: " << myComment.getUserID() << endl;
    cout << "Content: " << myComment.getContent() << endl;

    // Display timestamp
    // char *dt = ctime(myComment.getTimestamp());
    time_t commentTimestamp = myComment.getTimestamp();
    char *dt = ctime(&commentTimestamp);

    cout << "Timestamp: " << dt << endl;

    // Update the comment content
    myComment.setContent("Updated content for the test comment.");
    cout << "\nAfter updating content:\n";
    cout << "Content: " << myComment.getContent() << endl;

    // Create another comment to test the copy constructor
    Comment copiedComment = myComment;
    cout << "\nCopied Comment Details:\n";
    cout << "Comment ID: " << copiedComment.getCommentID() << endl;
    cout << "Content: " << copiedComment.getContent() << endl;
    // dt = ctime(copiedComment.getTimestamp());
    time_t copiedTimestamp = copiedComment.getTimestamp();
    dt = ctime(&copiedTimestamp);

    cout << "Timestamp: " << dt << endl;
}

void testRoles() {
    cout << "Testing Roles...\n";

    // Create a ManagerRole object
    ManagerRole manager("Manager", "Manages team and tasks");

    // Print role details using getters
    cout << "Role ID: " << manager.getRoleID() << endl;
    cout << "Role Name: " << manager.getRoleName() << endl;
    cout << "Description: " << manager.getDescription() << endl;

    // Check permissions
    cout << "Has permission to CREATE_CARD: " 
         << (manager.hasPermission("CREATE_CARD") ? "Yes" : "No") << endl;
    cout << "Has permission to DELETE_CARD: " 
         << (manager.hasPermission("DELETE_BOARD") ? "Yes" : "No") << endl;


     // Member Role
    MemberRole member("Member", "Team member with standard permissions");
    cout << "\nMember Role Details:\n";
    cout << "Role ID: " << member.getRoleID() << endl;
    cout << "Role Name: " << member.getRoleName() << endl;
    cout << "Description: " << member.getDescription() << endl;
    cout << "Has permission to EDIT_CARD: " 
         << (member.hasPermission("EDIT_CARD") ? "Yes" : "No") << endl;
    cout << "Has permission to EDIT_LIST: " 
         << (member.hasPermission("EDIT_LIST") ? "Yes" : "No") << endl;

    
       // Viewer Role
    ViewerRole viewer("Viewer", "Can only view cards, lists, and boards");
    cout << "\nViewer Role Details:\n";
    cout << "Role ID: " << viewer.getRoleID() << endl;
    cout << "Role Name: " << viewer.getRoleName() << endl;
    cout << "Description: " << viewer.getDescription() << endl;
    cout << "Has permission to VIEW_BOARD: " 
         << (viewer.hasPermission("VIEW_BOARD") ? "Yes" : "No") << endl;
    cout << "Has permission to EDIT_CARD: " 
         << (viewer.hasPermission("EDIT_CARD") ? "Yes" : "No") << endl;

}


int main()
{
    int choice;

    while (true)
    {
        std::cout << "Choose an option:\n";
        std::cout << "1. Test User class\n";
        std::cout << "2. Test Board class\n";
        std::cout << "3. Test List class\n";
        std::cout << "4. Test Card class\n";
        std::cout << "5. Test Comment class\n";
        std::cout << "6. Test Roles class\n";
        std::cout << "7. Exit\n";
        std::cout << "Enter your choice: ";
        std::cin >> choice;

        switch (choice)
        {
        case 1:
            testUser();
            break;
        case 2:
            testBoard();
            break;
        case 3:
            testLists();
            break;
        case 4:
            testCard();
            break;
        case 5:
            testComment();
            break;
        case 6:
            testRoles();
            break;
        case 7:
            return 0;
            break;
        default:
            std::cout << "Invalid choice. Please try again.\n";
        }
    }
    return 0;
}
