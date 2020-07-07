{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf500
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww14380\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 group=azure-files-tutorial\
name=my-windows-vm\
az group create -g $group -l northeurope\
password=glenrobinand147\
\
az vm create \\\
	-n $name \\\
	-g $group \\\
	-l northeurope \\\
	--image Win2019Datacenter \\\
	--admin-username glen \\\
	--admin-password $password \\\
	\'97 nsg-rule rdp\
\
az vm show \\\
	-g $group \\\
	-n $name \\\
	-d \\\
 	--query  \'93\{name:name, publicIps, user:osProfile.adminUsername,password:\'92$password\'92\}\'94 \\\
\
cat cloud drive/$name.json\
\
}