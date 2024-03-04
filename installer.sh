#!/bin/bash

cat <<EOF >SecurityProvidersAndAlgorithms.java
import java.security.Provider;
import java.security.Security;
import javax.crypto.Cipher;

public class SecurityProvidersAndAlgorithms {
  public static void main(String[] args) throws Exception {
  	System.out.println(java.security.Security.getProperty("securerandom.strongAlgorithms"));
  	System.out.println(Security.getProviders()[0]);
  	System.out.println(Cipher.getInstance("AES/GCM/NoPadding").getProvider().getName());
  }
}
EOF

#javac SecurityProvidersAndAlgorithms.java
#echo "Default Security Algorithms and Algorithms"
#java SecurityProvidersAndAlgorithms

sed -r -i 's;^(security.provider.)([0-9]+)(.*);echo "\1$((\2+1))\3";eg' "$(find / -type f -name java.security)"
sed -r -i 's;^(security.provider.2=.*);security.provider.1=com.amazon.corretto.crypto.provider.AmazonCorrettoCryptoProvider\n\1;g' "$(find / -type f -name java.security)"
sed -r -i 's;^securerandom.strongAlgorithms=.*;securerandom.strongAlgorithms=DEFAULT:AmazonCorrettoCryptoProvider,NativePRNGBlocking:SUN,DRBG:SUN;g' "$(find / -type f -name java.security)"

mkdir -p /opt/accp/
curl -Ls https://github.com/corretto/amazon-corretto-crypto-provider/releases/download/2.3.3/AmazonCorrettoCryptoProvider-2.3.3-linux-x86_64.jar -o /opt/accp/AmazonCorrettoCryptoProvider-2.3.3-linux-x86_64.jar

#echo -e "\n\nSecurity Algorithms and Algorithms"
#CLASSPATH='.:/opt/accp/AmazonCorrettoCryptoProvider-2.3.3-linux-x86_64.jar' java SecurityProvidersAndAlgorithms
