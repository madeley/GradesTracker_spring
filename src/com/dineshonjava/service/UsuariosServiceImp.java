package com.dineshonjava.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dineshonjava.dao.UsuariosDao;
import com.dineshonjava.model.Usuarios;

/**
 * @author Dinesh Rajput
 *
 */
@Service("usuariosService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class UsuariosServiceImp implements UsuariosService {

	@Autowired
	private UsuariosDao usuariosDao;

	public Usuarios getUsuarioValidar(Usuarios user) {
		Usuarios usuario = usuariosDao.getUsuarioValidar(user);
		return usuario;
	}

}
