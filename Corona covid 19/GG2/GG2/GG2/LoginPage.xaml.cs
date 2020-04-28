using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace GG2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        public LoginPage()
        {
            InitializeComponent();

        }

        private async void GGG(object sender, EventArgs e)
        {
            //  await Navigation.PushModalAsync(new LoginPage());

            // await Navigation.PushAsync(new LoginPage());

            HomePage p1 = new HomePage();

            //this.Navigation.PopModalAsync();
            this.Navigation.PushModalAsync(p1); // from left and pop from right

        }

        private async void OOO(object sender, EventArgs e)
        {
            //  await Navigation.PushModalAsync(new LoginPage());

            // await Navigation.PushAsync(new LoginPage());

            SugnUpPage p1 = new SugnUpPage();

            //this.Navigation.PopModalAsync();
            this.Navigation.PushModalAsync(p1); // from left and pop from right

        }
    }
}