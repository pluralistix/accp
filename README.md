# Testing [ACCP](https://github.com/corretto/amazon-corretto-crypto-provider)

```bash
❯ sh test_runner.sh
running on amazoncorretto:8
Each HmacSHA256 (with random on provider AmazonCorrettoCryptoProvider) took an average of 1,412 ns - totaltime was 2825934216 ns
Each HmacSHA256 (with securerandom on provider AmazonCorrettoCryptoProvider) took an average of 6,126 ns - totaltime was 12252475212 ns
Each HmacSHA256 (with random on provider SunJCE) took an average of 2,077 ns - totaltime was 4155730885 ns
Each HmacSHA256 (with securerandom on provider SunJCE) took an average of 2,094 ns - totaltime was 4189185688 ns
running on amazoncorretto:11
Each HmacSHA256 (with random on provider AmazonCorrettoCryptoProvider) took an average of 1,370 ns - totaltime was 2741447661 ns
Each HmacSHA256 (with securerandom on provider AmazonCorrettoCryptoProvider) took an average of 6,227 ns - totaltime was 12455960487 ns
Each HmacSHA256 (with random on provider SunJCE) took an average of 1,283 ns - totaltime was 2566293092 ns
Each HmacSHA256 (with securerandom on provider SunJCE) took an average of 3,148 ns - totaltime was 6297616356 ns
running on amazoncorretto:17
Each HmacSHA256 (with random on provider AmazonCorrettoCryptoProvider) took an average of 1,322 ns - totaltime was 2645731735 ns
Each HmacSHA256 (with securerandom on provider AmazonCorrettoCryptoProvider) took an average of 6,094 ns - totaltime was 12189467803 ns
Each HmacSHA256 (with random on provider SunJCE) took an average of 1,268 ns - totaltime was 2536694509 ns
Each HmacSHA256 (with securerandom on provider SunJCE) took an average of 3,147 ns - totaltime was 6294851970 ns
running on amazoncorretto:21
Each HmacSHA256 (with random on provider AmazonCorrettoCryptoProvider) took an average of 1,376 ns - totaltime was 2753669504 ns
Each HmacSHA256 (with securerandom on provider AmazonCorrettoCryptoProvider) took an average of 6,242 ns - totaltime was 12484082116 ns
Each HmacSHA256 (with random on provider SunJCE) took an average of 1,240 ns - totaltime was 2481119243 ns
Each HmacSHA256 (with securerandom on provider SunJCE) took an average of 3,059 ns - totaltime was 6119287541 ns
```
