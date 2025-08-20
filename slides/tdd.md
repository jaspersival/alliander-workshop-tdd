---
marp: true
theme: gaia
class: invert
plantuml: true
style: |
  section {
    font-size: 30px;
  }
---
# Test Driven ~~Development~~ Design
- Specification-first
- Design methodology
![bg right:55%](./pictures/tdd.png)
---
# Why TDD?
- Testable code
- Enables refactoring
- Less bugs and regressions
- Avoids over-engineering
- Fun! :relaxed:

---
## Kata 1: FizzBuzz

**Description:**
Write a `fizzBuzz` method that accepts a number and returns a string according to the rules below.

**Requirements:**
- Write a `fizzBuzz` method that accepts a number as input and returns it as a string.
- For multiples of three, return `"Fizz"` instead of the number.
- For multiples of five, return `"Buzz"` instead of the number.
- For multiples of both three and five, return `"FizzBuzz"`.

**Notes:**
- Start with the minimal failing solution.
- Write just enough code to pass each test.
- Refactor after each passing test.

---

## Kata 2: String Calculator

**Description:**
Create a simple calculator that takes a string and returns an integer.

**Signature:**
```text
int Add(string numbers)
```

**Requirements:**
- The method can take up to two numbers, separated by commas, and returns their sum.
  Examples: `""`, `"1"`, `"1,2"` (empty string returns 0).
- Allow the method to handle an unknown number of arguments.
- Allow newlines as separators, instead of commas.
  Example: `"1,2\n3"` returns `6`.
- Add validation to not allow a separator at the end.
  Example: `"1,2,"` should return an error.
- Allow different delimiters.
  Example:
  ```
  //;\n1;3      => 4
  //|\n1|2|3    => 6
  //sep\n2sep5  => 7
  ```
  Invalid: `"//|\n1|2,3"` should return an error with message:
  `‘|’ expected but ‘,’ found at position 3.`
- **STOP HERE if you are a beginner. Continue if you finish steps 1-5 within 30 minutes.**
- Calling add with negative numbers returns:
  `"Negative number(s) not allowed: <negativeNumbers>"`
- Multiple errors return all messages separated by newlines.
- Numbers bigger than 1000 should be ignored (`2 + 1001 = 2`).

---

## Kata 3: Password Input Field Validation

**Description:**
Create a password validator function for a user registration form.

**Requirements:**
- Password must be at least 8 characters long.
  Error: `"Password must be at least 8 characters"`
- Password must contain at least 2 numbers.
  Error: `"The password must contain at least 2 numbers"`
- Handle multiple validation errors.
  Example: `"somepassword"` returns
  ```
  Password must be at least 8 characters
  The password must contain at least 2 numbers
  ```
- Password must contain at least one capital letter.
  Error: `"password must contain at least one capital letter"`
- Password must contain at least one special character.
  Error: `"password must contain at least one special character"`

---

## Kata 4: Search Functionality

**Description:**
Implement a city search function. The function takes a string (search text) and returns matching cities.

**City Names:**
| Paris | Budapest | Skopje | Rotterdam | Valencia | Vancouver | Amsterdam | Vienna |
|-------|----------|--------|-----------|----------|-----------|-----------|--------|
| Sydney | New York City | London | Bangkok | Hong Kong | Dubai | Rome | Istanbul |

**Requirements:**
- If search text is fewer than 2 characters, return no results.
- If search text is 2+ characters, return all city names starting with the search text.
  Example: `"Va"` returns `Valencia`, `Vancouver`
- Search is case insensitive.
- Search works for any part of a city name.
  Example: `"ape"` returns `Budapest`
- If search text is `"*"`, return all city names.

---

## Kata 5: Point of Sale Kata

**Description:**
Create an app for scanning bar codes to sell products.

**Requirements:**
- Barcode `12345` displays price `$7.25`
- Barcode `23456` displays price `$12.50`
- Barcode `99999` displays `Error: barcode not found`
- Empty barcode displays `Error: empty barcode`
- Add a total command to scan multiple items and display the sum of prices.

---

## Kata 6: Banking Kata

**Description:**
Create a simple bank application with deposit, withdraw, and print statement features.

**Constraints:**
- Start with a class:
  ```python
  class Account:
      def deposit(self, amount: int):
          pass

      def withdraw(self, amount: int):
          pass

      def print_statement(self):
          pass
  ```
- Do not add other public methods.
- Use strings and integers for dates and amounts.
- Ignore spacing in the printed statement.

**Requirements:**
- Deposit into Account
- Withdraw from Account
- Print Account statement to console

**Example Statement:**
```
DATE       | AMOUNT  | BALANCE
10/04/2014 | 500.00  | 1400.00
02/04/2014 | -100.00 | 900.00
01/04/2014 | 1000.00 | 1000.00
```
