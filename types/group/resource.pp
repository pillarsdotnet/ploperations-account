type Account::Group::Resource = Struct[
  { Optional[ensure]          => Enum['absent', 'present'],
    Optional[allowdupe]       => Boolean,
    Optional[auth_membership] => Boolean,
    Optional[forcelocal]      => Boolean,
    Optional[gid]             => Account::Id,
    Optional[members]         => Array[Account::Name],
    Optional[name]            => Account::Name,
    Optional[provider]        => Account::Group::Provider,
    Optional[system]          => Boolean,
  }
]
