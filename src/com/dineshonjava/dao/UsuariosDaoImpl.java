package com.dineshonjava.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dineshonjava.model.Usuarios;

/**
 * @author Dinesh Rajput
 *
 */
@Repository("usuariosDao")
public class UsuariosDaoImpl implements UsuariosDao {

	@Autowired
	private SessionFactory sessionFactory;
	

	public Usuarios getUsuarioValidar(Usuarios user) {
	
		Usuarios usuario = null;
		try{
		usuario = (Usuarios) sessionFactory.getCurrentSession().createQuery("FROM Usuarios  WHERE username = '"+user.getUsername()+"' and password = '"+user.getPassword()+"'").uniqueResult();
		}
		catch(Exception ex)
		{
			
			usuario =  new Usuarios();
			usuario.setId(-1);
		}
		
		return usuario;
		
	}


}
