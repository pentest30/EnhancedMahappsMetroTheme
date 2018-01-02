using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Windows;
using Restauration.App.Customers;
using Restauration.App.Sales;

namespace MetroRibbon
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            DependencyRegistration();
            base.OnStartup(e);
        }

        private static void DependencyRegistration()
        {
            RegistrarObjects.ObjectsRegistrar();
            RegistrarObjects.ResolveContext();
          
            RegistrarObjects.ResoleRepository<OrderItem>();
            RegistrarObjects.ResoleRepository<User>();
        }
    }
}
