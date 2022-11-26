+++
date = "2022-07-24"
draft = "false"
title = "Building A Book 05 - Strategy"
tags = ['writing', 'book']
+++

{{< picture src="/garden/images/2022/building_a_book/05_strategy.jpg" webp="/garden/images/2022/building_a_book/05_strategy.webp" alt="A glimpse to my horrible outline for Building Your Mouseless Development Environment">}}

{{<series>}}
{{<mouseless_book_series>}}
{{</mouseless_book_series>}}

It doesn't look like it, but the previous posts of my series were about important stuff: the stuff we have in our head. The stuff which define our reality. Let's explore now the writing itself. What was the crazy strategy I came up with to write this book?

## A Book is a Big Thing

Writing a book is not a walk in the park. It's because a book is big. Hundreds of pages, sometimes thousands! How on Earth can somebody writes that much? Many (more talented) people did it before me, so there are some ways.

You know what's also big? A cathedral. Let's argue that it's even bigger than a book. Why the hell I'm speaking about a cathedral? Because of this story:

You're walking on a street made of chocolate and, suddenly, you meet three stonemasons. They all do the same work, building a nice cathedral. You ask each of them, one after another, what on Earth they're doing and why they're not relaxing and eating some pieces of the road.

The first one answer: "I am cutting this stone to shape".
The second one answer: "I am building a great cathedral".
The third one answer: "I am working for the glory of God".

All three are right, and they do need to do all three to get the cathedral right:

1. The first builder work on the necessary details to build the cathedral itself.
2. The second one look at the big picture, to be sure they indeed end up with a cathedral, and not with a rocket launcher.
3. The third one has the higher goal in mind, the big purpose. Who wants to build a big stuff (like a cathedral) if it has no purpose?

Replace the word "cathedral" with "books" and you have the overall strategy. I wasn't working for the glory of God, but the glory of Vim and The Shell, which is more or less the same.

But here's the real difficulty: I had to think about all three points more or less *at the same time*. I'm alone, so I needed to. You need to cram all our three builders in your brain.

As much as possible, at least.

## What Tools to Build a Book?

At the time our three good builders were building the cathedral, they didn't really have a massive choice of tools. Or maybe they did; I don't know, I never built a cathedral.

There are many tools available to write a book nowadays. But the theme of this specific book is important here. It's Building your Mouseless Development Environment, you remember? An obscure stuff about Linux, the shell, the command line, and keyboards.

Would it be really honest to write the book using Windows 11 and Microsoft Word, using this damn mouse 98% of the time, without even opening a Linux shell? Not really, right? I like to be honest. It's easier to manage. Also, historically, I hate Word. And Windows. They inflicted too much pain to my little heart over the years.

I went all in: I built a whole CLI pipeline using the shell (Zsh) to convert markdown to PDF, with a little detour via LaTeX, featuring:

1. Pandoc, to convert markdown to LaTeX, and markdown to HTML.
2. A bunch of Pandoc scripts (in Lua), to modify the AST created by pandoc, and spit the LaTeX and HTML I wanted.
3. latexmk, to convert from LaTeX to PDF.
4. ebook-convert, to convert from HTML to epub.

These were the artists. Like any good orchestra, however, you also need a good conductor, and a fantastic composer:

4. A makefile as the conductor, to orchestrate all these CLIs.
5. Neovim as the editor, to compose my delightful prose.

You can find the different files in this [Github repo](https://github.com/Phantas0s/mouseless-book-behind-scene). It changed quite a bit since then (I made many modifications while working on my [second book](https://themouseless.dev/vim/)) but the main ideas where already there.

I didn't know most of these tools at the beginning. I was a beginner builder. But I knew good old Arch Linux, Neovim, and the Linux shell fairly well. It was enough to learn easily the rest quite easily.

This workflow allowed me to control granularly every step, to do exactly what I wanted. I could control the details. It's different from having a software doing everything, without letting much control.

This control has a price, however: it's more difficult to set up. A little price in my opinion, because the power of such workflow is way bigger than any easier, "bundled" solution.

## Experiments and Iterations

As I was saying, I was one builder on this book, so I had to keep in mind as much as possible the details, the whole, and the purpose. Here's my usual workflow when I do something new, and building this book wasn't an exception:

1. Experiment (details).
2. Look at what happens (details / whole).
3. Analyze the feedback: see if I wanted to keep or reject the results (whole).
4. Ask for external feedback about the decisions made (purpose).

It's difficult to see if my book would achieve its purpose for two reasons:

1. I was too much "in it". I didn't have any objectivity on the "educative power" of the book.
2. I knew enough what I was talking about to write a book. But it's difficult to know how the readers would react to it.

That's why external feedback were important. I was trying to teach something with this book, and the only ones who could tell me if it was successful were the potentials learners themselves.

It's hard to get feedback. People are busy, and I totally get that. I'm busy, too! And I'm part of "the people" for others' projects also. But, thanks to my blog and the surrounding community, I could gather enough feedback to get some directions and fix some problematic areas.

If I need to do it all over again, I'd use the same approach. And that's exactly what I'm doing with [my new book](https://themouseless.dev/vim/)!
