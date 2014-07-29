package com.dineshonjava.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dineshonjava.bean.UsuariosBean;
import com.dineshonjava.model.Usuarios;
import com.dineshonjava.service.UsuariosService;

/**
 * @author Dinesh Rajput
 *
 */
@Controller
public class UsuariosController {
	
	@Autowired
	private UsuariosService usuariosService;
	
	
	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public ModelAndView deleteEmployee(@ModelAttribute("command")  UsuariosBean usuariosBean,
			BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		UsuariosBean usuariorespuesta = null;
		try{
		   usuariorespuesta = prepareUsuariosBean(usuariosService.getUsuarioValidar(prepareUsuarios(usuariosBean)));
		}catch(Exception ex)
		{
			usuariorespuesta = new UsuariosBean();
			usuariorespuesta.setId(-1);
		}
			
		if(usuariorespuesta.getId() == -1)
			
		{
			
			model.put("usuario", usuariorespuesta);
			return new ModelAndView("login");
			}
		else {
			model.put("usuario", usuariorespuesta);
			return new ModelAndView("bienvenido", model);
		}
	}
	public  UsuariosBean prepareUsuariosBean(Usuarios usuario){
		UsuariosBean bean = new UsuariosBean();
		bean.setPassword(usuario.getPassword());
		bean.setUsername(usuario.getUsername());
		bean.setApellidos(usuario.getApellidos());
		bean.setNombres(usuario.getNombres());
		bean.setId(usuario.getId());
		return bean;
	}
	private Usuarios prepareUsuarios(UsuariosBean usuariobean){
		Usuarios user = new Usuarios();
		user.setPassword(usuariobean.getPassword());
		user.setUsername(usuariobean.getUsername());
		user.setApellidos(usuariobean.getApellidos());
		user.setNombres(usuariobean.getNombres());
		user.setId(usuariobean.getId());
		return user;
	}

}
