import os,re
import matplotlib.pyplot as plt
def plot_save(fig,ID):
    # Check if plot_ID exist
    if ID==-1:
        list=[]
        for relpath, dirs, files in os.walk('./plots'):
            for name in files:
                searchObj=re.search('plot_(\d*)\.png',name)
                if searchObj and int(searchObj.group(1))!=0:
                    list.append(int(searchObj.group(1)))
        list.sort()
        blank=len(list)+1
        for i in range(len(list)):
            if list[i]!=i+1:
                blank=i+1
        fig.savefig('./plots/plot_%d.png'%blank)
        print('Saved as plot_%d.png'%blank)
    else:
        for relpath, dirs, files in os.walk('./plots'):
            for name in files:
                searchObj=re.search('plot_%d.png'%ID,name)
                if searchObj:
                    print('plot_%d.png already exist'%ID)
                    print('Saved as plot_0.png')
                    ID=0
                    break
        # Save plot
        fig.savefig('./plots/plot_%d.png'%ID)