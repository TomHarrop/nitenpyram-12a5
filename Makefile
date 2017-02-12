all: docx

docx: docx/Activation\ of\ nitenpyram.docx

docx/Activation\ of\ nitenpyram.docx: text/Activation\ of\ nitenpyram.md template/reference.docx metadata/meta.yaml
	pandoc --reference-docx=template/reference.docx \
		--csl=template/insect-biochemistry-and-molecular-biology.csl \
		--bibliography=bib/collection.bibtex \
		--from=markdown \
		--to=docx \
		--output=docx/Activation\ of\ nitenpyram.docx \
		metadata/meta.yaml \
		text/Activation\ of\ nitenpyram.md
