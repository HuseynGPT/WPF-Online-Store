﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Windows.Controls;
using System.Reflection.Metadata.Ecma335;
using Online_Store.Models;
using Online_Store.Views;

namespace Online_Store;


public partial class MainWindow : Window
{
    public ObservableCollection<Product> products { get; set; }
    public Product newProduct { get; set; }

    public MainWindow()
    {
        InitializeComponent();

        products = new();
        products.Add(new() { Name = "Coca-Cola", Price = 1.65f, Quantity = 10, ImagePath = "Resources\\Coca-Cola.jpeg" });
        products.Add(new() { Name = "Sutas Qaymaq", Price = 0.76f, Quantity = 10, ImagePath = "Resources\\SutasQayamq.jpeg" });
     
        products.Add(new() { Name = "Fanta", Price = 0.65f, Quantity = 10, ImagePath = "Resources\\Fanta.jpeg" });
        products.Add(new() { Name = "Bread", Price = 0.50f, Quantity = 10, ImagePath = "Resources\\Bread.jpeg" });
        products.Add(new() { Name = "Snikers", Price = 0.50f, Quantity = 10, ImagePath = "Resources\\Snikers.png" });

        ProductsLisView.Items.Clear();
        DataContext = this;


    }

    private void TextBox_GotFocus(object sender, RoutedEventArgs e)
    {
        if (searchTextBox.Text.Equals("Search"))
            searchTextBox.Text = string.Empty;
    }

    private void searchTextBox_TextChanged(object sender, TextChangedEventArgs e)
    {
        if (searchTextBox.Text.Length != 0 && !searchTextBox.Text.Equals("Search")) {
            var findedProds = products.Where(x => x.Name.ToLower().StartsWith(searchTextBox.Text.ToLower())).ToList();
            ProductsLisView.ItemsSource = findedProds;
        }


        else if (searchTextBox.Text.Equals(string.Empty))
            ProductsLisView.ItemsSource = products;
    }

    private void listviee_MouseDoubleClick(object sender, System.Windows.Input.MouseButtonEventArgs e)
    {
        Product? selected = ProductsLisView.SelectedItem as Product;
        MessageBox.Show($"Name: {selected!.Name}\nPrice: {selected.Price!.ToString()}\nQuantity: {selected.Quantity}", selected.Name, MessageBoxButton.OK, MessageBoxImage.Information);
    }

    private void Button_Click(object sender, RoutedEventArgs e)
    {
        var addProdView = new AddProduct(products);
        addProdView.ShowDialog();
    }

    private void Button_Click_1(object sender, RoutedEventArgs e)
    {
        var editProdView = new EditProduct(ProductsLisView.SelectedItem as Product);
        editProdView.ShowDialog();
    }
}
