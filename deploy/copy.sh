#!/bin/sh

function make_script() {
    cat script.sh
    echo 'get_payload() {'
    echo '    base64 -di <<EOF'
    tar --create --gzip payload | base64
    echo 'EOF'
    echo '}'
    echo 'main'
}

function make_output() {
    echo " ( base64 -di | sh -s ) <<EOF"
    make_script | tee compiled_script.tmp | base64
    echo "EOF"
    echo ". ~/.bashrc_hut"
}

cp /usr/share/terminfo/r/rxvt-unicode-256color payload/
make_output | tee copied.tmp | xsel -i
