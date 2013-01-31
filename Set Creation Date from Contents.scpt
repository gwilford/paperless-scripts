FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ; 5 Set object name and creation date from document text     � 	 	 j   S e t   o b j e c t   n a m e   a n d   c r e a t i o n   d a t e   f r o m   d o c u m e n t   t e x t   
  
 l     ��  ��    ) # Created by Graeme Wilford 8/9/2012     �   F   C r e a t e d   b y   G r a e m e   W i l f o r d   8 / 9 / 2 0 1 2      l     ��  ��    5 / Copyright (c) 2012, 2013. All rights reserved.     �   ^   C o p y r i g h t   ( c )   2 0 1 2 ,   2 0 1 3 .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        l     ��  ��    Z T the perl script (takes document text on STDIN and source file path as 1st argument)     �   �   t h e   p e r l   s c r i p t   ( t a k e s   d o c u m e n t   t e x t   o n   S T D I N   a n d   s o u r c e   f i l e   p a t h   a s   1 s t   a r g u m e n t )      l     ����  r         m          � ! ! ` / U s e r s / g w i l f o r d / p a p e r l e s s - s c r i p t s / P D F - d a t e - s t d i n  o      ���� 0 pdfdate PDFdate��  ��     " # " l    $���� $ r     % & % m    ����N  & o      ���� 0 maxtextsize MaxTextSize��  ��   #  ' ( ' l     ��������  ��  ��   (  )�� ) l  T *���� * O   T + , + Q   S - . / - k   & 0 0  1 2 1 r     3 4 3 l    5���� 5 1    ��
�� 
DTsl��  ��   4 o      ���� 0 this_selection   2  6 7 6 Z   ( 8 9���� 8 =    : ; : o    ���� 0 this_selection   ; J    ����   9 R     $�� <��
�� .ascrerr ****      � **** < m   " # = = � > > 8 P l e a s e   s e l e c t   s o m e   c o n t e n t s .��  ��  ��   7  ? @ ? l  ) )��������  ��  ��   @  A B A r   ) 0 C D C I  ) .�� E��
�� .corecnte****       **** E o   ) *���� 0 this_selection  ��   D o      ���� 0 number_of_steps   B  F G F I  1 8�� H I
�� .DTpacd40bool       utxt H m   1 2 J J � K K $ P a r s i n g   d o c u m e n t s & I �� L��
�� 
DTsp L o   3 4���� 0 number_of_steps  ��   G  M N M l  9 9��������  ��  ��   N  O P O X   9 Q�� R Q k   K S S  T U T l  K K�� V W��   V = 7 fake a 'continue' with an exit repeat of a 1-pass loop    W � X X n   f a k e   a   ' c o n t i n u e '   w i t h   a n   e x i t   r e p e a t   o f   a   1 - p a s s   l o o p U  Y�� Y U   K Z [ Z k   R \ \  ] ^ ] r   R _ _ ` _ c   R [ a b a n   R W c d c 1   S W��
�� 
pnam d o   R S���� 0 this_record   b m   W Z��
�� 
TEXT ` o      ���� 0 	this_name   ^  e f e I  ` g�� g��
�� .DTpacd41bool    ��� utxt g o   ` c���� 0 	this_name  ��   f  h i h l  h h��������  ��  ��   i  j k j l  h h�� l m��   l J D get text contents of PDF and pass up to MaxTextSize chars to parser    m � n n �   g e t   t e x t   c o n t e n t s   o f   P D F   a n d   p a s s   u p   t o   M a x T e x t S i z e   c h a r s   t o   p a r s e r k  o p o r   h q q r q n   h m s t s 1   i m��
�� 
DTpl t o   h i���� 0 this_record   r o      ���� 0 thetext theText p  u v u r   r } w x w n   r y y z y 1   u y��
�� 
leng z o   r u���� 0 thetext theText x o      ���� 0 thetextsize theTextSize v  { | { l  ~ ~�� } ~��   } ; 5 skip to the next record if we have no text to parse     ~ �   j   s k i p   t o   t h e   n e x t   r e c o r d   i f   w e   h a v e   n o   t e x t   t o   p a r s e   |  � � � Z  ~ � � ����� � =   ~ � � � � o   ~ ����� 0 thetextsize theTextSize � m   � �����   �  S   � ���  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � < 6 only pass MaxTextSize chars through "do shell script"    � � � � l   o n l y   p a s s   M a x T e x t S i z e   c h a r s   t h r o u g h   " d o   s h e l l   s c r i p t " �  � � � Z  � � � ����� � ?   � � � � � o   � ����� 0 thetextsize theTextSize � o   � ����� 0 maxtextsize MaxTextSize � r   � � � � � o   � ����� 0 maxtextsize MaxTextSize � o      ���� 0 thetextsize theTextSize��  ��   �  � � � s   � � � � � c   � � � � � n   � � � � � 7 � ��� � �
�� 
cha  � m   � �����  � o   � ����� 0 thetextsize theTextSize � o   � ����� 0 thetext theText � m   � ���
�� 
TEXT � o      ����  0 thetrimmedtext theTrimmedText �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
ppth � o   � ����� 0 this_record   � o      ���� 0 thepath thePath �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   do the heavy lifting    � � � � *   d o   t h e   h e a v y   l i f t i n g �  � � � l  � ��� � ���   � 4 . NB. shell can only handle ~260k command line	    � � � � \   N B .   s h e l l   c a n   o n l y   h a n d l e   ~ 2 6 0 k   c o m m a n d   l i n e 	 �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � 
 e c h o   � n   � � � � � 1   � ���
�� 
strq � o   � �����  0 thetrimmedtext theTrimmedText � m   � � � � � � �    |   � o   � ����� 0 pdfdate PDFdate � 1   � ���
�� 
spac � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 thepath thePath��   � o      ���� 0 thename theName �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   get the file timestamp    � � � � .   g e t   t h e   f i l e   t i m e s t a m p �  � � � O   �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
asmo � 4   � ��� �
�� 
file � o   � ����� 0 thepath thePath � o      ���� 0 thedate theDate � m   � � � ��                                                                                  sevs  alis    �  Macintosh HD               ʹEdH+  m2[System Events.app                                              pb���        ����  	                CoreServices    ʹ7T      ���    m2[m2Um2T  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l ��������  ��  ��   �  � � � l �� � ���   �   set DB object name    � � � � &   s e t   D B   o b j e c t   n a m e �  � � � l �� � ���   � - ' do this *after* checking file mod date    � � � � N   d o   t h i s   * a f t e r *   c h e c k i n g   f i l e   m o d   d a t e �  � � � l �� � ���   � / ) as this command actually moves the file!    � � � � R   a s   t h i s   c o m m a n d   a c t u a l l y   m o v e s   t h e   f i l e ! �  � � � r  
 � � � o  ���� 0 thename theName � l      ����� � n       � � � 1  	��
�� 
pnam � o  ���� 0 this_record  ��  ��   �  � � � l ��������  ��  ��   �  � � � l � � ��   � "  set DB object creation date    � � � � 8   s e t   D B   o b j e c t   c r e a t i o n   d a t e �  ��~ � r   � � � o  �}�} 0 thedate theDate � l      ��|�{ � n       � � � 1  �z
�z 
DTcr � o  �y�y 0 this_record  �|  �{  �~   [ m   N O�x�x ��  �� 0 this_record   R o   < =�w�w 0 this_selection   P    I $�v�u�t
�v .DTpacd43bool    ��� null�u  �t   �s l %%�r�q�p�r  �q  �p  �s   . R      �o
�o .ascrerr ****      � **** o      �n�n 0 error_message   �m�l
�m 
errn o      �k�k 0 error_number  �l   / k  .S  I .3�j�i�h
�j .DTpacd43bool    ��� null�i  �h   	�g	 Z 4S
�f�e
 > 49 l 45�d�c o  45�b�b 0 error_number  �d  �c   m  58�a�a�� I <O�`
�` .sysodisAaleR        TEXT m  <? �  D E V O N t h i n k   P r o �_
�_ 
mesS o  BC�^�^ 0 error_message   �]�\
�] 
as A m  FI�[
�[ EAlTwarN�\  �f  �e  �g   , 5    �Z�Y
�Z 
capp m   
  � @ c o m . d e v o n - t e c h n o l o g i e s . t h i n k p r o 2
�Y kfrmID  ��  ��  ��       �X  �W�V�U !�T�S�R�Q�X   �P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A
�P .aevtoappnull  �   � ****�O 0 pdfdate PDFdate�N 0 maxtextsize MaxTextSize�M 0 this_selection  �L 0 number_of_steps  �K 0 	this_name  �J 0 thetext theText�I 0 thetextsize theTextSize�H  0 thetrimmedtext theTrimmedText�G 0 thepath thePath�F 0 thename theName�E 0 thedate theDate�D  �C  �B  �A   �@"�?�>#$�=
�@ .aevtoappnull  �   � ****" k    T%%  &&  "''  )�<�<  �?  �>  # �;�:�9�; 0 this_record  �: 0 error_message  �9 0 error_number  $ 2  �8�7�6�5�4�3�2 =�1�0 J�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!�  �� ���� �������(�������8 0 pdfdate PDFdate�7N �6 0 maxtextsize MaxTextSize
�5 
capp
�4 kfrmID  
�3 
DTsl�2 0 this_selection  
�1 .corecnte****       ****�0 0 number_of_steps  
�/ 
DTsp
�. .DTpacd40bool       utxt
�- 
kocl
�, 
cobj
�+ 
pnam
�* 
TEXT�) 0 	this_name  
�( .DTpacd41bool    ��� utxt
�' 
DTpl�& 0 thetext theText
�% 
leng�$ 0 thetextsize theTextSize
�# 
cha �"  0 thetrimmedtext theTrimmedText
�! 
ppth�  0 thepath thePath
� 
strq
� 
spac
� .sysoexecTEXT���     TEXT� 0 thename theName
� 
file
� 
asmo� 0 thedate theDate
� 
DTcr
� .DTpacd43bool    ��� null� 0 error_message  ( ���
� 
errn� 0 error_number  �  ���
� 
mesS
� 
as A
� EAlTwarN� 
� .sysodisAaleR        TEXT�=U�E�O�E�O)���0E*�,E�O�jv  	)j�Y hO�j 
E�O���l O ��[�a l 
kh   �kkh�a ,a &E` O_ j O�a ,E` O_ a ,E` O_ j  Y hO_ � 
�E` Y hO_ [a \[Zk\Z_ 2a &EQ` O�a ,E` Oa _ a ,%a %�%_  %_ a ,%j !E` "Oa # *a $_ /a %,E` &UO_ "�a ,FO_ &�a ',F[OY�:[OY�,O*j (OPW ,X ) **j (O�a + a ,a -�a .a /a 0 1Y hU�WN  �)� )  ** ++ ,��
�	, -���-�                                                                                  DNtp  alis    n  Macintosh HD               ʹEdH+  m2xDEVONthink Pro.app                                             {#�̮�d        ����  	                Applications    ʹ7T      ̮�T    m2x  -Macintosh HD:Applications: DEVONthink Pro.app   &  D E V O N t h i n k   P r o . a p p    M a c i n t o s h   H D  Applications/DEVONthink Pro.app   / ��  
� 
DTkb� 
� kfrmID  
� 
DTcn�
5�
�	 kfrmID  �V  �..  n o   d a t e �//�� D r   G r a e m e   W   W i l f o r d   2 2   C i t r d w c l l s   K e e p   G u i l d f o r d  S u r r e y  G U 2   9 P D  2 7 5 0 9 /  p a r t n e r s h i p   J o h n   L e w i s   W a i t r o s e  p a r t n e r s h i p   c a r d   s e r v i c e s   P O   B o x   5 1   3 7  C o v e n t r y   C V 3   9 E P   T e l e p h o n e   0 8 4 5   3 0 0   3 8 3 3  M a y   2 0 1   2  D e a r   D r   G r a e m e   W   W i l f o r d  Y o u r   p a r t n e r s h i p   c a r d T M   v o u c h e r s   a r e   e n c l o s e d  I   a m   d e l i g h t e d   t o   e n c l o s e   t h e   p a r t n e r s h i p   c a r d   v o u c h e r s   y o u   h a v e   e a r n e d ,   t o   t h e   v a l u e   o f �   1 0 ( 1   x   �   I   0 ) .   Y o u   c a n   u s e   y o u r   v o u c h e r s   f o r   a n y   p u r c h a s e   a c r o s s   o u r   h u g e   r a n g e   a t   J o h n   L e w i s   ( e i t h e r   i n   s t o r e ,   o n l i n e   o r   b y  c a t a l o g u e )   o r   a t   W a i t r o s e   ( i n   s t o r e   a n d   o n l i n e ) .   Y o u r   v o u c h e r s   n o   l o n g e r   d i s p l a y   e x p i r y   d a t e s ,   s o   y o u   c a n   c h o o s e   w h e n   t o   u s e   t h e m .  E a r n i n g   m o r e   v o u c h e r s   c o u l d n ' t   b e   e a s i e r  D o n ' t   f o r g e t   y o u   c a n   c o n t i n u e   t o   e a r n   p o i n t s   o n   a l l   y o u r   s h o p p i n g   w i t h   t h e   p a r t n e r s h i p   c a r d ,   s o   w h e t h e r   y o u ' r e  c h o o s i n g   a   n e w   l o o k   f o r   y o u r   h o m e   a t   J o h n   L e w i s   o r   s i m p l y   b u y i n g   y o u r   w e e k l y   g r o c e r i e s   a t   W a i t r o s e ,   i t   c o u l d   m a k e   s e n s e   t o   u s e   y o u r   p a r t n e r s h i p   c a r d .   A n d   r e m e m b e r ,   a l l   t h e   p o i n t s   y o u   e a r n   o v e r   t h e   c o m i n g   m o n t h s   w i l l  b e   c o n v e r t e d   i n t o   m o r e   v o u c h e r s   i n   O c t o b e r .  T h a n k   y o u   f o r   u s i n g   y o u r   p a r t n e r s h i p   c a r d ,   a n d   w e   l o o k   f o r w a r d   t o   s e e i n g   y o u   i n   s t o r e   o r   o n l i n e   s o o n .  Y o u r s   s i n c e r e l y  J a s o n   A l d r i d g e ,   S e n i o r   M a n a g e r   J o h n   L e w i s   F i n a n c i a l   S e r v i c e s   L i m i t e d  p a r t n e r s h i p   c a r d   i s   a   t r a d i n g   n a m e   o f   J o h n   L e w i s   F i n a n c i a l   S e n / i c e s   L i m i t e d .  J o h n   L e w i s   F i n a n c i a l   S e r v i c e s   L i m i t e d   i s   i n c o r p o r a t e d   i n   E n g l a n d   w i t h   l i m i t e d   l i a b i l i t y   u n d e r   C o m p a n y   N u m b e r   4 6 4 5 5 3 0 .  R e g i s t e r e d   O f f i c e   8   C a n a d a   S q u a r e ,   L o n d o n   E l 4   5 H Q .   C o n d i t i o n s   a n d   p o i n t s   e a r n i n g   l i m i t s   a p p l y  P o i n t s   o p e n i n g :   1 2 3 3   R e d e e m e d :   1 0 0 0  C l o s i n g :   2 3 3  
�U �00�� D r   G r a e m e   W   W i l f o r d   2 2   C i t r d w c l l s   K e e p   G u i l d f o r d  S u r r e y  G U 2   9 P D  2 7 5 0 9 /  p a r t n e r s h i p   J o h n   L e w i s   W a i t r o s e  p a r t n e r s h i p   c a r d   s e r v i c e s   P O   B o x   5 1   3 7  C o v e n t r y   C V 3   9 E P   T e l e p h o n e   0 8 4 5   3 0 0   3 8 3 3  M a y   2 0 1   2  D e a r   D r   G r a e m e   W   W i l f o r d  Y o u r   p a r t n e r s h i p   c a r d T M   v o u c h e r s   a r e   e n c l o s e d  I   a m   d e l i g h t e d   t o   e n c l o s e   t h e   p a r t n e r s h i p   c a r d   v o u c h e r s   y o u   h a v e   e a r n e d ,   t o   t h e   v a l u e   o f �   1 0 ( 1   x   �   I   0 ) .   Y o u   c a n   u s e   y o u r   v o u c h e r s   f o r   a n y   p u r c h a s e   a c r o s s   o u r   h u g e   r a n g e   a t   J o h n   L e w i s   ( e i t h e r   i n   s t o r e ,   o n l i n e   o r   b y  c a t a l o g u e )   o r   a t   W a i t r o s e   ( i n   s t o r e   a n d   o n l i n e ) .   Y o u r   v o u c h e r s   n o   l o n g e r   d i s p l a y   e x p i r y   d a t e s ,   s o   y o u   c a n   c h o o s e   w h e n   t o   u s e   t h e m .  E a r n i n g   m o r e   v o u c h e r s   c o u l d n ' t   b e   e a s i e r  D o n ' t   f o r g e t   y o u   c a n   c o n t i n u e   t o   e a r n   p o i n t s   o n   a l l   y o u r   s h o p p i n g   w i t h   t h e   p a r t n e r s h i p   c a r d ,   s o   w h e t h e r   y o u ' r e  c h o o s i n g   a   n e w   l o o k   f o r   y o u r   h o m e   a t   J o h n   L e w i s   o r   s i m p l y   b u y i n g   y o u r   w e e k l y   g r o c e r i e s   a t   W a i t r o s e ,   i t   c o u l d   m a k e   s e n s e   t o   u s e   y o u r   p a r t n e r s h i p   c a r d .   A n d   r e m e m b e r ,   a l l   t h e   p o i n t s   y o u   e a r n   o v e r   t h e   c o m i n g   m o n t h s   w i l l  b e   c o n v e r t e d   i n t o   m o r e   v o u c h e r s   i n   O c t o b e r .  T h a n k   y o u   f o r   u s i n g   y o u r   p a r t n e r s h i p   c a r d ,   a n d   w e   l o o k   f o r w a r d   t o   s e e i n g   y o u   i n   s t o r e   o r   o n l i n e   s o o n .  Y o u r s   s i n c e r e l y  J a s o n   A l d r i d g e ,   S e n i o r   M a n a g e r   J o h n   L e w i s   F i n a n c i a l   S e r v i c e s   L i m i t e d  p a r t n e r s h i p   c a r d   i s   a   t r a d i n g   n a m e   o f   J o h n   L e w i s   F i n a n c i a l   S e n / i c e s   L i m i t e d .  J o h n   L e w i s   F i n a n c i a l   S e r v i c e s   L i m i t e d   i s   i n c o r p o r a t e d   i n   E n g l a n d   w i t h   l i m i t e d   l i a b i l i t y   u n d e r   C o m p a n y   N u m b e r   4 6 4 5 5 3 0 .  R e g i s t e r e d   O f f i c e   8   C a n a d a   S q u a r e ,   L o n d o n   E l 4   5 H Q .   C o n d i t i o n s   a n d   p o i n t s   e a r n i n g   l i m i t s   a p p l y  P o i n t s   o p e n i n g :   1 2 3 3   R e d e e m e d :   1 0 0 0  C l o s i n g :   2 3 3  
 �11 � / U s e r s / g w i l f o r d / D o c u m e n t s / D T P / F i l i n g   C a b i n e t . d t B a s e 2 / F i l e s . n o i n d e x / p d f / a / n o   d a t e . p d f  �22  n o   d a t e! ldt     �^���T  �S  �R  �Q  ascr  ��ޭ