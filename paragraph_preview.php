<?php
/**
 * Showing paragraphs in preview.
 */
if ($entity->in_preview && $entity->hasField($field_name)) {
  // Paragraph's Preview data get lost when retrieved
  // via referencedEntities().
  $entity_ref_data = $this->viewBuilder->viewField($entity->get($field_name));
  // Keep only numeric keys.
  $entity_ref_data = array_filter(
    $entity_ref_data,
    function ($key) {
      return is_numeric($key);
    },
    ARRAY_FILTER_USE_KEY
  );
  // Get Paragraph objects from the viewBuilder response.
  $referenced_entities = [];
  foreach ($entity_ref_data as $item) {
    $referenced_entities[] = $item["#paragraph"];
  }
}
