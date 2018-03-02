<?php

function something() {
  // This will show a list of files and methods called before the current function.
  $e = new \Exception;
  var_dump($e->getTraceAsString());
}
