#include "../../include/models/Board.h"
#include <algorithm>
using namespace std;

int Board::next_board_id = 1;  // Initialize the static member variable

Board::Board(const std::string &name, const std::string &description, bool collaborative, int owner)
    : board_id(next_board_id++), board_name(name), board_description(description), is_collaborative(collaborative), owner_id(owner) {}



int Board::getBoardID() const {
    return board_id;
}

std::string Board::getBoardName() const {
    return board_name;
}

std::string Board::getBoardDescription() const {
    return board_description;
}

bool Board::getIsCollaborative() const {
    return is_collaborative;
}

int Board::getOwnerID() const {
    return owner_id;
}

const std::vector<int>& Board::getCollaborators() const {
    return collaborators;
}

void Board::setBoardName(const std::string &name) {
    board_name = name;
}

void Board::setBoardDescription(const std::string &description) {
    board_description = description;
}

void Board::setIsCollaborative(bool collaborative) {
    is_collaborative = collaborative;
}

void Board::setOwnerID(int owner) {
    owner_id = owner;
}

void Board::addCollaborator(int user_id) {
    collaborators.push_back(user_id);
}

void Board::removeCollaborator(int user_id) {
    collaborators.erase(std::remove(collaborators.begin(), collaborators.end(), user_id), collaborators.end());
}
