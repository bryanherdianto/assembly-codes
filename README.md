# Assembly Codes for EMU8086

A collection of 8086 assembly language programs written for the EMU8086 emulator.

## Programs

| File                    | Description                                                                                                            |
| ----------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `add_bin.asm`           | Adds two single-digit numbers input by the user and displays the result in both decimal and binary form.               |
| `check_lower_case.asm`  | Counts the number of lowercase letters in a predefined character array using a macro.                                  |
| `count_upper_lower.asm` | Counts the number of uppercase and lowercase letters in a user-input string.                                           |
| `div_mod.asm`           | Demonstrates 8-bit division, showing the quotient in AL and the remainder in AH.                                       |
| `do_bits.asm`           | Demonstrates bitwise operations (AND, XOR, OR, shift) on a 16-bit value.                                               |
| `drawing.asm`           | Draws a square and two diagonal lines using VGA graphics mode via INT 10h.                                             |
| `error_handling.asm`    | Reads 10 characters from the user, validating that each is a digit (0-9) using a macro.                                |
| `factorial.asm`         | Computes the factorial of 5 using a loop with multiplication.                                                          |
| `for_loop.asm`          | Simulates a for-loop that prints incrementing ASCII characters starting from '0'.                                      |
| `get_index.asm`         | Searches for a target number in an array and stores its index.                                                         |
| `get_kecil_besar.asm`   | Counts the number of uppercase 'A' and lowercase 'a' letters in a predefined string.                                   |
| `get_nums.asm`          | Reads 20 characters from the user and counts how many are numeric digits (0-9).                                        |
| `hello_world.asm`       | Prints "Hello World!" to the screen using DOS INT 21h.                                                                 |
| `inc_array.asm`         | Fills a 10-element word array with an incrementing value using STOSW.                                                  |
| `inc_two.asm`           | Stores incrementing values in consecutive memory locations by calling a procedure that increments AX by 2 and BX by 1. |
| `input_sum.asm`         | Reads n numbers from the user and computes their sum, displaying it if it is a single digit.                           |
| `leap_calc.asm`         | Determines whether a user-input number is divisible by 4 as a leap year check.                                         |
| `led_display.asm`       | Outputs values to port 199 to display numbers on emu8086's virtual LED display.                                        |
| `num_compare.asm`       | Demonstrates flag-based signed and unsigned comparisons and runs a number guessing game against 5.                     |
| `num_convert.asm`       | Converts a decimal number to BCD and then to ASCII using the AAM instruction.                                          |
| `num_divide.asm`        | Performs three 16-bit division operations and stores the quotients and remainders.                                     |
| `odd_even.asm`          | Computes (A+B)\*C and determines whether the result is odd or even.                                                    |
| `print_abc.asm`         | Uses MOVSB to copy a string and prints characters A through E, each on a new line.                                     |
| `print_two_digit.asm`   | Converts a hexadecimal byte to its two-digit ASCII decimal representation and prints it.                               |
| `pyramid.asm`           | Prints a pyramid pattern of asterisks based on a user-input number of lines.                                           |
| `random_number.asm`     | Generates a random number (0-9) using the system timer tick and prints it.                                             |
| `rectangle.asm`         | Prints a rectangular pattern of asterisks based on a user-input number of lines.                                       |
| `reverse_triangle.asm`  | Prints a reverse triangle pattern of asterisks based on a user-input number of lines.                                  |
| `start_end.asm`         | Reads a start and end character from the user and prints all characters in that range.                                 |
| `sum_two.asm`           | Stores incrementing values in memory and then reads them back to compute their sum using ADC.                          |
| `triangle.asm`          | Prints a right triangle pattern of asterisks based on a user-input number of lines, with input validation.             |
| `use_macro.asm`         | Demonstrates macro usage by multiplying two numbers (3 and 7) and storing the result.                                  |

## Usage

1. Open any `.asm` file in emu8086.
2. Click **Emulate** to assemble and run the program.
3. Use the emulator's screen, registers, and memory views to inspect the results.
