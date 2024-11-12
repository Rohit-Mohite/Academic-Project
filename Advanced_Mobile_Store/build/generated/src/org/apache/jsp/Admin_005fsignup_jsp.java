package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Admin_005fsignup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>admin signup</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.min.css\">\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                background:url(\"triangle_background2.jpg\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: 1920px 1080px;\n");
      out.write("            }\n");
      out.write("            .container{\n");
      out.write("                background-color:#cdeeee;\n");
      out.write("                max-width:600px;\n");
      out.write("                margin-left: auto;\n");
      out.write("                margin-right: auto;\n");
      out.write("                margin-top:30px;\n");
      out.write("                padding-top:20px;\n");
      out.write("                padding-bottom:15px;\n");
      out.write("                border-radius:25px;\n");
      out.write("            }\n");
      out.write("            h1{\n");
      out.write("                border-radius: 68px;\n");
      out.write("                background: linear-gradient(145deg, #75a5ff, #628bdb);\n");
      out.write("                box-shadow:  27px 26px 54px #7979d2,\n");
      out.write("                    -27px -26px 54px #7979d2;\n");
      out.write("                width:auto;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            .rainbow-hover{\n");
      out.write("                font-size: 16px;\n");
      out.write("                font-weight: 700;\n");
      out.write("                color: #ff7576;\n");
      out.write("                background-color: #2B3044;\n");
      out.write("                border: none;\n");
      out.write("                outline: none;\n");
      out.write("                cursor: pointer;\n");
      out.write("                padding: 12px 24px;\n");
      out.write("                position: relative;\n");
      out.write("                line-height: 24px;\n");
      out.write("                border-radius: 9px;\n");
      out.write("                box-shadow: 0px 1px 2px #2B3044,\n");
      out.write("                    0px 4px 16px #2B3044;\n");
      out.write("                transform-style: preserve-3d;\n");
      out.write("                transition: transform 0.1s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .sp {\n");
      out.write("                background: linear-gradient(\n");
      out.write("                    90deg,\n");
      out.write("                    #866ee7,\n");
      out.write("                    #ea60da,\n");
      out.write("                    #ed8f57,\n");
      out.write("                    #fbd41d,\n");
      out.write("                    #2cca91\n");
      out.write("                    );\n");
      out.write("                -webkit-background-clip: text;\n");
      out.write("                -webkit-text-fill-color: transparent;\n");
      out.write("                background-clip: text;\n");
      out.write("                display: block;\n");
      out.write("            }\n");
      out.write("            .rainbow-hover:active {\n");
      out.write("                transition: 0.3s;\n");
      out.write("                transform: scale(0.93);\n");
      out.write("            }\n");
      out.write("            input[type=text],[type=password],[type=text-area],[type=email]{\n");
      out.write("                border: solid;\n");
      out.write("                box-shadow: 2px 2px 15px #58e4e2 inset;\n");
      out.write("                border-radius:10px;\n");
      out.write("            }\n");
      out.write("            button {\n");
      out.write("                position: relative;\n");
      out.write("                top: 10px;\n");
      out.write("                left: 20px;\n");
      out.write("            }      \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <form action=\"admin_signup\" method=\"post\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-2\"></div>\n");
      out.write("                    <div class=\"col-sm-8\">\n");
      out.write("                        <h1 style=\"form-control\">𝓢𝓲𝓰𝓷 𝓾𝓹</h1>\n");
      out.write("                        <br><br>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-sm-12\">\n");
      out.write("                                <label style=\"font-size:20px\"><b>Name</b></label>\n");
      out.write("                                <br>\n");
      out.write("                                <input type=\"text\" name=\"userName\" onkeypress=\"javascript :return isString(event)\" placeholder=\"Enter your full name\" class=\"form-control\" required>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-sm-12\">\n");
      out.write("                                <label style=\"font-size:20px\"><b>Address</b></label>\n");
      out.write("                                <br>\n");
      out.write("                                <input type=\"text-area\" name=\"userAddress\" placeholder=\"Enter your address\" class=\"form-control\" required>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-sm-12\">\n");
      out.write("                                <label style=\"font-size:20px\"><b>Contact</b></label>\n");
      out.write("                                <br>\n");
      out.write("                                <input type=\"text\" name=\"userContact\" onkeypress=\"javascript:return isContactno(event)\" placeholder=\"Enter your contact\" class=\"form-control\" maxlength=\"10\" minlength=\"10\" required=\"\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-sm-12\">\n");
      out.write("                                <label style=\"font-size:20px\"><b>Email</b></label>\n");
      out.write("                                <br>\n");
      out.write("                                <input type=\"email\" name=\"userEmail\" placeholder=\"Enter your emial address\" class=\"form-control\" required=\"\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-sm-12\">\n");
      out.write("                                <label style=\"font-size:20px\"><b>Password</b></label>\n");
      out.write("                                <br>\n");
      out.write("                                <input type=\"password\" name=\"adminsignuppassword\" placeholder=\"Enter your password\" class=\"form-control\" required=\"\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                    </div>  \n");
      out.write("                    <div class=\"col-sm-2\"></div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-4\">\n");
      out.write("                        <button type=\"submit\" value=\"Register\" data-label=\"Register\" name=\"register\" class=\"rainbow-hover\" >\n");
      out.write("                            <span class=\"sp\">Register</span>\n");
      out.write("                        </button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-2\"></div> \n");
      out.write("                    <div class=\"col-sm-6\"><br>\n");
      out.write("                        <p>Already have an account? <a style=\"color: orange;\" href=\"Admin_login.jsp\"> Login</a></p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
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
