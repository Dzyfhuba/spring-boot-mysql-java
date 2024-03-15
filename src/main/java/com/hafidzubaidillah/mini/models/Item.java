package com.hafidzubaidillah.mini.models;

public record Item(
    long id,
    String barcode,
    String item_code,
    String item_name,
    long satuan_id,
    String created_at,
    String updated_at) {
}
