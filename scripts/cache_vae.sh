IMAGENET_PATH='/PATH/TO/ILSVRC2012'
CACHED_PATH='/PATH/TO/CACHED/ILSVRC2012'

torchrun --nproc_per_node=4 --nnodes=1 --node_rank=0 \
main_cache.py \
--img_size 256 \
--batch_size 128 \
--data_path ${IMAGENET_PATH} --cached_path ${CACHED_PATH}