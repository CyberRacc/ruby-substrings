# Notes & Difficulites

## Challenges Faced
- **Understanding Complex Requirements**: Grasping how to identify and count all occurrences of substrings within a given string, irrespective of case or punctuation.
- **Effective Use of Ruby Methods**: Initially struggled with leveraging Ruby's string manipulation and enumerable methods effectively.
- **Hash Manipulation**: Encountered difficulties in correctly updating a hash to keep track of each substring's count.

## Strategies and Learnings
- **Breaking Down the Problem**: Approached the problem by dissecting it into smaller, more manageable tasks.
- **Ruby Documentation and Resources**: Utilized Ruby's documentation to gain a deeper understanding of specific methods like `.scan`, `.downcase`, and `.gsub`.
- **Iterative Development and Testing**: Adopted an iterative approach to coding and testing, which allowed for gradual refinement of the solution.
- **Understanding `.scan` and `.length`**: Learned how to use `.scan` to find substring occurrences and `.length` to count these occurrences.
- **RSpec Testing**: Gained familiarity with RSpec for writing and running tests to ensure code correctness and reliability.

## Understanding `.scan` and `.length`

- **`.scan` Method**: The `.scan` method in Ruby is used to search for all occurrences of a specific pattern (provided as an argument) within a string. This pattern can be a substring or a regular expression. When `.scan` finds matches, it returns an array containing all occurrences of the pattern. If there are no matches, `.scan` returns an empty array.

For example, if you have a string `"hello world"` and you use `.scan` to search for `"l"`, it would return `["l", "l", "l"]` because "l" appears three times in the string.

- **`.length` Method**: The `.length` method is called on an array or a string to return the number of elements in an array or characters in a string, respectively. When you use `.length` on the array returned by `.scan`, it tells you how many times the pattern was found in the string.

Continuing the previous example, if `.scan` returned `["l", "l", "l"]` when searching for `"l"` in `"hello world"`, calling `.length` on this result (`["l", "l", "l"].length`) would return `3`, indicating that "l" was found three times.