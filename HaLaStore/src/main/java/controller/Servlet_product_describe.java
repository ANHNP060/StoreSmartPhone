package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Describe;
import model.Product;
import database.ProductDAO;

@WebServlet(name = "Servlet_product_describe", urlPatterns = { "/Servlet_product_describe" })
public class Servlet_product_describe extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String ProId_raw = request.getParameter("ProId");
        int ProId;
        try{
            ProId = Integer.parseInt(ProId_raw);
            ProductDAO dao = new ProductDAO();
            Product p = dao.getProductByProId(ProId);
            Describe d = dao.getDescribeByDesId(ProId);
            request.setAttribute("pro", p);
            request.setAttribute("des", d);
            request.getRequestDispatcher("/view/jsp/describe.jsp").forward(request, response);
        } catch(NumberFormatException e){
            System.out.println(e);
        }
        
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    }

}
