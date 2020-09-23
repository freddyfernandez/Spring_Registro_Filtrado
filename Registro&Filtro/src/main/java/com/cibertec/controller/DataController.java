package com.cibertec.controller;

import java.text.SimpleDateFormat;


import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cibertec.entity.Data;
import com.cibertec.service.DataService;

@Controller
public class DataController {
	
	@Autowired
	private DataService service;
	
	
	//generar url de localhost
	@RequestMapping ("/verRegistra")
	public String registrar() {
		return "registrarMensaje";
		
	}

	@RequestMapping ("/verConsulta")
	public String consulta() {
		return "consultaMensaje";
		
	}
	
	//generar action del jsp

	@RequestMapping("/registrar")
	public String registroMensaje(Data obj) {
		service.insertaData(obj);
		return "registrarMensaje";
	}
	
	@RequestMapping("/consulta")
	//agregar un spring Model para setear el resultado
	public String consultaMensaje(String desde, String hasta,Model m) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date datodesde=null, datohasta=null;
		try {
			//parseamos las variables string desde y hasta a tipo Date
			//y lo guaedamos en otras 2 variables tipo Date
			datodesde=sdf.parse(desde);
			datohasta=sdf.parse(hasta);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
				
		List<Data> lista = service.listaPorFecha(datodesde,datohasta);
		m.addAttribute("MENSAJES",lista);
		return "consultaMensaje";
	}
	
	

}
