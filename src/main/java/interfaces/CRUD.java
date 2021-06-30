/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import java.util.List;
import modelo.Personas;

/**
 *
 * @author Daniel
 */
public interface CRUD {
    public List mostrar();
    public Personas list(int id);
    public boolean agregar(Personas per);
    public boolean editar(Personas per);
    public boolean eliminar(int id);
}
