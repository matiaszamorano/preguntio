package com.preguntio.repository;

import com.preguntio.domain.Coleccion;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "colecciones", path = "colecciones")
public interface ColeccionRepository extends CrudRepository<Coleccion, Long> {

}
