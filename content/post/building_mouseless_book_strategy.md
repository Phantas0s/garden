+++
date = "2022-05-01"
draft = "true"
title = "Building A Book 05 - Strategy"
tags = ['writing', 'book']
+++

It doesn't look like it, but the previous posts of my series were about important stuff, that is, the stuff we have in our head. Let's go a bit more into the writing itself now: what was the crazy strategy I came up with to write this damned book?

## A Book is a Big Thing

Writing a book is a big stuff to do. It's because a book is big. Hundred of pages. How on Earth can somebody can write hundred of pages? Many people did it before me, so there are some ways to do so.

You know what's also big? A cathedral. There's this story I really like:

You're walking on a street made of chocolate and, suddenly, you meet three stonemasons. You ask each of them, one after another, what's they're doing and why they're not relaxing and eating some piece of the road.

The first one answer: "I am cutting this stone to shape".
The second one answer: "I am building a great cathedral".
The third one answer: "I am working for the glory of god".

All three are right, and they do need to do all three to get the cathedral right:

1. The first builder work on the necessary details to build the cathedral itself.
2. The second one look at the big picture, to be sure they indeed end up with a cathedral, and not a rocket launcher.
3. The third one have the higher goal in mind, the big purpose. Who wants to build a big stuff if it has no purpose for the builders?

Replace the word "cathedral" with "books" and you have the overall strategy. Here's the real difficulty: you have to think about all three points *at the same time*. You need to cram all our three builders in your brain.

As much as possible.

## What Tools?

At the time our three good builders were building the cathedral, they didn't really have a massive choice of tools. Or maybe they did; I don't know, I never built a cathedral.

To write this book, there are many tools available. But the theme of *this* book is important here. It's Building your Mouseless Development Environment, you remember? An obscure stuff about Linux, the shell, the command line, and keyboards.

Would it be really honest to write the book using Windows 11 and Microsoft Word? Yeah. Not really, right? I like to be honest. It's easier to manage. Also, I came to hate Word, and Windows. Too much pain inflicted over the years.

I went all in: a whole CLI pipeline to convert markdown to PDF, with a little detour via LaTeX, featuring:

1. Pandoc, to convert markdown to LaTeX, and markdown to HTML.
2. latexmk, to convert from LaTeX to PDF.
3. ebook-convert, to convert HTML to epub.
4. A bunch of Lua scripts, to modify the AST created by pandoc and spit the LaTeX and HTML I wanted.

These were the artists. Like any good orchestra, however, you also need a good conductor, and a fantastic composer:

4. A makefile as the conductor, to orchestrate all these CLIs, and spit out the book in epub and PDF.
5. Neovim as the editor, to compose my prose.

I didn't know any of these tools when I began, except Neovim. I was a beginner builder. But I knew good old Arch Linux (btw), and I had a lot of experience in the Linux shell. It was enough to learn easily all of that.

**TODO** Illustration of my workflow.

## Experiments and Iterations

Whatever I'm trying to learn, I always go through the same iterative process. Learning include project management to me: during a project, we learn a great deal, and we need to adapt to the new knowledge we acquire.

I was one builder on this book, so I had to keep in mind as much as possible the details, the whole, and the purpose.

1. Experiment (details).
2. Look at what happens (details / whole).
3. Analysis - see if we want to keep or reject the results (whole).
4. Ask for external feedback about the decision made (whole / purpose).

It's difficult to see if my book would achieve its purpose for two reasons:

1. I was too much "in it". I didn't have any objectivity on the possible educative power of the book.
2. I knew what I was talking about, at least a minimim; I wasn't a novice anymore. Difficult to know how people would react to it.

That's why feedback from my peers were important. I was trying to teach something with this book, and the only one who could give me clue if it was successful would be the learners themselves.

It's hard to get feedback. People are busy, and I totally get that. I'm busy tool, and I'm part of "the people" for others' projects. But, thanks to my blog and the community around it, I could gather enough feedback to fix many flaws in the book.

If I would need to do it all over again, I would use the same exact approach.
