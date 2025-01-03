package tasks;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/")
public class DispatcherServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();

        if ("/register".equals(path)) {
            request.getRequestDispatcher("/register").forward(request, response);
        } else if ("/displayBooks".equals(path)) {
            request.getRequestDispatcher("/displayBooks").forward(request, response);
        } else if ("/deleteBook".equals(path)) {
            request.getRequestDispatcher("/deleteBook").forward(request, response);
        } else {
            response.getWriter().println("Invalid path");
        }
    }
}
