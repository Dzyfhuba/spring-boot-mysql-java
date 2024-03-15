package com.hafidzubaidillah.mini.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.hafidzubaidillah.mini.models.Item;

public interface ItemRepository extends CrudRepository<Item, Integer>, PagingAndSortingRepository<Item, Integer> {
  
}
