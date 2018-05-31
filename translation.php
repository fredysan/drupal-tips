<?php

// Translate into current language.
$entity = \Drupal::service('entity.repository')
  ->getTranslationFromContext($entity);

// Translate into a specific language.
$language_id = \Drupal::service('language_manager')
  ->getCurrentLanguage()
  ->getId();
$entity = $entity->hasTranslation($language_id)
  ? $entity->getTranslation($language_id)
  : $entity;
