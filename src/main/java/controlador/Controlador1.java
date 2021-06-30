
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Personas;
import modeloDAO.PersonasDAO;

/**
 *
 * @author Daniel
 */
public class Controlador1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    String mostrar = "Vistas/mostar.jsp";
    String editarr = "Vistas/editar.jsp";
    String agregar = "Vistas/agregar.jsp";
    Personas p = new Personas();
    PersonasDAO dao = new PersonasDAO();
    int  id;
            
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador1 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        String acceso ="";
        String action = request.getParameter("accion");
        if(action.equalsIgnoreCase("mostrar")){
            acceso = mostrar; 
        }else if(action.equalsIgnoreCase("agregar")){
            acceso = agregar; 
        }else if(action.equalsIgnoreCase("add")){
            String nom = request.getParameter("txtnom");
            String agee = request.getParameter("txtage");
            int age = Integer.parseInt(agee);  
            String pis = request.getParameter("txtpais");
            p.setNombre(nom);
            p.setEdad(age);
            p.setPais(pis);
            dao.agregar(p);
            acceso = mostrar;
        }else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idper",request.getParameter("id"));
            acceso = editarr; 
        }else if(action.equalsIgnoreCase("actualizar")){
            id=Integer.parseInt(request.getParameter("txtid"));
            String nom = request.getParameter("txtnom");
            String agee = request.getParameter("txtage");
            int age = Integer.parseInt(agee);  
            String pis = request.getParameter("txtpais");
            p.setId(id);
            p.setNombre(nom);
            p.setEdad(age);
            p.setPais(pis);
            dao.editar(p);
            acceso = mostrar;
        }else if(action.equalsIgnoreCase("eliminar")){
            id=Integer.parseInt(request.getParameter("id"));
            p.setId(id);
            dao.eliminar(id);
            acceso = mostrar;
        }
        RequestDispatcher vista= request.getRequestDispatcher(acceso);
        vista.forward(request, response);
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
