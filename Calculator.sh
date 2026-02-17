#!/bin/bash

# 1. Accept two numbers from the user
read -p "Enter first number: " a
read -p "Enter second number: " b

# 2. Display the menu choices
echo "----------------------"
echo "  Simple Calculator   "
echo "----------------------"
echo "1. Addition (+)"
echo "2. Subtraction (-)"
echo "3. Multiplication (*)"
echo "4. Division (/)"
echo "----------------------"
read -p "Enter your choice (1-4): " ch

# 3. Perform the calculation using a Case statement
case $ch in
    1)
        res=$((a + b))
        echo "Result: $a + $b = $res"
        ;;
    2)
        res=$((a - b))
        echo "Result: $a - $b = $res"
        ;;
    3)
        res=$((a * b))
        echo "Result: $a * $b = $res"
        ;;
    4)
        # Prevent division by zero error
        if [ $b -eq 0 ]; then
            echo "Error: Division by zero is not allowed!"
        else
            res=$((a / b))
            echo "Result: $a / $b = $res"
        fi
        ;;
    *)
        echo "Invalid choice! Please select a number between 1 and 4."
        ;;
esac
