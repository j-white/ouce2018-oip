# Demo

Patch provision.pl with:

```
$post->content($twig->sprint);
print "Posting to '" . $url_root . $base . '/' . $path . "':\n" . $twig->sprint . "\n\n";
my $response = $BROWSER->request($post);
```

```
my $put = HTTP::Request->new(PUT => $url_root . $base . '/' . $path . (defined $args and $args ne '' ? '?' . $args : ''));
print "PUT to '" . $url_root . $base . '/' . $path . "'\n";
my $response = $BROWSER->request($put);
```

Create a new requisition:

```
./bin/provision.pl requisition add test
```

Add a node to the requisition:

```
./bin/provision.pl node add test test-node-foreign-id test-node-label
```

Add an interface to the node:

```
./bin/provision.pl interface add test test-node-foreign-id 127.0.0.2
```

Add a category to the node:

```
./bin/provision.pl category add test test-node-foreign-id ouce2018
```
