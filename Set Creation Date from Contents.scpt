FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ; 5 Set object name and creation date from document text     � 	 	 j   S e t   o b j e c t   n a m e   a n d   c r e a t i o n   d a t e   f r o m   d o c u m e n t   t e x t   
  
 l     ��  ��    ) # Created by Graeme Wilford 8/9/2012     �   F   C r e a t e d   b y   G r a e m e   W i l f o r d   8 / 9 / 2 0 1 2      l     ��  ��    5 / Copyright (c) 2012, 2013. All rights reserved.     �   ^   C o p y r i g h t   ( c )   2 0 1 2 ,   2 0 1 3 .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    J D the perl script (takes document text on STDIN and source file path)     �   �   t h e   p e r l   s c r i p t   ( t a k e s   d o c u m e n t   t e x t   o n   S T D I N   a n d   s o u r c e   f i l e   p a t h )      l    	 ����  r     	   !   I    �� " #
�� .earsffdralis        afdr " m     ��
�� afdrasup # �� $��
�� 
from $ m    ��
�� fldmfldu��   ! o      ���� 0 appsupp  ��  ��     % & % l  
  '���� ' r   
  ( ) ( n   
  * + * 1    ��
�� 
strq + l  
  ,���� , b   
  - . - n   
  / 0 / 1    ��
�� 
psxp 0 o   
 ���� 0 appsupp   . m     1 1 � 2 2 > D E V O N t h i n k   P r o   2 / P D F - d a t e - s t d i n��  ��   ) o      ���� 0 pdfdate PDFdate��  ��   &  3 4 3 l     ��������  ��  ��   4  5 6 5 l     �� 7 8��   7 4 . location of an optional logfile for debugging    8 � 9 9 \   l o c a t i o n   o f   a n   o p t i o n a l   l o g f i l e   f o r   d e b u g g i n g 6  : ; : l     �� < =��   < % set home to path to home folder    = � > > > s e t   h o m e   t o   p a t h   t o   h o m e   f o l d e r ;  ? @ ? l     �� A B��   A O Iset logfile to quoted form of (POSIX path of home & "PDF-date-stdin.out")    B � C C � s e t   l o g f i l e   t o   q u o t e d   f o r m   o f   ( P O S I X   p a t h   o f   h o m e   &   " P D F - d a t e - s t d i n . o u t " ) @  D E D l     �� F G��   F 3 -set PDFdate_args to " -c -L " & logfile & " "    G � H H Z s e t   P D F d a t e _ a r g s   t o   "   - c   - L   "   &   l o g f i l e   &   "   " E  I J I l    K���� K r     L M L m     N N � O O    - c   M o      ���� 0 pdfdate_args PDFdate_args��  ��   J  P Q P l     ��������  ��  ��   Q  R S R l     �� T U��   T 8 2 Maximum amount of text to process for date string    U � V V d   M a x i m u m   a m o u n t   o f   t e x t   t o   p r o c e s s   f o r   d a t e   s t r i n g S  W X W l    Y���� Y r     Z [ Z m    ����N  [ o      ���� 0 maxtextsize MaxTextSize��  ��   X  \ ] \ l     ��������  ��  ��   ]  ^�� ^ l  x _���� _ O   x ` a ` Q   $w b c d b k   'J e e  f g f r   ' 0 h i h l  ' , j���� j 1   ' ,��
�� 
DTsl��  ��   i o      ���� 0 this_selection   g  k l k Z  1 D m n���� m =  1 7 o p o o   1 4���� 0 this_selection   p J   4 6����   n R   : @�� q��
�� .ascrerr ****      � **** q m   < ? r r � s s 6 P l e a s e   s e l e c t   s o m e   r e c o r d s .��  ��  ��   l  t u t l  E E��������  ��  ��   u  v w v r   E P x y x I  E L�� z��
�� .corecnte****       **** z o   E H���� 0 this_selection  ��   y o      ���� 0 number_of_steps   w  { | { I  Q ^�� } ~
�� .DTpacd40bool       utxt } m   Q T   � � � $ P a r s i n g   d o c u m e n t s & ~ �� ���
�� 
DTsp � o   W Z���� 0 number_of_steps  ��   |  � � � l  _ _��������  ��  ��   �  � � � X   _B ��� � � k   u= � �  � � � l  u u�� � ���   � = 7 fake a 'continue' with an exit repeat of a 1-pass loop    � � � � n   f a k e   a   ' c o n t i n u e '   w i t h   a n   e x i t   r e p e a t   o f   a   1 - p a s s   l o o p �  ��� � U   u= � � � k   |8 � �  � � � r   | � � � � c   | � � � � n   | � � � � 1   } ���
�� 
pnam � o   | }���� 0 this_record   � m   � ���
�� 
TEXT � o      ���� 0 	this_name   �  � � � I  � ��� ���
�� .DTpacd41bool    ��� utxt � o   � ����� 0 	this_name  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � J D get text contents of PDF and pass up to MaxTextSize chars to parser    � � � � �   g e t   t e x t   c o n t e n t s   o f   P D F   a n d   p a s s   u p   t o   M a x T e x t S i z e   c h a r s   t o   p a r s e r �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
DTpl � o   � ����� 0 this_record   � o      ���� 0 thetext theText �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
leng � o   � ����� 0 thetext theText � o      ���� 0 thetextsize theTextSize �  � � � l  � ��� � ���   � ; 5 skip to the next record if we have no text to parse     � � � � j   s k i p   t o   t h e   n e x t   r e c o r d   i f   w e   h a v e   n o   t e x t   t o   p a r s e   �  � � � Z  � � � ����� � =   � � � � � o   � ����� 0 thetextsize theTextSize � m   � �����   �  S   � ���  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � < 6 only pass MaxTextSize chars through "do shell script"    � � � � l   o n l y   p a s s   M a x T e x t S i z e   c h a r s   t h r o u g h   " d o   s h e l l   s c r i p t " �  � � � Z  � � � ����� � ?   � � � � � o   � ����� 0 thetextsize theTextSize � o   � ����� 0 maxtextsize MaxTextSize � r   � � � � � o   � ����� 0 maxtextsize MaxTextSize � o      ���� 0 thetextsize theTextSize��  ��   �  � � � s   � � � � � c   � � � � � n   � � � � � 7 � ��� � �
�� 
cha  � m   � �����  � o   � ����� 0 thetextsize theTextSize � o   � ����� 0 thetext theText � m   � ���
�� 
TEXT � o      ����  0 thetrimmedtext theTrimmedText �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
ppth � o   � ����� 0 this_record   � o      ���� 0 thepath thePath �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   do the heavy lifting    � � � � *   d o   t h e   h e a v y   l i f t i n g �  � � � l  � ��� � ���   � 4 . NB. shell can only handle ~260k command line	    � � � � \   N B .   s h e l l   c a n   o n l y   h a n d l e   ~ 2 6 0 k   c o m m a n d   l i n e 	 �  � � � r   � � � � I  ��� ��
�� .sysoexecTEXT���     TEXT � b   � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � 
 e c h o   � n   � � � � � 1   � ��~
�~ 
strq � o   � ��}�}  0 thetrimmedtext theTrimmedText � m   � � � � � � �    |   � o   � ��|�| 0 pdfdate PDFdate � o   � ��{�{ 0 pdfdate_args PDFdate_args � n   � � � � 1  �z
�z 
strq � o   ��y�y 0 thepath thePath�   � o      �x�x 0 thename theName �  �  � l �w�v�u�w  �v  �u     l �t�t     get the file timestamp    � .   g e t   t h e   f i l e   t i m e s t a m p  O  $	 r  #

 n   1  �s
�s 
asmo 4  �r
�r 
file o  �q�q 0 thepath thePath o      �p�p 0 thedate theDate	 m  �                                                                                  sevs  alis    �  Macintosh HD               ʹEdH+  m2[System Events.app                                              pb���        ����  	                CoreServices    ʹ7T      ���    m2[m2Um2T  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��    l %%�o�n�m�o  �n  �m    l %%�l�l     set DB object name    � &   s e t   D B   o b j e c t   n a m e  l %%�k�k   - ' do this *after* checking file mod date    � N   d o   t h i s   * a f t e r *   c h e c k i n g   f i l e   m o d   d a t e  l %%�j�j   / ) as this command actually moves the file!    �   R   a s   t h i s   c o m m a n d   a c t u a l l y   m o v e s   t h e   f i l e ! !"! r  %.#$# o  %(�i�i 0 thename theName$ l     %�h�g% n      &'& 1  )-�f
�f 
pnam' o  ()�e�e 0 this_record  �h  �g  " ()( l //�d�c�b�d  �c  �b  ) *+* l //�a,-�a  , "  set DB object creation date   - �.. 8   s e t   D B   o b j e c t   c r e a t i o n   d a t e+ /�`/ r  /8010 o  /2�_�_ 0 thedate theDate1 l     2�^�]2 n      343 1  37�\
�\ 
DTcr4 o  23�[�[ 0 this_record  �^  �]  �`   � m   x y�Z�Z ��  �� 0 this_record   � o   b e�Y�Y 0 this_selection   � 565 I CH�X�W�V
�X .DTpacd43bool    ��� null�W  �V  6 7�U7 l II�T�S�R�T  �S  �R  �U   c R      �Q89
�Q .ascrerr ****      � ****8 o      �P�P 0 error_message  9 �O:�N
�O 
errn: o      �M�M 0 error_number  �N   d k  Rw;; <=< I RW�L�K�J
�L .DTpacd43bool    ��� null�K  �J  = >�I> Z Xw?@�H�G? > X]ABA l XYC�F�EC o  XY�D�D 0 error_number  �F  �E  B m  Y\�C�C��@ I `s�BDE
�B .sysodisAaleR        TEXTD m  `cFF �GG  D E V O N t h i n k   P r oE �AHI
�A 
mesSH o  fg�@�@ 0 error_message  I �?J�>
�? 
as AJ m  jm�=
�= EAlTwarN�>  �H  �G  �I   a 5    !�<K�;
�< 
cappK m    LL �MM @ c o m . d e v o n - t e c h n o l o g i e s . t h i n k p r o 2
�; kfrmID  ��  ��  ��       �:NO�:  N �9
�9 .aevtoappnull  �   � ****O �8P�7�6QR�5
�8 .aevtoappnull  �   � ****P k    xSS  TT  %UU  IVV  WWW  ^�4�4  �7  �6  Q �3�2�1�3 0 this_record  �2 0 error_message  �1 0 error_number  R 9�0�/�.�-�,�+ 1�*�) N�(�'�&�%L�$�#�" r�!�  ���������������� � �������
�	�X�F�����
�0 afdrasup
�/ 
from
�. fldmfldu
�- .earsffdralis        afdr�, 0 appsupp  
�+ 
psxp
�* 
strq�) 0 pdfdate PDFdate�( 0 pdfdate_args PDFdate_args�'N �& 0 maxtextsize MaxTextSize
�% 
capp
�$ kfrmID  
�# 
DTsl�" 0 this_selection  
�! .corecnte****       ****�  0 number_of_steps  
� 
DTsp
� .DTpacd40bool       utxt
� 
kocl
� 
cobj
� 
pnam
� 
TEXT� 0 	this_name  
� .DTpacd41bool    ��� utxt
� 
DTpl� 0 thetext theText
� 
leng� 0 thetextsize theTextSize
� 
cha �  0 thetrimmedtext theTrimmedText
� 
ppth� 0 thepath thePath
� .sysoexecTEXT���     TEXT� 0 thename theName
� 
file
� 
asmo� 0 thedate theDate
�
 
DTcr
�	 .DTpacd43bool    ��� null� 0 error_message  X �� ��
� 
errn�  0 error_number  ��  ���
� 
mesS
� 
as A
� EAlTwarN� 
� .sysodisAaleR        TEXT�5y���l E�O��,�%�,E�O�E�O�E�O)���0U(*a ,E` O_ jv  )ja Y hO_ j E` Oa a _ l O �_ [a a l kh   �kkh�a ,a &E` O_ j O�a ,E` O_ a  ,E` !O_ !j  Y hO_ !� 
�E` !Y hO_ [a "\[Zk\Z_ !2a &EQ` #O�a $,E` %Oa &_ #�,%a '%�%�%_ %�,%j (E` )Oa * *a +_ %/a ,,E` -UO_ )�a ,FO_ -�a .,F[OY�@[OY�2O*j /OPW ,X 0 1*j /O�a 2 a 3a 4�a 5a 6a 7 8Y hUascr  ��ޭ