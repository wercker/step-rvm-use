# rvm-use

A wercker step to change RVM Ruby enviornment.

[![wercker status](https://app.wercker.com/status/689a513b2c27f279dae9b0055811d931/m "wercker status")](https://app.wercker.com/project/bykey/689a513b2c27f279dae9b0055811d931)

# What's new

- Initial release

# Options

* `version` (required) The Ruby version which RVM should use.
* `create` (optional, default `false`) Create the version if it is not found (_warning_: this will increase build time if the version is not installed on the box).

# Example

Active rvm 

``` yaml
build:
    steps:
        - rvm-use:
            version: 2.1.0-p0
```

# License

The MIT License (MIT)

# Changelog

## 1.0.0

- Initial release
