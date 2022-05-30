# The project folder must contain a folder "images" with all the images.

DATASET_PATH=$1
echo $DATASET_PATH
colmap automatic_reconstructor \
    --workspace_path $DATASET_PATH \
    --image_path $DATASET_PATH/images


python scripts/python/visualize_model.py  --input_model $DATASET_PATH/sparse/0