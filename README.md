# COMP3215 Lab 3

A mesh network was implemented using the Generic FSK work from lab 2.

## Programming the server and other nodes

There are separate folders for programming servers and nodes. Use the folder corresponding to the role you want to program. Also, when using multiple other nodes, make sure the address at the top of gen_fsk_tests.c is between 1 and 5 and unique to that board. The buttons on the server page are labelled 1-5 and should control the node with that address.

## Server

Based on PPP-Blinky (https://os.mbed.com/users/nixnax/code/PPP-Blinky/)

Set up a dial-up connection (https://os.mbed.com/users/nixnax/code/PPP-Blinky/wiki/Configuring-Windows-Dial-Up-Networking for Windows) then go to 172.10.10.2 and you should get to the page stored in the server.

## Progress

Working mesh network implemented but no acknowledgements are sent. Boards that can't be controlled are not indicated in any way.

The connection is also somewhat unreliable and it may take multiple button presses to toggle a node.
