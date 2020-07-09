package waq.hbwl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import waq.hbwl.po.User;

@Controller
public class UserController {

    @RequestMapping(value = "/testJson")
    @ResponseBody
    public User testJson(@RequestBody User user) {

        // 打印接受的json格式数据
        System.out.println(user);
        // 返回json格式的响应
        return user;

    }

}
