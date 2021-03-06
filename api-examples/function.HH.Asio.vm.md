```basic-usage.hack
/**
 * Query an arbitrary number of URLs in parallel
 * returning them as a Vector of string responses.
 *
 * Refer to \HH\Asio\v() for a more verbose version of this.
 */
async function get_urls(\ConstVector<string> $urls): Awaitable<Vector<string>> {

  // Invoke \HH\Asio\curl_exec for each URL,
  // then await on each in parallel
  return await \HH\Asio\vm($urls, fun("\HH\Asio\curl_exec"));
}

<<__EntryPoint>>
async function basic_usage_main(): Awaitable<void> {
  $urls = ImmVector {
    "http://example.com",
    "http://example.net",
    "http://example.org",
  };

  $pages = await get_urls($urls);
  foreach ($pages as $page) {
    echo \substr($page, 0, 15).' ... '.\substr($page, -8);
  }
}
```.skipif
// Skip if we don't have an internet connection
if (!\get_headers("www.example.com")) {
  print "skip";
}
```
