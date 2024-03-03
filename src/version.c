#include <spear/version.h>

const char*
sp_get_version_string(void)
{
    // Gives `version` a static lifetime.
    static const char* version = "Spear v0.1.0";
    return version;
}

int
sp_get_version_major(void)
{
    return 0;
}

int
sp_get_version_minor(void)
{
    return 1;
}

int
sp_get_version_patch(void)
{
    return 0;
}
