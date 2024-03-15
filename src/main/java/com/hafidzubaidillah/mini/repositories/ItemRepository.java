package com.hafidzubaidillah.mini.repositories;

import org.springframework.data.repository.CrudRepository;

import com.hafidzubaidillah.mini.models.Item;

public interface ItemRepository extends CrudRepository<Item, Integer> {
  
}
