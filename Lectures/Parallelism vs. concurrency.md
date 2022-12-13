### Parallelism vs. Concurrency


</br>

To understand Dart’s model for handling long-running tasks, and also to see why the creators of Dart decided to make Dart single-threaded, it’s helpful to understand the difference between parallelism and concurrency. In common English, these words mean approximately the same thing, but in computer science, there’s a distinction.

Parallelism is when multiple tasks run at the same time on multiple processors or CPU cores. Concurrency, on the other hand, is when multiple tasks take turns running on a single CPU core.

</br>

![Drag Racing](/Assets/Parallelism_concurrency.png)


</br>

## A problem with parallelism

So the problem isn’t so much with parallelism itself, but rather with multiple threads having access to the same state in memory.

</br>

## Dart isolates

Dart’s single thread runs in what it calls an isolate. Each isolate has its own allocated memory area, which ensures that no isolate can access any other isolate’s state. That means that there’s no need for a complicated locking system. It also means that sensitive data is much more secure. Such a system greatly reduces the cognitive load on a programmer.

But isn’t concurrency slow?
If you’re running all of a program’s tasks on a single thread, it seems like it would be really slow. However, it turns out that that’s not usually the case. In the following image, you can see tasks running on two threads in the top portion, and the same tasks running on a single thread in the bottom portion.
