#pragma once

#include "Role.h"

class ManagerRole : public Role {
public:
    // Constructor
    ManagerRole( const std::string& name, const std::string& desc);

    // Overridden methods
    bool hasPermission(const std::string& permission) const override;
    std::string getRoleName() const override;
    std::string getDescription() const override;
};
