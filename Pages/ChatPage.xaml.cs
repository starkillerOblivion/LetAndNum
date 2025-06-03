using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using LetAndNum.DB;

namespace LetAndNum.Pages
{
    /// <summary>
    /// Логика взаимодействия для ChatPage.xaml
    /// </summary>
    public partial class ChatPage : Page
    {
        List<Mess> messes { get; set; }
        public ChatPage()
        {
            InitializeComponent();
            messes = new List<Mess>(DBClass.connect.Mess.ToList());
            lvMess.ItemsSource = messes;
        }

        private void btnPrev_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new SearchPage());
        }

        private void btnSend_Click(object sender, RoutedEventArgs e)
        {

        }
    }
    //public class Message
    //{
    //    public string UserName { get; set; }
    //    public DateTime? DueDate { get; set; }
    //    public string Mess { get; set; }
    //}
}
