# COMP3215-Lab-3

## Changing between transmitter (Tx, also the server) and receiver
To change between these modes, there are some lines of code to modify:
1) Lines 154 and 155 of source/connectivity_test.c
2) Lines 203 to 208 of source/gen_fsk_tests.c
Comment/uncomment the lines corresponding to the mode you want to use.

## Server functions
This works the same way as PPP-Blinky (https://os.mbed.com/users/nixnax/code/PPP-Blinky/)

Set up a dial-up connection (https://os.mbed.com/users/nixnax/code/PPP-Blinky/wiki/Configuring-Windows-Dial-Up-Networking for Windows) then go to 172.10.10.2 and you should get to the page stored in the board.
