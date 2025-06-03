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
using LetAndNum.Pages;

namespace LetAndNum
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            MainFrame.NavigationService.Navigate(new AuthorPage());
        }

        //private void btnConvert_Click(object sender, RoutedEventArgs e)
        //{
        //    if(txbConverter.Text=="прямой"||txbConverter.Text=="straight")
        //    {
        //        string input;
        //        input = txbLet.Text;
        //        input = input.ToLower();
        //        int[] let = new int[input.Length];
        //        int count = 0;
        //        for (int i = 0; i < input.Length; i++)
        //        {
        //            if (txbLan.Text == "rus")
        //            {
        //                char letter = input[i];
        //                if (letter >= 'а' && letter <= 'я')
        //                {
        //                    int letNum = letter - 'а' + 1;
        //                    let[count] = letNum;
        //                    count++;
        //                }
        //            }
        //            else if (txbLan.Text == "eng")
        //            {
        //                char letter = input[i];
        //                if (letter >= 'a' && letter <= 'z')
        //                {
        //                    int letNum = letter - 'a' + 1;
        //                    let[count] = letNum;
        //                    count++;
        //                }
        //            }
        //        }
        //        string result = "";
        //        for (int i = 0; i < count; i++)
        //        {
        //            result += let[i] + " ";
        //        }
        //        txbNum.Text = result;
        //    }
        //    else if(txbConverter.Text == "обратный" || txbConverter.Text == "reverse")
        //    {
        //        string numText = txbLet.Text;
        //        string[] num = numText.Split(' ');
        //        string resultText = "";
        //        foreach(string numStr in num)
        //        {
        //            if (txbLan.Text == "rus")
        //            {
        //                bool isNumber = int.TryParse(numStr, out int number);
        //                if(isNumber)
        //                {
        //                    if(number>=1&&number<=33)
        //                    {
        //                        char letter = (char)('а' + number - 1);
        //                        resultText+= letter;
        //                    }
        //                }
        //            }
        //            else if (txbLan.Text == "eng")
        //            {
        //                bool isNumber = int.TryParse(numStr, out int number);
        //                if (isNumber)
        //                {
        //                    if (number >= 1 && number <= 26)
        //                    {
        //                        char letter = (char)('a' + number - 1);
        //                        resultText += letter;
        //                    }
        //                }
        //            }
        //            txbNum.Text=resultText;
        //        }
        //    }
        //}
    }
}
