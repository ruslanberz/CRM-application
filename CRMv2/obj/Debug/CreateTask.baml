   M S B A M L   `   `   `  ����@  <CRMv2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:CRMv2CRMv2  5   	       CRMv2.CreateTask   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aR NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:CRMv2     5   	     � Title$  Xatırlama əlavə et��5   	   $��608.016��6$   $��538.168��65    � WindowStartupLocation$ CenterScreen=�6E    � Icon$ favicon.ico��6j   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $
��372* �6   �� 5      $	��49* �6   �� 5      $
��109* �6   .+�5   
   �� -   5         ��Name$ cmbCustomers��5      $
��Left=�6)   $��
165,84,0,0q�6D   $	��Top=�6X   $	��185��6p   $��28��6|    �� DisplayMemberPath$ CustomerName��5       �� SelectedValuePath$ id��5      ��5      ��  �� Path$ 	Customers� �� SelectedValue 5      �� $ 	Customers�5      �� 5   
   $��Müştərini seçin��6   $
��Left=�6*   $��
169,33,0,0q�6E   $	��Top=�6Y   $��24(�6q   $
��Bold"�6   �� 5   
   -   5        	 ��Name$	 txtDescription��5      $
��Left=�6*   $	��176��6E   $��138,202,0,0q�6R   
 �� TextWrapping$

 Wrap=�6g   $	��Top=�6{   $	��244��6�   $��2��6�   6�   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ dtpDeadline��5      $
��Left=�6*   $��169,132,0,0q�6E   $	��Top=�6Z   $	��181��6r    � 	Resources 5      :  4System.Windows.Controls.Primitives.DatePickerTextBox �� 
TargetType �� Property �� Value��%f   '        �� 5      "  6   .�5      ��  � ��$ Son icra tarixi seçin��6-   5      5      5      �� 5   
   -   5        $��Yarat��5      $
��Left=�6!   $��203,455,0,0q�6<   $	��Top=�6Q   $	��119��6i   $��35��6u   6�   �� 5    
   $��Notification əlavə edin��6   $
��Left=�62   $��138,410,0,0q�6M   $	��Top=�6b   $	��119��6z   �� 5!   
   -   5        $ cmbNotifications��5!      $
��Left=�6-   $��262,410,0,0q�6H   $	��Top=�6]   $	��120��6u   $��2��6�   �� 5"   
   $��Qalan simvol sayı : ��6   $
��Left=�6/   $��138,383,0,0q�6J   $	��Top=�6_   $	��103��6w   �� 5#   
   -   5         ��Name$ 
lblCounter��5#      $	��200��6$   $
��Left=�62   $��244,383,0,0q�6M   $	��Top=�6b   5%      5&      