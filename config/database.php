<?php

class database{
public static function conectar(){
        $coneccion = new mysqli("localhost","root","","gucci");
        $coneccion->query("SET NAMES 'utf-8'" )
    }
}