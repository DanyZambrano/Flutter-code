

### Final constants
Often, you know you’ll want a constant in your program, but you don’t know what its value is at compile time. You’ll only know the value after the program starts running. This kind of constant is known as a runtime constant.

In Dart const is only used for compile-time constants; that is, for values that can be determined by the compiler before the program ever starts running.

If you can’t create a const variable because you don’t know its value at compile time, then you must use the final keyword to make it a runtime constant. There are many reasons you might not know a value until after your program is running. For example, you might need to fetch a value from the server, or query the device settings, or ask a user to input their age.

Here is another example of a runtime value:

```
final hoursSinceMidnight = DateTime.now().hour;
```

DateTime.now() is a Dart function that tells you the current date and time when the code is run. Adding hour to that tells you the number of hours that have passed since the beginning of the day. Since that code will produce a different results depending on the time of day, this is most definitely a runtime value. So to make hoursSinceMidnight a constant, you must use the final keyword instead of const.

If you try to change the final constant after it’s already been set:

```
hoursSinceMidnight = 0;
```
v
This will produce the following error:

The final variable 'hoursSinceMidnight' can only be set once.

You don’t actually need to worry too much about the difference between const and final constants. As a general rule, try const first, and if the compiler complains, then make it final. The benefit of using const is it gives the compiler the freedom to make internal optimizations to the code before compiling it.

No matter what kind of variable you have, though, you should give special consideration to what you call it.

</br>
