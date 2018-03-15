<?php

use Drupal\Component\Utility\DiffArray;

// difference on Level 1.
$a = ['a' => ['b'=> ['c' => 'c']], 'd' => 'd'];
$b = ['a' => ['b' => ['c' => 'c']]];
$diff = DiffArray::diffAssocRecursive($a, $b);
// $diff == ['d' => 'd']


// difference on value on Level 3.
$a = ['a' => ['b'=> ['c' => 'c']], 'd' => 'd'];
$b = ['a' => ['b'=> ['c' => 'x']], 'd' => 'd'];
$diff = DiffArray::diffAssocRecursive($a, $b);
// $diff = ['a' => ['b'=> ['c' => 'c']]]


// difference on key on Level 3.
$a = ['a' => ['b'=> ['c' => 'c']], 'd' => 'd'];
$b = ['a' => ['b'=> ['x' => 'c']], 'd' => 'd'];
$diff = DiffArray::diffAssocRecursive($a, $b);
// $diff = ['a' => ['b'=> ['c' => 'c']]]


// No difference even if Level 3 of $b has an extra item because
// $b has all the $a keys and values.
$a = ['a' => ['b'=> ['c' => 'c']], 'd' => 'd'];
$b = ['a' => ['b'=> ['c' => 'c', 'x' => 'x']], 'd' => 'd'];
$diff = DiffArray::diffAssocRecursive($a, $b);
// $diff = []


// No difference even if Level 2 of $b has an extra item.
$a = ['a' => ['b'=> ['c' => 'c']], 'd' => 'd'];
$b = ['a' => ['b'=> ['c' => 'c'], 'x' => 'x'], 'd' => 'd'];
$diff = DiffArray::diffAssocRecursive($a, $b);
// $diff = []
