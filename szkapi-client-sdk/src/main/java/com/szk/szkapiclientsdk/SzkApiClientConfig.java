package com.szk.szkapiclientsdk;

import com.szk.szkapiclientsdk.client.SzkApiClient;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties("szkapi.client")
@Data
@ComponentScan
public class SzkApiClientConfig {

    private String accessKey;

    private String secretKey;
    @Bean
    public SzkApiClient szkApiClient() {
        return new SzkApiClient(accessKey, secretKey);
    }
}
