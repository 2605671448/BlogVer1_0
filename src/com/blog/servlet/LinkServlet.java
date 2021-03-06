package com.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.dao.LinkDao;
import com.blog.dto.Link;


public class LinkServlet extends HttpServlet{
    public void init(ServletConfig config)throws ServletException{
    	
    }
    protected void doGet(HttpServletRequest request,HttpServletResponse response)throws
    ServletException,IOException{
    	request.setCharacterEncoding("utf-8");
    	response.setContentType("text/html; charset=UTF-8");
        response.setHeader("Cache-Control", "no-cache");
         
    	PrintWriter  out = response.getWriter();
    	String   msg = "";
    	String action = request.getParameter("action"); //页面的命令参数
    	String id = request.getParameter("id");	
    	String name = request.getParameter("name");
    	String url = request.getParameter("url");
    	String blogid = request.getParameter("blogid");
    	int intid = 0,bid=0;
    	
    	int opt = 0; //命令参数   1,add  2,update  3,delete
    	int f = 0; //判断参数
    
    	if("add".equals(action)){
    		opt = 1;
    	}else if("update".equals(action)){
    		opt = 2;
    	}else if("delete".equals(action)){
    		opt = 3;
    	}
    	Link  user = null;
    	LinkDao   dao = new LinkDao(); //创建数据库操作对象
    	
    	switch(opt){
    	case  1:
    		if(blogid!=null||blogid!=""){
    		  bid = Integer.parseInt(blogid);
    	    } 
    		user =  new Link(bid,intid,name,url);//实例化bean对象    	
    		f = dao.add(user);
    		  if(f>0){
    			  msg ="添加成功!";
    		  }else{
    			  msg ="添加失败!";
    		  }
    		  break;
    	case  2:
    		if(id!=null||!id.equals("null")){
        		intid = Integer.parseInt(id);
        	}
    		if(blogid!=null||blogid!=""){
        		bid = Integer.parseInt(blogid);
        	}
    		user =  new Link(bid,intid,name,url);//实例化bean对象    	
    		f = dao.update(user);
		      if(f>0){
			     msg ="修改成功!";
		      }else{
			     msg ="修改失败!";
		      } 
		      break;
    	case  3:
    		if(id!=null||!id.equals("null")){
        		intid = Integer.parseInt(id);
        	}
    		f = dao.delete(intid);
		     if(f>0){
			     msg ="删除成功!";
		      }else{
			     msg ="删除失败!";
		      }  
		      break;
        default :msg = "参数不足，操作失败!"; break;
    	}
    	out.println("<script language=\"javascript\"> alert(\" "+msg+" \");self.location='admin/L_list.jsp'; </script>"); //结果反馈  
    }
    protected void doPost(HttpServletRequest request,HttpServletResponse response)throws
    ServletException,IOException{
    	this.doGet(request, response);
    }
}
