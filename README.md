# puppet-params
A simple Puppet function to return a value from the module's `params` class, including it if required.

## Usage:

### main class

``` Puppet
class demo (
    $val = params('val'),
) {
    notify { "The value is: ${val}": }
}
```

### params class

``` Puppet
class demo::params {
  $val = 'demo time, yo'
}

### Purpose

This can help you get the same behaviour as the `inherits classname::params`
pattern, but without relying on side effects and without variable resolution
surprises.

### Disclaimer

This is a proof of concept toy. I wrote it in about 10 minutes. It's absolutely
not supported in any way at all.

