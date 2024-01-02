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
BZh91AY&SY��ο c_�������������pD@  � `�ϝ{Y��w�ǻG����T����M.��_m���QAT���I!M�z��=��)�S�~��"m������=M1�?R=O(h�2 �D�d���(�POG�i�  0A��	�����=(=�@�M �  4��=F�4�@$Ԑ�� �F 	�a4�Lѐ  � �L#LHD��D�z��@ѡ�4h4h� h  ��"2&�'�1�M�h)�(̑�d��z��Ph�h/	 �e`�_a@���5�Cժ�e�w�ZIh��lQ�z����P+ł�k���ۃ�m5��tIe��~�*�Xy1�1ؕ�����X1���L��̳��u؋C��኉}6ac3\*����ו��,Y��$@^ʕ��-��nT$����v�����/���%mo%딎O�|�&V�� ���xs����{���K�#�P���73Jz�������+
L]�I�s�Ԓ9�
`LA�O����Ăr^C���σP��lJޑ~�6F�)�M�>��׵��՗�^����ҹ��D��j
4��ܼ��zK\��?�Gi
���G�rՐ5��U���3�)�E�{:�&��I$cǑV���Fk5)j�%|�k���2�{ryF�Fњ���0�&�+I��}�4��|�����X��d�~��3B͒�c��+:VL���x)A��H�1O� �-S}��	8e�:0��v
,��L��&,��Rd*� ��R))�F2Y]�JA�&�A�v-�s�G�Ϗ])�9PD��K�>L��pʝk����~j.�0>W���^�Z͒�PS<Αv�_�Y=�5�%8:-��*�,��{��ק��˻#*N��`1�)��
3�w�y���Ie nnA��Ű����K��;�K!�v��˘H�޳CG�~�X(�i�3��&�y����1����jI��h���sGom��0�Wzk��%�,�)��x��x�YQ;�	0�L��8�ʺL���	1&\HP����Kߵ����Ů}�(��cWr6�P�,�՟AHg6uP1��н�z�b����ɘID$�P��E��Q@g|� �" `ů\��?������<��z)���mApЁ`��V�����2
h=�L�ҫ�T����.
��s�@�R�<,Ї���[G3WB%`�0�=�8qQQ8P��GF�AiV�	D�"Mq�(HI�hut�����])����X3[�|��fT��W:�b��b1�Ň'I��vrꊉ�yƸȠ�9�[_f�Yl�������|[�[��I!��V�+^�]_��nG���ӯ�L`�����E�
E+)U8����/E������h���Ģ(h>o:l��2�i��j�0:n��\��N+�G����_��>_bގ�^�GG� MhDrVF�u�����D���a��q.��̗�b�3龆�bÕ�Δ�2PIyN[����v]��A��x�E���?�������ߒE���
�)5�s&M��ue�P�y6Q��C�.����"�X\�Ce� `C:ˀEš�R람V9��U@�e^QZ�U'A'ti���'�`�	f]����߽�o��ჶ��9|il�ߝc#,�����aT2)�T�����0�#���~M�aXU��[��Z�g�z�Ϛ\9�.�������ٯ����3ɩдx����~�1i]��:<ۣ�@��S����D9��?Z������L�b��f�7r�d��G���W.��ݩܯ\b=�,�lÌ2�0�%	wr��iEa��]CO>*����WSMs��8v�[��{gF��/�{ٱ�����CwpEWQn�71|��1�=��A�aNgn�fi����Ioݻ\��N��I�6#���ז�fd��4{���m7����3�dO�[p���yL���>�G; @�ko������n�X�*EJ,�H<��IA`Xa��m�s�T�IU\rAE�ei��C��՞�^af�&]9��U�<� '�6�j�a�a����SX:���lTm�č�zz+���e?��-��t[�%�5��ܴ']5�7�VT��\̀O&H���b��qa$���'�����տN��c�#�1�J�~���"6�{_Ǳ�&�I5�T��1���������ȠD�`�XXG_8S=cEM��!��/|��f#"�nr,U�7T�E���8�v}����2�w�*GI���,��/���@0֖%U*�ۦ�B�\��ܺa��!���-㊹�ؒ�u
E�$,.q��>�Aq��iKչl��q�Q1_�v-�����+��%aוC��m�.�h������46�����������\	-��~K�`� ��������DT��\t�^ǭ��;�ǖ�hf�ȁ��iB����PL�䂥��$����ΩL;�-͘`�[\_�(T*�	�9�uK�g5Ҕ��k{�ZG,�J��ڶ�]ԫl%��H��J�tD�ֈ@�Zӟ��A�P �W��.��ʆ�VВl�z���l5"]>�%�-��}���8��Ha�T�y�*ދ��$��"��I�R�ږd���N�ծĩ�0�@�/J�d���XF�N�=���E�WICXW��$���'���Id��I��
�>av��I�گ#AcđQ/| 
ܵ�!%L���+�)DV��W���;b\J����4Pw�;=��G������Ⱦ���]}b�,�W7j��M����MZ�j�R�bD�EJ����+,����p��o�KC�^A�;���	�[�d�SPE���b7���I�u�Vm�O��VJ`B��!\^����^�A�Ui/(��� ��:.?������=݅��MU�B�X)8�M���)�4��ª����98�����=̙`Pl[�8{i�=�P��:;n�I�-���2��iμ(�A�F�+�v�2-}�/��kUr�/�E�Բ�`�tw	^�x��e��A7$B�䮧`(Ԑ@����
�f$��\jȁ��T^x��uq�����7�F��#:��N�#�±(���yN�W��Qr=�R���+�<w�h*5���$��	Y[G�tJI�h�)��uwˉ�rH����B���2J�d3!���7:
 � �W<8 &s���5M�{��ތ�Dh�0�d��:X`U=�i�2ll�@��2-̲�#jZ�ZWIs�k���m�fx�80�(�f�a �.友��y�R��	%2I�*�$M�[$`N��p��qg��I9i�W��#{K3W��Ua�ح�H�����:����`>(�m��:5j��t�AAP�. �-R]�E�ڃ7l�J�㇝ �[-YCA��-1��41���%l�Ae���YT[Dk$�AP�d���|#Pw&��_Y��d� y:.�\�_�)Œ�ƍ-OC��Қ	Q�#8�R�1K�i��Id�(��-d̿���o�_ �ћ*y�u���"yٗ<���=��Զ�M�UӸ��G���98�ur�eB&]��0D�	�XԀ\g�n8K3{�j�{L�fI5��W��X86-��W�aP�\
Y�)3��#��D�QBŀԌ���b��o2�=k����J��,�@OB4����ds�G4%���9*�3J�0,m���D�]�lP��(���
��}�|Va&<����A<l	�!�rE8P���ο