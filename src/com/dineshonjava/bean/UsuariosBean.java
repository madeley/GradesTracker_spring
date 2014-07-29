package com.dineshonjava.bean;

import java.util.Date;

/**
 * @author Dinesh Rajput
 *
 */
public class UsuariosBean {
	private Integer id;
	private String username;
	private String password;
	private String nombres;
	private String apellidos;
	private String correo;
	private Byte bloqueado;
	private Date ultimoIngreso;
	private Date fechaRegistro;
	private Date fechaNacimiento;
	private Byte comprobado;
	
	
	
	
	public Byte getComprobado() {
		return comprobado;
	}
	public void setComprobado(Byte comprobado) {
		this.comprobado = comprobado;
	}
	public Date getFechaNacimiento() {
		return fechaNacimiento;
	}
	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}
	public Date getFechaRegistro() {
		return fechaRegistro;
	}
	public void setFechaRegistro(Date fechaRegistro) {
		this.fechaRegistro = fechaRegistro;
	}
	public Date getUltimoIngreso() {
		return ultimoIngreso;
	}
	public void setUltimoIngreso(Date ultimoIngreso) {
		this.ultimoIngreso = ultimoIngreso;
	}
	public Byte getBloqueado() {
		return bloqueado;
	}
	public void setBloqueado(Byte bloqueado) {
		this.bloqueado = bloqueado;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	
}
