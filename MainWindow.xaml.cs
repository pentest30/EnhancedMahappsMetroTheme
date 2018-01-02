using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Threading;
using MahApps.Metro.Controls;
using MetroRibbon.views;

namespace MetroRibbon
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow :MetroWindow
    {
        private BackgroundWorker bw = new BackgroundWorker();
        private string currentCotrole = null;
        public MainWindow()
        {
            InitializeComponent();
        }

        private void ButtonBase_OnClick(object sender, RoutedEventArgs e)
        {
            throw new NotImplementedException();
        }

        private void UserBtn_OnClick(object sender, RoutedEventArgs e)
        {
            throw new NotImplementedException();
        }

        private void InvoiceBnt_OnClick(object sender, RoutedEventArgs e)
        {
            currentCotrole = "OrderView";
            RunWorker();
        }

        private void RunWorker()
        {
            do
            {
                try
                {
                    bw.RunWorkerAsync();
                }
                catch (Exception e)
                {
                    Debug.WriteLine(e.Message);
                    //throw;
                }
            } while (!bw.IsBusy);
        }


        private void InvockProgress(UserControl control)
        {
            ContentControl.Content = control;
        }

        private void CatBtn_OnClick(object sender, RoutedEventArgs e)
        {
            
        }

        private void MainWindow_OnLoaded(object sender, RoutedEventArgs e)
        {
            bw.WorkerReportsProgress = true;
            bw.DoWork += bw_DoWork;
            bw.RunWorkerCompleted += bw_RunWorkerCompleted;
           
        }

        private void bw_DoWork(object sender, DoWorkEventArgs e)
        {
            prgTest.Dispatcher.Invoke((DispatcherPriority.Render), new Action(() =>
            {
                prgTest.Visibility = Visibility.Visible;
                prgTest.IsActive = true;
               
            }));
            Thread.Sleep(500);
             Dispatcher.Invoke((DispatcherPriority.Background), new Action(() =>
            {
              
                switch (currentCotrole)
                {
                    case "OrderView": InvockProgress(new OrderView()); break;
                    case "CustomerView": InvockProgress(new CustomerView()); break;
                    case "CreateEdiOrderView": InvockProgress(new CreateEdiOrderView()); break;
                }
                
            }));
           
        }

        private void bw_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            prgTest.Visibility = Visibility.Collapsed;
            prgTest.IsActive = false;
        }


        private void CustomerBtn_OnClick(object sender, RoutedEventArgs e)
        {
            currentCotrole = "CustomerView";
            RunWorker();
        }

        private void NewOrderBtn_OnClick(object sender, RoutedEventArgs e)
        {
            currentCotrole = "CreateEdiOrderView";
            RunWorker();
        }
    }
}
