package com.cibertec.entity;
import java.util.Date;




import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;




@Entity
@Table(name = "data")
@Getter
@Setter
public class Data {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "iddata")
	private Integer idData;
	
	@Column(name = "mensaje")
	private String mensaje;
	
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "fechaRegistro")
	private Date fechaRegistro;
	
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern= "yyyy-MM-dd")
	@Column(name = "fechaVencimiento")
	private Date fechaVencimiento;
	
	

	private String correo;
	
	private String ciudad;
	
}
	
