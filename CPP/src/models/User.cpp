#include "../../include/models/User.h"
using namespace std;

//Default Constructor
User::User()
    : user_id(0), user_name(""), email(""), password_hash("") {}

// Constructor
User::User(int id, const string &name, const string &email, const string &passwordHash)
    : user_id(id), user_name(name), email(email), password_hash(passwordHash) {}

// Getters
int User::getUserID() const
{
    return user_id;
}

string User::getUserName() const
{
    return user_name;
}

string User::getEmail() const
{
    return email;
}

string User::getPasswordHash() const
{
    return password_hash;
}


// Setter implementations
void User::setUserName(const string &name)
{
    user_name = name;
}

void User::setEmail(const string &newEmail)
{
    email = newEmail;
}

void User::setPasswordHash(const string &passwordHash)
{
    password_hash = passwordHash;
}