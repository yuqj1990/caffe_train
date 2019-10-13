python3 src/train_softmax.py \
--logs_base_dir ~/logs/ \
--models_base_dir ~/models/ \
--data_dir ../../../../dataset/facedata/casia/casia_maxpy_mtcnnalign_182_160/ \
--image_size 160 \
--model_def models.inception_resnet_v1 \
--lfw_dir ../../../../dataset/facedata/lfw/lfw_160/ \
--optimizer ADAM \
--learning_rate -1 \
--max_nrof_epochs 150 \
--keep_probability 0.8 \
--random_crop \
--random_flip \
--use_fixed_image_standardization \
--learning_rate_schedule_file data/learning_rate_schedule_classifier_casia.txt \
--weight_decay 5e-4 \
--embedding_size 512 \
--lfw_distance_metric 1 \
--lfw_use_flipped_images \
--lfw_subtract_mean \
--validation_set_split_ratio 0.05 \
--validate_every_n_epochs 5 \
--prelogits_norm_loss_factor 5e-4