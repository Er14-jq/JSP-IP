package indi.cyd.InformationPortal.Servlets;

import indi.cyd.InformationPortal.dao.Account;
import indi.cyd.InformationPortal.dao.Operation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException { }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session=request.getSession(false);

        String account,pwd,captcha,check,error=null;

        account=request.getParameter("Account");
        pwd=request.getParameter("Password");
        captcha=request.getParameter("CAPTCHA");
        check = session==null ? null:(String)session.getAttribute("CheckCode");

        if(hasNull(account,pwd,captcha,check)) {
            request.setAttribute("message","参数不完整");
        } else if(!captcha.equalsIgnoreCase(check)){
            request.setAttribute("verifyerror","验证码错误");
        } else if(!isValid(account,pwd)){
            request.setAttribute("error","密码错误或用户名错误");
        } else {
            success(request,response,Operation.getAccount(account));
            return;
        }
       //out.print("<script>alert('"+error+"'); window.location='index.jsp' </script>");
        request.getRequestDispatcher("/login.jsp").forward(request,response);
    }
    //检查是否有null
    private boolean hasNull(String... strs){
        for(String s:strs)if(s==null)return true;
        return false;
    }
    private void success(HttpServletRequest request, HttpServletResponse response,Account acc){
        HttpSession session=request.getSession(false);
        session.removeAttribute("CheckCode");
        session.setAttribute("Account",acc);
        try {
            response.sendRedirect("./index.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    //校验密码
    private boolean isValid(String acc,String pwd){
        Account ac= Operation.getAccount(acc);
        return ac.getId()!=-1 && pwd.equals(ac.getPassword());
    }
}