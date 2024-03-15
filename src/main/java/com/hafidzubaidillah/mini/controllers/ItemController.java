package com.hafidzubaidillah.mini.controllers;

import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.hafidzubaidillah.mini.models.Item;
import com.hafidzubaidillah.mini.models.Satuan;
import com.hafidzubaidillah.mini.repositories.ItemRepository;
import com.hafidzubaidillah.mini.repositories.SatuanRepository;

@RestController
@RequestMapping("/items")
public class ItemController {
  @Autowired
  private ItemRepository itemRepository;

  @Autowired
  private SatuanRepository satuanRepository;

  // @GetMapping("")
  // public Iterable<Item> index() {
  // return itemRepository.findAll();
  // }

  @GetMapping("")
  public Page<Item> index(
      @RequestParam(defaultValue = "0") int page,
      @RequestParam(defaultValue = "10") int size) {
    Pageable pageable = PageRequest.of(page, size);
    return itemRepository.findAll(pageable);
  }

  @PostMapping()
  public ResponseEntity<String> store(
      @RequestParam String item_code,
      @RequestParam String item_name,
      @RequestParam int satuan_id) {
    Optional<Satuan> satuanOptional = satuanRepository.findById(satuan_id);
    if (satuanOptional.isEmpty()) {
      return ResponseEntity.badRequest().body("Satuan with id " + satuan_id + " not found");
    }

    Satuan satuan = satuanOptional.get();

    Item item = new Item();
    item.setItem_code(item_code);
    item.setItem_name(item_name);
    item.setSatuan(satuan);
    item.setBarcode(UUID.randomUUID().toString());
    itemRepository.save(item);
    return ResponseEntity.status(201).body("Stored");
  }

  @PatchMapping("/{id}")
  public ResponseEntity<String> update(
      @PathVariable int id,
      @RequestParam String item_code,
      @RequestParam String item_name,
      @RequestParam int satuan_id) {
    Optional<Item> itemOptional = itemRepository.findById(id);
    if (itemOptional.isEmpty()) {
      return ResponseEntity.notFound().build();
    }

    Optional<Satuan> satuanOptional = satuanRepository.findById(satuan_id);
    if (satuanOptional.isEmpty()) {
      return ResponseEntity.badRequest().body("Satuan with id " + satuan_id + " not found");
    }

    Satuan satuan = satuanOptional.get();

    Item item = itemOptional.get();
    item.setItem_code(item_code);
    item.setItem_name(item_name);
    item.setSatuan(satuan);
    itemRepository.save(item);
    return ResponseEntity.status(201).body("Updated");
  }

  @DeleteMapping("/{id}")
  public ResponseEntity<String> destroy(
      @PathVariable int id) {
    Optional<Item> satuanOptional = itemRepository.findById(id);
    if (satuanOptional.isEmpty()) {
      return ResponseEntity.notFound().build();
    }
    itemRepository.deleteById(id);

    return ResponseEntity.ok().body("Deleted");
  }
}
