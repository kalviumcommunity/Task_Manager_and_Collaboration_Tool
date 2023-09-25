#pragma once

#include <string>
#include <vector>

class Board {
private:
    static int next_board_id;  // This will keep track of the next available ID
    int board_id;
    std::string board_name;
    std::string board_description;
    bool is_collaborative;
    int owner_id;
    std::vector<int> collaborators;  // A list of user IDs representing collaborators

public:
    // Constructor
    Board(const std::string &name, const std::string &description, bool collaborative, int owner);

    // Getters
    int getBoardID() const;
    std::string getBoardName() const;
    std::string getBoardDescription() const;
    bool getIsCollaborative() const;
    int getOwnerID() const;
    const std::vector<int>& getCollaborators() const;

    // Setters
    void setBoardName(const std::string &name);
    void setBoardDescription(const std::string &description);
    void setIsCollaborative(bool collaborative);
    void setOwnerID(int owner);

    // Other methods
    void addCollaborator(int user_id);
    void removeCollaborator(int user_id);
};
