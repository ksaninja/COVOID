using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace GG2
{
    // Learn more about making custom code visible in the Xamarin.Forms previewer
    // by visiting https://aka.ms/xamarinforms-previewer
    [DesignTimeVisible(false)]
    public partial class MainPage : ContentPage
    {
        
        
        public MainPage()
        {
            InitializeComponent();
        }

        private async void KKK(object sender,EventArgs e)
        {
            //await Navigation.PushModalAsync(new LoginPage());
            //await Navigation.PushAsync(new LoginPage());

            LoginPage p1 = new LoginPage();
            //Shell.SetTabBarIsVisible(this, false);
            //Shell.SetFlyoutBehavior(this, FlyoutBehavior.Disabled);// stop close auto when click
            //Shell.SetFlyoutBehavior(this, FlyoutBehavior.Locked);// stop close auto when click
            //Shell.Current
            //Shell.SetFlyoutBehavior(this, FlyoutBehavior.Flyout);// stop Open auto when click
            //Shell.SetTabBarIsVisible(this, false);

            //Shell.Current.FlyoutIsPresented = false; // hide the slide left bar
            //Shell.SetTabBarIsVisible(this, false);

            //this.Navigation.PopModalAsync();
            //this.Navigation.PopModalAsync();
            this.Navigation.PushModalAsync(p1); // from left and pop from right

        }


        private async void OOO(object sender, EventArgs e)
        {
            // await Navigation.PushModalAsync(new LoginPage());

            // await Navigation.PushAsync(new LoginPage());

            SugnUpPage p1 = new SugnUpPage();
            //Shell.SetTabBarIsVisible(this, false);
            //Shell.SetFlyoutBehavior(this, FlyoutBehavior.Disabled);// stop close auto when click
            //Shell.SetFlyoutBehavior(this, FlyoutBehavior.Locked);// stop close auto when click
            //Shell.Current
            //Shell.SetFlyoutBehavior(this, FlyoutBehavior.Flyout);// stop Open auto when click
            //Shell.SetTabBarIsVisible(this, false);

            //Shell.Current.FlyoutIsPresented = false; // hide the slide left bar
            //Shell.SetTabBarIsVisible(this, false);

            //this.Navigation.PopModalAsync();
            //this.Navigation.PopModalAsync();
            this.Navigation.PushModalAsync(p1); // from left and pop from right

        }


        private async void GGG(object sender, EventArgs e)
        {
            //  await Navigation.PushModalAsync(new LoginPage());

            // await Navigation.PushAsync(new LoginPage());

            LoginPage p1 = new LoginPage();
         
            //this.Navigation.PopModalAsync();
            this.Navigation.PushModalAsync(p1); // from left and pop from right

        }
    }


}
