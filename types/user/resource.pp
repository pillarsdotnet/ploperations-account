type Account::User::Resource = Struct[
  { Optional[ensure]                   => Enum['absent','present'],
    Optional[comment]                  => String,
    Optional[expire]                   => Account::Date,
    Optional[group]                    => Account::Name,
    Optional[groups]                   => Array[Account::Name],
    Optional[home]                     => Stdlib::Unixpath,
    Optional[home_source_module]       => String[1],
    Optional[key]                      => Stdlib::Base64,
    Optional[keytype]                  => Account::SshKeyType,
    Optional[password]                 => String,
    Optional[shared_accounts]          => Array[Account::Name],
    Optional[shell]                    => Stdlib::Unixpath,
    Optional[uid]                      => Account::Id,
    Optional[usekey]                   => Boolean,
  }
]
