import com.sun.tools.corba.se.idl.StringGen;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletContext servletContext = getServletContext();

        String navn = request.getParameter("navn");
        String kodeord = request.getParameter("kodeord");

        if (servletContext.getAttribute("brugerMap") == null){

            Map<String, String> brugerMap = new HashMap<>();

            brugerMap.put("test", "test");
            brugerMap.put("admin", "1234");

            servletContext.setAttribute("brugerMap", brugerMap);
        }


        if (!((Map<String, String>) servletContext.getAttribute("brugerMap") ).containsKey(navn)){
            //Todo gå til log indside

            request.setAttribute("besked", "Opret dig som bruger");
            request.getRequestDispatcher("WEB-INF/OpretBruger.jsp").forward(request,response);

        }

        if (((Map<String, String>) servletContext.getAttribute("brugerMap") ).get(navn).equalsIgnoreCase(kodeord) ){

            //Todo gå til log huskelisten

            if (navn.equalsIgnoreCase("admin")){
                //Gå til admin sidden
                request.getRequestDispatcher("WEB-INF/admin.jsp").forward(request,response);
            }

            response.getWriter().println("klar til login");
            request.getRequestDispatcher("WEB-INF/HuskeListe.jsp").forward(request,response);
        }

        //Tilbage til index siden

        request.setAttribute("besked", "dit login var forkert, prøv igen.");
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }




    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }
}
