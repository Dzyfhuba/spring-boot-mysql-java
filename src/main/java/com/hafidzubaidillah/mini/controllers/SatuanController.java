package com.hafidzubaidillah.mini.controllers;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hafidzubaidillah.mini.models.Satuan;
import com.hafidzubaidillah.mini.repositories.SatuanRepository;

@Controller
@RequestMapping("/satuan")
public class SatuanController {
  @Autowired
  private SatuanRepository satuanRepository;

  @GetMapping()
  public @ResponseBody Iterable<Satuan> index() {
    return satuanRepository.findAll();
  }

  @PostMapping()
  public ResponseEntity<String> store(
    @RequestParam String description
  ) {
    Satuan satuan = new Satuan();
    satuan.setDescription(description);
    satuanRepository.save(satuan);
    return ResponseEntity.status(201).body("Stored");
  }

  @PatchMapping("/{id}")
  public ResponseEntity<String> update(
    @PathVariable int id,
    @RequestParam String description
  ) {
    Optional<Satuan> satuanOptional = satuanRepository.findById(id);
    if (satuanOptional.isEmpty()) {
      return ResponseEntity.notFound().build();
    }
    Satuan satuan = satuanOptional.get();
    satuan.setDescription(description);
    satuanRepository.save(satuan);
    return ResponseEntity.status(201).body("Updated");
  }

  @DeleteMapping("/{id}")
  public ResponseEntity<String> destroy(
    @PathVariable int id
  ) {
    Optional<Satuan> satuanOptional = satuanRepository.findById(id);
    if (satuanOptional.isEmpty()) {
      return ResponseEntity.notFound().build();
    }
    satuanRepository.deleteById(id);

    return ResponseEntity.ok().body("Deleted");
  }
}
