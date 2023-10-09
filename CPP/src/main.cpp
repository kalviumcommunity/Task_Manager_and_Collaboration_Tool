#include "../include/models/User.h"
#include "../include/models/Board.h"
#include "../include/models/List.h"
#include "../include/models/Card.h"
#include <iostream>
using namespace std;

void testUser()
{
    // Code to test the User class
    cout << "Testing User class...\n";

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
        std::cout << "5. Exit\n";
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
            return 0;
            break;
        default:
            std::cout << "Invalid choice. Please try again.\n";
        }
    }

    return 0;
}
