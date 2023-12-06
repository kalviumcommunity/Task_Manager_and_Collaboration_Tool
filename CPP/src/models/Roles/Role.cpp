#include "../../../include/models/Roles/ManagerRole.h"

// Initialize the static variable outside the class
int Role::next_role_id = 1;

Role::Role(const std::string& name, const std::string& desc) 
    : role_name(name), description(desc) {
    role_id = next_role_id++; // Assign the next ID and increment
    // Initialize other members if necessary
}
