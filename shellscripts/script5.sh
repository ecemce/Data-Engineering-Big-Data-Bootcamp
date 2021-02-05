#!/bin/bash


echo "Bir sayı giriniz: " 
read a 

echo "İkinci sayıyı giriniz: " 
read b

echo "Iki sayının toplamı: "
echo $a + $b | bc 
