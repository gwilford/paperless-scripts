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
�� .sysoexecTEXT���     TEXT � b   � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  / b i n / e c h o   � n   � � � � � 1   � ��~
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
�; kfrmID  ��  ��  ��       �:NOPQ N�9R�8ST�7UVWX�6�5�:  N �4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%
�4 .aevtoappnull  �   � ****�3 0 appsupp  �2 0 pdfdate PDFdate�1 0 pdfdate_args PDFdate_args�0 0 maxtextsize MaxTextSize�/ 0 this_selection  �. 0 number_of_steps  �- 0 	this_name  �, 0 thetext theText�+ 0 thetextsize theTextSize�*  0 thetrimmedtext theTrimmedText�) 0 thepath thePath�( 0 thename theName�' 0 thedate theDate�&  �%  O �$Y�#�"Z[�!
�$ .aevtoappnull  �   � ****Y k    x\\  ]]  %^^  I__  W``  ^� �   �#  �"  Z ���� 0 this_record  � 0 error_message  � 0 error_number  [ 9������ 1�� N����L��� r�� ��
�	��������� �������� � �����������������a��F����������
� afdrasup
� 
from
� fldmfldu
� .earsffdralis        afdr� 0 appsupp  
� 
psxp
� 
strq� 0 pdfdate PDFdate� 0 pdfdate_args PDFdate_args�N � 0 maxtextsize MaxTextSize
� 
capp
� kfrmID  
� 
DTsl� 0 this_selection  
� .corecnte****       ****� 0 number_of_steps  
� 
DTsp
�
 .DTpacd40bool       utxt
�	 
kocl
� 
cobj
� 
pnam
� 
TEXT� 0 	this_name  
� .DTpacd41bool    ��� utxt
� 
DTpl� 0 thetext theText
� 
leng�  0 thetextsize theTextSize
�� 
cha ��  0 thetrimmedtext theTrimmedText
�� 
ppth�� 0 thepath thePath
�� .sysoexecTEXT���     TEXT�� 0 thename theName
�� 
file
�� 
asmo�� 0 thedate theDate
�� 
DTcr
�� .DTpacd43bool    ��� null�� 0 error_message  a ������
�� 
errn�� 0 error_number  ��  ����
�� 
mesS
�� 
as A
�� EAlTwarN�� 
�� .sysodisAaleR        TEXT�!y���l E�O��,�%�,E�O�E�O�E�O)���0U(*a ,E` O_ jv  )ja Y hO_ j E` Oa a _ l O �_ [a a l kh   �kkh�a ,a &E` O_ j O�a ,E` O_ a  ,E` !O_ !j  Y hO_ !� 
�E` !Y hO_ [a "\[Zk\Z_ !2a &EQ` #O�a $,E` %Oa &_ #�,%a '%�%�%_ %�,%j (E` )Oa * *a +_ %/a ,,E` -UO_ )�a ,FO_ -�a .,F[OY�@[OY�2O*j /OPW ,X 0 1*j /O�a 2 a 3a 4�a 5a 6a 7 8Y hUP�alis    �  Macintosh HD               ʹEdH+   �Application Support                                             ��ZE        ����  	                Library     ʹ7T      �L5     �   �#  :Macintosh HD:Users: gwilford: Library: Application Support  (  A p p l i c a t i o n   S u p p o r t    M a c i n t o s h   H D  *Users/gwilford/Library/Application Support  /    ��  Q �bb � ' / U s e r s / g w i l f o r d / L i b r a r y / A p p l i c a t i o n   S u p p o r t / D E V O N t h i n k   P r o   2 / P D F - d a t e - s t d i n '�9N R ��c�� c  dd ee f������f g������g�                                                                                  DNtp  alis    n  Macintosh HD               ʹEdH+  m2xDEVONthink Pro.app                                             {#�̮�d        ����  	                Applications    ʹ7T      ̮�T    m2x  -Macintosh HD:Applications: DEVONthink Pro.app   &  D E V O N t h i n k   P r o . a p p    M a c i n t o s h   H D  Applications/DEVONthink Pro.app   / ��  
�� 
DTkb�� 
�� kfrmID  
�� 
DTcn��  vo
�� kfrmID  �8 S �hh  n o   d a t eT �ii2�� ~  w  y r \ ^   R . . , 3 p G A \ c G r  G u x l A W A   ,   S u r r e y  Y o u r r e f :   O u r r e f : D ^ S U P N / F  S U R R E Y   C O U N T Y   C O U N C I L  C o u n t y   T r e a s u r e r ' s   D e p a r t m e n t   P . O .   B o x   5  C o u n t y   H a l l  K i n g s t o n   u p o n   T h a m e s   K T 1   2 E A  R .   W o l s t e n h o l m e ,   I . P . F . A .   C o u n t y   T r e a s u r e r  D X   3 1 5 0 9   K I N G S T O N   F a x   0 8 1 - 5 4 1   8 0 5 9  D a t e :   i o   ^   - � i s  I f  D i r e c t   L i n e :   0 8 1 - 5 4 1   } c f a H o   t e l e p h o n i n g   p l e a s e   a s k   f o r :   S u p e r a n n u a t i o n   S e c t i o n   D   o r   G u i l d f o r d   5 1  ( S w i t c h b o a r d   0 8 1 - 5 4 1   8 8 0 0 )  D e a r   ( T \ S .   S p C / f l C e j T  L O C A L   G O V E R N M E N T   S U P E R A N N U A T I O N   S C H E M E  A s   y o u   a r e q w a r e ,   y o u   h a v e   n o t   y e t   m a d e   a   d e c i s i o n   c o n c e r n i n g   y o u r   p e n s i o n  r i g h t s   f o l l o w i n g   y o u r   c e a s i n g   t o   b e   a   m e m b e r   o f   t h e   C o u n t y   C o u n c i l ' s   s u p e r a n n u a t i o n   f u n d ,   a n d   I   i m   t h e r e f o r e   e n c l o s i n g   � u r f h e r   i n f o n n a t i o n  r e g a r d i n g   y o u r   e n t i t l e m e n t s .   T o   b e g i n   w i t h   y o u   w i l l   s e e   t h a t   i f   y o u   d o  n o t   o r   h a v e   n o t   a g a i n   b e c o m e   a   m e m b e r   o f   t h e   l o c a l   g o v e r n m e n t   p e n s i o n   s c h e m e  d u r i n g   t h e   o n e   m o n t h   a n d   o n e   d a y   f o l l o w i n g   y o u r   l a s t   d a y   o f   p e n s i o n a b l e   s e r v i c e ,   y o u   m a y   r e q u e s t   t h e   r e t u r n   o f   y o u r   s u p e r a n n u a t i o n   c o n t r i b u t i o n s .  I f   y o u   a r e   e n t i t l e d   t o   m a k e   s u c h   a   c l a i m   b u t   d o   n o t   d o   s o ,   o r   i f   y o u   d o   n o t  r e q u e s t   t h e   t r a n s f e r   o f   y o u r   r i g h t s   t o   a n o t h e r   p e n s i o n   s c h e m e ,   y o u r   c o n t r i   b u t i o n s   w i l l   b e   c o m p u l s o r i l y   r e t u r n e d   t o   y o u   a t   t h e   e n d   o f   1 2   m o n t h s  f o l l o w i n g   y o u r   l a s t   d a y   o f   p e n s i o n a b l e   s e r v i c e .  T h e   a t t a c h e d   n o t e s   f u r t h e r   e x p l a i n ,   h o w e v e r ,   t h a t   y o u   m a y   i f   y o u   w i s h   r e q u e s t   t h a t   t h e   q u e s t i o n   o f   a   r e f u n d   o f   c o n t r i b u t i o n s   b e   h e l d   o p e n  i n d e f i n i t e l y ,   b u t   s u c h   a   r e q u e s t   m u s t   b e   m a d e   w i t h i n   t h e   1 2   m o n t h   p e r i o d   r e f e r r e d   t o   a b o v e .   S u c h   a   c o u r s e   o f   a c t i o n   w i l l   e n a b l e   y o u   t o   s u b s e q u e n t l y   c l a i m   a   r e f u n d   o f   c o n t r i b u t i o n s   a t   a n y   t i m e   b u t   y o u   s h o u l d   b e a r   i n   m i n d   t h a t   n o   i n t e r e s t   i s   p a y a b l e   o n   y o u r   c o n t r i b u t i o n s   w h i l s t   t h e y   a r e   h e l d   w i t h i n   t h e   s u p e r a n n u a t i o n   f u n d .  I f   y o u   h a v e   d e f e r r e d   a   d e c i s i o n   o n   t h e   r e f u n d   o f   y o u r   c o n t r i b u t i o n s ,   y o u   m a y  s u b s e q u e n t l y   t r a n s f e r   y o u r   r i g h t s   t o   a n o t h e r   p e n s i o n   s c h e m e .   T h e   a c c o m p a n y i n g   n o t e s   i n c l u d e : -  ( a )   a   d e c l a r a t i o n   f o r m   o n   w h i c h   y o u   m a y   c l a i m   t h e   r e t u r n   o f   y o u r   s u p e r a n n u a t i o n   c o n t r i b u t i o n s ,   a n d  ( b )   a   f o r m   o n   w h i c h   y o u   m a y   g i v e   n o t i c e   t h a t   y o u   d o   n o t   w i s h ,   f o r   t h e   t i m e   b e i n g ,   t o   r e c e i v e   a   r e f u n d   o f   s u p e r a n n u a t i o n   c o n t r i b u t i o n s .  V / H E N   Y O U   H A V E   K A D E   Y O U R   D E C I S I O N ,   I T   V T L L   O N L Y   B E   N E C E S S A R Y   F O R   Y O U   T O   C O M P L E T E   A 1 I D   R E T U R N   O N E   O F   T H E   F O R M S .  P l e a s e   a d d r e s s   c o r r e s p o n d e n c e   t o   C o u n t y   T r e a s u r e r  
�� T h e   d e c l a r a t i o n   f o r m   o n   w h i c h   y o u   m a y   c l a i m   t h e   r e t u r n   o f   y o u r   s u p e r a n n u a t i o n   c o n t r i b u t i o n s   m a y   o n l y   b e   c o m p l e t e d   i f   y o u   h a v e   n o t   b e c o m e   a   m e m b e r   o f   t h e  l o c a l   g o v e r n m e n t   p e n s i o n   s c h e m e   w i t h i n   t h e   p e r i o d   o f   1   m o n t h   a n d   1   d a y  f o l l o w i n g   y o u r   l a s t   d a y   o f   p e n s i o n a b l e   s e r v i c e .   I f   y o u   g i v e   n o t i c e   t h a t   y o u   d o   n o t   w i s h   f o r   t h e   t i m e   b e i n g   t o   r e c e i v e   a   r e f u n d   o f   s u p e r a n n u a t i o n  c o n t r i b u t i o n s ,   y o u   s h o u l d   r e t a i n   t h e   d e c l a r a t i o n   f o r m   s o   t h a t   i n   t h e   e v e n t   o f   y o u r   s u b s e q u e n t l y   d e c i d i n g   t h a t   y o u   w i s h   t o   c l a i m   s u c h   a   r e f u n d ,   y o u   m a y   s u b m i t   a   c o m p l e t e d   d e c l a r a t i o n   f o r m .  Y o u   s h o u l d   n o t e   t h e   t i m e   l i m i t s   t h a t   a r e   e x p l a i n e d   o n   b o t h   f o r m s   a n d   i f   y o u   a r e   i n   a n y   d o u b t   w h a t s o e v e r   a s   t o   w h e t h e r   y o u   a r e   e l i g i b l e   t o   s i g n   a  p a r t i c u l a r   f o r m   o r   t h e   s i g n i f i c a n c e   o f   e i t h e r   o f   t h e   a c c o m p a n y i n g   f o r m s ,   y o u   s h o u l d   l e t   m e   k n o w .   I n   p a r t i c u l a r ,   y o u   s h o u l d   l e t   m e   k n o w   i f   y o u   c h a n g e  y o u r   a d d r e s s   b e f o r e   y o u   h a v e   n o t i f i e d   m e   o f   y o u r   w i s h e s   c o n c e r n i n g   y o u r   p e n s i o n   r i g h t s .  I   h o p e   t h a t   t h e   s i t u a t i o n   i s   c l e a r   t o   y o u ,   b u t   i f   y o u   h a v e   a n y   q u e r i e s   '   *   p l e a s e   d o   n o t   h e s i t a t e   t o   g e t   i n   t o u c h   w i t h   m e .  Y o u r s   s i n c e r e l y  C o u n t y   T r e a s u r e r  n  
�7U �jj2�� ~  w  y r \ ^   R . . , 3 p G A \ c G r  G u x l A W A   ,   S u r r e y  Y o u r r e f :   O u r r e f : D ^ S U P N / F  S U R R E Y   C O U N T Y   C O U N C I L  C o u n t y   T r e a s u r e r ' s   D e p a r t m e n t   P . O .   B o x   5  C o u n t y   H a l l  K i n g s t o n   u p o n   T h a m e s   K T 1   2 E A  R .   W o l s t e n h o l m e ,   I . P . F . A .   C o u n t y   T r e a s u r e r  D X   3 1 5 0 9   K I N G S T O N   F a x   0 8 1 - 5 4 1   8 0 5 9  D a t e :   i o   ^   - � i s  I f  D i r e c t   L i n e :   0 8 1 - 5 4 1   } c f a H o   t e l e p h o n i n g   p l e a s e   a s k   f o r :   S u p e r a n n u a t i o n   S e c t i o n   D   o r   G u i l d f o r d   5 1  ( S w i t c h b o a r d   0 8 1 - 5 4 1   8 8 0 0 )  D e a r   ( T \ S .   S p C / f l C e j T  L O C A L   G O V E R N M E N T   S U P E R A N N U A T I O N   S C H E M E  A s   y o u   a r e q w a r e ,   y o u   h a v e   n o t   y e t   m a d e   a   d e c i s i o n   c o n c e r n i n g   y o u r   p e n s i o n  r i g h t s   f o l l o w i n g   y o u r   c e a s i n g   t o   b e   a   m e m b e r   o f   t h e   C o u n t y   C o u n c i l ' s   s u p e r a n n u a t i o n   f u n d ,   a n d   I   i m   t h e r e f o r e   e n c l o s i n g   � u r f h e r   i n f o n n a t i o n  r e g a r d i n g   y o u r   e n t i t l e m e n t s .   T o   b e g i n   w i t h   y o u   w i l l   s e e   t h a t   i f   y o u   d o  n o t   o r   h a v e   n o t   a g a i n   b e c o m e   a   m e m b e r   o f   t h e   l o c a l   g o v e r n m e n t   p e n s i o n   s c h e m e  d u r i n g   t h e   o n e   m o n t h   a n d   o n e   d a y   f o l l o w i n g   y o u r   l a s t   d a y   o f   p e n s i o n a b l e   s e r v i c e ,   y o u   m a y   r e q u e s t   t h e   r e t u r n   o f   y o u r   s u p e r a n n u a t i o n   c o n t r i b u t i o n s .  I f   y o u   a r e   e n t i t l e d   t o   m a k e   s u c h   a   c l a i m   b u t   d o   n o t   d o   s o ,   o r   i f   y o u   d o   n o t  r e q u e s t   t h e   t r a n s f e r   o f   y o u r   r i g h t s   t o   a n o t h e r   p e n s i o n   s c h e m e ,   y o u r   c o n t r i   b u t i o n s   w i l l   b e   c o m p u l s o r i l y   r e t u r n e d   t o   y o u   a t   t h e   e n d   o f   1 2   m o n t h s  f o l l o w i n g   y o u r   l a s t   d a y   o f   p e n s i o n a b l e   s e r v i c e .  T h e   a t t a c h e d   n o t e s   f u r t h e r   e x p l a i n ,   h o w e v e r ,   t h a t   y o u   m a y   i f   y o u   w i s h   r e q u e s t   t h a t   t h e   q u e s t i o n   o f   a   r e f u n d   o f   c o n t r i b u t i o n s   b e   h e l d   o p e n  i n d e f i n i t e l y ,   b u t   s u c h   a   r e q u e s t   m u s t   b e   m a d e   w i t h i n   t h e   1 2   m o n t h   p e r i o d   r e f e r r e d   t o   a b o v e .   S u c h   a   c o u r s e   o f   a c t i o n   w i l l   e n a b l e   y o u   t o   s u b s e q u e n t l y   c l a i m   a   r e f u n d   o f   c o n t r i b u t i o n s   a t   a n y   t i m e   b u t   y o u   s h o u l d   b e a r   i n   m i n d   t h a t   n o   i n t e r e s t   i s   p a y a b l e   o n   y o u r   c o n t r i b u t i o n s   w h i l s t   t h e y   a r e   h e l d   w i t h i n   t h e   s u p e r a n n u a t i o n   f u n d .  I f   y o u   h a v e   d e f e r r e d   a   d e c i s i o n   o n   t h e   r e f u n d   o f   y o u r   c o n t r i b u t i o n s ,   y o u   m a y  s u b s e q u e n t l y   t r a n s f e r   y o u r   r i g h t s   t o   a n o t h e r   p e n s i o n   s c h e m e .   T h e   a c c o m p a n y i n g   n o t e s   i n c l u d e : -  ( a )   a   d e c l a r a t i o n   f o r m   o n   w h i c h   y o u   m a y   c l a i m   t h e   r e t u r n   o f   y o u r   s u p e r a n n u a t i o n   c o n t r i b u t i o n s ,   a n d  ( b )   a   f o r m   o n   w h i c h   y o u   m a y   g i v e   n o t i c e   t h a t   y o u   d o   n o t   w i s h ,   f o r   t h e   t i m e   b e i n g ,   t o   r e c e i v e   a   r e f u n d   o f   s u p e r a n n u a t i o n   c o n t r i b u t i o n s .  V / H E N   Y O U   H A V E   K A D E   Y O U R   D E C I S I O N ,   I T   V T L L   O N L Y   B E   N E C E S S A R Y   F O R   Y O U   T O   C O M P L E T E   A 1 I D   R E T U R N   O N E   O F   T H E   F O R M S .  P l e a s e   a d d r e s s   c o r r e s p o n d e n c e   t o   C o u n t y   T r e a s u r e r  
�� T h e   d e c l a r a t i o n   f o r m   o n   w h i c h   y o u   m a y   c l a i m   t h e   r e t u r n   o f   y o u r   s u p e r a n n u a t i o n   c o n t r i b u t i o n s   m a y   o n l y   b e   c o m p l e t e d   i f   y o u   h a v e   n o t   b e c o m e   a   m e m b e r   o f   t h e  l o c a l   g o v e r n m e n t   p e n s i o n   s c h e m e   w i t h i n   t h e   p e r i o d   o f   1   m o n t h   a n d   1   d a y  f o l l o w i n g   y o u r   l a s t   d a y   o f   p e n s i o n a b l e   s e r v i c e .   I f   y o u   g i v e   n o t i c e   t h a t   y o u   d o   n o t   w i s h   f o r   t h e   t i m e   b e i n g   t o   r e c e i v e   a   r e f u n d   o f   s u p e r a n n u a t i o n  c o n t r i b u t i o n s ,   y o u   s h o u l d   r e t a i n   t h e   d e c l a r a t i o n   f o r m   s o   t h a t   i n   t h e   e v e n t   o f   y o u r   s u b s e q u e n t l y   d e c i d i n g   t h a t   y o u   w i s h   t o   c l a i m   s u c h   a   r e f u n d ,   y o u   m a y   s u b m i t   a   c o m p l e t e d   d e c l a r a t i o n   f o r m .  Y o u   s h o u l d   n o t e   t h e   t i m e   l i m i t s   t h a t   a r e   e x p l a i n e d   o n   b o t h   f o r m s   a n d   i f   y o u   a r e   i n   a n y   d o u b t   w h a t s o e v e r   a s   t o   w h e t h e r   y o u   a r e   e l i g i b l e   t o   s i g n   a  p a r t i c u l a r   f o r m   o r   t h e   s i g n i f i c a n c e   o f   e i t h e r   o f   t h e   a c c o m p a n y i n g   f o r m s ,   y o u   s h o u l d   l e t   m e   k n o w .   I n   p a r t i c u l a r ,   y o u   s h o u l d   l e t   m e   k n o w   i f   y o u   c h a n g e  y o u r   a d d r e s s   b e f o r e   y o u   h a v e   n o t i f i e d   m e   o f   y o u r   w i s h e s   c o n c e r n i n g   y o u r   p e n s i o n   r i g h t s .  I   h o p e   t h a t   t h e   s i t u a t i o n   i s   c l e a r   t o   y o u ,   b u t   i f   y o u   h a v e   a n y   q u e r i e s   '   *   p l e a s e   d o   n o t   h e s i t a t e   t o   g e t   i n   t o u c h   w i t h   m e .  Y o u r s   s i n c e r e l y  C o u n t y   T r e a s u r e r  n  
V �kk � / U s e r s / g w i l f o r d / L i b r a r y / A p p l i c a t i o n   S u p p o r t / D E V O N t h i n k   P r o   2 / I n b o x . d t B a s e 2 / F i l e s . n o i n d e x / p d f / 8 / n o   d a t e . p d fW �ll  n o   d a t eX ldt     �5��6  �5   ascr  ��ޭ