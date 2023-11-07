### SDS
export CUDA_VISIBLE_DEVICES=0
python prolific_dreamer2d.py \
        --num_steps 1500 --log_steps 50 --lr 0.03 \
        --model_path 'stabilityai/stable-diffusion-2-1-base' \
        --loss_weight '1m_alphas_cumprod' \
        --t_schedule random --generation_mode 'sds' \
        --prompt "a photograph of an astronaut riding a horse" \
        --height 512 --width 512 --batch_size 16 --guidance_scale 7.5 \
        --log_progress true --save_x0 true \
        # --half_inference true