package com.preguntio.repository;

import com.preguntio.domain.Pregunta;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "preguntas", path = "preguntas")
public interface PreguntaRepository extends CrudRepository<Pregunta, Long> {

}
