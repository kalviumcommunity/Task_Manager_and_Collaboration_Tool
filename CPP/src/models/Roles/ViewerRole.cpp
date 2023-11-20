#include "../../../include/models/Roles/ViewerRole.h"

ViewerRole::ViewerRole(const std::string& name, const std::string& desc)
    : Role(name, desc) {
    // Initialize permissions specific to ViewerRole
    permissions = {
        "VIEW_CARD", "VIEW_LIST", "VIEW_BOARD"
    };
}

bool ViewerRole::hasPermission(const std::string& permission) const {
    return permissions.find(permission) != permissions.end();
}

std::string ViewerRole::getRoleName() const {
    return role_name;
}

std::string ViewerRole::getDescription() const {
    return description;
}
