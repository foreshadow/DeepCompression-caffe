/home/wangzhibo/wzb/DeepCompression-caffe/build/tools/caffe test \
--model=/home/wangzhibo/wzb/DeepCompression-caffe/examples/mnist/lenet_train_test_compress_stage5.prototxt \
--solver=/home/wangzhibo/wzb/DeepCompression-caffe/examples/mnist/lenet_solver_stage5.prototxt \
--weights=/home/wangzhibo/wzb/DeepCompression-caffe/examples/mnist/models/lenet_iter_10000.caffemodel
echo '^^^ pretrained ^^^'

sleep 3

/home/wangzhibo/wzb/DeepCompression-caffe/build/tools/caffe test \
--model=/home/wangzhibo/wzb/DeepCompression-caffe/examples/mnist/lenet_train_test_compress_stage5.prototxt \
--solver=/home/wangzhibo/wzb/DeepCompression-caffe/examples/mnist/lenet_solver_stage5.prototxt \
--weights=/home/wangzhibo/wzb/DeepCompression-caffe/examples/mnist/models/lenet_finetune_stage5_iter_500.caffemodel
echo '^^^ deep compression ^^^'

sleep 3

/home/wangzhibo/wzb/DeepCompression-caffe/build/tools/caffe test \
--model=/home/wangzhibo/wzb/DeepCompression-caffe/examples/mnist/lenet_train_test_compress_stage5.prototxt \
--solver=/home/wangzhibo/wzb/DeepCompression-caffe/examples/mnist/lenet_solver_stage5.prototxt \
--weights=/home/wangzhibo/wzb/DeepCompression-caffe/examples/mnist/models/lenet.recovered.caffemodel
echo '^^^ compressed ^^^'
