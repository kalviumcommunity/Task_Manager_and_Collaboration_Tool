#include "../../include/models/List.h"
// #include "../../include/models/Card.h"
#include <algorithm>

using namespace std;

int List::next_list_id = 1;

// Constructor
List::List(const string &title, int boardId)
    : list_id(next_list_id++), title(title), board_id(boardId) {}

// Getters
int List::getListID() const
{
    return list_id;
}

std::string List::getTitle() const
{
    return title;
}

int List::getBoardID() const
{
    return board_id;
}

const std::vector<Card> &List::getCards() const
{
    return cards;
}

// Setters
void List::setTitle(const std::string &newTitle)
{
    title = newTitle;
}

void List::addCard(const Card &card)
{
    cards.push_back(card);
}

void List::removeCard(int cardId)
{
    cards.erase(std::remove_if(cards.begin(), cards.end(), [cardId](const Card &card){ return card.getCardID() == cardId; }),cards.end());
}
