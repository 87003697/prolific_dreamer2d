# export CUDA_VISIBLE_DEVICES=0
# python prolific_dreamer2d_pred_error.py \
#         --num_steps 1500 --log_steps 50 \
#         --seed 1024 --lr 0.03 --phi_lr 0.0001 --use_t_phi true \
#         --model_path 'stabilityai/stable-diffusion-2-1-base' --work_dir 'work_dir/vsd_exps' \
#         --loss_weight_type '1m_alphas_cumprod' --t_schedule 'random' \
#         --generation_mode 'vsd' \
#         --phi_model 'lora' --lora_scale 1. --lora_vprediction false \
#         --prompt "An astronaut riding a horse" \
#         --height 512 --width 512 --batch_size 16 --guidance_scale 7.5 \
#         --particle_num_vsd 2 --particle_num_phi 2 \
#         --log_progress false --save_x0 false --save_phi_model true

export CUDA_VISIBLE_DEVICES=0
python prolific_dreamer2d_pred_error.py \
        --num_steps 100 --log_steps 50 \
        --seed 1024 --lr 0.03 --phi_lr 0.0001 --use_t_phi true \
        --model_path 'stabilityai/stable-diffusion-2-1-base' --work_dir 'work_dir/vsd_exps' \
        --loss_weight_type '1m_alphas_cumprod' --t_schedule 'random' \
        --generation_mode 'vsd' \
        --phi_model 'lora' --lora_scale 1. --lora_vprediction false \
        --prompt "An astronaut riding a horse" \
        --height 512 --width 512 --batch_size 2 --guidance_scale 7.5 \
        --particle_num_vsd 2 --particle_num_phi 2 \
        --log_progress false --save_x0 false --save_phi_model true