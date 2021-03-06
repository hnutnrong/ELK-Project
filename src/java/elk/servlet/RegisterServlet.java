/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package elk.servlet;

import elk.jpa.controller.AccountJpaController;
import elk.model.Account;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.UserTransaction;

/**
 *
 * @author Administrator
 */
public class RegisterServlet extends HttpServlet {
 @PersistenceUnit(unitName = "ElkfinalProjectPU")
    EntityManagerFactory emf;

    @Resource
    UserTransaction utx;

    /*
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String tel = request.getParameter("telno");
        String Email = request.getParameter("email");
        String address = request.getParameter("address");
        
        
         if (username != null && password != null && Email != null) {
            AccountJpaController accountJpa = new AccountJpaController(utx, emf);
            Account account = accountJpa.findByUsername(username);
            if (account == null) {
                
                    String accountCount = String.valueOf(accountJpa.getAccountCount()+1);
                    Account account2 = new Account();
                    account2.setAccountid(accountCount);
                    account2.setEmail(Email);
                    account2.setFname(fname);
                    account2.setLname(lname);
                    account2.setPassword((password));
                    account2.setUsername(username);
                    account2.setTelno(tel);
                   
                    try {
                        accountJpa.create(account2);
                    } catch (Exception ex) {
                        System.out.println("ex");
                    }
                    response.sendRedirect("HomepageView.jsp?success=1");
                    return;
                
            } else{
                request.setAttribute("EmailnotNull", "1");
            }
            getServletContext().getRequestDispatcher("/RegisterView.jsp").forward(request, response);
            return;
        }
        getServletContext().getRequestDispatcher("/RegisterView.jsp").forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
