# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_master::tidy
class puppet_master::tidy (
    Hash[ String[1], Hash ] $dirlist, # key=dirpath, 
                                      # val=hash of valid tidy params to the
                                      # native puppet resource type "tidy"
){

    ensure_resources( 'tidy',  $dirlist )

}
