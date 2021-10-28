#!/usr/bin/expect

set timeout 10

spawn vncpasswd

expect "Password:"
send "hello123\r"

expect "Verify:"
send "hello123\r"

expect "Would you like to enter a view-only password (y/n)?"
send "n\r";

interact
