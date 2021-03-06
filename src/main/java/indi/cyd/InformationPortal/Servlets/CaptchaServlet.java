package indi.cyd.InformationPortal.Servlets;

import indi.cyd.InformationPortal.Utils.Captcha;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;

/**
 * 用来生成图片验证码
 */
@WebServlet("/CaptchaServlet")
public class CaptchaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //创建对象
        Captcha vc = new Captcha();
        BufferedImage bi=vc.getImage();
        //获得图片的文本内容
        String text = vc.getText();
        // 将系统生成的文本内容保存到session中
        request.getSession().setAttribute("CheckCode", text);
        //向浏览器输出图片
        vc.output(bi,response.getOutputStream());
    }
}