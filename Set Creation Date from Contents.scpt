FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ; 5 Set object name and creation date from document text     � 	 	 j   S e t   o b j e c t   n a m e   a n d   c r e a t i o n   d a t e   f r o m   d o c u m e n t   t e x t   
  
 l     ��  ��    ) # Created by Graeme Wilford 8/9/2012     �   F   C r e a t e d   b y   G r a e m e   W i l f o r d   8 / 9 / 2 0 1 2      l     ��  ��    5 / Copyright (c) 2012, 2013. All rights reserved.     �   ^   C o p y r i g h t   ( c )   2 0 1 2 ,   2 0 1 3 .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        l     ��  ��    Z T the perl script (takes document text on STDIN and source file path as 1st argument)     �   �   t h e   p e r l   s c r i p t   ( t a k e s   d o c u m e n t   t e x t   o n   S T D I N   a n d   s o u r c e   f i l e   p a t h   a s   1 s t   a r g u m e n t )      l     ����  r         m          � ! ! ` / U s e r s / g w i l f o r d / p a p e r l e s s - s c r i p t s / P D F - d a t e - s t d i n  o      ���� 0 pdfdate PDFdate��  ��     " # " l    $���� $ r     % & % m     ' ' � ( ( T   - c   - L   / U s e r s / g w i l f o r d / P D F - d a t e - s t d i n . o u t   & o      ���� 0 pdfdate_args PDFdate_args��  ��   #  ) * ) l    +���� + r     , - , m    	����N  - o      ���� 0 maxtextsize MaxTextSize��  ��   *  . / . l     ��������  ��  ��   /  0�� 0 l  X 1���� 1 O   X 2 3 2 Q   W 4 5 6 4 k   * 7 7  8 9 8 r     : ; : l    <���� < 1    ��
�� 
DTsl��  ��   ; o      ���� 0 this_selection   9  = > = Z   , ? @���� ? =   ! A B A o    ���� 0 this_selection   B J     ����   @ R   $ (�� C��
�� .ascrerr ****      � **** C m   & ' D D � E E 6 P l e a s e   s e l e c t   s o m e   r e c o r d s .��  ��  ��   >  F G F l  - -��������  ��  ��   G  H I H r   - 4 J K J I  - 2�� L��
�� .corecnte****       **** L o   - .���� 0 this_selection  ��   K o      ���� 0 number_of_steps   I  M N M I  5 <�� O P
�� .DTpacd40bool       utxt O m   5 6 Q Q � R R $ P a r s i n g   d o c u m e n t s & P �� S��
�� 
DTsp S o   7 8���� 0 number_of_steps  ��   N  T U T l  = =��������  ��  ��   U  V W V X   =" X�� Y X k   Q Z Z  [ \ [ l  Q Q�� ] ^��   ] = 7 fake a 'continue' with an exit repeat of a 1-pass loop    ^ � _ _ n   f a k e   a   ' c o n t i n u e '   w i t h   a n   e x i t   r e p e a t   o f   a   1 - p a s s   l o o p \  `�� ` U   Q a b a k   X c c  d e d r   X e f g f c   X a h i h n   X ] j k j 1   Y ]��
�� 
pnam k o   X Y���� 0 this_record   i m   ] `��
�� 
TEXT g o      ���� 0 	this_name   e  l m l I  f m�� n��
�� .DTpacd41bool    ��� utxt n o   f i���� 0 	this_name  ��   m  o p o l  n n��������  ��  ��   p  q r q l  n n�� s t��   s J D get text contents of PDF and pass up to MaxTextSize chars to parser    t � u u �   g e t   t e x t   c o n t e n t s   o f   P D F   a n d   p a s s   u p   t o   M a x T e x t S i z e   c h a r s   t o   p a r s e r r  v w v r   n w x y x n   n s z { z 1   o s��
�� 
DTpl { o   n o���� 0 this_record   y o      ���� 0 thetext theText w  | } | r   x � ~  ~ n   x  � � � 1   { ��
�� 
leng � o   x {���� 0 thetext theText  o      ���� 0 thetextsize theTextSize }  � � � l  � ��� � ���   � ; 5 skip to the next record if we have no text to parse     � � � � j   s k i p   t o   t h e   n e x t   r e c o r d   i f   w e   h a v e   n o   t e x t   t o   p a r s e   �  � � � Z  � � � ����� � =   � � � � � o   � ����� 0 thetextsize theTextSize � m   � �����   �  S   � ���  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � < 6 only pass MaxTextSize chars through "do shell script"    � � � � l   o n l y   p a s s   M a x T e x t S i z e   c h a r s   t h r o u g h   " d o   s h e l l   s c r i p t " �  � � � Z  � � � ����� � ?   � � � � � o   � ����� 0 thetextsize theTextSize � o   � ����� 0 maxtextsize MaxTextSize � r   � � � � � o   � ����� 0 maxtextsize MaxTextSize � o      ���� 0 thetextsize theTextSize��  ��   �  � � � s   � � � � � c   � � � � � n   � � � � � 7 � ��� � �
�� 
cha  � m   � �����  � o   � ����� 0 thetextsize theTextSize � o   � ����� 0 thetext theText � m   � ���
�� 
TEXT � o      ����  0 thetrimmedtext theTrimmedText �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
ppth � o   � ����� 0 this_record   � o      ���� 0 thepath thePath �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   do the heavy lifting    � � � � *   d o   t h e   h e a v y   l i f t i n g �  � � � l  � ��� � ���   � 4 . NB. shell can only handle ~260k command line	    � � � � \   N B .   s h e l l   c a n   o n l y   h a n d l e   ~ 2 6 0 k   c o m m a n d   l i n e 	 �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � 
 e c h o   � n   � � � � � 1   � ���
�� 
strq � o   � �����  0 thetrimmedtext theTrimmedText � m   � � � � � � �    |   � o   � ����� 0 pdfdate PDFdate � o   � ����� 0 pdfdate_args PDFdate_args � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 thepath thePath��   � o      ���� 0 thename theName �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   get the file timestamp    � � � � .   g e t   t h e   f i l e   t i m e s t a m p �  � � � O   � � � � r   � � � � n   � � � � � 1   � ���
�� 
asmo � 4   � ��� �
�� 
file � o   � ����� 0 thepath thePath � o      ���� 0 thedate theDate � m   � � � ��                                                                                  sevs  alis    �  Macintosh HD               ʹEdH+  m2[System Events.app                                              pb���        ����  	                CoreServices    ʹ7T      ���    m2[m2Um2T  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l ��������  ��  ��   �  � � � l �� � ���   �   set DB object name    � � � � &   s e t   D B   o b j e c t   n a m e �  � � � l �� � ���   � - ' do this *after* checking file mod date    � � � � N   d o   t h i s   * a f t e r *   c h e c k i n g   f i l e   m o d   d a t e �  � � � l �� � ���   � / ) as this command actually moves the file!    � � � � R   a s   t h i s   c o m m a n d   a c t u a l l y   m o v e s   t h e   f i l e ! �  � � � r   � � � o  ���� 0 thename theName � l      ����� � n       � � � 1  	��
�� 
pnam � o  	���� 0 this_record  ��  ��   �  � � � l ��~�}�  �~  �}   �  � � � l �| � ��|   � "  set DB object creation date    � �   8   s e t   D B   o b j e c t   c r e a t i o n   d a t e � �{ r   o  �z�z 0 thedate theDate l     �y�x n       1  �w
�w 
DTcr o  �v�v 0 this_record  �y  �x  �{   b m   T U�u�u ��  �� 0 this_record   Y o   @ A�t�t 0 this_selection   W  I #(�s�r�q
�s .DTpacd43bool    ��� null�r  �q   	�p	 l ))�o�n�m�o  �n  �m  �p   5 R      �l

�l .ascrerr ****      � ****
 o      �k�k 0 error_message   �j�i
�j 
errn o      �h�h 0 error_number  �i   6 k  2W  I 27�g�f�e
�g .DTpacd43bool    ��� null�f  �e   �d Z 8W�c�b > 8= l 89�a�` o  89�_�_ 0 error_number  �a  �`   m  9<�^�^�� I @S�]
�] .sysodisAaleR        TEXT m  @C �  D E V O N t h i n k   P r o �\
�\ 
mesS o  FG�[�[ 0 error_message   �Z�Y
�Z 
as A m  JM�X
�X EAlTwarN�Y  �c  �b  �d   3 5    �W�V
�W 
capp m     � @ c o m . d e v o n - t e c h n o l o g i e s . t h i n k p r o 2
�V kfrmID  ��  ��  ��       �U !�U    �T
�T .aevtoappnull  �   � ****! �S"�R�Q#$�P
�S .aevtoappnull  �   � ****" k    X%%  &&  "''  )((  0�O�O  �R  �Q  # �N�M�L�N 0 this_record  �M 0 error_message  �L 0 error_number  $ 3  �K '�J�I�H�G�F�E�D D�C�B Q�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2 ��1 ��0�/ ��.�-�,�+�*�))�(�'�&�%�$�#�K 0 pdfdate PDFdate�J 0 pdfdate_args PDFdate_args�IN �H 0 maxtextsize MaxTextSize
�G 
capp
�F kfrmID  
�E 
DTsl�D 0 this_selection  
�C .corecnte****       ****�B 0 number_of_steps  
�A 
DTsp
�@ .DTpacd40bool       utxt
�? 
kocl
�> 
cobj
�= 
pnam
�< 
TEXT�; 0 	this_name  
�: .DTpacd41bool    ��� utxt
�9 
DTpl�8 0 thetext theText
�7 
leng�6 0 thetextsize theTextSize
�5 
cha �4  0 thetrimmedtext theTrimmedText
�3 
ppth�2 0 thepath thePath
�1 
strq
�0 .sysoexecTEXT���     TEXT�/ 0 thename theName
�. 
file
�- 
asmo�, 0 thedate theDate
�+ 
DTcr
�* .DTpacd43bool    ��� null�) 0 error_message  ) �"�!� 
�" 
errn�! 0 error_number  �   �(��
�' 
mesS
�& 
as A
�% EAlTwarN�$ 
�# .sysodisAaleR        TEXT�PY�E�O�E�O�E�O)���0E*�,E�O�jv  	)j�Y hO�j E�O���l O ��[a a l kh   �kkh�a ,a &E` O_ j O�a ,E` O_ a ,E` O_ j  Y hO_ � 
�E` Y hO_ [a \[Zk\Z_ 2a &EQ` O�a ,E` Oa _ a  ,%a !%�%�%_ a  ,%j "E` #Oa $ *a %_ /a &,E` 'UO_ #�a ,FO_ '�a (,F[OY�<[OY�.O*j )OPW ,X * +*j )O�a , a -a .�a /a 0a 1 2Y hUascr  ��ޭ