package waq.hbwl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
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

    /*
     * 接受restful风格的请求，接受方式为get
     * */
    @RequestMapping(value = "/user/{id}", method = RequestMethod.GET)
    @ResponseBody
    public User selectUser(@PathVariable String id) {

        System.out.println("id = " + id);
        User user = new User();
        // 模拟根据id查询到用户数据
        if (id.equals("1234")) {
            user.setUsername("Tom");
        }
        return user;

    }

}
