### VSD multi particles
export CUDA_VISIBLE_DEVICES=6
python prolific_dreamer2d.py \
        --num_steps 1500 --log_steps 50 \
        --seed 1024 --lr 0.03 \
        --model_path 'stabilityai/stable-diffusion-2-1-base' --work_dir 'work_dir/deep_dreamer2d' \
        --loss_weight_type '1m_alphas_cumprod' --t_schedule 'random' \
        --generation_mode 'ours' \
        --prompt "an astronaut playing the violin" \
        --height 512 --width 512 --batch_size 16 --guidance_scale 7.5 --guidance_scale_qt 1 \
        --particle_num_vsd 2 \
        --minus_ratio 1.1  --minus_random true --version 'w_eps1_eps2' \
        --log_progress false --save_x0 false --save_phi_model false

        # "w_eps1_eps2", "w1_eps1_w2_eps2", "w1_eps1_eps_w2_eps2_eps"