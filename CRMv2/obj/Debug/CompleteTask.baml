   M S B A M L   `   `   `  ����@  <CRMv2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:CRMv2CRMv2  5   	       CRMv2.CompleteTask   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aR NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:CRMv2     5   	     � Title$  Task təsdiqi         ��5   	   $��730.077��5	      $��988.168��6    � WindowStartupLocation$ CenterScreen=�6,    � 
ResizeMode$ NoResize=�6Q    � Icon$ favicon.ico��6g   .��5
      �  � ColumnDefinitions 5   
   �� 5      $
��146* �6   �� 5      $	��99* �6   .+�5   
   �� -   5         ��Name$ CmbCustomers��5      $
��Left=�6)   $��
51,103,0,0q�6D   $	��Top=�6X   $	��192��6p    �� DisplayMemberPath$ CustomerName��5       �� SelectedValuePath$ id��5      ��5      ��  �� Path$ Customer�	 �� SelectedValue	 5      �� $ Customer�5   *   �� 5   
   $��Müştərini seçin��6   $
��Left=�6*   $��	51,45,0,0q�6E   $	��Top=�6X   $
��Bold"�6p   $��24(�6�   &   System.Windows.Controls.DataGrid  5   
   -   5        
  Name$
 dgvTasks��5      $
��Left=�6%   $	��430��6@   $��
40,165,0,0q�6M   $	��Top=�6a   $	��897��6y      
IsReadOnly .    AutoGenerateColumns .  $��2��5   /   ��5      �� $ vwTask�   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6A      
Visibility$ Hidden=�6K   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� $ id�6K     5      $ * 6H      Header$! Taskı yaradan istifadəçi��6R    6%   �� $ 	CreatedBy�6R     5      $ * 6f   $ Yaranma tarixi��6p    6%   �� $ 	StartTime� �� StringFormat$ {0:dd/MM/yyyy}��6p     5       $ * 6g   $ Son icra tarixi��6q    6%   �� $ 
FinishTime�$ {0:dd/MM/yyyy}��6q     5!      $ * 6J   $ 	Ətraflı��6T    6%   �� $ Description�6T      ColumnHeaderStyle 5$      �� 5%       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5&      ��  �� Property � �� �� Value$ Stretch=�6C   5'      5*      �� 5+   
   -   5         ��Name$ btnComplete��5+      $��
Təsdiqlə��6&   $
��Left=�69   $��182,636,0,0q�6T   $	��Top=�6i   $	��107��6�   $��41��6�   $
��Bold"�6�   $��1��6�   6�   �� 5,   
   -   5         ��Name$ 	txtSearch��5,      $
��Left=�6%   $��23��6@   $��336,102,0,0q�6L    �� TextWrapping$
 Wrap=�6a   $	��Top=�6v   $	��156��6�   �� 5-   
   -   5        $��Axtar��5-      $
��Left=�6!   $��521,102,0,0q�6<   $	��Top=�6Q   $	��103��6i   $��2��6u   6�   5/      50      