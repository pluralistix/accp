#!/bin/bash

javac HmacUtil.java

CLASSPATH=".:/opt/accp/AmazonCorrettoCryptoProvider-2.3.3-linux-x86_64.jar" java HmacUtil "HmacSHA256" 2000000 random
CLASSPATH=".:/opt/accp/AmazonCorrettoCryptoProvider-2.3.3-linux-x86_64.jar" java HmacUtil "HmacSHA256" 2000000 securerandom
java HmacUtil "HmacSHA256" 2000000 random
java HmacUtil "HmacSHA256" 2000000 securerandom
