+++
date = "2021-02-05"
draft = true
title = "Tweet to explain what's a teletype / terminal emulator"
tags = [
    'development', 
]
+++

In the 70s, they were entering commands in a shell (a software) using a teletype (think of it as a big keyboard) and a video terminal (actual screen). The teletype were sending commands to the shell, and you had the output on your fancy screen.

We don't have teletype or a video terminal anymore. Instead, we have an emulation of these machines, called terminal emulators, or for short, terminals.

A shell is a software which can communicate with the actual kernel of your OS.

You (or a program) use the shell to send a message to your kernel for many things, like writing to a disk. Why you can't do that (or one of your program) yourself? For security, mainly. 

So the shell is the interface you have between userland and the kernel.

Bash and Zsh are all different shells, like Firefox and Chrome are different browsers. Their functions are the same (browsing the internet), their interfaces are different.

BONUS VIDEO: https://www.youtube.com/watch?t=297&v=tc4ROCJYbm0&feature=youtu.be
