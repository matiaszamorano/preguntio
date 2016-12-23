package com.preguntio.repository;

import com.preguntio.domain.Categoria;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "categorias", path = "categorias")
public interface CategoriaRepository extends CrudRepository<Categoria, Long> {

}
