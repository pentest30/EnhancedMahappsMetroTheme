   M S B A M L   `   `   `  ����F  BMetroRibbon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:MetroRibbon.viewsMetroRibbon.views  5      K GRestauration.App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW=clr-namespace:Restauration.App.Buys;assembly=Restauration.AppRestauration.App.Buys 5      Y>clr-namespace:Restauration.App.Sales;assembly=Restauration.AppRestauration.App.Sales 6Y   ?$clr-namespace:MetroRibbon.convertersMetroRibbon.converters  5	      9!clr-namespace:MetroRibbon.helpersMetroRibbon.helpers  5
      !    MetroRibbon.views.OrderView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:MetroRibbon.views     5      NBuys=clr-namespace:Restauration.App.Buys;assembly=Restauration.App     5      PSales>clr-namespace:Restauration.App.Sales;assembly=Restauration.App     6Y   U QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;controls,http://metro.mahapps.com/winfx/xaml/controls  5      5
converters$clr-namespace:MetroRibbon.converters  5	      /helpers!clr-namespace:MetroRibbon.helpers  5
      -   5          � 	Resources  5      (   "MetroRibbon.converters.Nan2Visible   Nan2Visible+   %MetroRibbon.converters.Visible2Enable  Visible2Enable-   'MetroRibbon.converters.Visible2NDisable  Visible2Disable��%W   &	        &	      &	 &       5   
   6!     5   
   6$     5   
   6&   5      .��5      � $��10q�6    � ColumnDefinitions 5   
   �� 5      �� 5      $
��Auto �6   �� 5      .+�5   
   � $��0��6   $��5q�6    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      �� 5      $
��Auto �6    .+�5!      �� .+�5"      ��   Header3#��[ 6   $	��5,0q�6=   $��Center=�6J   $��	Commandes��5#      �� 5$      `� 5%      .�5&      c� .@�5'      +   %MetroRibbon.helpers.MetroCircleButton  -   5          Name$ AddOrderBtn��5(   ~   +   %MetroRibbon.helpers.MetroCircleButton   Click$ AddOrderBtn_OnClick��6�   $��2q�64     MetroCircleButtonBase#��[ 6?   $��Ajout��6n      IconKind$
 Plus=�6�     5)      $��2q�6�   #��[ 6�   $��Ajout��6�   $ Pencil=�6�   {�64   �� *
Visibility+ �� 	Converter# [  �� ElementName$ 	InvoiceDg�� �� Path$ SelectedItem�6�     5*      $��2q�64   #��[ 6�   $��Ajout��6�   $ Delete=�6�   {�6?   �� *
Visibility+# [ $ 	InvoiceDg��$ SelectedItem�6�     5+      $��2q�64   #��[ 6@   $��Ajout��6o   $ Printer=�6   {�6�   �� *
Visibility+# [ $ 	InvoiceDg��$ SelectedItem�5.      5/      �� 50      51      &   System.Windows.Controls.DataGrid  52      -   5        	  Name$	 	InvoiceDg��52   W   $��1��6   
   CanUserAddRows
 .     AutoGenerateColumns .     Columns 53      0  *System.Windows.Controls.DataGridTextColumn  54      ,  &System.Windows.Controls.DataGridColumn   Width5	  /System.Windows.Controls.DataGridLengthConverter$ *	 6)      Header$ N° commande��63   1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 6H   �� *InvoiceNumber+  55      $ *	 6)   $
 Date��63    6A   �� *Date+  56      $ *	 6)   $	 Net��63    6@   �� *Total+  57      $ *	 6)   $	 TTC��63    6@   �� *TTC+  58      $ *	 6)   $ La somme��63    6E   �� *
PaidAmmout+  59      $ *	 6)   $ Reste à payer��63    6J   �� *	LeftToPay+  5:      $ *	 6)   $
 Etat��63    6A   �� *OrderStatus+5=      � 5>      $��2��6    5?      �� 5@      �� 5A      �� 5B       5D      �� 5E      $
��Auto �6#   �� 5F      .+�5H      �� $��14(�6   .��6%   
TOTAL Net:61   �� 5I      -   5        $��NetTxtBlock��5I   j   $	��0,5q�6   
��� d �$��14(�6?   $��0��6M   $��1��6Z   6j   �� 5J      $��1��6   $��0��6$   $��14(�64   .��6B   
TOTAL TTC:6N   �� 5K      -   5        $��TtcTxtBlock��5K   l   $	��0,5q�6   $��14(�6*   
��� d �$��1��6O   $��1��6\   6l   �� 5L      $��2��6   $��0��6%   $��14(�65   .��6C   Somme reste:6Q   �� 5M      -   5        $��LeftTxtBlock��5M   l   $	��0,5q�6   $��14(�6*   
��� E��$��2��6O   $��1��6\   6l   5N      5O      �� 5P   
   $��1��6     	VSplitter#��[ 6'   6L   � 5Q   
   $��2��6   $��5q�6    5R      �� 5S      $
��Auto �6    �� 5T      .+�5V      �� .+�5W      �� #��[ 6   $	��5,0q�6=   $��Center=�6J   $��Détails��5X      �� 5Y      5Z        5[      -   5        $	 InvoiceItemDg��5[   $   $��1��6    .   5\        5]      $ *	 6)   $	 Nom��63    6@   �� *	Food.Name+  5^      $ *	 6)   $ 	Quantité��63    6E   �� *Qnt+  5_      $ *	 6)   $
 Prix��63    6A   �� *	UnitPrice+  5a      $ *	 6)   $	 Net��63    6@   �� *Total+  5b      $ *	 6)   $	 TTC��63    6@   �� *TTC+5g      5h      5i      5j      