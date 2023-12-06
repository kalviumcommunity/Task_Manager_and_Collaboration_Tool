#include "../../../include/models/Roles/ManagerRole.h"

ManagerRole::ManagerRole( const std::string& name, const std::string& desc)
    : Role(name, desc) {
    // Initialize permissions specific to ManagerRole
    permissions = {
        "CREATE_CARD", "EDIT_CARD", "VIEW_CARD", "DELETE_CARD",
        "CREATE_LIST", "EDIT_LIST", "DELETE_LIST", "VIEW_LIST",
        "CREATE_BOARD", "EDIT_BOARD", "DELETE_BOARD", "VIEW_BOARD",
        "MANAGE_MEMBERS"
    };}

bool ManagerRole::hasPermission(const std::string& permission) const {
    return permissions.find(permission) != permissions.end();
}

std::string ManagerRole::getRoleName() const {
    return role_name;
}

std::string ManagerRole::getDescription() const {
    return description;
}
