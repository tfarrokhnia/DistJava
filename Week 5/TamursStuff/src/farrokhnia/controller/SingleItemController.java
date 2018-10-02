package farrokhnia.controller;

import farrokhnia.model.Item;
import farrokhnia.model.ItemService;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SingleItemController")
public class SingleItemController extends HttpServlet {



    private static final String SINGLE_ITEM_PAGE = "item.jsp";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("we hit the doGet method");

        ItemService itemService = new ItemService();
        int itemId = Integer.parseInt(request.getParameter("id"));

        Item theItem = itemService.getItem(itemId);
        RequestDispatcher dispatcher = request.getRequestDispatcher(SINGLE_ITEM_PAGE);
        request.setAttribute("item", theItem);

        dispatcher.forward(request, response);
    }
}
