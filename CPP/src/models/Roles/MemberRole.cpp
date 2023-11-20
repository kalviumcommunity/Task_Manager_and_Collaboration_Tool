#include "../../../include/models/Roles/MemberRole.h"

MemberRole::MemberRole(const std::string& name, const std::string& desc)
    : Role(name, desc) {
    // Initialize permissions specific to MemberRole
    permissions = {
        "CREATE_CARD", "EDIT_CARD", "VIEW_CARD","DELETE_CARD"
        "VIEW_LIST", "VIEW_BOARD"
    };
}

bool MemberRole::hasPermission(const std::string& permission) const {
    return permissions.find(permission) != permissions.end();
}

std::string MemberRole::getRoleName() const {
    return role_name;
}

std::string MemberRole::getDescription() const {
    return description;
}
