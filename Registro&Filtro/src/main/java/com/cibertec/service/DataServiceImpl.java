package com.cibertec.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;

import com.cibertec.entity.Data;
import com.cibertec.repository.DataRepository;

@Service
public class DataServiceImpl implements DataService {
	
	@Autowired//indica la creacion del nuevo objeto de api
    private DataRepository repository;
	
	@Override
	public void insertaData(Data obj) {
		// TODO Auto-generated method stub
		repository.save(obj);
	}

	@Override
	public List<Data> listaPorFecha(Date desde, Date hasta) {
		// TODO Auto-generated method stub
		return repository.listaPorFecha(desde, hasta);
	}

}
