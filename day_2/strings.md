# Learning Goals

In programming, strings are one of the most common datatypes which you will come across.  By the end of this lesson, you will be able to identify and define strings in the context of programming, specifically in Ruby.

# Key Vocabulary
* String
* Concatenation
* Interpolation

# Lesson

## Strings

In programming, when we talk about strings, we are really talking about anything combination of characters that is included contained within quotes.  As a beginning programmer, strings can be a bit hard to wrap your head around, as they can be so many different things.  But, in general, anything that you see within quotes in Ruby is a String.  Some examples of strings are listed below:

```ruby
"I am a String!"

'I am also a Sting!'

'324' <- this is a string

I am not a string. <- no quotes means it is not a string!
```

In the above example, note that strings can be contained within double quotes ("") or single quotes ('').  Either quote type creates a valid string, but as we will see later, the behavior of the string can change depending on the type of quote marks used.

### Practice!

Open a pry session and follow along below to practice creating strings and storing those strings in variables:


```ruby
pry(main)> "Hello World!"
=> "Hello World!"
pry(main)> greeting = "Hello World!"
=> "Hello World!"
pry(main)> greeting
=> "Hello World!"
```

As you can see in this example above, you can store strings inside variables, just like you did yesterday with integers and floats.  In the pry session above, whenever you call the variable `greeting` the computer interprets that as the string `"Hello World!"`.  As you can probably guess, using variables to store string data can be a very powerful tool for any programmer so that you do not need to keep typing `"Hello World"` everytime you want to use it.

Let's do some more practice in our pry session:

```ruby
pry(main)> greeting.upcase
=> "HELLO WORLD!"
pry(main)> greeting
=> "Hello World!"
pry(main)> greeting.upcase!
=> "HELLO WORLD!"
pry(main)> greeting
=> "HELLO WORLD!"
```

What's with the upcasing?!  Just like integers, floats, and the other basic ruby datatypes, strings have some built in methods that we can use to manipulate or change strings. In the example above, the first method that we call is `upcase`; as you can see, this method will change all of the characters in the string to uppercase letters.  But, when we then call `greeting` again, it is still in the original state! Why? The upcase method could be described as non-destructive; meaning that when called, the method does not change the stored method of the object on which it is called.  So, in our example, when we call upcase on the `greeting` variable, the return value is the variable contents upcased, but we can still call the `greeting` variable to get the original state of the string.

Conversely, when the method `upcase!` is called on the variable `greeting`, it permanently changes the state of that variable's value.  Now, when we call `greeting` the upcased string will be returned.  Because we have destroyed the original state of the string, the `upcase!` method is often described as a destructive method.  Whenever you see an exclamation point following a method name, it is safe to assume that it is a destructive method and will change the stored value of a string or variable.

In the following exercise, see if you can predict the return value before executing the code:

```ruby
pry(main)> greeting
=> ???
pry(main)> greeting.downcase
=> ???
pry(main)> greeting
=> ???
pry(main)> greeting.downcase!
=> ???
pry(main)> greeting
=> ???
```

Were you able to predict the results?  If not, no sweat - this is the type of thing that you get better at with practice!

So far, we have seen two common methods that come out of the box that can be used on strings: `upcase` and `downcase`.  With the destructive forms, you could say that we have learned four string methods!  Another common string method is `capitalize`.  Let's practice below:

```ruby
pry(main)> greeting
=> "hello world!"
pry(main)> greeting.capitalize
=> "Hello World!"
```

Can you spot the difference between `upcase` and `capitalize`?  With `upcase`, all of the characters are transformed to their capital versions; but with `capitalize`, only the first character of each word is transformed to it's capital version.  Just like `upcase` and `downcase`, `capitalize` also has a destructive form - can you remember what happens with the destructive form?  Test your guess with the example below:

```ruby
pry(main) greeting
=> "hello world!"
pry(main) greeting.capitalize!
=> "Hello World!"
pry(main) greeting
=> ???
```

Great! Now we know three of the common Ruby string methods (six including their destructive forms!).  There are MANY more string methods that you will learn throughout your programming career, but these are a good start.

## Interpolation and Concatenation

Many times in programming you will want to combine multiple strings into one string, or include other objects (like variables) within strings.  These activities are referred to as concatenation and interpolation.

Concatenation specifically refers to the combining of two existing strings and can be accomplished in a number of ways. The most common concatenation method is `+` - it literally adds two strings together.  Let's practice together below:

```ruby
pry(main)> "This is the first part" + "and the second part of a string"
=> "This is the first partand the second part of a string"
```

Note above that when you concatenate strings, you will need to include any spaces or additionaly puncuation needed to make the string readable.  For example:

```ruby
pry(main)> "This is the first part" + " " + "and the second part of a string"
=> "This is the first part and the second part of a string"
```

OR

```ruby
pry(main)> "This is the first part " + "and the second part of a string"
=> "This is the first part and the second part of the string"
```

As you can see, in the two examples above, the same result is achieved through two different means - this is often the case in programming!  There is rarely only one way to solve a problem!

In addition to concatenating strings, you can use concatenation with variables which hold strings.  Let's practice:

```ruby
pry(main)> greeting = "Hello"
=> "Hello"
pry(main)> name = "Harry"
=> "Harry"
pry(main) greeting + name
=> "HelloHarry"
pry(main) greeting + ", " + name
=> "Hello, Harry"
```

What if we want to include Harry's age?  We might be tempted to do something like this:

```ruby
pry(main)> age = 11
=> 11
pry(main)> name + " is " + age " years old"
=> TypeError: no implicit conversion of Integer into String
```

Shoot! Ruby doesn't seem to like that. Luckily, there is a way around this - Interpolation!  Interpolation is when we inject ruby objects into strings directly.  We will get into more detail in just a second, but let's just jump right in with the practice below:

```ruby
pry(main)> "#{name} is #{age} years old"
=> "Harry is 11 years old"
```

Is it magic?  Let's take a closer look at what is happening in the example above.  Our goal was to get two variables (`name` and `age`) to be included in a string.  The problem is that `age` is not a string, so it can not be concatenated onto a string directly.  This is where interpolation comes in.  To interpolate, we start with a string in double quotes: `"is years old"`; this string contains all the information except what is stored in our variables.  Then, we can use ruby interpolation methods (`#{}`) to include the return value of ruby objects inside that string.  This notation is what allows us to include non-string objects inside strings.

There are a couple of key points that I want to highlight here.  First, we can only use interpolation within double quotes ("") - this will not work with strings in single quotes.  And, second, you can drop any ruby code within the interpolation brackets and the return value will be inserted into the string.  See below for an example:

```ruby
pry(main)> "#{name} is #{5 + 6} years old"
=> "Harry is 11 years old"
```

As you can see, ruby will evaluate any code that is in the interpolation brackets and include the result or return value of that code inside the string.

Another important thing to note is that with interpolation, you must put any variables (regardless of their datatype) into brackets in order for that variable to be included in the string.  If you try to call the variable outside of the brackets, you will be dissapointed with the results!  See below for practice:

```ruby
pry(main)> "name is #{age} years old"
=> "name is 11 years old"
```

In the example above, you can see that 'name' is printed, rather than 'Harry'. In order to use a previously defined variable, you MUST use interpolation or concatenation within the string.
