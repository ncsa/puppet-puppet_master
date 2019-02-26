# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_master::pdk
class puppet_master::pdk (
    String $version,      # if empty string, then don't manage pdk
                          # otherwise, exact package version string
                          # can also be valid puppet "ensure" string
    String  $pkgname,     # from module level data
){
    if $version =~ String[1] {
        # Ensure package
        ensure_packages( { $pkgname => { ensure => $version } } )
    }
}
