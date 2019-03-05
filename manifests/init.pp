# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_master
class puppet_master {

    include ::puppet_master::install
    include ::puppet_master::firewall
    include ::puppet_master::clean_cache
    include ::puppet_master::pdk
}
