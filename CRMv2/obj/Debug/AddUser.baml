   M S B A M L   `   `   `  ����@  <CRMv2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:CRMv2CRMv2  5   	       CRMv2.AddUser   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aR NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:CRMv2     5   	     � Title$,  &Yeni istifadəçinin əlavə edilməsi��5   	   $��572.775��63   $��358.092��6D   #��� ��6T    � WindowStartupLocation$ CenterScreen=�6�    � Icon$ favicon.ico��6�   .��5	      � -   5         �Name$ btnSumbitUserAdd��5	      $��0,0,0,9q�6%   .+�5
   
   �� -   5         ��Name$ txtName��5
      $
��Left=�6#   $��23��6>   $��	95,76,0,0q�6J    �� TextWrapping$
 Wrap=�6]   $	��Top=�6q   $	��167��6�   $��1��6�   �� 5   
   -   5        $ txtUsername��5      $
��Left=�6'   $��23��6B   $��
95,169,0,0q�6N   $
 Wrap=�6b   $	��Top=�6v   $	��167��6�   $��3��6�   �� 5   
   -   5        $ 
txtSurname��5      $
��Left=�6&   $��23��6A   $��
95,125,0,0q�6M   $
 Wrap=�6a   $	��Top=�6u   $	��167��6�   $��2��6�   �� 5   
   -   5        $ txtEmail��5      $
��Left=�6$   $��23��6?   $��
95,314,0,0q�6K   $
 Wrap=�6_   $	��Top=�6s   $	��167��6�   $��6��6�   �� 5   
   -   5         ��Name$ cmbRole��5      $
��Left=�6$   $��
95,370,0,0q�6?   $	��Top=�6S   $	��167��6k   $��7��6w   .@�5      �� $��Administrator��6   �� 5      $��	Moderator��6   �� 5      $��Viewer��6   5      �� 5   
   $��Ad��6   $
��Left=�6   $��	95,48,0,0q�68   $	��Top=�6K   �� 5   
   $��Soyad��6   $
��Left=�6    $��	95,99,0,0q�6;   $	��Top=�6N   �� 5   
   $��Istifadəçi adı��6   $
��Left=�6)   $��
95,146,0,0q�6D   $	��Top=�6X   �� 5   
   $��Şifrə��6   $
��Left=�6    $��
95,195,0,0q�6;   $	��Top=�6O   �� 5   
   $��Şifrənin təkrarı��6   $
��Left=�6+   $��
95,242,0,0q�6F   $	��Top=�6Z   �� 5   
   $��E-poçt��6   $
��Left=�6!   $��
95,289,0,0q�6<   $	��Top=�6P   �� 5   
   $��	Hüquqlar��6   $
��Left=�6#   $��
95,344,0,0q�6>   $	��Top=�6R   �� 5   
   -   5        $��İstifadəçi yarat��5      $
��Left=�6,   $��125,421,0,0q�6G   $	��Top=�6\   $	��111��6t   $��8��6�   $��44��6�   G� 5   
   -   5         G�Name$ txtPasswordConfirm��5      $
��Left=�62   $��
95,267,0,0q�6M   $	��Top=�6a   $	��165��6y   $��25��6�   $��5��6�   G� 5   
   -	   5        $ txtPassword��5      $
��Left=�6+   $��
95,216,0,0q�6F   $	��Top=�6Z   $	��165��6r   $��25��6~   $��4��6�   5      5      