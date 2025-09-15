class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    return price - (price * discountPercent / 100);
  }

  void displayBook(double discountPercent) {
    print("Title: $title");
    print("Author: $author");
    print("Price: \$${price.toStringAsFixed(2)}");
    print("Discounted Price: \$${discountedPrice(discountPercent).toStringAsFixed(2)}");
  }
}

void main() {
  Book book1 = Book("Paradoxical sajid", "Arif Azad", 500);
  Book book2 = Book("Clean Code", "Robert C. Martin", 1200);

  book1.displayBook(10);
  book2.displayBook(15);
}
