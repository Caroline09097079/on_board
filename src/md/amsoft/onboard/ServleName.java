package md.amsoft.onboard;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ServleName extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//           // Set the response message's MIME type
//        response.setContentType("text/html;charset=UTF-8");
//        // Allocate a output writer to write the response message into the network socket
//        PrintWriter out = response.getWriter();
//
//        // Write the response message, in an HTML page
//        try {
//            out.println("<!DOCTYPE html>");
//            out.println("<html><head>");
//            out.println("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
//            out.println("<title>Hello, World</title></head>");
//            out.println("<body>");
//            out.println("<h1>Hello, world!</h1>");  // says Hello
//            // Echo client's request information
//            out.println("<p>Request URI: " + request.getRequestURI() + "</p>");
//            out.println("<p>Protocol: " + request.getProtocol() + "</p>");
//            out.println("<p>PathInfo: " + request.getPathInfo() + "</p>");
//            out.println("<p>Remote Address: " + request.getRemoteAddr() + "</p>");
//            // Generate a random number upon each request
//            out.println("<p>A Random Number: <strong>" + Math.random() + "</strong></p>");
//            out.println("</body>");
//            out.println("</html>");
//        } finally {
//            out.close();  // Always close the output writer
//        }


        List<String> stringList = new ArrayList<>();
        stringList.add("primu student");
        stringList.add("2 student");
        stringList.add("3 student");
        stringList.add("4 student");

        request.setAttribute("listStudents", "lista de studneti");
        request.setAttribute("stringList", stringList);
        request.getRequestDispatcher("/static/index.jsp").forward(request, response);
    }
}
