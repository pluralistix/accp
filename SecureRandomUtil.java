import java.security.SecureRandom;

public class SecureRandomUtil {

    public static void plainSecureRandomSeedGenarator() {
        new SecureRandom().generateSeed(20);
    }

    public static void main(String[] args) throws Exception {
        long start = 0;
        int runs = Integer.valueOf(args[0]);
        String provider = new SecureRandom().getProvider().getName();
        for (int i = -10000; i < runs; i++) {
            if (i == 0)
                start = System.nanoTime();
            plainSecureRandomSeedGenarator();
        }
        long time = System.nanoTime() - start;
        System.out.printf(
                "Each plainSecureRandomSeedGenarator (provider %s) took an average of %,d ns - totaltime was %d ns%n",
                provider, time / runs, time);
    }
}