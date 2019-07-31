# Valid `provider` values for puppet group resource.

type Account::Group::Provider = Enum[
  'aix',
  'directoryservice',
  'groupadd',
  'ldap',
  'pw',
  'windows_adsi',
]
