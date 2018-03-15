<?php
use Drupal\Component\Utility\NestedArray;

/** NestedArray::filter() **/

// Filter without callback always removes empty values.
$a = ['a' => ['b' => ['c' => 'c'], 'x' => ''], 'd' => 'd'];
$res = NestedArray::filter($a);
// $res == ['a' => ['b' => ['c' => 'c']], 'd' => 'd']


// Callback: Here we must return $el in order to preserve the element
// or NULL if we want to remove it.
$fun = function($el) {
  if ($el == 'x') {
    return NULL;
  }
  return $el;
};

$a = ['a' => ['b' => ['c' => 'c', 'x' => 'x', 'd' => NULL, 'e' => '']]];
$res = NestedArray::filter($a, $fun);
// $res = ["a" => ["b" => ["c" => "c" ]]]