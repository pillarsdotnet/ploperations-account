# @summary Create users and groups.
#
# You can now set your system users and groups via hiera.
#
# @param common_shared_accounts
#   An array of shared accounts to which all users will have their keys added.
# @param cygwin
#   Whether or not to use Cygwin on Windows. This defaults to the value of
#   `cygwin::enable` in hiera, which is where you should set it. (It, in turn,
#   defaults to `false`.)
# @param group_defaults
#   A hash of default values for all groups.
# @param group_hash
#   A hash of groups to be virtualized.
# @param user_defaults
#   A hash of default values for all users.
# @param user_hash
#   A hash of users to be virtualized.
class account (
  Array[String[1]]         $common_shared_accounts = [],
  Boolean                  $cygwin                 = lookup('cygwin::enable', Boolean, undef, false),
  Account::User::Resource  $defaults               = {},
  Account::Group::Hash     $groups                 = {},
  Account::User::Hash      $users                  = {},
) {
  ensure_resources('@group',         $groups)
  ensure_resources('@account::user', $users,  $defaults)
}
