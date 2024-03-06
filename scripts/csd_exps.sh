export CUDA_VISIBLE_DEVICES=1
python prolific_dreamer2d_opposite.py \
        --num_steps 1500 --log_steps 50 \
        --seed 1024 --lr 0.03 \
        --model_path 'stabilityai/stable-diffusion-2-1-base' --work_dir 'work_dir/csd' \
        --loss_weight_type '1m_alphas_cumprod' --t_schedule 'random' \
        --generation_mode 'csd' \
        --prompt "An astronaut playing the violin" \
        --height 512 --width 512 --batch_size 16 --guidance_scale 1. \
        --particle_num_vsd 2 \
        --log_progress false --save_x0 false --save_phi_model false
