#include "../include/models/User.h"
#include "../include/models/Board.h"
#include <iostream>
using namespace std;

void testUser()
{
    // Code to test the User class
    cout << "Testing User class...\n";
    // ... your testing code here ...
    // Create a User object
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

    // return 0;
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

int main()
{
    int choice;

    while (true)
    {
        std::cout << "Choose an option:\n";
        std::cout << "1. Test User class\n";
        std::cout << "2. Test Board class\n";
        std::cout << "3. Exit\n";
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
            return 0;
            break;
        default:
            std::cout << "Invalid choice. Please try again.\n";
        }
    }

    return 0;
}
