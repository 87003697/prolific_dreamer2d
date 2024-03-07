export CUDA_VISIBLE_DEVICES=1
python prolific_dreamer2d_opposite.py \
        --num_steps 1500 --log_steps 50 \
        --seed 1024 --lr 0.03 \
        --model_path 'stabilityai/stable-diffusion-2-1-base' --work_dir 'work_dir/scaledreamer' \
        --loss_weight_type '1m_alphas_cumprod' --t_schedule 'custom' \
        --generation_mode 'ours' \
        --prompt "An astronaut playing the violin" \
        --height 512 --width 512 --batch_size 16 --guidance_scale 7.5 --guidance_scale_qt 1 \
        --particle_num_vsd 2 \
        --plus_ratio -0.1  --plus_random false --version 'w_eps1_eps2' \
        --log_progress false --save_x0 false --save_phi_model false
