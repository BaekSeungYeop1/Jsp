package com.example.loginservlet;

import com.sun.xml.internal.messaging.saaj.packaging.mime.internet.ContentDisposition;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

@WebServlet("/partUploadPro2")
@MultipartConfig(
        fileSizeThreshold = 0,
        location = "C:/upload"
)
public class PartUploadPro2Servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public PartUploadPro2Servlet(){
        super();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String writer = request.getParameter("writer");
        StringBuilder uploadFileNameList= new StringBuilder();

        for (Part part: request.getParts()){
            if (!part.getName().equals("writer")){
                String contentDisposition = part.getHeader("content-disposition");
                String uploadFileName = getUploadFileName(contentDisposition);
                part.write(uploadFileName);
                uploadFileNameList.append(" ").append(uploadFileName);
            }
        }
        out.println("작성자 " + writer + "님이" + uploadFileNameList + "파일을 업로드하였습니다");
    }
    private String getUploadFileName(String contentDisposition){
        String uploadFileName = null;
        String[] contentSplitStr = contentDisposition.split(";");
        int firstQutosIndex = contentSplitStr[2].indexOf("\"");
        int lastQutosIndex = contentSplitStr[2].lastIndexOf("\"");
        uploadFileName = contentSplitStr[2].substring(firstQutosIndex+1, lastQutosIndex);
        return uploadFileName;
    }
}
