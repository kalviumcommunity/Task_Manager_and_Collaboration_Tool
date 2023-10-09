#include "../../include/models/Card.h"
#include <iostream>
using namespace std;

int Card::next_card_id = 1; // Initialize the static member

// Constructor
Card::Card(const std::string &title, int listId, const std::string &description, const std::string &dueDate)
    : card_id(next_card_id++), title(title), description(description), due_date(dueDate), list_id(listId) {}

// Destructor implementation
// Card::~Card()
// {
//     std::cout << "Destructor called" << std::endl;
// }

// Getters
int Card::getCardID() const
{
    return card_id;
}

std::string Card::getTitle() const
{
    return title;
}

std::string Card::getDescription() const
{
    return description;
}

std::string Card::getDueDate() const
{
    return due_date;
}

int Card::getListID() const
{
    return list_id;
}

// Setters
void Card::setTitle(const std::string &newTitle)
{
    this->title = newTitle;
}

void Card::setDescription(const std::string &newDescription)
{
    this->description = newDescription;
}

void Card::setDueDate(const std::string &newDueDate)
{
    this->due_date = newDueDate;
}

void Card::setListID(int newListID)
{
    this->list_id = newListID;
}
