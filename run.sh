#!/bin/sh

if ! type rvm &> /dev/null; then
    fail "RVM is not installed";
else
    info "RVM is installed: $(rvm version)";
    info "Installed Rubies: $(rvm list)"
fi

if [ -z "$WERCKER_RVM_USE_VERSION" ]; then
    fail "version is not set";
else 
    info "Going to use Ruby version $WERCKER_RVM_USE_VERSION";
fi

OPTIONS=""

if [ "$WERCKER_RVM_USE_CREATE" = "true" ]; then
    $OPTIONS="$OPTIONS --create";
fi

rvm_command="rvm use $OPTIONS $WERCKER_RVM_USE_VERSION"

debug "$rvm_command"
$rvm_command

if [[ $? -ne 0 ]]; then
    fail "$rvm_command failed"
else
    info "rvm current: $(rvm current)"
    success "finished $rvm_command"
fi
