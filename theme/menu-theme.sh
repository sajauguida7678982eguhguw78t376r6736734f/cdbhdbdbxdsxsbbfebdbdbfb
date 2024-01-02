#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�Q�K }_�A����\�����F  � @[dԠ�P"f���4ɠh i����E&��=mF��  h���`&F F&&	�bi��S$e<�� @h  �5ra.�!ce�tt��*�����X�r���R�<9E��/-�ѓ%�KS�J��)�����"�w���m����$�9�a�n�L_LGt�q%�=u�E1S2O���j�yaJ�ѐ�p�e��cX��5Dƙ6RԚ��sH�D(��7̐Ҡ*P�(DB�������˹���)e�z�3�x�B��I6����$��L�0�L@�K��S��NZ䄀�������*0��E1EDpй�D�T'!�ݴS4����HJ���kO��;�Fi,�A'K2�M�T�$%�Be���n�ֳ�)=���2�L��4ot&l��1��txQH�}$K��Ȑ1\Bo�	� �Wr`L�ƹ2x�7�]���j�!:Ԛ�z��`بtRO���΋Pu�t�m���M?���0����ܑN$-c�