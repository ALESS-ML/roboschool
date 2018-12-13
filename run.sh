D=`date +%m-%d-%H-%M-%S`
VENV=`basename $VIRTUAL_ENV`
export OPENAI_LOGDIR=/home/jp3bgy/Program/homeworks/ALESS/bipedal/${D}${VENV}/log
python -m baselines.run --alg=ppo2 --env=RoboschoolWalker2d-v1  --network=mlp --num_timesteps=1e8 --num_env=24 --save_path=./${D}${VENV}/bipedal_ppo2 --ent_coef=0.1 --num_hidden=200 --num_layers=3 --value_network=copy --seed 857139269
