package sevlets;

import db.DBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value="/addItem")
public class AddItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("addItem.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        String description=req.getParameter("description");
        String deadline=req.getParameter("deadline");
        String status = req.getParameter("status");

        Item item = new Item();
        item.setDescription(description);
        item.setDeadlineDate(deadline);
        item.setName(name);
        item.setStatus(status);

        DBManager.addItem(item);
        resp.sendRedirect("/task1");

    }
}
