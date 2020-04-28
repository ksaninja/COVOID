using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;

namespace GG2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]

 

    public partial class HomePage : ContentPage
    {
        [assembly: UsesPermission(Android.Manifest.Permission.AccessCoarseLocation)]
        [assembly: UsesPermission(Android.Manifest.Permission.AccessFineLocation)]
        [assembly: UsesFeature("android.hardware.location", Required = false)]
        [assembly: UsesFeature("android.hardware.location.gps", Required = false)]
        [assembly: UsesFeature("android.hardware.location.network", Required = false)]
        public HomePage()
        {
            InitializeComponent();

            Device.StartTimer(TimeSpan.FromSeconds(2), () =>
            {

                try
                {
                    var location =  Geolocation.GetLastKnownLocationAsync().Result;
                    if (location != null)
                    {
                        lblLat.Text = location.Latitude.ToString();
                        lblLong.Text = location.Longitude.ToString();
                        lblAlt.Text = location.Altitude.ToString();
                    }
                }
                catch (FeatureNotSupportedException fnsEx)
                {
                    // Handle not supported on device exception  
                }
                catch (PermissionException pEx)
                {
                    // Handle permission exception  
                }
                catch (Exception ex)
                {
                    // Unable to get location  
                }

                return true;
            });
        }

        private async void NewVaiolation(object sender, EventArgs e)
        {
            //  await Navigation.PushModalAsync(new LoginPage());

            // await Navigation.PushAsync(new LoginPage());

            //< Label FontAttributes = "Bold" Text = "Retrieve the device's current geolocation coordinates in Xamarin Forms application using Xamarin Essentials for Android and UWP" VerticalOptions = "Center" HorizontalOptions = "Center" />
            //< Label FontAttributes = "Bold" x: Name = "lblLong" Text = "Longitude :" VerticalOptions = "Center" HorizontalOptions = "Center" />
            //< Label FontAttributes = "Bold"x: Name = "lblLat" Text = "Latitude :" VerticalOptions = "Center" HorizontalOptions = "Center" />
            //< Label FontAttributes = "Bold"x: Name = "lblAlt" Text = "Altitude :" VerticalOptions = "Center" HorizontalOptions = "Center" />

            try
            {
                var location = await Geolocation.GetLastKnownLocationAsync();
                if (location != null)
                {
                    lblLat.Text = location.Latitude.ToString();
                    lblLong.Text = location.Longitude.ToString();
                    lblAlt.Text = location.Altitude.ToString();
                }
            }
            catch (FeatureNotSupportedException fnsEx)
            {
                // Handle not supported on device exception  
            }
            catch (PermissionException pEx)
            {
                // Handle permission exception  
            }
            catch (Exception ex)
            {
                // Unable to get location  
            }
        }


        private async void Logout(object sender, EventArgs e)
        {
            //  await Navigation.PushModalAsync(new LoginPage());

            // await Navigation.PushAsync(new LoginPage());

            HomePage p1 = new HomePage();

            //this.Navigation.PopModalAsync();
            this.Navigation.PushModalAsync(p1); // from left and pop from right

        }

       


    }
}