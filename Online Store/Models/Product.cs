using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Channels;
using System.Threading.Tasks;

namespace Online_Store.Models
{
    public class Product : INotifyPropertyChanged
    {
        private int quantity;

        public int Quantity
        {
            get { return quantity; }
            set { quantity = value; OnPropertyChange(); }
        }

        private float price;

        public float Price
        {
            get { return price; }
            set { price = value; OnPropertyChange(); }
        }

        private string? name;

        public string Name
        {
            get { return name; }
            set { name = value; OnPropertyChange(); }
        }

        private string? imagePath;

        public string ImagePath
        {
            get { return imagePath; }
            set { imagePath = value; OnPropertyChange(); }
        }


        public event PropertyChangedEventHandler? PropertyChanged;


        public void OnPropertyChange([CallerMemberName] string? PropertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(PropertyName));
        }
    }
}