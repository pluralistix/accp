import java.nio.charset.Charset;
import java.util.Random;
import java.security.SecureRandom;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class HmacUtil {

    public static void hmac(String key, String content, Mac mac, String algo) throws Exception {
        mac.init(new SecretKeySpec(key.getBytes(), algo));
        mac.doFinal(content.getBytes());
    }

    public static void plainSecureRandomSeedGenarator() {
        new SecureRandom().generateSeed(20);
    }

    public static void main(String[] args) throws Exception {
        long start = 0;
        int runs = Integer.valueOf(args[1]);
        Mac mac = Mac.getInstance(args[0]);
        String mac_provider = mac.getProvider().getName();
        assert mac_provider == new SecureRandom().getProvider().getName();
        for (int i = -10000; i < runs; i++) {
            if (i == 0)
                start = System.nanoTime();
            byte[] array = new byte[7];
            if (args[2].equals("securerandom")) {
                new SecureRandom().nextBytes(array);
            } else {
                new Random().nextBytes(array);
            }
            hmac(new String(array, Charset.forName("UTF-8")), "content", mac, args[0]);
        }
        long time = System.nanoTime() - start;
        System.out.printf("Each %s (with %s on provider %s) took an average of %,d ns - totaltime was %d ns%n",
                args[0],
                args[2],
                mac_provider, time / runs, time);
    }
}