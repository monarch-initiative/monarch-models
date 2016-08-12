# monarch-models

This is the data repository for the models created and edited with WebPhenote, the Monarch instance of the Noctua tool stack.


## Beta Status

The models used by WebPhenote are stored in the `/models/` directory, where existing and new models use a unique hexadecimal filename. Until further notice, models that are currently in this repository are for *example purposes only* right now, and models that are created using WebPhenote may not be preserved. Our intent is to remove this *Beta* qualification soon, so that models can be reliably persisted.

## HPO Models imported from TAB files

Some of the models in `/models` were generated via a set of transformations from TAB files into PXF files and then into OWL files suitable for use with WebPhenote. Only a representative subset of the HPO models in `/models/hpo-annotations/` was chosen, as the entire set is too large for Minerva (the backend of the Noctua stack).

The script `/models/hpo-annotations/copy-subset.sh` generates the file `/models/hpo-annotations/gennedmapping.sh` which copies and renames the human-readable names from `/models/hpo-annotations/` into the Minerva-compatible hexadecimal names. The current translation is:

- Common diseases
	- ./common-diseases/DO-DOID_0014250.tab.omn ../57abb47600000001
	- ./common-diseases/DO-DOID_0000182.tab.omn ../57abb47600000002
	- ./common-diseases/DO-DOID_0011335.tab.omn ../57abb47600000003
	- ./common-diseases/MESH-D062685.tab.omn ../57abb47600000004
	- ./common-diseases/MESH-D062689.tab.omn ../57abb47600000005
	- ./common-diseases/MESH-D063371.tab.omn ../57abb47600000006

- Rare diseases without Negation
	- ./rare-diseases/OMIM-194050.tab.omn ../57abb47600000007
	- ./rare-diseases/OMIM-610187.tab.omn ../57abb47600000008
	- ./rare-diseases/OMIM-250650.tab.omn ../57abb47600000009
	- ./rare-diseases/OMIM-183600.tab.omn ../57abb47600000010

- Rare diseases with Negation
	- ./rare-diseases/OMIM-616507.tab.omn ../57abb47600000012
	- ./rare-diseases/OMIM-616583.tab.omn ../57abb47600000013
	- ./rare-diseases/OMIM-616617.tab.omn ../57abb47600000014


## More information available

- [monarch-phenote](https://github.com/monarch-initiative/monarch-phenote)
- [noctua-models](https://github.com/geneontology/noctua-models)
- [Noctua Tool Stack](https://github.com/geneontology/noctua)
- [Minerva](https://github.com/geneontology/minerva)
