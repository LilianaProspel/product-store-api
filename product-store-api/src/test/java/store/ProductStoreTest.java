package store;

import com.intuit.karate.junit5.Karate;

class ProductStoreTest {

    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }
}
