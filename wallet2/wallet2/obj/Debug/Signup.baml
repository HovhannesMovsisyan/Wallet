   M S B A M L   `   `   `  ����B  >wallet2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:wallet2wallet2  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	       wallet2.Signup   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:wallet2     5   	   LmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	     � Title$  Sign Up��5   	   $	��600��6   $	��390��6&   .��5      � .+�5   
   �� $	��372��6   $	��Top=�6!   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      �  � Color$ Green��6#   � 5      $ 
LightGreen��6#    � Offset$ 1Q�66   � 5      $ Green��6#   $	 0.6Q�61   5      5      �� 5   
   $-��'C:\Users\HP\Desktop\Bet\WALLLET\wal.png��6   $��Center=�6A   $	��Top=�6^   $��80��6v   $��80��6�    J� RenderTransformOrigin$ 0.421,-1.002&�6�   $��139,26,143,443q�6�   6�   �� 5   
   
�������$	��300��6!   $��43,207,39,102q�6-    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         RenderingBias$ Quality=�6#      
BlurRadius$ 15Q�6;   	   	Direction$	 0Q�6K   
   Color$
 	DarkGreen��6Y      ShadowDepth$ 5Q�6k   5      � 5   
   $	��300��6   $	��260��6   $��43,207,39,102q�6(    � ColumnDefinitions 5      �� 5       $
��289* �6#   �� 5!      $	��11* �6#   .+�5$      ��  �� TextAlignment$ Center=�6   $��Sign Up��6/   
�������$��20(�6P   $	��Top=�6^   $��Center=�6v   $��
95,10,88,0q�6�   $	��106��6�   �� 5&      $��Center=�6   $	��208��65   .+�5'      �� $
��Name��6   $��Italic$�6'   �� 5(      -   5         ��Name$
 name��5(      
���   �$��1q�6=   $��15(�6Q   $��20��6`   �� 5)      $��Surname��6   $��Italic$�6*   �� 5*      -   5        $ surname��5*      
���   �$��1q�6@   $��15(�6T   $��20��6c   �� 5+      $��Login��6   $��Italic$�6(   �� 5,      -   5        $ login��5,      
���   �$��1q�6>   $��15(�6R   $��20��6a   �� 5-      $��Password��6   $��Italic$�6+   G� 5.      -   5         G�Name$ password��5.      
���   �$��1q�6D   $��15(�6X   $��20��6g   5/      50      �� 51   
   -   5         ��Name$ okBtn��51      $��Bottom=�6    
������$��SIGN UP/LOGIN��6S   $��15(�6k   
��� � �$��SemiBold"�6�   $��Normal$�6�   $��UltraCondensed&�6�   $
��0,90q�6�   $	��150��6�   $��35��6�   53      54      