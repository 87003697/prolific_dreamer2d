### VSD multi particles
export CUDA_VISIBLE_DEVICES=5
python prolific_dreamer2d.py \
        --num_steps 1500 --log_steps 50 \
        --seed 1024 --lr 0.03 \
        --model_path 'stabilityai/stable-diffusion-2-1-base' --work_dir 'work_dir/dream_fusion2d' \
        --loss_weight_type '1m_alphas_cumprod' --t_schedule 'random' \
        --generation_mode 'sds' \
        --prompt "an astronaut playing the violin" \
        --height 512 --width 512 --batch_size 16 --guidance_scale 7.5 \
        --log_progress false --save_x0 false
