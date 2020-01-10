#!/bin/sh

get_connection()
    {
    ssh -D 1500 ${userName}@${host_address}
    expect "Password:"
    send "${Password}\r"
    }
