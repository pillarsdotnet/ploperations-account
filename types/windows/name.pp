# Windows (Active Directory) names may contain any character except
# these forbidden fifteen: "*+,/:;<=>?[\]|
# For backward-compatibility, the maximum length is set to 20.

type Account::Windows::Name = Pattern[
  /[^"*+,\/:;<=>?\[\\\]|]{1,20}/
]
