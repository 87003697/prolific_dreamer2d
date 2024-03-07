import os
import argparse
import pickle
import matplotlib.pyplot as plt
import matplotlib as mpl

# mpl.rcParams['font.family'] = "Serif"
plt.rcParams["font.size"] = 16

# specify the path to the directory containing the data
parser = argparse.ArgumentParser()
parser.add_argument('--data_dir', default='data', type=str)
# specify the smooth window size
parser.add_argument('--smooth', default=100, type=int)
args = parser.parse_args()


# specify the path to the directory containing the data
data_dir = args.data_dir
data_path = os.path.join(data_dir, "norm_dict.pkl")

# load the data
with open(data_path, 'rb') as f:
    norm_dict = pickle.load(f)

# # create the plot
# fig, axs = plt.subplots(1, 1, figsize=(14, 14))

plt.figure(figsize=(12, 14))


# plot the data
items = ['VSD', 'ASD', 'CSD', 'SDS']
for item in items:
    # # smooth the data
    # norm_dict[item] = [
    #     sum(norm_dict[item][i:i+args.smooth])/args.smooth  * 0.5 \
    #         for i in range(len(norm_dict[item])-args.smooth)
    #     ]
    if item == 'VSD':
        lable = 'VSD'
    elif item == 'ASD':
        lable = 'ASD(ours)'
    elif item == 'CSD':
        lable = 'CSD'
    elif item == 'SDS':
        lable = 'SDS'

    # if item == 'alpha_0':
    #     lable = 'TSSD, alpha=0'

    plt.plot(norm_dict[item], label=lable)


plt.legend()
# save the plot
plt.savefig(os.path.join(data_dir, 'grad_visualize.png'))