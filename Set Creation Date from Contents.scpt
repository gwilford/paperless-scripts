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
 ���� 0 appsupp   . m     1 1 � 2 2 > D E V O N t h i n k   P r o   2 / P D F - d a t e - s t d i n��  ��   ) o      ���� 0 pdfdate PDFdate��  ��   &  3 4 3 l     ��������  ��  ��   4  5 6 5 l     �� 7 8��   7 4 . location of an optional logfile for debugging    8 � 9 9 \   l o c a t i o n   o f   a n   o p t i o n a l   l o g f i l e   f o r   d e b u g g i n g 6  : ; : l     �� < =��   < % set home to path to home folder    = � > > > s e t   h o m e   t o   p a t h   t o   h o m e   f o l d e r ;  ? @ ? l     �� A B��   A O Iset logfile to quoted form of (POSIX path of home & "PDF-date-stdin.out")    B � C C � s e t   l o g f i l e   t o   q u o t e d   f o r m   o f   ( P O S I X   p a t h   o f   h o m e   &   " P D F - d a t e - s t d i n . o u t " ) @  D E D l     �� F G��   F 3 -set PDFdate_args to " -c -L " & logfile & " "    G � H H Z s e t   P D F d a t e _ a r g s   t o   "   - c   - L   "   &   l o g f i l e   &   "   " E  I J I l    K���� K r     L M L m     N N � O O    - c   M o      ���� 0 pdfdate_args PDFdate_args��  ��   J  P Q P l     ��������  ��  ��   Q  R S R l     �� T U��   T 8 2 Maximum amount of text to process for date string    U � V V d   M a x i m u m   a m o u n t   o f   t e x t   t o   p r o c e s s   f o r   d a t e   s t r i n g S  W X W l    Y���� Y r     Z [ Z m    ����N  [ o      ���� 0 maxtextsize MaxTextSize��  ��   X  \ ] \ l    ^���� ^ r     _ ` _ m    ����   ` o      ���� 0 matched  ��  ��   ]  a b a l     ��������  ��  ��   b  c�� c l   � d���� d O    � e f e Q   *� g h i g k   -� j j  k l k r   - 6 m n m l  - 2 o���� o 1   - 2��
�� 
DTsl��  ��   n o      ���� 0 this_selection   l  p q p Z  7 J r s���� r =  7 = t u t o   7 :���� 0 this_selection   u J   : <����   s R   @ F�� v��
�� .ascrerr ****      � **** v m   B E w w � x x 6 P l e a s e   s e l e c t   s o m e   r e c o r d s .��  ��  ��   q  y z y l  K K��������  ��  ��   z  { | { r   K V } ~ } I  K R�� ��
�� .corecnte****       ****  o   K N���� 0 this_selection  ��   ~ o      ���� 0 number_of_steps   |  � � � I  W d�� � �
�� .DTpacd40bool       utxt � m   W Z � � � � � $ P a r s i n g   d o c u m e n t s & � �� ���
�� 
DTsp � o   ] `���� 0 number_of_steps  ��   �  � � � l  e e��������  ��  ��   �  � � � X   e\ ��� � � k   {W � �  � � � l  { {�� � ���   � = 7 fake a 'continue' with an exit repeat of a 1-pass loop    � � � � n   f a k e   a   ' c o n t i n u e '   w i t h   a n   e x i t   r e p e a t   o f   a   1 - p a s s   l o o p �  ��� � U   {W � � � k   �R � �  � � � r   � � � � � c   � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 this_record   � m   � ���
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
ppth � o   � ����� 0 this_record   � o      ���� 0 thepath thePath �  � � � l  � ��������  ��  �   �  � � � l  � ��~ � ��~   �   do the heavy lifting    � � � � *   d o   t h e   h e a v y   l i f t i n g �  � � � l  � ��} � ��}   � 4 . NB. shell can only handle ~260k command line	    � � � � \   N B .   s h e l l   c a n   o n l y   h a n d l e   ~ 2 6 0 k   c o m m a n d   l i n e 	 �  � � � r   � � � � I  ��| ��{
�| .sysoexecTEXT���     TEXT � b   �
 � � � b   � � � � b   � � � � b   �  � � � b   � � � � � m   � � � � � � �  / b i n / e c h o   � n   � � � � � 1   � ��z
�z 
strq � o   � ��y�y  0 thetrimmedtext theTrimmedText � m   � �   �    |   � o   �x�x 0 pdfdate PDFdate � o  �w�w 0 pdfdate_args PDFdate_args � n  	 1  	�v
�v 
strq o  �u�u 0 thepath thePath�{   � o      �t�t 0 thename theName �  l �s�r�q�s  �r  �q    Z &	�p�o > 

 o  �n�n 0 thename theName m   �  n o   d a t e	 r  " [    o  �m�m 0 matched   m  �l�l  o      �k�k 0 matched  �p  �o    l ''�j�i�h�j  �i  �h    l ''�g�g     get the file timestamp    � .   g e t   t h e   f i l e   t i m e s t a m p  O  '> r  -= n  -9  1  59�f
�f 
asmo  4  -5�e!
�e 
file! o  14�d�d 0 thepath thePath o      �c�c 0 thedate theDate m  '*""�                                                                                  sevs  alis    �  Macintosh HD               ʹEdH+  m2[System Events.app                                              pb���        ����  	                CoreServices    ʹ7T      ���    m2[m2Um2T  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   #$# l ??�b�a�`�b  �a  �`  $ %&% l ??�_'(�_  '   set DB object name   ( �)) &   s e t   D B   o b j e c t   n a m e& *+* l ??�^,-�^  , - ' do this *after* checking file mod date   - �.. N   d o   t h i s   * a f t e r *   c h e c k i n g   f i l e   m o d   d a t e+ /0/ l ??�]12�]  1 / ) as this command actually moves the file!   2 �33 R   a s   t h i s   c o m m a n d   a c t u a l l y   m o v e s   t h e   f i l e !0 454 r  ?H676 o  ?B�\�\ 0 thename theName7 l     8�[�Z8 n      9:9 1  CG�Y
�Y 
pnam: o  BC�X�X 0 this_record  �[  �Z  5 ;<; l II�W�V�U�W  �V  �U  < =>= l II�T?@�T  ? "  set DB object creation date   @ �AA 8   s e t   D B   o b j e c t   c r e a t i o n   d a t e> B�SB r  IRCDC o  IL�R�R 0 thedate theDateD l     E�Q�PE n      FGF 1  MQ�O
�O 
DTcrG o  LM�N�N 0 this_record  �Q  �P  �S   � m   ~ �M�M ��  �� 0 this_record   � o   h k�L�L 0 this_selection   � HIH I ]b�K�J�I
�K .DTpacd43bool    ��� null�J  �I  I JKJ l cc�H�G�F�H  �G  �F  K LML r  c�NON b  c|PQP b  cxRSR b  cpTUT b  clVWV m  cfXX �YY  F o u n d  W l fkZ�E�DZ c  fk[\[ o  fg�C�C 0 matched  \ m  gj�B
�B 
TEXT�E  �D  U m  lo]] �^^    d a t e s   i n  S l pw_�A�@_ c  pw`a` o  ps�?�? 0 number_of_steps  a m  sv�>
�> 
TEXT�A  �@  Q m  x{bb �cc    r e c o r d s .O o      �=�= 0 
themessage 
theMessageM ded I ���<fg
�< .sysodisAaleR        TEXTf m  ��hh �ii  D E V O N t h i n k   P r og �;jk
�; 
mesSj o  ���:�: 0 
themessage 
theMessagek �9l�8
�9 
as Al m  ���7
�7 EAlTinfA�8  e m�6m l ���5�4�3�5  �4  �3  �6   h R      �2no
�2 .ascrerr ****      � ****n o      �1�1 0 error_message  o �0p�/
�0 
errnp o      �.�. 0 error_number  �/   i k  ��qq rsr I ���-�,�+
�- .DTpacd43bool    ��� null�,  �+  s t�*t Z ��uv�)�(u > ��wxw l ��y�'�&y o  ���%�% 0 error_number  �'  �&  x m  ���$�$��v I ���#z{
�# .sysodisAaleR        TEXTz m  ��|| �}}  D E V O N t h i n k   P r o{ �"~
�" 
mesS~ o  ���!�! 0 error_message   � ��
�  
as A� m  ���
� EAlTwarN�  �)  �(  �*   f 5     '���
� 
capp� m   " #�� ��� @ c o m . d e v o n - t e c h n o l o g i e s . t h i n k p r o 2
� kfrmID  ��  ��  ��       ����  � �
� .aevtoappnull  �   � ****� �������
� .aevtoappnull  �   � ****� k    ���  ��  %��  I��  W��  \��  c��  �  �  � ���� 0 this_record  � 0 error_message  � 0 error_number  � A������ 1��
 N�	�������� w��  ��������������������������������� � ����"����������X]b��h���������������|��
� afdrasup
� 
from
� fldmfldu
� .earsffdralis        afdr� 0 appsupp  
� 
psxp
� 
strq�
 0 pdfdate PDFdate�	 0 pdfdate_args PDFdate_args�N � 0 maxtextsize MaxTextSize� 0 matched  
� 
capp
� kfrmID  
� 
DTsl� 0 this_selection  
� .corecnte****       ****�  0 number_of_steps  
�� 
DTsp
�� .DTpacd40bool       utxt
�� 
kocl
�� 
cobj
�� 
pnam
�� 
TEXT�� 0 	this_name  
�� .DTpacd41bool    ��� utxt
�� 
DTpl�� 0 thetext theText
�� 
leng�� 0 thetextsize theTextSize
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
�� .DTpacd43bool    ��� null�� 0 
themessage 
theMessage
�� 
mesS
�� 
as A
�� EAlTinfA�� 
�� .sysodisAaleR        TEXT�� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  ����
�� EAlTwarN�����l E�O��,�%�,E�O�E�O�E�OjE�O)��a 0�p*a ,E` O_ jv  )ja Y hO_ j E` Oa a _ l O �_ [a a l kh   �kkh�a ,a &E` O_ j O�a ,E`  O_  a !,E` "O_ "j  Y hO_ "� 
�E` "Y hO_  [a #\[Zk\Z_ "2a &EQ` $O�a %,E` &Oa '_ $�,%a (%�%�%_ &�,%j )E` *O_ *a + 
�kE�Y hOa , *a -_ &/a .,E` /UO_ *�a ,FO_ /�a 0,F[OY�,[OY�O*j 1Oa 2�a &%a 3%_ a &%a 4%E` 5Oa 6a 7_ 5a 8a 9a : ;OPW ,X < =*j 1O�a > a ?a 7�a 8a @a : ;Y hU ascr  ��ޭ