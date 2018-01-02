using System;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Threading;
using Restauration.App.Data;
using Restauration.App.Sales;
using Restauration.Data;

namespace MetroRibbon.views
{
    /// <summary>
    /// Interaction logic for OrderView.xaml
    /// </summary>
    public partial class OrderView : UserControl
    {
        private readonly IRepository<Order> _ordeRepository;
        private readonly IRepository<OrderItem> _orderitemsRepository;
        MainWindow _win =(MainWindow) Application.Current.MainWindow;
        public OrderView()
        {
            _ordeRepository = RegistrarObjects.ResoleRepository<Order>();
            _orderitemsRepository = RegistrarObjects.ResoleRepository<OrderItem>();
            InitializeComponent();
            
            
        }


        private void OrderView_OnLoaded(object sender, RoutedEventArgs e)
        {

            Dispatcher.BeginInvoke((Action)(() => {
                //var query = _ordeRepository.Table;
                //NetTxtBlock.Text = query.Sum(x => x.Total).ToString(CultureInfo.InvariantCulture);
                //TtcTxtBlock.Text = query.Sum(x => x.TTC).ToString(CultureInfo.InvariantCulture);
                //LeftTxtBlock.Text = query.Sum(x => x.LeftToPay).ToString(CultureInfo.InvariantCulture);
                //InvoiceDg.ItemsSource = query.ToList();
                //InvoiceDg.ItemsSource = query.ToList();
            }));


        }

        private void InvoiceDg_OnSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //var selectedItem =  InvoiceDg.SelectedItem as Order;
            //if (selectedItem != null)
            //{
            //    InvoiceItemDg.ItemsSource=_orderitemsRepository.Table.
            //        IncludeProperties(x=>x.Food).
            //        Where(x => x.Invoice_Id == selectedItem.Id).ToList();
            //}
        }

        private void AddOrderBtn_OnClick(object sender, RoutedEventArgs e)
        {
            
            _win.ContentControl.Content =  new CreateEdiOrderView();
        }
    }
}
