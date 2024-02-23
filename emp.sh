#to insert a new employee record
insert_employee() {
    echo "Enter the Employee No:"
    read empno
    echo "Enter the Employee Name:"
    read empname
    echo "Enter the Employee Designation:"
    read desig
    echo "Enter the Employee Salary:"
    read sal
    echo "$empno:$empname:$desig:$sal" >> employees.txt
    echo "Record inserted successfully!"
}

# Function to modify an existing employee record
modify_employee() {
    echo "Enter the Employee No to modify:"
    read empnom
    echo "Enter the new Employee Name:"
    read new_empname
    echo "Enter the new Employee Designation:"
    read new_desig
    echo "Enter the new Employee Salary:"
    read new_sal

    # Create a temporary file for modifications
    tmp_file=$(mktemp)
    while IFS=: read -r empno empname desig sal; do
        if [ "$empno" = "$empnom" ]; then
            echo "$empnom:$new_empname:$new_desig:$new_sal" >> "$tmp_file"
        else
            echo "$empno:$empname:$desig:$sal" >> "$tmp_file"
        fi
    done < employees.txt
    mv "$tmp_file" employees.txt
    echo "Record modified successfully!"
}

# Function to delete an employee record
delete_employee() {
    echo "Enter the Employee No to delete:"
    read empnod
    # Create a temporary file for modifications
    tmp_file=$(mktemp)
    while IFS=: read -r empno empname desig sal; do
        if [ "$empno" != "$empnod" ]; then
            echo "$empno:$empname:$desig:$sal" >> "$tmp_file"
        fi
    done < employees.txt
    mv "$tmp_file" employees.txt
    echo "Record deleted successfully!"
}

# Function to display all employee records
display_employees() {
    echo "Employee No | Employee Name | Designation | Salary"
    echo "----------------------------------------------"
    while IFS=: read -r empno empname desig sal; do
        echo "$empno | $empname | $desig | $sal"
    done < employees.txt
}

# Main menu loop
while true; do
    echo "----------------------------------------------"
    echo "EMPLOYEE MANAGEMENT SYSTEM"
    echo "----------------------------------------------"
    echo "1. Add Employee"
    echo "2. Modify Employee"
    echo "3. Delete Employee"
    echo "4. Display Employees"
    echo "5. Exit"
    echo "----------------------------------------------"
    echo "Enter your choice:"
    read choice

    case $choice in
        1) insert_employee ;;
        2) modify_employee ;;
        3) delete_employee ;;
        4) display_employees ;;
        5) exit ;;
        *) echo "Invalid choice. Please choose again." ;;
    esac
done
