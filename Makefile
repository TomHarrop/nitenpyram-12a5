all: docx tables

tables: docx/Table1.docx docx/Table2.docx

docx: docx/Activation\ of\ nitenpyram.docx

docx/Activation\ of\ nitenpyram.docx: text/Activation\ of\ nitenpyram.md template/reference.docx metadata/meta.yaml bib/Nitenpyram\ 12a5.bib
	pandoc --reference-docx=template/reference.docx \
		--csl=template/nature-publishing-group-vancouver.csl \
		--bibliography=bib/Nitenpyram\ 12a5.bib \
		--from=markdown \
		--to=docx \
		--output=docx/Activation\ of\ nitenpyram.docx \
		metadata/meta.yaml \
		text/Activation\ of\ nitenpyram.md

docx/Table1.docx: text/Table1.md template/reference.docx metadata/meta.yaml bib/Nitenpyram\ 12a5.bib
	pandoc --reference-docx=template/reference.docx \
		--csl=template/nature-publishing-group-vancouver.csl \
		--bibliography=bib/Nitenpyram\ 12a5.bib \
		--from=markdown \
		--to=docx \
		--output=docx/Table1.docx \
		metadata/meta.yaml \
		text/Table1.md

docx/Table2.docx: text/Table2.md template/reference.docx metadata/meta.yaml bib/Nitenpyram\ 12a5.bib
	pandoc --reference-docx=template/reference.docx \
		--csl=template/nature-publishing-group-vancouver.csl \
		--bibliography=bib/Nitenpyram\ 12a5.bib \
		--from=markdown \
		--to=docx \
		--output=docx/Table2.docx \
		metadata/meta.yaml \
		text/Table2.md
