import os

# Display the menu options
def menu():
    print("\nContact Management System")
    print("1. Load contacts from file")
    print("2. Save contacts to file")
    print("3. Add a contact")
    print("4. View all contacts")
    print("5. Search for a contact")
    print("6. Delete a contact")
    print("7. Update a contact")
    print("8. Exit")

# Load contacts from a file
def load_contacts(filename):
    contacts = []
    if os.path.exists(filename):
        try:
            with open(filename, "r") as file:
                for line in file:
                    name, phone, email = line.strip().split(",")
                    contacts.append({"name": name, "phone": phone, "email": email})
            print("Contacts loaded successfully.")
        except Exception as e:
            print(f"An error occurred while loading contacts: {e}")
    else:
        print("No contacts file found. Starting with an empty contact list.")
    return contacts

# Save contacts to a file
def save_contacts(filename, contacts):
    try:
        with open(filename, "w") as file:
            for contact in contacts:
                file.write(f"{contact['name']},{contact['phone']},{contact['email']}\n")
        print("Contacts saved successfully.")
    except Exception as e:
        print(f"An error occurred while saving contacts: {e}")


def add_contact(contacts):
    name = input("Enter contact name: ")
    phone = input("Enter phone number: ")
    email = input("Enter email address: ")
    contact=contacts.append({"name": name, "phone": phone, "email": email})
    print("Contact added successfully.")


# View all contacts
def view_contacts(contacts):
    if contacts:
        print("\nAll Contacts:")
        for i, contact in enumerate(contacts, start=1):
            print(f"{i}. Name: {contact['name']}, Phone: {contact['phone']}, Email: {contact['email']}")
    else:
        print("No contacts available.")

# Search for a contact by name
def search_contact(contacts):
    search_name = input("Enter the name to search for: ")
    found = False
    for contact in contacts:
        if contact["name"].lower() == search_name.lower():
            print(f"Found: Name: {contact['name']}, Phone: {contact['phone']}, Email: {contact['email']}")
            found = True
            break
    if not found:
        print("No contact found with that name.")

# Delete a contact by name
def delete_contact(contacts):
    delete_name = input("Enter the name of the contact to delete: ")
    for contact in contacts:
        if contact["name"].lower() == delete_name.lower():
            contacts.remove(contact)
            print("Contact deleted successfully.")
            return
    print("No contact found with that name.")

# Update a contact by name
def update_contact(contacts):
    update_name = input("Enter the name of the contact to update: ")
    for contact in contacts:
        if contact["name"].lower() == update_name.lower():
            print(f"Current details: Name: {contact['name']}, Phone: {contact['phone']}, Email: {contact['email']}")
            new_name = input("Enter new name (leave blank to keep current): ")
            new_phone = input("Enter new phone number (leave blank to keep current): ")
            new_email = input("Enter new email address (leave blank to keep current): ")
            
            if new_name:
                contact["name"] = new_name
            if new_phone:
                contact["phone"] = new_phone
            if new_email:
                contact["email"] = new_email
            
            print("Contact updated successfully.")
            return
    print("No contact found with that name.")

# Main function
def main():
    filename = "Contacts.txt"
    contacts = []  # In-memory contact list
    
    while True:
        menu()
        choice = input("Enter your choice: ")
        
        if choice == "1":
            contacts = load_contacts(filename)
        elif choice == "2":
            save_contacts(filename, contacts)
        elif choice == "3":
            add_contact(contacts)
        elif choice == "4":
            view_contacts(contacts)
        elif choice == "5":
            search_contact(contacts)
        elif choice == "6":
            delete_contact(contacts)
        elif choice == "7":
            update_contact(contacts)
        elif choice == "8":
            print("Exiting the system. Goodbye!")
            break
        else:
            print("Invalid choice. Please try again.")

# Run the program
if __name__ == "__main__":
    main()

