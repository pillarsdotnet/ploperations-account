# Account expiration is either 'absent' or a YYYY-MM-DD datestring.

type Account::Date = Variant[
  Enum['absent'],
  Pattern[/\A(19|[2-9]\d)\d\d-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])\z/]
]
