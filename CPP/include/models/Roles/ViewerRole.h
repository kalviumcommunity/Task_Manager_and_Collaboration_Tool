#pragma once

#include "Role.h"

class ViewerRole : public Role {
public:
    // Constructor
    ViewerRole(const std::string& name, const std::string& desc);

    // Overridden methods
    bool hasPermission(const std::string& permission) const override;
    std::string getRoleName() const override;
    std::string getDescription() const override;
};
