package com.szk.szkapiinterface;

import com.szk.szkapiclientsdk.client.SzkApiClient;
import com.szk.szkapiclientsdk.model.User;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

@SpringBootTest
class SzkapiInterfaceApplicationTests {
    @Resource
    private SzkApiClient szkApiClient;

    @Test
    void contextLoads() {
        String result  = szkApiClient.getNameByGet("szk");
        User user = new User();
        user.setUsername("szk");
        String usernameByPost = szkApiClient.getUsernameByPost(user);
        System.out.println(result);
        System.out.println(usernameByPost);
    }

}
