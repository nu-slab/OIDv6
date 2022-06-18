DATASET_DIR = './download_repo'
CLASS_LIST = person ball
LIMIT = '5'
TYPE = 'train'

all: install mv_dataset_many_files
install: clean
	oidv6 downloader en --dataset $(DATASET_DIR) --type_data $(TYPE) --classes $(CLASS_LIST) --limit $(LIMIT) --yes
clean:
	rm -rf $(DATASET_DIR)
	mkdir $(DATASET_DIR)
mv_dataset:
	./mv_dataset.sh $(DATASET_DIR) $(TYPE) $(CLASS_LIST) 
mv_dataset_many_files:
	./mv_dataset_many_files.sh $(DATASET_DIR) $(TYPE) $(CLASS_LIST) 
