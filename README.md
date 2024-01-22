# Ruby-
Ruby is an interpreted, high-level, general-purpose programming language which supports multiple programming paradigms. It was designed with an emphasis on programming productivity and simplicity. In Ruby, everything is an object, including primitive data types. 

## History of Ruby
The first public release of Ruby 0.95 was announced on Japanese domestic newsgroups on December 21, 1995. Subsequently, three more versions of Ruby were released in two days. The release coincided with the launch of the Japanese-language ruby-list mailing list, which was the first mailing list for the new language. <br>
<br>
Already present at this stage of development were many of the features familiar in later releases of Ruby, including object-oriented design, classes with inheritance, mixins, iterators, closures, exception handling and garbage collection. <br>

After the release of Ruby 0.95 in 1995, several stable versions of Ruby were released in these years: <br>
<br>
* Ruby 1.0: December 25, 1996 <br>
* Ruby 1.2: December 1998 <br>
* Ruby 1.4: August 1999 <br>
* Ruby 1.6: September 2000 <br>
In 1997, the first article about Ruby was published on the Web. In the same year, Matsumoto was hired by netlab.jp to work on Ruby as a full-time developer. <br>
<br>
In 1998, the Ruby Application Archive was launched by Matsumoto, along with a simple English-language homepage for Ruby. <br>
<br>
In 1999, the first English language mailing list ruby-talk began, which signaled a growing interest in the language outside Japan. In this same year, Matsumoto and Keiju Ishitsuka wrote the first book on Ruby, The Object-oriented Scripting Language Ruby (オブジェクト指向スクリプト言語 Ruby), which was published in Japan in October 1999. It would be followed in the early 2000s by around 20 books on Ruby published in Japanese. <br>
<br>
By 2000, Ruby was more popular than Python in Japan. In September 2000, the first English language book Programming Ruby was printed, which was later freely released to the public, further widening the adoption of Ruby amongst English speakers. In early 2002, the English-language ruby-talk mailing list was receiving more messages than the Japanese-language ruby-list, demonstrating Ruby's increasing popularity in the non-Japanese speaking world. <br>

### Ruby 1.8 and 1.9
Ruby 1.8 was initially released August 2003, was stable for a long time, and was retired June 2013.[22] Although deprecated, there is still code based on it. Ruby 1.8 is only partially compatible with Ruby 1.9. <br>

Ruby 1.8 has been the subject of several industry standards. The language specifications for Ruby were developed by the Open Standards Promotion Center of the Information-Technology Promotion Agency (a Japanese government agency) for submission to the Japanese Industrial Standards Committee (JISC) and then to the International Organization for Standardization (ISO). It was accepted as a Japanese Industrial Standard (JIS X 3017) in 2011 and an international standard (ISO/IEC 30170) in 2012. <br>

Around 2005, interest in the Ruby language surged in tandem with Ruby on Rails, a web framework written in Ruby. Rails is frequently credited with increasing awareness of Ruby. <br>

Effective with Ruby 1.9.3, released October 31, 2011, Ruby switched from being dual-licensed under the Ruby License and the GPL to being dual-licensed under the Ruby License and the two-clause BSD license. Adoption of 1.9 was slowed by changes from 1.8 that required many popular third party gems to be rewritten. Ruby 1.9 introduces many significant changes over the 1.8 series. Examples include:<br>

* block local variables (variables that are local to the block in which they are declared)
* an additional lambda syntax: ```f = ->(a,b) { puts a + b }```
* an additional Hash literal syntax using colons for symbol keys: ```{symbol_key: "value"} == {:symbol_key => "value"}```
* per-string character encodings are supported
* new socket API (IPv6 support)
* ```require_relative``` import security

### Ruby 2
Ruby 2.0 was intended to be fully backward compatible with Ruby 1.9.3. As of the official 2.0.0 release on February 24, 2013, there were only five known (minor) incompatibilities. Ruby 2.0 added several new features, including:

* method keyword arguments,
* a new method, ```Module#prepend```, for extending a class,
* a new literal for creating an array of symbols,
* new API for the lazy evaluation of Enumerables, and
* a new convention of using #to_h to convert objects to Hashes.
Starting with 2.1.0, Ruby's versioning policy changed to be more similar to semantic versioning.

Ruby 2.2.0 includes speed-ups, bugfixes, and library updates and removes some deprecated APIs. Most notably, Ruby 2.2.0 introduces changes to memory handling – an incremental garbage collector, support for garbage collection of symbols and the option to compile directly against jemalloc. It also contains experimental support for using vfork(2) with system() and spawn(), and added support for the Unicode 7.0 specification. Since version 2.2.1, Ruby MRI performance on PowerPC64 was improved. Features that were made obsolete or removed include callcc, the DL library, Digest::HMAC, lib/rational.rb, lib/complex.rb, GServer, Logger::Application as well as various C API functions.

### Ruby 3
Ruby 3.0.0 was released on Christmas Day in 2020. It is known as Ruby 3x3 which means that programs would run three times faster in Ruby 3.0 comparing to Ruby 2.0. and some had already implemented in intermediate releases on the road from 2 to 3. To achieve 3x3, Ruby 3 comes with MJIT, and later YJIT, Just-In-Time Compilers, to make programs faster, although they are described as experimental and remain disabled by default (enabled by flags at runtime).

Another goal of Ruby 3.0 is to improve concurrency and two more utilities Fibre Scheduler, and experimental Ractor facilitate the goal. Ractor is light-weight and thread-safe as it is achieved by exchanging messages rather than shared objects.

Ruby 3.0 introduces RBS language to describe the types of Ruby programs for static analysis. It is separated from general Ruby programs.

There are some syntax enhancements and library changes in Ruby 3.0 as well.

Ruby 3.1 was released on Christmas Day in 2021. It includes YJIT, a new, experimental, Just-In-Time Compiler developed by Shopify, to enhance the performance of real world business applications. A new debugger is also included. There are some syntax enhancements and other improvements in this release. Network libraries for FTP, SMTP, IMAP, and POP are moved from default gems to bundled gems. 

## Semantics and philosophy
Ruby is object-oriented: every value is an object, including classes and instances of types that many other languages designate as primitives (such as integers, booleans, and "null"). Variables always hold references to objects. Every function is a method and methods are always called on an object. Methods defined at the top level scope become methods of the Object class. Since this class is an ancestor of every other class, such methods can be called on any object. They are also visible in all scopes, effectively serving as "global" procedures. Ruby supports inheritance with dynamic dispatch, mixins and singleton methods (belonging to, and defined for, a single instance rather than being defined on the class). Though Ruby does not support multiple inheritance, classes can import modules as mixins.

Ruby has been described as a multi-paradigm programming language: it allows procedural programming (defining functions/variables outside classes makes them part of the root, 'self' Object), with object orientation (everything is an object) or functional programming (it has anonymous functions, closures, and continuations; statements all have values, and functions return the last evaluation). It has support for introspection, reflection and metaprogramming, as well as support for interpreter-based threads. Ruby features dynamic typing, and supports parametric polymorphism.

According to the Ruby FAQ, the syntax is similar to Perl's and the semantics are similar to Smalltalk's, but the design philosophy differs greatly from Python's.
Ruby 3.2 was released on Christmas Day in 2022. It brings support for being run inside of a WebAssembly environment via a WASI interface. Regular expressions also receives some improvements, including a faster, memoized matching algorithm to protect against certain ReDoS attacks, and configurable timeouts for regular expression matching. Additional debugging and syntax features are also included in this release, which include syntax suggestion, as well as error highlighting. The MJIT compiler has been re-implemented as a standard library module, while the YJIT, a Rust-based JIT compiler now supports more architectures on Linux.


## Semantics and philosophy
Ruby is object-oriented: every value is an object, including classes and instances of types that many other languages designate as primitives (such as integers, booleans, and "null"). Variables always hold references to objects. Every function is a method and methods are always called on an object. Methods defined at the top level scope become methods of the Object class. Since this class is an ancestor of every other class, such methods can be called on any object. They are also visible in all scopes, effectively serving as "global" procedures. Ruby supports inheritance with dynamic dispatch, mixins and singleton methods (belonging to, and defined for, a single instance rather than being defined on the class). Though Ruby does not support multiple inheritance, classes can import modules as mixins.

Ruby has been described as a multi-paradigm programming language: it allows procedural programming (defining functions/variables outside classes makes them part of the root, 'self' Object), with object orientation (everything is an object) or functional programming (it has anonymous functions, closures, and continuations; statements all have values, and functions return the last evaluation). It has support for introspection, reflection and metaprogramming, as well as support for interpreter-based threads. Ruby features dynamic typing, and supports parametric polymorphism.

According to the Ruby FAQ, the syntax is similar to Perl's and the semantics are similar to Smalltalk's, but the design philosophy differs greatly from Python's.

## Features
* Thoroughly object-oriented with inheritance, mixins and metaclasses
* Dynamic typing and duck typing
* Everything is an expression (even statements) and everything is executed imperatively (even declarations)
* Succinct and flexible syntax that minimizes syntactic noise and serves as a foundation for domain-specific languages
* Dynamic reflection and alteration of objects to facilitate metaprogramming
* Lexical closures, iterators and generators, with a block syntax
* Literal notation for arrays, hashes, regular expressions and symbols
* Embedding code in strings (interpolation)
* Default arguments
* Four levels of variable scope (global, class, instance, and local) denoted by sigils or the lack thereof
* Garbage collection
* First-class continuations
* Strict boolean coercion rules (everything is *true* except ```false``` and ```nil```)
* Exception handling
* Operator overloading
* Built-in support for rational numbers, complex numbers and arbitrary-precision arithmetic
* Custom dispatch behavior (through ```method_missing``` and ```const_missing```)
* Native threads and cooperative fibers (fibers are a 1.9/YARV feature)
* Support for Unicode and multiple character encodings.
* Native plug-in API in C
* Interactive Ruby Shell, an interactive command-line interpreter that can be used to test code quickly (REPL)
* Centralized package management through RubyGems
* Implemented on all major platforms
* Large standard library, including modules for YAML, JSON, XML, CGI, OpenSSL, HTTP, FTP, RSS, curses, zlib and Tk
* Just-in-time compilation

## Syntax
The syntax of the Ruby programming language is broadly similar to that of Perl and Python. Class and method definitions are signaled by keywords, whereas code blocks can be defined by either keywords or braces. In contrast to Perl, variables are not obligatorily prefixed with a sigil. When used, the sigil changes the semantics of scope of the variable. For practical purposes there is no distinction between expressions and statements. Line breaks are significant and taken as the end of a statement; a semicolon may be equivalently used. Unlike Python, indentation is not significant.

One of the differences from Python and Perl is that Ruby keeps all of its instance variables completely private to the class and only exposes them through accessor methods (```attr_writer```, ```attr_reader```, etc.). Unlike the "getter" and "setter" methods of other languages like C++ or Java, accessor methods in Ruby can be created with a single line of code via metaprogramming; however, accessor methods can also be created in the traditional fashion of C++ and Java. As invocation of these methods does not require the use of parentheses, it is trivial to change an instance variable into a full function without modifying a single line of calling code or having to do any refactoring achieving similar functionality to C# and VB.NET property members.

### Interactive sessions
