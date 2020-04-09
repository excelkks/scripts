#!/bin/bash

dwm_inet() {
    echo $(ip a | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}')
}

dwm_inet
