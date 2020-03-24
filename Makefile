.POSIX:
CFLAGS = -std=c99 -pedantic -D_POSIX_C_SOURCE=200809L -Wall -Wextra
LDFLAGS = -pthread # Original said lpthread which won't work for Ubuntu 18.04 LTS.