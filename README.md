# Robust Input Handling in Ada

This example demonstrates a common issue in Ada programming: insufficient input validation. The original code lacks robust handling for potential exceptions, particularly Constraint_Error when dealing with user input.

The improved version shows best practices for exception handling to make the program more resilient and user-friendly.

## Bug

The `bug.ada` file contains the original code with a vulnerability to Constraint_Error if the user inputs an integer outside the range of the Integer type.  The exception handler is not comprehensive enough.

## Solution

The `bugSolution.ada` file provides a solution that includes comprehensive exception handling, gracefully managing potential Constraint_Error exceptions.  It also clarifies error messages for better user experience.