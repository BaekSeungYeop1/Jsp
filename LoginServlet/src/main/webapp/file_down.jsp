<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.*" %>
<%
    String fileName = request.getParameter("file_name");
    String savePath = "upload";
    ServletContext context = config.getServletContext();
    String sDownloadPath = context.getRealPath(savePath);
    String sFilePath = sDownloadPath + "\\"+fileName;
    byte b[] = new byte[4096];
    FileInputStream in = new FileInputStream(sFilePath);
    String sMimeType = config.getServletContext().getMimeType(sFilePath);
    System.out.println("sMimeType>>>"+ sMimeType);
    if (sMimeType == null)
        sMimeType = "application/octet-stream";
    // Microsoft Internet 대응 코드드
    response.setContentType(sMimeType);
    String agent = request.getHeader("User-Agent");
    boolean ieBrowser = (agent.contains("MSIE")) || (agent.contains("Trident"));
    if(ieBrowser){
        fileName = URLEncoder.encode(fileName,"UTF-8").replaceAll("\\+", "%20");
    }else{
        fileName = new String(fileName.getBytes("UTF-8"), "iso-8859-1");
    }
    response.setHeader("Content-Disposition","attachment; filename = " + fileName);
    ServletOutputStream out2 = response.getOutputStream();
    int numRead;
    while ((numRead = in.read(b, 0, b.length)) != -1){
        out2.write(b, 0, numRead);
    }
    out2.flush();
    out2.close();
    in.close();
%>