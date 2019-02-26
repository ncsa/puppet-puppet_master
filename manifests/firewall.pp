# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_master::firewall
class puppet_master::firewall(
    Array $allow_incoming_from,
){

    # allow incoming on port 8140
    firewall { '8140 tcp access for puppet agent' :
        proto  => 'tcp',
        dport  => '8140',
        action => 'accept',
        source => $allow_incoming_from,
    }
}
