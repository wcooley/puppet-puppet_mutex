puppet_mutex
============

Do-nothing define to clearly express and enforce mutal exclusivity between
classes or defines.

Sometimes one has classes which, while otherwise unrelated, should never both
be declared for the same host. For example, one generally cannot manage local
accounts while LDAP is configured for managing accounts. There is no obvious
error that this should be so, except that the `useradd` provider for the
`user` type will fail with some incomprehensible message. Pretty much
everything else will work, however, so noticing the error requires looking
for it.

With a `puppet_mutex` with the same name declared in both classes, the catalog
will fail to compile so mistakes are easier to notice.Moreover, a declaration
with this define clearly expresses the intention that the two classes should
never both be declare.

Attempting to use the `defined` function to enforce exclusivity is unreliable,
as it is parse-order dependent and generally suggested against.

Parameters
----------

None.

Variables
---------

None.

Examples
--------

To ensure that `account::ldap` and `account::local` cannot be both declared
at the same time, declare the same puppet_mutex in both classes.

    class account::ldap {
      puppet_mutex { 'user-account': }
    }

    class account::local {
      puppet_mutex { 'user-account': }
    }

Author
------

Wil Cooley <wcooley&#64;nakedape.cc>

Copyright
---------

Copyright 2014 Wil Cooley
