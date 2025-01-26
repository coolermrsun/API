package com.szk.szkgateway;

import com.szk.project.provider.DemoService;
import org.apache.dubbo.config.annotation.DubboReference;
import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.ConfigurableApplicationContext;

import org.springframework.stereotype.Service;

@EnableDubbo
@Service
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class SzkGatewayApplication {

    @DubboReference
    private DemoService demoService;


    public static void main(String[] args) {
        ConfigurableApplicationContext context = SpringApplication.run(SzkGatewayApplication.class, args);
        SzkGatewayApplication application = context.getBean(SzkGatewayApplication.class);
        String result = application.doSayHello("world");
        String result1 = application.doSayHello2("world");
        System.out.println(result);
        System.out.println(result1);
    }

    public String doSayHello(String name) {return demoService.sayHello(name);}

    public String doSayHello2(String name) {return demoService.sayHello2(name);};
//    @Bean
//    public RouteLocator customRouteLocator(RouteLocatorBuilder builder) {
//        return builder.routes()
//                .route("path_route", r -> r.path("/baidu")
//                        .uri("http://www.baidu.com"))
//                .route("host_route", r -> r.path("/")
//                        .uri("http://www.guet.edu.cn/"))
//                .build();
//    }
}
