# The list of acceptable ssh key types.

type Account::SshKeyType = Enum[
  'rsa',
  'ssh-dsa',
  'ssh-dss',
  'ssh-ecdsa',
  'ssh-ed25519',
  'ssh-rsa',
]
