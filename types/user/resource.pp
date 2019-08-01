type Account::User::Resource = Struct[
  { Optional[ensure]                   => Optional[Enum['absent','present']],
    Optional[comment]                  => Optional[String],
    Optional[expire]                   => Optional[Account::Date],
    Optional[group]                    => Optional[Account::Name],
    Optional[groups]                   => Optional[Array[Account::Name]],
    Optional[home]                     => Optional[Stdlib::Unixpath],
    Optional[home_source_module]       => Optional[String[1]],
    Optional[key]                      => Optional[Stdlib::Base64],
    Optional[keytype]                  => Optional[Account::SshKeyType],
    Optional[password]                 => Optional[Sensitive[String]],
    Optional[shared_accounts]          => Optional[Array[Account::Name]],
    Optional[shell]                    => Optional[Stdlib::Unixpath],
    Optional[uid]                      => Optional[Account::Id],
    Optional[usekey]                   => Optional[Boolean],
  }
]
