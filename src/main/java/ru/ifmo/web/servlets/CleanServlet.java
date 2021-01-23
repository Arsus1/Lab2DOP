package ru.ifmo.web.servlets;

import javax.servlet.http.*;
import javax.servlet.ServletException;

import java.io.IOException;

import ru.ifmo.web.model.Point;
import ru.ifmo.web.model.PointsBean;


public class CleanServlet  extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().removeAttribute("points");
        resp.setContentType("text/html; charset=UTF-8");
        req.getServletContext().getRequestDispatcher("/table.jsp").forward(req, resp);
    }
}
