   M S B A M L   `   `   `  ����G  COnline Store, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Online_Store.ViewsOnline_Store.Views  5   	   $    Online_Store.Views.EditProduct   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:Online_Store.Views     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  68     � Title$  EditProduct��5   	   $	��391��6   $	��372��6*   .��5	      � ��5
   
   �� 5       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   ��5      �  � Color$ #0075C2��6#    � Offset$ 0Q�63   � 5      $ #00AEEF��6#   $
 0.55Q�63   5      .+�5   
   � .+�5      �� $	��Top=�6   $
��Left=�6-   $
��Name��6H   $��83��6W   $��25��6b   �� 5      -   5        $��
NameTxtBox��5      $	��150��6m   $��30��6y   $
��Left=�6�   $��11(�6�   $	��Top=�6�   $��50,0,0,0q�6�   ��6)   �� *selected.Name+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5      $	��Top=�6   $
��Left=�6,   $��Price��6G   $��83��6W   $��25��6b   $��0 50 0 0q�6n   �� 5      -   5        $��PriceTxtBox��5      $��50��6n   $��30��6y   $
��Left=�6�   $��11(�6�   $	��Top=�6�   $��	50,48,0,0q�6�   ��6)   �� *selected.Price+$ PropertyChanged=�6�   �� 5      $	��Top=�6   $
��Left=�6,   $��Quantity��6G   $��83��6Z   $��25��6e   $��0 90 0 0q�6q   �� 5      -   5        $��QuantityTextBox��5      $��50��6u   $��30��6�   $
��Left=�6�   $��11(�6�   $	��Top=�6�   $��	50,90,0,0q�6�   ��6-   �� *selected.Quantity+$ PropertyChanged=�6�   �� 5      $	��Top=�6   $
��Left=�6,   $��Image��6G   $��48��6W   $��25��6b   $��	0,151,0,0q�6n   �� 5!      -   5        $��	uploadBtn��5!      $��Upload��6&   $��78��68   $
��Left=�6C   $��86,146,0,194q�6^   6t   �� 5#      $��Center=�6   $��Apply��6;   $��24,191,62,152q�6K   �� 5%      $	��100��6   $��20��6%   $��Rate This App: ��61   $��10,398,309,18q�6H   (  "MaterialDesignThemes.Wpf.RatingBar  5&      -   5          Name$ BasicRatingBar��5&   W   $	��130��6'   $��40��63   $��110,388,179,8q�6@      Value$ 3Q�6o   �� 5'      $��18(�6   $��Image Preview��6"   $��
236,-3,0,0q�6:   $
��Left=�6N   $	��Top=�6i   �� 5(      -   5        $��PreviewImage��5(      $��241,34,17,212q�6-   5+      5,      5-      