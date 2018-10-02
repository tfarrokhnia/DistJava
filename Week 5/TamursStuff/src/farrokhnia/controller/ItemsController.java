package farrokhnia.controller;

import farrokhnia.model.ItemService;
import farrokhnia.model.Item;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ItemsController extends HttpServlet {

    private static final String STORE_PAGE = "store.jsp";
    private static final String START_PAGE = "index.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String requestUrl = request.getServletPath();
        ItemService itemService = new ItemService();
        RequestDispatcher dispatcher;
        List<Item> itemList = new ArrayList<>();
        switch (requestUrl){
            case "/store": dispatcher = request.getRequestDispatcher(STORE_PAGE);
                           itemList = itemService.getAllItems();
            break;
            case "/home": dispatcher = request.getRequestDispatcher(START_PAGE);
                for (Item item: itemService.getAllItems()) {
                    if(item.getIsFeatured()){
                        itemList.add(item);
                    }
                }
            break;
            default: dispatcher = request.getRequestDispatcher(START_PAGE);
        }

        request.setAttribute("itemList", itemList);
        dispatcher.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
