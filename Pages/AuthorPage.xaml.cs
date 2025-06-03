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
using System.Windows.Navigation;
using System.Windows.Shapes;
using LetAndNum.DB;
using LetAndNum.Pages;

namespace LetAndNum.Pages
{
    /// <summary>
    /// Логика взаимодействия для AuthorPage.xaml
    /// </summary>
    public partial class AuthorPage : Page
    {
        public AuthorPage()
        {
            InitializeComponent();
        }

        private void btnAuthor_Click(object sender, RoutedEventArgs e)
        {
            //string login = txbLogin.Text.Trim();
            //string password = psbPassword.Password.Trim();
            //var us = new List<User>(DBClass.connect.User.ToList());
            //User users = us.FirstOrDefault(i => i.Login == login && i.Password == password);
            //if (users != null)
            //{
                NavigationService.Navigate(new SearchPage());

            //}
            //else
            //{
            //    MessageBox.Show("Проверьте логин и пароль");
            //}
        }
    }
}
