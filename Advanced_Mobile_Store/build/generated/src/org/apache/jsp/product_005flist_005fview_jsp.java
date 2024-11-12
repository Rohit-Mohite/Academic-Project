package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class product_005flist_005fview_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/User_header.jsp");
  }

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>product view</title>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>user header</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.min.css\">\n");
      out.write("        <script src=\"validation.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            .custom-navbar {\n");
      out.write("                background-color: #3366ff;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-expand-lg custom-navbar bg-body-tertiary\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">Mobile Store</a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                    <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"index.html\">Home</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"product_category_view.jsp\">view category</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"product_list_view.jsp\">view product</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"booking.jsp\">Booking</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"user_payment.jsp\">Payment</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"order.jsp\">View order</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"User_feedback.jsp\">Feedback</a>\n");
      out.write("                        </li>\n");
      out.write("<!--                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("                                Dropdown\n");
      out.write("                            </a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\n");
      out.write("                                <li><hr class=\"dropdown-divider\"></li>\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>-->\n");
      out.write("                        \n");
      out.write("                    </ul>\n");
      out.write("                    <form class=\"d-flex\" role=\"search\">\n");
      out.write("                        <input class=\"form-control me-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\n");
      out.write("                        <button class=\"btn btn-outline-success\" type=\"submit\">Search</button>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            .categorie{\n");
      out.write("                display: inline-block;\n");
      out.write("                margin: 15px;\n");
      out.write("                background-color:#F0F8FF;\n");
      out.write("                padding: 13px;\n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("                background-color: #E5E4E2;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            ");

                Connection cn = null;
                Statement st = null;

                int i = 1;

                try {

                    Class.forName("com.mysql.jdbc.Driver");
                    cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mobile_store", "root", "root");
                    st = cn.createStatement();
                    String sql = "select * from product_tbl";
                    ResultSet rs = st.executeQuery(sql);
                    while (rs.next()) {
            
      out.write("\n");
      out.write("            <div class=\"categorie\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <form action=\"booking.jsp\" method=\"post\">\n");
      out.write("                    <div class=\"col-sm-12\">\n");
      out.write("                        <div style=\"display: flex; flex-direction: column; align-items: center; text-align: left;\">\n");
      out.write("                            <img src=\"");
      out.print(rs.getString("Product_image"));
      out.write("\" height=\"230\" width=\"260\">\n");
      out.write("                            <br>\n");
      out.write("                            <p>Name: ");
      out.print(rs.getString("Product_name"));
      out.write("</p>\n");
      out.write("                            <p>Model: ");
      out.print(rs.getString("Model_name"));
      out.write("</p>\n");
      out.write("                            <p>Processor: ");
      out.print(rs.getString("Processor"));
      out.write("</p>\n");
      out.write("                            <p>Quantity: ");
      out.print(rs.getString("Quantity"));
      out.write("</p>\n");
      out.write("                            <p>Colour: ");
      out.print(rs.getString("colour"));
      out.write("</p>\n");
      out.write("                            <p>Amount: ");
      out.print(rs.getString("Price"));
      out.write("</p>\n");
      out.write("                            <input type=\"hidden\" name=\"Model_name\" value=\"");
      out.print(rs.getString("Model_name"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"Price\" value=\"");
      out.print(rs.getString("Price"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"Product_name\" value=\"");
      out.print(rs.getString("Product_name"));
      out.write("\">\n");
      out.write("                            <input type=\"submit\" name=\"\" value=\"View More\" class=\"btn btn-primary\" style=\"margin-top: 20px;\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            ");

                    }
                } catch (Exception ex) {

                }
            
      out.write("\n");
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
