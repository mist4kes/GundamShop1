/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Cart;
import Models.Gunpla;
import Models.GunplaDAO;
import Users.UserDAO;
import Users.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
@WebServlet(name = "GundamController", urlPatterns = {"/GundamController/*"})
public class GundamController extends HttpServlet {

    List<Gunpla> cartList = null;

    @Override
    public void init() throws ServletException {
        super.init();
        cartList = new ArrayList<>();
        cartList.add(new Gunpla(1, "Gundam Metal Build Seed Destiny", 350, "Gundam Metal Build Seed Destiny.jpg", "His red wing is rampage!", "1", 1));
        cartList.add(new Gunpla(2, "Mobile Suit Gundam Unicorn RX-0", 800, "Mobile Suit Gundam Unicorn RX-0.jpg", "His power is invulnerable!", "1", 4));
        cartList.add(new Gunpla(3, "Gundam Breaker Battlogue Barbataurus", 3000, "Gundam Breaker Battlogue Barbataurus.jpg", "A bellicose berserker!", "1", 4));
        cartList.add(new Gunpla(4, "Gundam GN-001 Gundam Exia", 9900, "Gundam GN-001 Gundam Exia.jpg", "Shield to heal!", "1", 5));
        cartList.add(new Gunpla(5, "Gundam Heavyarms XXXG-01H", 749, "Gundam Heavyarms XXXG-01H.jpg", "Gatling everywhere!", "1", 2));
        cartList.add(new Gunpla(6, "Mobile Suit Gundam RX-78-2", 289, "Mobile Suit Gundam RX-78-2.jpg", "His basic armor can defeat you with 1 hit!", "1", 1));
        cartList.add(new Gunpla(7, "Gundam Wing XXXG-01S Shenlong", 900, "Gundam Wing XXXG-01S Shenlong.jpg", "Slash!", "1", 2));
        cartList.add(new Gunpla(8, "Mobile Suit Gundam Seed Aile Strike", 2500, "Mobile Suit Gundam Seed Aile Strike.jpg", "Starlight cant be stamp out!", "1", 5));
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");

        //phan tich uri
        String uri = request.getRequestURI();
        String action = uri.substring(uri.lastIndexOf("/") + 1);
        if (uri.contains(";")) {
            action = uri.substring(uri.lastIndexOf("/") + 1, uri.indexOf(";"));
        }

        //in thong tin de xem
        System.out.println("URI:" + uri);
        System.out.println("ACTION:" + action);

        switch (action) {
            case "view":
                view(request, response);
                break;
            case "addtocart":
                addtocart(request, response);
                break;
            case "viewcart":
                viewcart(request, response);
                break;
            case "delcart":
                delcart(request, response);
                break;
            case "clearcart":
                clearcart(request, response);
                break;
            case "checkout":
                checkout(request, response);
                break;
            case "search":
                search(request, response);
                break;
            case "viewmodel":
                viewmodel(request, response);
                break;
            case "login":
                login(request, response);
                break;
            case "logout":
                logout(request, response);
                break;
        }
    }

    protected void view(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        GunplaDAO gd = new GunplaDAO();
        List<Gunpla> list = gd.getList();
        request.setAttribute("list", list);
        request.getRequestDispatcher("/viewmain1.jsp").forward(request, response);
    }

    protected void search(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        String name = request.getParameter("name");
        List<Gunpla> list = GunplaDAO.search(name);
        request.setAttribute("name", name);
        request.setAttribute("list", list);
        request.getRequestDispatcher("/viewmain1.jsp").forward(request, response);

    }

    protected void addtocart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int price = Integer.parseInt(request.getParameter("price"));
        int total = price * quantity;
        HttpSession session = request.getSession();

        Gunpla gunpla = cartList.get(id - 1);
        Cart cart = (Cart) session.getAttribute("cart");
        gunpla.setQuantity(quantity);

        //check session exist
        if (cart == null) {
            cart = new Cart();
        }
        cart.add(gunpla);
        session.setAttribute("cart", cart);
        session.setAttribute("itemTotal", total);
        
        request.setAttribute("list", cartList);
        request.setAttribute("cartMessage", String.format("%s was added to your cart", gunpla.getName()));
//        request.getRequestDispatcher("#2").forward(request, response);
        view(request, response);

    }

    protected void viewcart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        request.setAttribute("list", cartList);
        request.getRequestDispatcher("/cart1.jsp").forward(request, response);
    }

    protected void checkout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        HttpSession session = request.getSession();

        Cart cart = (Cart) session.getAttribute("cart");

        //check session exist
        if (cart != null) {
            cart.empty();
        }
//        session.setAttribute("cart", cart);
//        request.getRequestDispatcher("/viewmain1.jsp").forward(request, response);
        view(request, response);
    }

    protected void viewmodel(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        Gunpla gunpla = GunplaDAO.getGunpla(id);
        List<Gunpla> list = new ArrayList<>();
        list.add(GunplaDAO.getGunpla(gunpla.getId()));

        request.setAttribute("list", list);
//        request.setAttribute("gunpla", gunpla);
        request.getRequestDispatcher("/item.jsp").forward(request, response);
    }

    protected void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        UserDTO user = UserDAO.check(userId, password);
        //login successful
        if (user != null) {
            //save user into session
            session = request.getSession();
            session.setAttribute("user", user);
//            request.getRequestDispatcher("/viewmain.jsp").forward(request, response);
            view(request, response);
        } else {
            request.setAttribute("message", "login failed");
            request.getRequestDispatcher("/viewmain1.jsp").forward(request, response);
        }
    }

    protected void logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        HttpSession session = request.getSession();
        session = request.getSession();
        session.invalidate();
//        request.getRequestDispatcher("/viewmain.jsp").forward(request, response);
        view(request, response);
    }

    protected void delcart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();

        Gunpla gunpla = cartList.get(id - 1);
//        Gunpla gunpla = GunplaDAO.getGunpla(id);
        Cart cart = (Cart) session.getAttribute("cart");
        //check session exist
//        if (cart == null) {
//            cart = new Cart();
//        }
//      cart.add(gunpla);
        cart.del(gunpla);
        session.setAttribute("cart", cart);

        request.setAttribute("list", cartList);
        request.setAttribute("cartMessage", String.format("%s was added to your cart", gunpla.getName()));
        viewcart(request, response);
//        view(request, response);
    }

    protected void clearcart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        HttpSession session = request.getSession();

        Cart cart = (Cart) session.getAttribute("cart");

        //check session exist
        if (cart != null) {
            cart.empty();
        }
//        session.setAttribute("cart", cart);
//        request.getRequestDispatcher("/viewmain1.jsp").forward(request, response);
        viewcart(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(GundamController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(GundamController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(GundamController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(GundamController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
