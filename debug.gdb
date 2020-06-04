# Connect to the debugger
target remote :2331

# Prevent panic corruption of LR
set backtrace limit 32

# Stop the device (just in case the debugger didnt)
monitor reset halt

# Program our code to flash
load

# Reset the device
monitor reset halt

# Set a breakpoint at main()
break main

# Run until we hit main()
continue

# Set a breakpoint after we've read the device ID
break main.rs:14
continue

# Print the device id in binary
# (See section 13.2.6 in the reference manual for decoding)
p /t devid
