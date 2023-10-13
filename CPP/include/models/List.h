#pragma once

#include <string>
#include <vector>
#include "Card.h"  // Assuming you'll have a Card class later
// class Card; // Forward declaration of the Card class

class List
{
private:
    static int next_list_id; // This will keep track of the next available ID
    int list_id;
    std::string title;
    int board_id;            // Foreign key to associate with a board
    std::vector<Card> cards; // A list can have multiple cards

public:
    // Constructor
    List(const std::string &title, int boardId);

    // Getters
    int getListID() const;
    std::string getTitle() const;
    int getBoardID() const;
    const std::vector<Card> &getCards() const;

    // Setters
    void setTitle(const std::string &newTitle);
    void addCard(const Card &card);
    void removeCard(int cardId);
};
