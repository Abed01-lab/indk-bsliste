import com.sun.tools.corba.se.idl.StringGen;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;
import java.util.Set;

@WebServlet(name = "LogOutServlet", urlPatterns = "/LogOutServlet")
public class LogOutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        ServletContext servletContext = getServletContext();

        session.invalidate();

        request.setAttribute("besked", "Du er logget ud");
        request.getRequestDispatcher("index.jsp").forward(request, response);

        ((Set<String>)servletContext.getAttribute("aktiveBruger")).remove(servletContext.getAttribute("aktivBrugerNavn"));

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
