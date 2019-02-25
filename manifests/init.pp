# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_master
class puppet_master(
    Boolean $include_pdk,
){

    include install
    include firewall
    include clean_cache

    if $include_pdk {
        include pdk
    }
}
