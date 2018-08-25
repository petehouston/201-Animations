# Flutter 201: Animations

The goal of this project is to explore Animations in Flutter, from basic overview of the concept to coding examples and tutorials that can help provide applied learning of those ideas.


## References

Living document that I'll keep up-to-date, tracking useful articles and tutorials for learning animation best practices.

 * [Animations: Technical Overview](https://flutter.io/animations/overview.html) / review core Flutter animation classes.
 *  [Animation and Motion Widgets](https://flutter.io/widgets/animation/) / review catalog of animation widgets.
 * [Tutorial: Animations in Flutter](https://flutter.io/tutorials/animation/) / walks through tween animations
 * Zero to One With Flutter [Pt 1](https://medium.com/dartlang/zero-to-one-with-flutter-43b13fd7b354) and [Pt 2](https://medium.com/dartlang/zero-to-one-with-flutter-part-two-5aa2f06655cb) / walk through animated chart creation
 * [Building Beautiful UI with Flutter](https://codelabs.developers.google.com/codelabs/flutter/index.html#0) / Step 7 shows animating a new message
 * [Stephen Grider Course on Udemy](https://www.udemy.com/dart-and-flutter-the-complete-developers-guide/) / Section 17 focuses on building delightful animations
 * [The Boring Show: Adding Animations To Your App](https://www.youtube.com/watch?v=dNSteCm-cEY) with Emily Fortuna & Filip Hracek.
 * [Flutter Heroes and Villains](https://medium.com/flutter-community/flutter-heroes-and-villains-bringing-balance-to-the-flutterverse-2e900222de41) by Norbert Kosir.
 * [Simple Milky Way Animation in Flutter](https://medium.com/flutter-community/simple-milky-way-animation-with-flutter-1ea936c145bf) showing basic hero animation
 * [Making a 3D Flip Animation in Flutter](https://medium.com/flutter-community/make-3d-flip-animation-in-flutter-16c006bb3798) similar to the flight departures board "rolodex" effect.
 * [Flutter Login Animation](https://blog.geekyants.com/flutter-login-animation-ab3e6ed4bd19) from Geeky Ants, with nice screenshot timeline demonstrating animation per tick.
 * [Animations in Flutter](https://proandroiddev.com/animations-in-flutter-6e02ee91a0b2) recreates the 12 principles of UX in Motion
 * [Orchestrating Multiple Animations](https://flutter.rocks/2018/03/14/orchestrating-multiple-animations-into-visual-enter-animation/) showcasing Staggered Animation with values for various effects (blur, curve etc.) on a profile page.
 * [Flutter Animations: The Basics](https://sergiandreplace.com/flutter-animations-the-basics/) from Sergi gives a good starting point


## Common Animation Patterns

In the [Flutter Docs on Animations](https://flutter.io/animations/) there are three kinds of **common animation patterns** listed:

 * _Animated List or Grid_ 
   - animate the addition or deleteion of elements from a collection (list or grid)

 * _Shared Element Transition:_ where the same element occurs across screens (routes) and the animation is used to highlight the transition (e.g, going from a list view to a detail view)

 * _Staggered Animations:_ where the animation is really a set of smaller deferred transitions (or motion) that occur sequentially or overlap (partially or totally) on a timeline.



 There are good examples (with code) to learn the patterns:

  * [_AnimatedList example_](https://flutter.io/catalog/samples/animated-list/) shows a list of cards synched with a List Model. As data is added or removed, the relevant cards and animated in or out of view. [Example screenshot here.](https://storage.googleapis.com/flutter-catalog/cb4a54db8fb3726bf4293b9cc5cb12ce16883803/animated_list_small.png)

  * [*Hero Animation*](https://flutter.io/animations/hero-animations/) is an example of a Shared Element animation. The "hero" widget flies from one route (starting screen) to another route (ending screen). In [standard hero animation](https://youtu.be/CEcFnqRDfgw) it undergoes a change in size & location; in the [radial hero animation](https://youtu.be/LWKENpwDKiM) it also undergoes a change in shape (square/circle)

  * [_Staggered Animations Example_](https://flutter.io/animations/staggered-animations/) shows an example with multiple Animation objects and a single AnimationController. See a [demo video here](https://www.youtube.com/watch?v=0fFvnZemmh8).


## Walkthroughs

Notes & insights from quick walkthroughs of codelabs, tutorials and documentation in a useful order.




