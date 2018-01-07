all: docx tables

docx: docx/Activation\ of\ nitenpyram.docx

tables: docx/Table1.docx docx/Table2.docx

response: docx/Response\ to\ reviewers.docx

docx/Activation\ of\ nitenpyram.docx: text/Activation\ of\ nitenpyram.md bib/Nitenpyram\ 12a5.bib
	pandoc --reference-docx=template/reference.docx \
		--csl=template/nature-publishing-group-vancouver.csl \
		--bibliography=bib/Nitenpyram\ 12a5.bib \
		--from=markdown \
		--to=docx \
		--output=docx/Activation\ of\ nitenpyram.docx \
		text/Activation\ of\ nitenpyram.md

docx/Table1.docx: text/Table1.md
	pandoc --reference-docx=template/reference.docx \
		--from=markdown \
		--to=docx \
		--output=docx/Table1.docx \
		text/Table1.md

docx/Table2.docx: text/Table2.md
	pandoc --reference-docx=template/reference.docx \
		--from=markdown \
		--to=docx \
		--output=docx/Table2.docx \
		text/Table2.md

docx/Response\ to\ reviewers.docx: text/Response\ to\ reviewers.txt
	pandoc --reference-docx=template/reference.docx \
		--from=markdown \
		--to=docx \
		--output=docx/Response\ to\ reviewers.docx \
		text/Response\ to\ reviewers.txt
