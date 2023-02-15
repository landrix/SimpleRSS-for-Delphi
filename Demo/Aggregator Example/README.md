Aggregator Example

One of the first things I wanted to do is make a replacement for FeedReader (www.feedreader.com) which is an excellant rss reader written in Delphi. My want to make my own was because there were bugs in it that are annoying me silly.
This was an early test application. It only accepts a file for an input (but using something like the THTTP component from Indy www.nevrona.com/indy/ you could have it pull from a website).
It then displays the feed information in the top. All the headlines are displayed in the TListBox below and clicking on a headline brings up the feed in the TMemo below.
A TMemo is not a really good component to use for this, as RSS feeds can contain HTML which should be parsed.

Included in this zip file are 2 xml files (one is the rss from bdn.borland.com test rss feed and the other is the rss feed for my blog) to get you started and playing with it.

For more information on SimpleRSS see http://www.sourceforge.net/projects/simplerss/

Robert MacLean
robert@sadev.co.za
www.sadev.co.za