group=azure-files-tutorial\
name=my-windows-vm\
az group create -g $group -l northeurope\
password=glenrobinand147\

az vm create \
	-n $name \
	-g $group \
	-l northeurope \
	--image Win2019Datacenter \
	--admin-username glen \
	--admin-password $password \
	nsg-rule rdp

az vm show \
	-g $group \
	-n $name \
	-d \
 	--query  "{name:name, publicIps, user:osProfile.adminUsername,password:'$password'}"

cat cloud drive/$name.json
