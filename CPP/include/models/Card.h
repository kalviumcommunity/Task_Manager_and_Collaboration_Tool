#pragma once

#include <string>

class Card
{
private:
    static int next_card_id; // This will keep track of the next available ID
    int card_id;
    std::string title;
    std::string description;
    std::string due_date;
    int list_id; // Foreign key linking to List


public:
    // Constructor
    Card(const std::string &title, int listId, const std::string &description = "", const std::string &dueDate = "");
    
    // Destructor (no need to specify it here; you can define it outside the class)
    // ~Card();

    // Getters
    int getCardID() const;
    std::string getTitle() const;
    std::string getDescription() const;
    std::string getDueDate() const;
    int getListID() const;

    // Setters
    void setTitle(const std::string &newTitle);
    void setDescription(const std::string &newDescription);
    void setDueDate(const std::string &newDueDate);
    void setListID(int newListID);
};
