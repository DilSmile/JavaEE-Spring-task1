package sevlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import db.DBManager;

@WebServlet(value="/save")
public class SaveServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("idshka"));
        String name = String.valueOf(req.getParameter("name"));
        String description = String.valueOf(req.getParameter("description"));
        String deadline = String.valueOf(req.getParameter("deadline"));
        String status = String.valueOf(req.getParameter("status"));

        Item item = new Item(id,name,description,deadline,status);

        DBManager.saveItem(item);
        resp.sendRedirect("task1");

    }
}
