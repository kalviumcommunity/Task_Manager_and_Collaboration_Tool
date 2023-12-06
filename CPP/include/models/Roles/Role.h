#pragma once

#include <string>
#include <unordered_set>

class Role {
protected:
    static int next_role_id; // Static variable for tracking the next role ID
    int role_id;
    std::string role_name;
    std::string description;
    std::unordered_set<std::string> permissions;

public:
    // Constructor
    Role(const std::string& name, const std::string& desc);

    // Pure virtual methods
    virtual bool hasPermission(const std::string& permission) const = 0;
    virtual std::string getRoleName() const = 0;
    virtual std::string getDescription() const = 0;

    // Virtual destructor
    virtual ~Role() {}

      // Getter for role ID
    int getRoleID() const { return role_id; }
  
};


