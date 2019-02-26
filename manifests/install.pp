# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_master::install
class puppet_master::install (
    Array[String] $required_packages,   #per OS
){
    # YUM REPO managed elsewhere (at least for now)

    # PACKAGES
    ensure_packages( $required_packages, {'ensure' => 'present'} )

}
