#!/bin/sh

# homes.csv dosyasi var mi?
if [ -f homes.csv ]
then
  echo "homes.csv dosyasi var"
fi

# homes.csv isimli bir dizin var mi?
if [ -d homes.csv ]
then
  echo "homes.csv dizini var"
fi

# homes.csv dosyasi yok mu, var mi?
if [ ! -f homes.csv ]
then
  echo "homes.csv dosyasi yok"
else
  echo "homes.csv dosyasi var"
fi
