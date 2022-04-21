# SRPL
cd /home/schemax/projects/deploy_api/saii_resources_api
git checkout bhanutejaReddy
git pull origin bhanutejaReddy
git checkout master
git pull origin master
git merge bhanutejaReddy
git push origin master
cd ..
rsync -avz -e 'ssh -i /root/cPanel_ssh -p 7822' --exclude-from /home/schemax/projects/Scripts/rsync_srpl_api_exclude_list.txt saii_resources_api/ padmacat@sg1-ss11.a2hosting.com:tradingapi.saiiresources.com/
# if below password is changed, then change it in cronjob in server also
ssh -i /root/cPanel_ssh padmacat@sg1-ss11.a2hosting.com -p 7822 "mysqldump -u padmacat_srplusrprd -psC9a6J3kiN7pZuA padmacat_srplprd > /home/padmacat/dbbackups/srplprod_$(date +%Y%m%d%H%M).sql && exit"


# SDAM
rsync -avz -e 'ssh -i /root/cPanel_ssh -p 7822' --exclude-from /home/schemax/projects/Scripts/rsync_srpl_api_exclude_list.txt saii_resources_api/ padmacat@sg1-ss11.a2hosting.com:tradingapi.pt-sdam.com/
# if below password is changed, then change it in cronjob in server also
ssh -i /root/cPanel_ssh padmacat@sg1-ss11.a2hosting.com -p 7822 "mysqldump -u padmacat_sdamusrprd -psxFyTXW22j7z786 padmacat_sdamprd > /home/padmacat/dbbackups/sdamprod_$(date +%Y%m%d%H%M).sql && exit"

#AVS
rsync -avz -e 'ssh -i /root/cPanel_ssh -p 7822' --exclude-from /home/schemax/projects/Scripts/rsync_srpl_api_exclude_list.txt saii_resources_api/ padmacat@sg1-ss11.a2hosting.com:tradingapi.avsresources.com/
# if below password is changed, then change it in cronjob in server also
ssh -i /root/cPanel_ssh padmacat@sg1-ss11.a2hosting.com -p 7822 "mysqldump -u padmacat_avsusrprd -pg2vT2pA2dBfPy1m2 padmacat_avsprd > /home/padmacat/dbbackups/avsprod_$(date +%Y%m%d%H%M).sql && exit"

# PRPL
rsync -avz -e 'ssh -i /root/cPanel_ssh -p 7822' --exclude-from /home/schemax/projects/Scripts/rsync_srpl_api_exclude_list.txt saii_resources_api/ padmacat@sg1-ss11.a2hosting.com:tradingapi.prakruthiresources.com/
# if below password is changed, then change it in cronjob in server also
ssh -i /root/cPanel_ssh padmacat@sg1-ss11.a2hosting.com -p 7822 "mysqldump -u padmacat_prplusrprd -pJ4D1Rr3d5w6u9Y2W padmacat_prplprd > /home/padmacat/dbbackups/prplprod_$(date +%Y%m%d%H%M).sql && exit"

# SRK
rsync -avz -e 'ssh -i /root/cPanel_ssh -p 7822' --exclude-from /home/schemax/projects/Scripts/rsync_srpl_api_exclude_list.txt saii_resources_api/ padmacat@sg1-ss11.a2hosting.com:tradingapi.pt-srk.com/
# if below password is changed, then change it in cronjob in server also
ssh -i /root/cPanel_ssh padmacat@sg1-ss11.a2hosting.com -p 7822 "mysqldump -u padmacat_srkusrprd -pBdY1A2QpPmqSp4Lv padmacat_srkprd > /home/padmacat/dbbackups/srkprod_$(date +%Y%m%d%H%M).sql && exit"


# BTR
rsync -avz -e 'ssh -i /root/cPanel_ssh -p 7822' --exclude-from /home/schemax/projects/Scripts/rsync_srpl_api_exclude_list.txt saii_resources_api/ padmacat@sg1-ss11.a2hosting.com:tradingapi.pt-btr.com/
# if below password is changed, then change it in cronjob in server also
ssh -i /root/cPanel_ssh padmacat@sg1-ss11.a2hosting.com -p 7822 "mysqldump -u padmacat_btrusrprd -pTt1u2uZuBd3d4vM7 padmacat_btrprd > /home/padmacat/dbbackups/btrprod_$(date +%Y%m%d%H%M).sql && exit"

