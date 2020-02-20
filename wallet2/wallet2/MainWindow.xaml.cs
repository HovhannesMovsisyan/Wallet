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

namespace wallet2
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        WALLLETEntities context;
        Wallet w;
        User data;
        Signup signup;
        public MainWindow()
        {
            InitializeComponent();
            context = new WALLLETEntities();
            signup= new Signup();
            signup.okBtn.Click += OkBtn_Click;
            signup.Closing += S_Closing;
            signup.ShowDialog();
            signup.Close();
        }

        private void S_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            this.Close();
        }

        private void OkBtn_Click(object sender, RoutedEventArgs e)
        {
            string login = signup.login.Text;
            string password = signup.password.Password;
            data = (from item in context.Users
                    where item.login == login
                    && item.password==password
                    select item).FirstOrDefault();

            if (data == null)
            {
                Random rand = new Random();
                context.Users.Add(new User() { 

                    login = login,
                    password = password,
                    electricy = rand.Next(1000, 20000),
                    gas = rand.Next(1000, 10000),
                    water = rand.Next(1000, 5000),
                    phone = rand.Next(1000, 4000),
                    amount = rand.Next(5000, 80000) });
                context.SaveChanges();
                MessageBox.Show("Successfully signed up, try to login!");
            }
            else
            {
                w = new Wallet();


                w.luys.Content = data.electricy + " AMD";
                w.gaz.Content = data.gas + " AMD";
                w.phone.Content = data.phone + " AMD";
                w.water.Content = data.water + " AMD";
                w.cart.Content = data.amount + " AMD";

                w.payLuys.Click += PayLuys_Click;
                w.payGaz.Click += PayGaz_Click;
                w.payPhone.Click += PayPhone_Click;
                w.payWater.Click += PayWater_Click;
                
                w.ShowDialog();
                
            }
            signup.Close();
        }
       

        private void PayGaz_Click(object sender, RoutedEventArgs e)
        {
            if(data.amount >= data.gas)
            {
                data.amount -= data.gas;
                data.gas = 0;
                //context.SaveChanges();


            }
            else
            {
                MessageBox.Show("NOT ENOUGH MONEY!");
            }

            updateScreen();
        }
        private void PayWater_Click(object sender, RoutedEventArgs e)
        {
            if (data.amount >= data.water)
            {
                data.amount -= data.water;
                data.water = 0;
                //context.SaveChanges();


            }
            else
            {
                MessageBox.Show("NOT ENOUGH MONEY!");
            }

            updateScreen();
        }
        private void PayPhone_Click(object sender, RoutedEventArgs e)
        {
            if (data.amount >= data.phone)
            {
                data.amount -= data.phone;
                data.phone = 0;
                //context.SaveChanges();


            }
            else
            {
                MessageBox.Show("NOT ENOUGH MONEY!");
            }

            updateScreen();
        }

        private void PayLuys_Click(object sender, RoutedEventArgs e)
        {
            if (data.amount >= data.electricy)
            {
                data.amount -= data.electricy;
                data.electricy = 0;
                //context.SaveChanges();

            }
            else
            {
                MessageBox.Show("NOT ENOUGH MONEY!");
            }

            updateScreen();
        }

        private void updateScreen()
        {
            w.cart.Content = data.amount + " AMD";
            w.luys.Content = data.electricy + " AMD";
            w.gaz.Content = data.gas + " AMD";
            w.phone.Content = data.phone + " AMD";
            w.water.Content = data.water + " AMD";
            
        }
        
    }
}
