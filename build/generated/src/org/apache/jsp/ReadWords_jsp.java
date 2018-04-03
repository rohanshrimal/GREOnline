package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ReadWords_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Read Words</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"grestyleing.css\">\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>\n");
      out.write("         <style>\n");
      out.write("             table {\n");
      out.write("                border-collapse: collapse;\n");
      out.write("                width:1200px;\n");
      out.write("                font-size: 20px\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            th,td {\n");
      out.write("                border: 1px solid #f44336;\n");
      out.write("                text-align: left;\n");
      out.write("                padding: 10px;\n");
      out.write("                width:auto;\n");
      out.write("                color: #f44336;\n");
      out.write("            }\n");
      out.write("            .head{\n");
      out.write("                background-color: #f44336;\n");
      out.write("                color: white;\n");
      out.write("                padding:15px;\n");
      out.write("            }\n");
      out.write("    \n");
      out.write("           \n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"heading\">WORD LIST</div><br>\n");
      out.write("    <center>\n");
      out.write("        <table id=\"wordList\">\n");
      out.write("        </table>\n");
      out.write("    </center>\n");
      out.write("        <script>\n");
      out.write("        function getXmlHttpRequestObject()\n");
      out.write("\t{\n");
      out.write("            var xmlHttpReq;\n");
      out.write("\n");
      out.write("            if(window.XMLHttpRequest){\n");
      out.write("                request=new window.XMLHttpRequest();\n");
      out.write("            }\n");
      out.write("            else if(window.ActiveXObject){\n");
      out.write("                request=new window.ActiveXObject();\n");
      out.write("            }\n");
      out.write("            else{\n");
      out.write("                request=null;\n");
      out.write("            }\n");
      out.write("            return request;\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("        function getWords()\n");
      out.write("        {\n");
      out.write("            request=getXmlHttpRequestObject();\n");
      out.write("            request.onreadystatechange=setWords;\n");
      out.write("            request.open(\"get\",\"words.xml\",true);\n");
      out.write("            request.setRequestHeader (\"Content-Type\", \"application/x-www-form-urlencoded\");\n");
      out.write("            request.send(null);\n");
      out.write("        }\n");
      out.write("        function setWords()\n");
      out.write("        {\n");
      out.write("            console.log(request.responseText);\n");
      out.write("             if(request.readyState===4 && request.status===200)\n");
      out.write("            {\n");
      out.write("                var parser = new DOMParser();\n");
      out.write("                var words = parser.parseFromString(request.responseText,\"text/xml\");\n");
      out.write("                var mw=words.getElementsByTagName(\"main-word\");\n");
      out.write("                var bm=words.getElementsByTagName(\"broad-meaning\");\n");
      out.write("                \n");
      out.write("               var setString=\"<td class='head'>WORD</td>\"+\"<td class='head'>MEANING</td>\";\n");
      out.write("                for (i = 0; i< mw.length; i++) \n");
      out.write("                {\n");
      out.write("                    \n");
      out.write("                    var w=\"<td>\"+mw[i].childNodes[0].nodeValue+\"</td>\";\n");
      out.write("                    var m=\"<td>\"+bm[i].childNodes[0].nodeValue+\"</td>\";\n");
      out.write("                    setString=setString+\"<tr>\"+w+m+\"</tr>\";\n");
      out.write("                    document.getElementById(\"wordList\").innerHTML=setString;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        getWords();\n");
      out.write("    </script>\n");
      out.write("    \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
