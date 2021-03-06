DEVELOPER_AGREEMENT_TYPE_DATASET=$(DATASET_DIR)developer-agreement-type.csv
DEVELOPER_AGREEMENT_TYPE_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)developer-agreement-type/8a7ca8f075dcf1fbe623ce58c3b71e806611e4fb623b95e7b44f8f5a8c4856e3.csv

$(TRANSFORMED_DIR)developer-agreement-type/8a7ca8f075dcf1fbe623ce58c3b71e806611e4fb623b95e7b44f8f5a8c4856e3.csv: collection/resource/8a7ca8f075dcf1fbe623ce58c3b71e806611e4fb623b95e7b44f8f5a8c4856e3
	$(run-pipeline)

$(DEVELOPER_AGREEMENT_TYPE_DATASET): $(DEVELOPER_AGREEMENT_TYPE_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(DEVELOPER_AGREEMENT_TYPE_TRANSFORMED_FILES)

dataset:: $(DEVELOPER_AGREEMENT_TYPE_DATASET)
