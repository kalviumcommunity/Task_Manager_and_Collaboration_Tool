// User.h
#pragma once

#include <string>

class User
{
private:
    int user_id;
    std::string user_name;
    std::string email;
    std::string password_hash;

public:
    // Constructor
    User(int id, const std::string &name, const std::string &email, const std::string &hash);

    // Getters
    int getUserID() const;
    std::string getUserName() const;
    std::string getEmail() const;
    std::string getPasswordHash() const;

    // Setters
    void setUserName(const std::string &name);
    void setEmail(const std::string &email);
    void setPasswordHash(const std::string &hash);
};
