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
# @param groups
#   A hash of groups to be virtualized.
# @param defaults
#   A hash of default values for all users.
# @param users
#   A hash of users to be virtualized.
class account (
  Array[String[1]]         $common_shared_accounts = [],
  Boolean                  $cygwin                 = lookup('cygwin::enable', Boolean, undef, false),
  Account::User::Resource  $defaults               = {},
  Account::Group::Hash     $groups                 = {},
  Account::User::Hash      $users                  = {},
) {
  notify { 'creating groups':
    message => 'Creating virtual groups %s'.sprintf($groups.keys.join(', ')),
  }
  ensure_resources('@group',         $groups)
  notify { 'creating users':
    message => 'Creating virtual users %s'.sprintf($users.keys.join(', ')),
  }
  ensure_resources('@account::user', $users,  $defaults)
}
