package com.cibertec.repository;

import java.util.Date;


import java.util.List;

//JPA: api para el manejo de datos realcionales
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cibertec.entity.Data;

public interface DataRepository extends JpaRepository<Data,Integer>{
	//JPQL: consulta orientado a objetos sin componentes de tablas SQL	  
	//libreria de interaccion sql magnifico!
	@Query("select e from Data e where fechaVencimiento between :des and :has")
	public  List<Data> listaPorFecha(@Param("des")Date desde, 
			                         @Param("has")Date hasta);
	

}
