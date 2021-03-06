// WARNING: Contains some auto-generated boilerplate code, see:
// HHVM\UserDocumentation\MarkdownExt\ExtractedCodeBlocks\FilterBase::addBoilerplate

namespace HHVM\UserDocumentation\Api\Hack\ClassHHSetMethodFromKeysOf\StringKeys;

<<__EntryPoint>>
async function _main(): Awaitable<void> {
  \init_docs_autoloader();

  $fruit_calories = Map {
    'apple' => 95,
    'orange' => 45,
  };

  $vegetable_calories = darray[
    'cabbage' => 176,
    'potato' => 163,
  ];

  // Create a Set from the keys of a Map
  $fruit_names = Set::fromKeysOf($fruit_calories);
  \var_dump($fruit_names);

  // Create a Set from the keys of an associative array
  $vegetable_names = Set::fromKeysOf($vegetable_calories);
  \var_dump($vegetable_names);
}
