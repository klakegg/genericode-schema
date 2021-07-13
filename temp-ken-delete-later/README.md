# Temporary directory of Ken's musings

Taking into consideration the following:
- the kewl namespace URI string approach in Erlend's work;
- the documentation is simplified if we can re-use the names of the semantics through the names of the elements;
- there is diminishing returns when the semantic labels and structure are used for the actual list of codes; and
- already I have a JSON serializer that I've used in UBL work and I'm reusing it here instead of researching the Saxon intermediate JSON vcoabulary,

I've created the [`xslt/gc2gcj.xsl`](xslt/gc2gcj.xsl) stylesheet (documentation [`xslt/gc2gcj.html`](xslt/gc2gcj.html))

For the sake of argument, I've created verbose results in the [`verbose/`](verbose/) directory in which you will see a very verbose serialization of the actual coded values. I'm thinking this is overkill and I prefer Erlend's approach to the simplified list of codes.

In the [`terse/`](terse/) directory I have the results I would like to put forward for consideration going forward:
- the list metadata is verbose
- the codes and associated code metadata is simplified

In the [`xml/`](xml/) directory I have the example from State Courts that Erlend picked and I have an example from UBL of multi-valued code-level metadata.

The [`test.sh`](test.sh) shell invocation presumes there is on the path an invocation of Saxon 9 Home Edition using the script name `saxon9he`.

I haven't hand-crafted the JSON Schema for this, as it may not be deemed acceptable.

I note that any deviation away from a complete verbose transliteration of all of genericode will be difficult to justify/specify if we can divine a high-level meta-model of genericode. How would we specify different semantic labels for the same semantic constructs? 

Does a preference for the terse mode eliminate the utility of a meta-model?

Remember that if we can divine a meta-model for genericode, we would be synthesizing the JSON Schema, not hand-crafting it.

So I think we have conflicting requirements we are considering: a single meta-model for both XSD and JSON Schema, and a terse JSON serialization.
