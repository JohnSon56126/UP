using StroiMater.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace StroiMater.View
{
    /// <summary>
    /// Логика взаимодействия для ClientWindow1.xaml
    /// </summary>
    public partial class ClientWindow1 : Window
    {
        public ClientWindow1()
        {
            InitializeComponent();
            this.DataContext = new ClientViewModel();
        }
    }
}
