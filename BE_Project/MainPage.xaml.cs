using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using System.Windows.Browser;

namespace BE_Project
{
    public partial class MainPage : UserControl
    {
        public MainPage()
        {
            InitializeComponent();
        }

        int position = 0;
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            video.AutoPlay = false;
            video.Source = new Uri("nfscarbon.mp3", UriKind.Relative);

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            video.Play();
            video_duration.Text = video.NaturalDuration.TimeSpan.Seconds.ToString();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            video.Pause();
            position += video.Position.Seconds;
            Current_pos.Text = position.ToString();
            HtmlPage.Window.Invoke("sayGoodbye", new string[] { Current_pos.Text });
           
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            video.Stop();

        }

        private void video_CurrentStateChanged(object sender, RoutedEventArgs e)
        {
            status.Text = video.CurrentState.ToString();
            Current_pos.Text = video.Position.Seconds.ToString();

        }

        private void video_MouseEnter(object sender, MouseEventArgs e)
        {
            Current_pos.Text = video.Position.Seconds.ToString();
        }

      

    }
}
