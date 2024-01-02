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
BZh91AY&SY�A� {��������������pD@  � `��<ͭG�a��ۗw^����!SǼ��f�ڪ�>�v����ց�	�2!�O*y1&��)����	�����COI�F��� $���'���)�mSz� �� h� d FBSi=C#�@    �z��4h  I�!'�<�j����OI�=5=M�Pژ� ��4� h�  4Q)�L������L��OHd<S��b���j��i� z� h��	��0��OI��#OBz54ddC  2 q�H���V$ ����N'�X+S��x��	���عH 7��ׂ�(�ae9����o���@����BI�D!��+&�տ�w$�0�bW/6�[#V6�c0�9�<��ᐴ9�]�_F�����UUe�g5�#u��_�EE�3&&8l[C��΀&.C��I���V�&�:�1�n�T�J�=؅.J�� b���C�Kq鳻�ff�g���nNU�A�|��72%F6���T�bꬑ+�;�6���P�� �����D���(\y6n{R�Jt�je��顒�@@�!��γ֧��K�ZIAț�v����(2yNp���{3� S��!�G��%�&��αM����M���F˧t����:i$Yμt�$Pu�T�'�U�O1_��9,��~�潯�r��5�R4C���nO��<�$�+�[�z��nF�Rt�����T�����5�rB�?�|\� �YZn��J�ԔP�������m�r��)2sӜ�A�A��0f)��Z��	�1�=B۸�aK,���$0d�U6�
�%G;|�:>�k��D��[�{�v���ݸ)��M��ei����Z_�-;r4ՈQ3�Qf;~y`�V��H�A�m�\С��B�:�pr���c�0�J�p�yZ��$����� nn\�]�W�/�b���O]��u��L��:&T.=����k�>B�$�S��Y��=�SJa�a�n�B���]�����:�q�sW��'�kQ�e�h�EaH;7��ӧE��� *�AӺLF^�H$`ę�B�@���v���V��Z��0�t1U獬�%�#�t�)&�.�1>*���xvYD����j���(���Β��֔�҅ z� `�T�#-a�o3CGE�:���	��-�L�P$�����p?������e)�<��-��kOV�;wT�3��A��r^N�O��I�1a�Y�{�R�s&F-~I�{v�*�SL�#H��B�$$��{�\v8U��^����b�L���M̂�j���˸.ιعqN���le�A�J�ET)P�~�"&��7C�E��-�	�J(J/�n��ꗿ�'g��@��y���V\ >��D�T	"����C�UN���T�D�'sh=�w?�A�tE���՜�*d|_�v�F���Y��G\}�L�~��ȷv�N���)�F���Z\� �k$Gdo��g�����z$BA_���#aH��7(�U���9�|t��U6����BI�s��\�m����.mZ����dh���hř����"ڭ/1���Kl��&��̸pƩ����}!ՖWI;���t�o/�f&I�.��\�z`yL���Sò#����<�ʰv*;����pOiM]l�'��87��KTպ��wu,i��ӌIRl# (s�sg
��M�UUU��n��������U�x�;����1�-go���C�ơ���䟧��lk�;$k��j�v�nEX���ǚ�E��K� Rq5�kB�41u��lyf�,�l��ac��0')ϰ65�����POG9���:��W�d9�l��? ����@[Dd�9B�Af@�)�����E����@��«((�5m;J���Tc�/�[�k��	]����2�H�=rߥ�4MF�Pʃ�"Ϝ�p6��E���;BΒ׽��%��3Ɍ*a�x��z�a���/l���M��MT[r�np�(����]λ���{�כ:����
�ˡ6p��Y�ag{��~uh�F4/(]"�i+J��&�bW傈���J��:R@Uv2��i�W,��ƥ�a������Ez��сAJ�Y/Ce(�O\�N�ū���ˇJ�TTj��\�m���g���R�����Y'nYl��*Zz�s�C&a�'��1��iEyo8�f%=L{�0���eVg�^��ӿ���q)wI�\a���Cj�C�69H��&�7i��ٹw�7�H�3��l&�D��%���lV0T��tx	�2��yv�(pɘ�*�m��X�#mT;�?�	�z}]�G\���p@t�J2�:���u-����0$�鄘��Gy�bZ/����4����A~_jSqw�G,�c�7�J��G� �`WLx�u!RV`��7#6�H���D�5�2=U��zl���bT;5Z#w0��"�6�s�&��Y<=�UcGU�6iD�BK��C_�`� ���R,�Z$��m9�'��%3�K���Bܕ,���]-(WZ���"8�iqp���~�ujdO���la�c'��ͧ8P���H��:TKj]�#�I#c1i2��*W�ڲ�]�[d%���H��J�tD�PlD ]�h�8��f<��{T�"�TЖk��@톜�)���3@��Ba501 �zE:���� +`$�@!�d�3�m�)�^3d�Uǅ0���9�q�J�\��0gd���]('>=
k��I|��p|���SԒ�$��q�̒vLR�dbav��Y�W[hn$�\m�`�~pHD��!�d9#]�| =�!�I]EMT�(�H�7pŃh�<�����>�q>�<��w!r��]H\��m��فW�r���Y��Ӗ@��uJ�e�ٸE��2f+0�c��!���!Yķ��	� ����݁�i�R*㐍6�c�t�	�����T6��B��!\^���J���H%I�ܠ���K!x�,<�% �L�Su�#�,�W-�HӞs�Q��;A}��M�bN-�F���{&P*ظ
p�Wv7��_zX����ҍk��`�����*��z�*6�\N�E]E^^���LPZ�.LV&���|�nI���$�$�
�`np$0���$W�=m+�Z�z�����x�g,b���w;��� �T� B�#h�̔�KVXEίh	�"�w�K��4�qџ�&�ѫp��;d�-�yN�Q����G-���[B��U/7Ɛ�?C\κY!���IM�A% d.�P����d�1����bR��kx��c�Z]G��cpj�o&���M��`�&A��]����"��%��vIw�z*�`C�Ђ�5���L�I�S���s�R�yb�BIL�w
�6�"�j(�����׭�LF:��.�Ù!��t[�[�|�+��(P�gLl�PӍ%[0�IY�Ig#0�dlT
���s��b��A�.��v�I^�H=�b��g��$1���%d�AKQsR�YTl$�QT��)�F�ʊC6ف�1$-`+C5�|!Rcun����Uw䤈���4��b#�J�ΗB�k���E贩dA��:�bM�[1pg�C
7zH���R��-�Ov{�1����Ѽ��#Č3���N%�A��j�+$L�K�`����Q� �������ޙ��X?�4���$�U˞j� U@ؑ밎��.ض[-���Ư�0����J(X�����`"3!o����$����@'�
a+��-�[�%-~�ss��rT�Jp&$������	��"�0��x@P�� @�::���	� �麠�)�$H�%��]��BC0	