#!/bin/bash
gcc async_publication_example.c -lpaho-mqtt3c -o async_publication_example
gcc async_subscription_example.c -lpaho-mqtt3c -o async_subscription_example
gcc sync_publication_example.c -lpaho-mqtt3c -o sync_publication_example
