#!/bin/sh

cd Content/Frameworks

for framework in QtCore QtGui QtNetwork QtWidgets QtPrintSupport; do
  cd ${framework}.framework
  rm ${framework}.prl \
    ${framework}_debug \
    ${framework}_debug.prl \
    Versions/5/${framework}_debug
  cd ..
done
