+++
date = "2021-02-05"
draft = "false"
title = "Third-party components"
tags = [
    'development', 
]
+++

Some learning about third party libraries, APIs, and whatnot.

1. Never trust third parties. You don't control them.
2. Trust them even less than that.
3. Isolate them as much as possible from the code you've written. Be prepared to swap them to other alternatives.
4. If possible, have some end-to-end tests for the data you're receiving. Creating fixtures from the data you fetch from time to time looks like the best solution.
5. Use your own app daily to be aware quickly when one of them fail.
