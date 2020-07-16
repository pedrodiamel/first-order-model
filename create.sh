

#[issac, franulo, suguiura, helen, illa]
NAME='issac'
INPUTSOURCE='datasets/source/crop/'$NAME'.png'
INPUTVIDEO='datasets/vdo/acc_style_crop.mp4'
OUTPUT='out/crop_style_'$NAME'.mp4'

#vox-adv-cpk.pth.tar

python3 demo.py \
    --config config/vox-256.yaml \
    --driving_video $INPUTVIDEO \
    --source_image $INPUTSOURCE \
    --checkpoint vox-adv-cpk.pth.tar \
    --result_video $OUTPUT \
    --relative \
    --adapt_scale
