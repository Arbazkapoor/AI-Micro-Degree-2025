# Step 1: Import os module
import os

# Step 2: Define menu() function
def menu():
    print("NSTI Book Store")
    print("1. Add a book")
    print("2. View books")
    print("3. Search for a book")
    print("4. Delete a book")
    print("5. Borrow a book")
    print("6. return a Book ")
    print("7. Exit")

# Step 3: Define add_new_book(filename) function
# Add a new book
def add_new_book(filename):
    try:
        with open(filename, "a") as file:
            title = input("Enter the book title: ")
            author = input("Enter the author: ")
            pub_year = input("Enter the publication year: ")
            book = f"{title},{author},{pub_year}\n"
            file.write(book)
            print("Book added successfully.")
    except Exception as e:
        print(f"An error occurred: {e}")

#Step 4: Define view_inventory(filename) function
# View all books
def view_inventory(filename):
    try:
        if os.path.exists(filename):
            with open(filename, "r") as file:
                books = file.readlines()
                if books:
                    print("Inventory:")
                    for book in books:
                        title, author, pub_year = book.strip().split(',')
                        print(f"Title: {title}, Author: {author}, Publication Year: {pub_year}")
                else:
                    print("No record found.")
        else:
            print("Inventory file does not exist.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Step 5: Define search_book(filename) function
# Search for a book
def search_book(filename):
    try:
        if os.path.exists(filename):
            search = input("Enter the book name: ")
            with open(filename, 'r') as file:
                books = file.readlines()
                found = False
                for book in books:
                    title, author, pub_year = book.strip().split(",")
                    if title == search:
                        print(f"Found - Book: {title}, Author: {author}, Publication Year: {pub_year}")
                        found = True
                        break
                if not found:
                    print("Book not found.")
        else:
            print("Inventory file does not exist.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Step 6: Define del_book(filename) function
# Delete a book
def del_book(filename):
    try:
        if os.path.exists(filename):
            title1 = input("Enter the title of the book: ")
            with open(filename, "r") as file:
                books = file.readlines()
            found = False
            with open(filename, "w") as file:
                for book in books:
                    title, author, pub_year = book.strip().split(',')
                    if title == title1:
                        print(f"Deleted - {title}, {author}, {pub_year}")
                        found = True
                    else:
                        file.write(book)
            if not found:
                print("Book not found.")
        else:
            print("Inventory file does not exist.")
    except Exception as e:
        print(f"An error occurred: {e}")


# Step 7: Define borrow_book(filename, borrowed_filename) function

def borrow_book(filename, borrowed_filename):
    try:
        if os.path.exists(filename):
            title_to_borrow = input("Enter the title of the book to borrow: ")
            with open(filename, "r") as file:
                books = file.readlines()
            found = False
            with open(filename, "w") as file:
                with open(borrowed_filename, "a") as borrowed_file:
                    for book in books:
                        title, author, pub_year = book.strip().split(',')
                        if title == title_to_borrow:
                            borrowed_file.write(book)
                            print(f"Borrowed - {title}, {author}, {pub_year}")
                            found = True
                        else:
                            file.write(book)
            if not found:
                print("Book not found.")
        else:
            print("Inventory file does not exist.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Step 8: Define return_book(filename, borrowed_filename) function
def return_book(filename, borrowed_filename):
    try:
        if os.path.exists(borrowed_filename):
            title_to_return = input("Enter the title of the book to return: ")
            with open(borrowed_filename, "r") as borrowed_file:
                borrowed_books = borrowed_file.readlines()
            found = False
            with open(borrowed_filename, "w") as borrowed_file:
                with open(filename, "a") as file:
                    for book in borrowed_books:
                        title, author, pub_year = book.strip().split(',')
                        if title == title_to_return:
                            file.write(book)
                            print(f"Returned - {title}, {author}, {pub_year}")
                            found = True
                        else:
                            borrowed_file.write(book)
            if not found:
                print("Book not found in borrowed records.")
        else:
            print("Borrowed books file does not exist.")
    except Exception as e:
        print(f"An error occurred: {e}")
      

# Step 9: Define main() function
def main():
    filename="Books.txt"
    borrowed_filename="Borrowed_Books.txt"
    while True:
        menu()
        choice=input("enter your choice: ")
        if choice =="1":
            add_new_book(filename)
        elif choice=="2":
            view_inventory(filename)
        elif choice=="3":
            search_book(filename)
        elif choice=="4":
            del_book(filename)
        elif choice == "5":
            borrow_book(filename, borrowed_filename)
        elif choice=="6":
            return_book(filename,borrowed_filename)
        elif choice=="7 ":
            print("Exiting the code: ")
            break
        else:
            print("Invalid choice .")


# Step 10: Run the program using if __name__ == "__main__": block
if __name__=="__main__":
    main()
