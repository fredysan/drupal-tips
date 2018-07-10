<?php

namespace Drupal\my_module\Normalizer;

use Drupal\Core\Entity\EntityTypeManagerInterface;
use Drupal\serialization\Normalizer\NormalizerBase;

/**
 * Converts typed data objects to arrays.
 */
class RetailLoanDataNormalizer extends NormalizerBase {

  /**
   * Drupal\Core\Entity\EntityTypeManagerInterface $entity_manager.
   *
   * @var \Drupal\Core\Entity\EntityTypeManagerInterface
   */
  protected $entityTypeManager;

  /**
   * The interface or class that this Normalizer supports.
   *
   * @var string
   */
  protected $supportedInterfaceOrClass = 'Drupal\Core\TypedData\TypedDataInterface';

  /**
   * {@inheritdoc}
   */
  public function __construct(EntityTypeManagerInterface $entity_manager) {
    $this->entityTypeManager = $entity_manager;
  }

  /**
   * {@inheritdoc}
   */
  public function supportsNormalization($data, $format = NULL) {
    if (method_exists($data, 'getEntity')) {
      $entity_bundle = '';
      $reflection = new \ReflectionMethod($data, 'getEntity');
      if ($reflection->isPublic()) {
        $entity_type = $data->getEntity()->getType();
      }
      $valid_types = [
        'article',
      ];
      if (in_array($entity_type, $valid_types)) {
        return TRUE;
      }
    }
    return FALSE;
  }

  /**
   * {@inheritdoc}
   */
  public function normalize($object, $format = NULL, array $context = []) {
    return $object->getValue();
  }

}
