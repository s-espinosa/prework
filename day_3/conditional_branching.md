# Learning Goals

In programming, there are often several possible actions our program can take depending on a condition. This is called **Flow Control**. By the end of this lesson, you should be able to use the following flow control structures:

* if
* elsif
* else
* while
* until
* loop do

You should also be able to define the following vocabulary words:

* Boolean
* Comparison Operator
* Flow Control
* Condition
* Loop
* Infinite Loop

# Lesson

## Booleans

A **boolean** is value of either `true` or `false`. Just like Strings and Integers, `true` and `false` are values. Open up pry and type this:

```ruby
pry(main)> true
=> true
pry(main)> false
=> false
```

Just like any other value in Ruby, we can save them to variables and change them:

```ruby
pry(main)> i_love_dogs = true
=> true
pry(main)> i_love_dogs
=> true
pry(main)> i_love_dogs = false
=> false
```

A more common way to get a boolean is to use one of Ruby's built-in methods for obtaining boolean values:

```ruby
pry(main)> 3.even?
=> false
pry(main)> "Burgers, Fries, Pizza".include?("Pizza")
=> true
```

Methods that give us boolean values are usually denoted with a `?` at the end.

Another way of obtaining a boolean value is with a **comparison operator**. They take two values and compare them in some way. The ones you need to know are:

* `>` - Greater Than
* `<` - Less Than
* `>=` - Greater Than or Equal To
* `<=` - Less Than or Equal To
* `==` - Equal
* `!=` - Not Equal

Here are some examples for you to try:

```ruby
pry(main)> 1 > 3
=> false
pry(main)> 2 <= 2
=> true
pry(main)> 1 == 1
=> true
pry(main)> "Dogs" == "Cats"
=> false
```

Try experimenting with each of these in Pry

## Conditional Branching

Using booleans, we can determine if a condition is true or not. We then want our program to do something based on that condition. This is called **Conditional Branching**.

Think of conditional branching as a fork in the road. Your program is moving along down the one road, and then we lay two paths in front of it and it has to decide which to take.

In reality, there are more than 2 paths, and sometimes the program can skip over all the options and do none of them.

Let's imagine a scenario where we are babysitting. Depending on the child's mood, we want to choose an activity for them. Let's model this in a program. Start by creating a file called `babysitting.rb`

## if

Using `if` statements, we can tell our program to do something based on a condition: "If this condition is true, do this".  

Start by creating a variable called `mood` in your `babysitting.rb` file:

```ruby
  mood = "sleepy"
```

This variable is what we want our program to base decisions on. Let's add an `if` statement that says "If the mood is sleepy, then print out Nap Time":

```ruby
  mood = "sleepy"
  if mood == "sleepy"
    puts "Nap Time"
  end
```

Be careful, the if statement is using the double equal sign `==`. Using a single equal sign `=` is a very common mistake and can be a difficult bug to diagnose.

Before you run the file, what output do you expect to see? Run your code using `ruby babysitting.rb` and see if you got what you were expecting.

Change the `mood` variable to something other than "sleepy" and see what you get.

Nothing. When the condition in the if statement is `false`, whatever code you put inside it does not get run. The general format for any `if` statement is:

```ruby
if condition
  # Code here will execute if condition is true
end
```

## elsif

`elsif` is a combination of the words else and if. We use it to check for more than one condition.

Let's update our if statement to say "If the mood is sleepy, then print out Nap Time. Otherwise, if the mood is hungry, print out Eat Dinner":

```ruby
  mood = "sleepy"
  if mood == "sleepy"
    puts "Nap Time"
  elsif mood == "hungry"
    puts "Eat Dinner"
  end
```

Notice how will still only have one `end`.

You can have as many `elsif`s as you want (but still only one `if`):

```ruby
  mood = "sleepy"
  if mood == "sleepy"
    puts "Nap Time"
  elsif mood == "hungry"
    puts "Eat Dinner"
  elsif mood == "angry"
    puts "Time Out"
  end
```

Let's update our general form for using `if` and `elsif`:

```ruby
if condition_1
  # Code here will execute if condition_1 is true
elsif condition_2
  # Code here will execute if condition_1 is false
  # and condition_2 is true
elsif condition_3
  # Code here will execute if condition_1 and condition_2 are false
  # and condition_3 is true
elsif condition_n
  # Code here will execute if all previous conditions are false
  # and condition_n is true
end
```

Change the `mood` variable to achieve the three different possible outputs from your program.

## else

We use `else` statements to tell our program what to do if none of the conditions are true. The `else` always goes at the end:

```ruby
  mood = "sleepy"
  if mood == "sleepy"
    puts "Nap Time"
  elsif mood == "hungry"
    puts "Eat Dinner"
  elsif mood == "angry"
    puts "Time Out"
  else
    puts "Watch TV"
  end
```

Change the `mood` variable to achieve the four different possible outputs from your program. Notice that only one of these outputs will ever print out.

The final version of using conditional branches looks like this:

```ruby
if condition_1
  # Code here will execute if condition_1 is true
elsif condition_2
  # Code here will execute if condition_1 is false
  # and condition_2 is true
elsif condition_3
  # Code here will execute if condition_1 and condition_2 are false
  # and condition_3 is true
elsif condition_n
  # Code here will execute if all previous conditions are false
  # and condition_n is true
else
  # Code here will execute if all previous conditions are false
end
```

Some important notes on conditional branching:

* exactly one `if`
* exactly one `end`
* can have zero or more `elsif`s
* can have zero or one `else`s
* Only one branch can be taken

Another important note on conditional blocks is that the conditions are checked in order. Because our program can only take one of the paths we've laid out for it, when it finds one that's true there is no need to check the other ones. Try this example:

```ruby
money = 1
if money < 5
  puts "Eat at Taco Bell"
elsif money < 10
  puts "Eat at Olive Garden"
elsif money < 20
  puts "Eat at Outback"
end
```

When `money = 1`, all three of these conditions are true, but "Eat at Taco Bell" gets printed out because once Ruby sees the first one is true, it skips to the `end`. Here is what happens from Ruby's perspective line by line:

* set the `money` variable equal to 1
* Check if money < 5 is true.
* It is, so execute code for that branch, print "Eat at Taco Bell"
* Skip to the end

So even though the second condition `money < 10` is true, it doesn't get exectued because the first one was checked first. Therefore, the second branch, "Eat at Olive Garden" can only ever be executed if the first condition is false. If `money = 7`, here is what happens from Ruby's perspective line by line:

* set the `money` variable equal to 7
* Check if money < 5 is true.
* It isn't, so check next condition
* Check if money < 10 is true
* It is, so execute code for that branch, print "Eat at Olive Garden"
* Skip to the end

## || (or) and && (and)

Let's go back to choosing a restaurant. Update your `flow_control.rb` file to this:

```ruby
money = 1
if money < 5
  puts "Eat at Taco Bell"
elsif money < 10
  puts "Eat at Olive Garden"
elsif money < 20
  puts "Eat at Outback"
end
```

In this example, if `money = 0`, then "Eat at Taco Bell" still get's printed. Even though Taco Bell is pretty affordable, it isn't free. Let's change this so that money has to be between 0 and 5 in order to eat at Taco Bell. We will accomplish this with an `&&` (pronounced "and"). It looks like this:

```ruby
money = 1
if money > 0 && money < 5
  puts "Eat at Taco Bell"
elsif money < 10
  puts "Eat at Olive Garden"
elsif money < 20
  puts "Eat at Outback"
end
```

Change `money = 0` and you will see nothing get's printed out. With `&&` statements, both the condition on the left of the `&&` and the condition on the right of the `&&` have to be true in order for the whole condition to be true. If one or both them is false, the entire condition evaluates to false.

Another way to combine multiple conditions is with the `||` (pronounced "or"). This works the same way as `&&`, except that only one of the conditions on the left or the right of the `||` needs to be true in order for the whole condition to evaluate to true. It also evaluates to true if both of them are true.

We can add a new condition to our example like this:

```ruby
money = 1
olive_garden_gift_card = true
if money > 0 && money < 5
  puts "Eat at Taco Bell"
elsif money < 10 || olive_garden_gift_card
  puts "Eat at Olive Garden"
elsif money < 20
  puts "Eat at Outback"
end
```

Now we can eat at the Olive Garden if we have the money, or if we have a gift card. Notice that we didn't have to use an operator on the `olive_garden_gift_card` variable. For instance, we didn't have to say something like `olive_garden_gift_card == true`. Remember, comparison operators are used to evaluate something to true or false. We don't have to use them in this case because the value of the variable is already `true`.
