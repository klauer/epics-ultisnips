CONVERT := python3 vscode_to_ultisnips/convert.py
SOURCE_SNIPPETS := vscode-epics/snippets
DEST_SNIPPETS := UltiSnips

rebuild: clone convert

clone:
	git submodule init
	git submodule update --recursive

convert:
	mkdir -p $(DEST_SNIPPETS)
	$(CONVERT) $(SOURCE_SNIPPETS)/db.json > $(DEST_SNIPPETS)/epicsDb.snippets
	$(CONVERT) $(SOURCE_SNIPPETS)/dbd.json >> $(DEST_SNIPPETS)/epicsDb.snippets

	$(CONVERT) $(SOURCE_SNIPPETS)/c.json > $(DEST_SNIPPETS)/c.snippets
	$(CONVERT) $(SOURCE_SNIPPETS)/snl.json > $(DEST_SNIPPETS)/epicsSNL.snippets
	$(CONVERT) $(SOURCE_SNIPPETS)/weTest.json > $(DEST_SNIPPETS)/weTest.snippets
	$(CONVERT) $(SOURCE_SNIPPETS)/startup.json > $(DEST_SNIPPETS)/startup.snippets
	$(CONVERT) $(SOURCE_SNIPPETS)/substitutions.json > $(DEST_SNIPPETS)/substitutions.snippets


.PHONY: rebuild clone
