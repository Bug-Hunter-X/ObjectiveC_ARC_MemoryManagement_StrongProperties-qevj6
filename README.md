# Objective-C ARC Memory Leak: Strong Properties and Repeated Object Creation

This repository demonstrates a common Objective-C error involving memory leaks due to improper handling of strong properties and repeated object creation within a method. The example uses Automatic Reference Counting (ARC), yet still demonstrates potential pitfalls. The `bug.m` file shows the faulty code; `bugSolution.m` provides the corrected implementation.

## Problem
The problem lies in the `someMethod` of `MyClass`.  Each time `someMethod` is invoked, a new `NSString` object is allocated. Because the `myString` property is declared `strong`, each new string is retained, preventing deallocation of previous instances, leading to a memory leak.  Similar problems can happen when using the `copy` attribute for properties, potentially leading to excessive memory allocation.

## Solution
The solution involves managing object lifetimes correctly. Instead of repeatedly creating new strings, the solution in `bugSolution.m` uses a `nil` check to avoid multiple allocations, ensuring that only one `NSString` object is retained at a time.