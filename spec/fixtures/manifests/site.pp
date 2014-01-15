node default {}
node conflicthost {
  include account::ldap
  include account::local
}
