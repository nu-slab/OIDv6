DATASET_DIR = './download_repo'
CLASS_LIST = person ball
LIMIT = '10'
TYPE = 'train'

all: install mv_dataset
install: clean
	oidv6 downloader en --dataset $(DATASET_DIR) --type_data $(TYPE) --classes $(CLASS_LIST) --limit $(LIMIT) --yes
clean:
	rm -rf $(DATASET_DIR)
	mkdir $(DATASET_DIR)
mv_dataset:
	./mv_dataset.sh $(DATASET_DIR) $(TYPE) $(CLASS_LIST) 
