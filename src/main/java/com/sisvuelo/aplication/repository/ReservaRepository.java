package com.sisvuelo.aplication.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sisvuelo.aplication.model.Reserva;
import com.sisvuelo.aplication.repository.helper.ReservaHelper;



@Repository
public interface ReservaRepository extends JpaRepository<Reserva, Integer>,ReservaHelper {

	

}

