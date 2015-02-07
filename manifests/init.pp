class params (
    $val = params('val'),
) {
    notify { "The value is: ${val}": }
}

