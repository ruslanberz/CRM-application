   M S B A M L   `   `   `  ����@  <CRMv2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:CRMv2CRMv2  5   	       CRMv2.LoginWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aR NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:CRMv2     5   	     � Title$  Login��5      $��328.498��6   $��514.805��6*   $��Center=�6:   $��Center=�6\   $��Center=�6w   $��Center=�6�    � WindowStartupLocation$ CenterScreen=�6�    � 
ResizeMode$ NoResize=�6�    � WindowStyle$
 None=�6�    � Icon$ favicon.ico��6   � Triggers 5	      :� 5
   
    :� RoutedEvent$ Window.Loaded��6   .[�5      �� .��5      �� .��5      W�  g� Duration$ 00:00:01D�6&    �� TargetProperty$ Opacity�6:   	 W� From$	 0X�6^   	
 W� To$
 1X�6g   5      5      5      .��5      � $��0,0,0,-1q�6   $	��329��6   $	��Top=�6*   $��Right=�6B   $	��514��6^   ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ Black��6    � Offset$ 0Q�6-   � 5      $ 	#FFEEDECB��6   $ 1Q�61   � 5      $ 	#FF37F9F9��6   5      .+�5   
   �� -   5         ��Name$ LblUsername��5      $��İstifadəçi adı��6%   $
��Left=�6>   $��
94,171,0,0q�6Y   $	��Top=�6m    J� RenderTransformOrigin$ 0.507,2.921&�6�   �� 5   
   -   5        $ LblPassword��5      $��Şifrə��6%   $
��Left=�65   $��
94,213,0,0q�6P   $	��Top=�6d   $ 0.507,2.921&�6|   �� 5   
   -   5         ��Name$ txtLogin��5      $
��Left=�6$   $��23��6?   $��191,170,0,0q�6K    �� TextWrapping$
 Wrap=�6`   $	��Top=�6t   $	��120��6�   $��1��6�   �� 5   
   -   5         ��Name$ BtnLogin��5      $��Daxil ol��6#   $
��Left=�66   $��211,260,0,0q�6Q   $	��Top=�6f   $��75��6~   $��3��6�   G� 5    
   -   5         G�Name$ txtPassword��5       $
��Left=�6+   $��191,213,0,0q�6F   $	��Top=�6[   $	��120��6s   $��22��6   $��2��6�   �� 5!   
   $
��Left=�6   $	��100��6+   $��
211,49,0,0q�68   $	��Top=�6L   $	��100��6d   �� 5"   
   $��191,38,210,174q�6   $��	logon.jpg��6(   $
��Fill=�6;   �� 5#   
   -   5        $ btnExit��5#      $
��Left=�6"   $��427,271,0,0q�6=   $	��Top=�6R   $��70��6j   $��25��6u   $��4��6�   .��5$      �� $N��HC:\Users\User\Documents\Visual Studio 2017\Projects\CRMv2\CRMv2\exit.png��6   ��5%      �� 5&       �� 
TargetType" ��6    �� Triggers 5'      P� 5(       P� Property � {� P� Value .  . �5)   "   ��  �� Property �@J�Opacity �� Value$	 0.5Q�6<   5*      5,      5.      5/      51      52      