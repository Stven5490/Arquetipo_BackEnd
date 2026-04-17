package runners;

import com.intuit.karate.junit5.Karate;

public class apiRunner {
    @Karate.Test
    Karate testAll(){
        return Karate.run("classpath:features").relativeTo(getClass());
    }
}
