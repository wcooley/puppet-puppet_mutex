class foo {
  puppet_mutex { 'foo-bar': }
}

class bar {
  puppet_mutex { 'foo-bar': }
}

include foo
include bar
