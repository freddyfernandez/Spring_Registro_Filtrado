 package com.cibertec.service;

import java.util.Date;
import java.util.List;

import com.cibertec.entity.Data;

public interface DataService {
	public abstract void insertaData(Data obj);
	public List<Data> listaPorFecha(Date desde,Date hasta);
	
	
	
	

}
