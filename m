Return-Path: <Sivaprasad.Pala@in.bosch.com>
Received: from smtp6-v.fe.bosch.de (smtp6-v.fe.bosch.de [139.15.237.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7681E006CA
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 00:12:36 -0800 (PST)
Received: from vsmta13.fe.internet.bosch.com (unknown [10.4.98.53])
	by imta23.fe.bosch.de (Postfix) with ESMTP id 56B371580159;
	Mon,  6 Jan 2014 09:12:35 +0100 (CET)
Received: from vsgw11.fe.internet.bosch.com (vsgw11.fe.internet.bosch.com
	[10.4.98.11])
	by vsmta13.fe.internet.bosch.com (Postfix) with ESMTP id 5C999600582;
	Mon,  6 Jan 2014 09:12:35 +0100 (CET)
Received: from localhost (unknown [127.0.0.1])
	by IMSVA (Postfix) with SMTP id 5D7DD9806B;
	Mon,  6 Jan 2014 09:12:35 +0100 (CET)
X-IMSS-HAND-OFF-DIRECTIVE: 10.4.98.62:25
Received: from si-hub02.de.bosch.com (unknown [10.3.144.67])
	by vsgw11.fe.internet.bosch.com (Postfix) with ESMTP id 05F7698029;
	Mon,  6 Jan 2014 09:12:28 +0100 (CET)
Received: from SI-MBX1006.de.bosch.com (10.3.230.23) by si-hub02.de.bosch.com
	(10.3.144.67) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Mon, 6 Jan 2014 09:12:27 +0100
Received: from SI-MBX1006.de.bosch.com (10.3.230.23) by
	SI-MBX1006.de.bosch.com (10.3.230.23) with Microsoft SMTP Server (TLS)
	id 15.0.775.38; Mon, 6 Jan 2014 09:12:18 +0100
Received: from sgphub14.APAC.bosch.com (10.187.48.77) by
	SI-MBX1006.de.bosch.com (10.3.230.23) with Microsoft SMTP Server (TLS)
	id 15.0.775.38 via Frontend Transport; Mon, 6 Jan 2014 09:12:18 +0100
Received: from SGPMBX02.APAC.bosch.com ([10.187.64.46]) by
	sgphub14.APAC.bosch.com ([10.187.48.77]) with mapi;
	Mon, 6 Jan 2014 16:12:07 +0800
From: "Sivaprasad Pala (RBEI/EAA1)" <Sivaprasad.Pala@in.bosch.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
Date: Mon, 6 Jan 2014 16:12:02 +0800
Thread-Topic: yocto offline build
Thread-Index: Ac8Km6WuWd+t7QQhRWyCSGxsGj6GEAAE2d2wAACTzMA=
Message-ID: <F2E05BCE6D875B4AAC726FD84CBB8F13236AA33CDC@SGPMBX02.APAC.bosch.com>
References: <F2E05BCE6D875B4AAC726FD84CBB8F13236AA33A42@SGPMBX02.APAC.bosch.com>
	<CEE454E0AA856348B2B4179B5CF987140C797DE1E6@BLRINMSMBX01.bglrodc.lntinfotech.com>
In-Reply-To: <CEE454E0AA856348B2B4179B5CF987140C797DE1E6@BLRINMSMBX01.bglrodc.lntinfotech.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-TM-AS-MML: disable
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto offline build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 06 Jan 2014 08:12:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F2E05BCE6D875B4AAC726FD84CBB8F13236AA33CDCSGPMBX02APACb_"

--_000_F2E05BCE6D875B4AAC726FD84CBB8F13236AA33CDCSGPMBX02APACb_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello Amit,

I have changed local.conf as you mentioned.
I got error (The below mentioned file is missing ) as I understood. Please =
find log 1.

And I have manually downloaded the file linux-at91.git.tar.gz from github a=
nd renamed it as git2_github.com.linux4sam.linux-at91.git.tar.gz.
Then I gave the build again. Please find the log 2 .

If I give the build with only DL_DIR ?=3D  "/opt/lgp/downloads/sama5d3xek_d=
ownloads " means on offline build. Like normal build it is working fine.

Can you please tell me what might be the reason for the build error.


Thanks and Regards,
Sivaprasad Pala.




Log 1:
file:///opt/lgp/downloads/sama5d3xek_downloads/git2_github.com.linux4sam.li=
nux-at91.git.tar.gz
Loading cache: 100% |######################################################=
###########################################################################=
#######################################| ETA:  00:00:00
Loaded 1139 entries from dependency cache.
Parsing recipes: 100% |####################################################=
###########################################################################=
#######################################| Time: 00:00:34
Parsing of 830 .bb files complete (829 cached, 1 parsed). 1138 targets, 40 =
skipped, 0 masked, 0 errors.

Build Configuration:
BB_VERSION        =3D "1.18.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-12.04"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "sama5d3xek"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.4.2"
TUNE_FEATURES     =3D "armv7a vfp thumb callconvention-hard cortexa5"
TARGET_FPU        =3D "vfp"
meta              =3D "master:585eba90cf6e5d6151c025ca47a050a13db0c652"
meta-yocto        =3D "master:8c567d8d301a49f625ca98513a7e37a6b3c4e0b5"
meta-yocto-bsp    =3D "master:bb83df38e46b9ad0c7ed1bfc1e814c85c16ed9b6"
meta-atmel-master =3D "master:00387cba3551814841c486122d12c40e31a3e215"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: Network access disabled through BB_NO_NETWORK but a=
ccess requested with command git fetch -f --prune git://github.com/linux4sa=
m/linux-at91.git refs/*:refs/* (for url git://github.com/linux4sam/linux-at=
91.git;protocol=3Dgit)
ERROR: Logfile of failure stored in: /home/pis1kor/siva/tmp/my_scripts/buil=
d_atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/linux-yocto-custom/3.6.9+lin=
ux-3.6.9-at91-r1/temp/log.do_fetch.4809
Log data follows:
| DEBUG: Executing python function do_fetch
| DEBUG: Executing python function base_do_fetch
| DEBUG: Running export SSH_AGENT_PID=3D"2055"; export SSH_AUTH_SOCK=3D"/tm=
p/keyring-hgqhDa/ssh"; export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy=
"; export ftp_proxy=3D"ftp://pis1kor:shnasv@10.187.52.240:8080"; export htt=
ps_proxy=3D"https://pis1kor:96krishnasv@10.187.52.240:8080"; export http_pr=
oxy=3D"http://pis1kor:shnasv@10.187.52.240:8080"; export PATH=3D"/home/pis1=
kor/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/build_atm=
el/tmp/sysroots/x86_64-linux/usr/bin/cortexa5hf-vfp-poky-linux-gnueabi:/hom=
e/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/sama5d3xek/usr/bin/c=
rossscripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_=
64-linux/usr/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroot=
s/x86_64-linux/usr/bin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sy=
sroots/x86_64-linux/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/=
sysroots/x86_64-linux//bin:/home/pis1kor/siva/tmp/my_scripts/scripts:/home/=
pis1kor/siva/tmp/my_scripts/bitbake/bin:/usr/lib/lightdm/lightdm:/usr/local=
/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"; export HOME=
=3D"/home/pis1kor"; git log --pretty=3Doneline -n 1 4e7767a24798b10de918b87=
540894c3953c6e220 -- 2> /dev/null | wc -l
| DEBUG: Trying PREMIRRORS
| DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '',=
 {'protocol': 'git'}] comparing ['cvs', '.*', '/.*', '', '', {}] to ['file'=
, '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
| DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '',=
 {'protocol': 'git'}] comparing ['svn', '.*', '/.*', '', '', {}] to ['file'=
, '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
| DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '',=
 {'protocol': 'git'}] comparing ['git', '.*', '/.*', '', '', {}] to ['file'=
, '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
| DEBUG: For url git://github.com/linux4sam/linux-at91.git;protocol=3Dgit r=
eturning file:///opt/lgp/downloads/sama5d3xek_downloads/git2_github.com.lin=
ux4sam.linux-at91.git.tar.gz
| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2=
_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['cvs',=
 '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_do=
wnloads/', '', '', {}]
| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2=
_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['svn',=
 '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_do=
wnloads/', '', '', {}]
| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2=
_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['git',=
 '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_do=
wnloads/', '', '', {}]
| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2=
_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['hg', =
'.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_dow=
nloads/', '', '', {}]
| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2=
_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['bzr',=
 '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_do=
wnloads/', '', '', {}]
| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2=
_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['svk',=
 '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_do=
wnloads/', '', '', {}]
| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2=
_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['p4', =
'.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_dow=
nloads/', '', '', {}]
| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2=
_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['osc',=
 '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_do=
wnloads/', '', '', {}]
| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2=
_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['https=
?$', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xe=
k_downloads/', '', '', {}]
| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2=
_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['ftp',=
 '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_do=
wnloads/', '', '', {}]
| DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '',=
 {'protocol': 'git'}] comparing ['hg', '.*', '/.*', '', '', {}] to ['file',=
 '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
| DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '',=
 {'protocol': 'git'}] comparing ['bzr', '.*', '/.*', '', '', {}] to ['file'=
, '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
| DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '',=
 {'protocol': 'git'}] comparing ['svk', '.*', '/.*', '', '', {}] to ['file'=
, '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
| DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '',=
 {'protocol': 'git'}] comparing ['p4', '.*', '/.*', '', '', {}] to ['file',=
 '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
| DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '',=
 {'protocol': 'git'}] comparing ['osc', '.*', '/.*', '', '', {}] to ['file'=
, '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
| DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '',=
 {'protocol': 'git'}] comparing ['https?$', '.*', '/.*', '', '', {}] to ['f=
ile', '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
| DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '',=
 {'protocol': 'git'}] comparing ['ftp', '.*', '/.*', '', '', {}] to ['file'=
, '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
| DEBUG: Mirror fetch failure for url file:///opt/lgp/downloads/sama5d3xek_=
downloads/git2_github.com.linux4sam.linux-at91.git.tar.gz (original url: gi=
t://github.com/linux4sam/linux-at91.git;protocol=3Dgit)
| DEBUG: Fetcher failure: Unable to find file file:///opt/lgp/downloads/sam=
a5d3xek_downloads/git2_github.com.linux4sam.linux-at91.git.tar.gz anywhere.=
 The paths that were searched were:
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/linux-yocto-custom/arm
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/linux-yocto-custom/armv7a
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/linux-yocto-custom/sama5d3xek
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/linux-yocto-custom/poky
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/linux-yocto-custom/
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/linux-yocto-custom-3.6.9+linux-3.6.9-at91/arm
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/linux-yocto-custom-3.6.9+linux-3.6.9-at91/armv7a
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/linux-yocto-custom-3.6.9+linux-3.6.9-at91/sama5d3xek
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/linux-yocto-custom-3.6.9+linux-3.6.9-at91/poky
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/linux-yocto-custom-3.6.9+linux-3.6.9-at91/
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/linux-yocto-custom/arm
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/linux-yocto-custom/armv7a
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/linux-yocto-custom/sama5d3xek
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/linux-yocto-custom/poky
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/linux-yocto-custom/
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/files/arm
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/files/armv7a
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/files/sama5d3xek
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/files/poky
|     /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/li=
nux/files/
|     /opt/lgp/downloads/sama5d3xek_downloads
| DEBUG: Running export SSH_AGENT_PID=3D"2055"; export SSH_AUTH_SOCK=3D"/tm=
p/keyring-hgqhDa/ssh"; export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy=
"; export ftp_proxy=3D"ftp://pis1kor: shnasv@10.187.52.240:8080"; export ht=
tps_proxy=3D"https://pis1kor: shnasv@10.187.52.240:8080"; export http_proxy=
=3D"http://pis1kor: shnasv@10.187.52.240:8080"; export PATH=3D"/home/pis1ko=
r/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel=
/tmp/sysroots/x86_64-linux/usr/bin/cortexa5hf-vfp-poky-linux-gnueabi:/home/=
pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/sama5d3xek/usr/bin/cro=
ssscripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64=
-linux/usr/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/=
x86_64-linux/usr/bin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysr=
oots/x86_64-linux/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sy=
sroots/x86_64-linux//bin:/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pi=
s1kor/siva/tmp/my_scripts/bitbake/bin:/usr/lib/lightdm/lightdm:/usr/local/s=
bin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"; export HOME=
=3D"/home/pis1kor"; git log --pretty=3Doneline -n 1 4e7767a24798b10de918b87=
540894c3953c6e220 -- 2> /dev/null | wc -l
| DEBUG: Trying Upstream
| DEBUG: Running export SSH_AGENT_PID=3D"2055"; export SSH_AUTH_SOCK=3D"/tm=
p/keyring-hgqhDa/ssh"; export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy=
"; export ftp_proxy=3D"ftp://pis1kor: shnasv@10.187.52.240:8080"; export ht=
tps_proxy=3D"https://pis1kor: shnasv@10.187.52.240:8080"; export http_proxy=
=3D"http://pis1kor: shnasv@10.187.52.240:8080"; export PATH=3D"/home/pis1ko=
r/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel=
/tmp/sysroots/x86_64-linux/usr/bin/cortexa5hf-vfp-poky-linux-gnueabi:/home/=
pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/sama5d3xek/usr/bin/cro=
ssscripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64=
-linux/usr/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/=
x86_64-linux/usr/bin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysr=
oots/x86_64-linux/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sy=
sroots/x86_64-linux//bin:/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pi=
s1kor/siva/tmp/my_scripts/bitbake/bin:/usr/lib/lightdm/lightdm:/usr/local/s=
bin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"; export HOME=
=3D"/home/pis1kor"; git log --pretty=3Doneline -n 1 4e7767a24798b10de918b87=
540894c3953c6e220 -- 2> /dev/null | wc -l
| DEBUG: Running export SSH_AGENT_PID=3D"2055"; export SSH_AUTH_SOCK=3D"/tm=
p/keyring-hgqhDa/ssh"; export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy=
"; export ftp_proxy=3D"ftp://pis1kor: shnasv@10.187.52.240:8080"; export ht=
tps_proxy=3D"https://pis1kor: shnasv@10.187.52.240:8080"; export http_proxy=
=3D"http://pis1kor: shnasv@10.187.52.240:8080"; export PATH=3D"/home/pis1ko=
r/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel=
/tmp/sysroots/x86_64-linux/usr/bin/cortexa5hf-vfp-poky-linux-gnueabi:/home/=
pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/sama5d3xek/usr/bin/cro=
ssscripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64=
-linux/usr/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/=
x86_64-linux/usr/bin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysr=
oots/x86_64-linux/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sy=
sroots/x86_64-linux//bin:/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pi=
s1kor/siva/tmp/my_scripts/bitbake/bin:/usr/lib/lightdm/lightdm:/usr/local/s=
bin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"; export HOME=
=3D"/home/pis1kor"; git remote rm origin
| DEBUG: Running export SSH_AGENT_PID=3D"2055"; export SSH_AUTH_SOCK=3D"/tm=
p/keyring-hgqhDa/ssh"; export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy=
"; export ftp_proxy=3D"ftp://pis1kor: shnasv@10.187.52.240:8080"; export ht=
tps_proxy=3D"https://pis1kor: shnasv@10.187.52.240:8080"; export http_proxy=
=3D"http://pis1kor: shnasv@10.187.52.240:8080"; export PATH=3D"/home/pis1ko=
r/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel=
/tmp/sysroots/x86_64-linux/usr/bin/cortexa5hf-vfp-poky-linux-gnueabi:/home/=
pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/sama5d3xek/usr/bin/cro=
ssscripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64=
-linux/usr/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/=
x86_64-linux/usr/bin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysr=
oots/x86_64-linux/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sy=
sroots/x86_64-linux//bin:/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pi=
s1kor/siva/tmp/my_scripts/bitbake/bin:/usr/lib/lightdm/lightdm:/usr/local/s=
bin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"; export HOME=
=3D"/home/pis1kor"; git remote add --mirror=3Dfetch origin git://github.com=
/linux4sam/linux-at91.git
| DEBUG: Python function base_do_fetch finished
| DEBUG: Python function do_fetch finished
| ERROR: Function failed: Network access disabled through BB_NO_NETWORK but=
 access requested with command git fetch -f --prune git://github.com/linux4=
sam/linux-at91.git refs/*:refs/* (for url git://github.com/linux4sam/linux-=
at91.git;protocol=3Dgit)
ERROR: Task 622 (/home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipe=
s-kernel/linux/linux-yocto-custom_3.6.9.bb, do_fetch) failed with exit code=
 '1'
NOTE: Tasks Summary: Attempted 478 tasks of which 476 didn't need to be rer=
un and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/linux/=
linux-yocto-custom_3.6.9.bb, do_fetch
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
pis1kor@KOR1015545VM1:~/siva/tmp/my_scripts$ vi build_atmel/conf/local.conf
pis1kor@KOR1015545VM1:~/siva/tmp/my_scripts$ bitbake -c clean linux-yocto-c=
ustom
Unable to find conf/bblayers.conf
BitBake must be run from within your build directory: /home/pis1kor/siva/tm=
p/my_scripts/build_atmel
pis1kor@KOR1015545VM1:~/siva/tmp/my_scripts$  cd build_atmel/
pis1kor@KOR1015545VM1:~/siva/tmp/my_scripts/build_atmel$ bitbake -c clean l=
inux-yocto-custom
Loading cache: 100% |######################################################=
###########################################################################=
#######################################| ETA:  00:00:00
Loaded 1139 entries from dependency cache.

Build Configuration:
BB_VERSION        =3D "1.18.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-12.04"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "sama5d3xek"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.4.2"
TUNE_FEATURES     =3D "armv7a vfp thumb callconvention-hard cortexa5"
TARGET_FPU        =3D "vfp"
meta              =3D "master:585eba90cf6e5d6151c025ca47a050a13db0c652"
meta-yocto        =3D "master:8c567d8d301a49f625ca98513a7e37a6b3c4e0b5"
meta-yocto-bsp    =3D "master:bb83df38e46b9ad0c7ed1bfc1e814c85c16ed9b6"
meta-atmel-master =3D "master:00387cba3551814841c486122d12c40e31a3e215"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 1 tasks of which 0 didn't need to be rerun a=
nd all succeeded.









Log :2
DEBUG: Executing python function do_fetch
DEBUG: Executing python function base_do_fetch
DEBUG: Running export SSH_AGENT_PID=3D"2055"; export SSH_AUTH_SOCK=3D"/tmp/=
keyring-hgqhDa/ssh"; export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy";=
 export ftp_proxy=3D"ftp://pis1kor: shnasv@10.187.52.240:8080"; export http=
s_proxy=3D"https://pis1kor: shnasv@10.187.52.240:8080"; export http_proxy=
=3D"http://pis1kor: shnasv@10.187.52.240:8080"; export PATH=3D"/home/pis1ko=
r/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel=
/tmp/sysroots/x86_64-linux/usr/bin/cortexa5hf-vfp-poky-linux-gnueabi:/home/=
pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/sama5d3xek/usr/bin/cro=
ssscripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64=
-linux/usr/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/=
x86_64-linux/usr/bin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysr=
oots/x86_64-linux/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sy=
sroots/x86_64-linux//bin:/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pi=
s1kor/siva/tmp/my_scripts/bitbake/bin:/usr/lib/lightdm/lightdm:/usr/local/s=
bin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"; export HOME=
=3D"/home/pis1kor"; git log --pretty=3Doneline -n 1 4e7767a24798b10de918b87=
540894c3953c6e220 -- 2> /dev/null | wc -l
DEBUG: Trying PREMIRRORS
DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {=
'protocol': 'git'}] comparing ['cvs', '.*', '/.*', '', '', {}] to ['file', =
'', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {=
'protocol': 'git'}] comparing ['svn', '.*', '/.*', '', '', {}] to ['file', =
'', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {=
'protocol': 'git'}] comparing ['git', '.*', '/.*', '', '', {}] to ['file', =
'', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
DEBUG: For url git://github.com/linux4sam/linux-at91.git;protocol=3Dgit ret=
urning file:///opt/lgp/downloads/sama5d3xek_downloads/git2_github.com.linux=
4sam.linux-at91.git.tar.gz
DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2_g=
ithub.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['cvs', '=
.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_down=
loads/', '', '', {}]
DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2_g=
ithub.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['svn', '=
.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_down=
loads/', '', '', {}]
DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2_g=
ithub.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['git', '=
.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_down=
loads/', '', '', {}]
DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2_g=
ithub.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['hg', '.=
*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_downl=
oads/', '', '', {}]
DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2_g=
ithub.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['bzr', '=
.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_down=
loads/', '', '', {}]
DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2_g=
ithub.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['svk', '=
.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_down=
loads/', '', '', {}]
DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2_g=
ithub.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['p4', '.=
*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_downl=
oads/', '', '', {}]
DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2_g=
ithub.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['osc', '=
.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_down=
loads/', '', '', {}]
DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2_g=
ithub.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['https?$=
', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_=
downloads/', '', '', {}]
DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2_g=
ithub.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['ftp', '=
.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_down=
loads/', '', '', {}]
DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {=
'protocol': 'git'}] comparing ['hg', '.*', '/.*', '', '', {}] to ['file', '=
', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {=
'protocol': 'git'}] comparing ['bzr', '.*', '/.*', '', '', {}] to ['file', =
'', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {=
'protocol': 'git'}] comparing ['svk', '.*', '/.*', '', '', {}] to ['file', =
'', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {=
'protocol': 'git'}] comparing ['p4', '.*', '/.*', '', '', {}] to ['file', '=
', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {=
'protocol': 'git'}] comparing ['osc', '.*', '/.*', '', '', {}] to ['file', =
'', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {=
'protocol': 'git'}] comparing ['https?$', '.*', '/.*', '', '', {}] to ['fil=
e', '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {=
'protocol': 'git'}] comparing ['ftp', '.*', '/.*', '', '', {}] to ['file', =
'', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]
DEBUG: Running export SSH_AGENT_PID=3D"2055"; export SSH_AUTH_SOCK=3D"/tmp/=
keyring-hgqhDa/ssh"; export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy";=
 export ftp_proxy=3D"ftp://pis1kor: shnasv@10.187.52.240:8080"; export http=
s_proxy=3D"https://pis1kor: shnasv@10.187.52.240:8080"; export http_proxy=
=3D"http://pis1kor: shnasv@10.187.52.240:8080"; export PATH=3D"/home/pis1ko=
r/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel=
/tmp/sysroots/x86_64-linux/usr/bin/cortexa5hf-vfp-poky-linux-gnueabi:/home/=
pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/sama5d3xek/usr/bin/cro=
ssscripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64=
-linux/usr/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/=
x86_64-linux/usr/bin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysr=
oots/x86_64-linux/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sy=
sroots/x86_64-linux//bin:/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pi=
s1kor/siva/tmp/my_scripts/bitbake/bin:/usr/lib/lightdm/lightdm:/usr/local/s=
bin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"; export HOME=
=3D"/home/pis1kor"; git log --pretty=3Doneline -n 1 4e7767a24798b10de918b87=
540894c3953c6e220 -- 2> /dev/null | wc -l
DEBUG: Trying Upstream
DEBUG: Running export SSH_AGENT_PID=3D"2055"; export SSH_AUTH_SOCK=3D"/tmp/=
keyring-hgqhDa/ssh"; export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy";=
 export ftp_proxy=3D"ftp://pis1kor: shnasv@10.187.52.240:8080"; export http=
s_proxy=3D"https://pis1kor: shnasv@10.187.52.240:8080"; export http_proxy=
=3D"http://pis1kor: shnasv@10.187.52.240:8080"; export PATH=3D"/home/pis1ko=
r/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel=
/tmp/sysroots/x86_64-linux/usr/bin/cortexa5hf-vfp-poky-linux-gnueabi:/home/=
pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/sama5d3xek/usr/bin/cro=
ssscripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64=
-linux/usr/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/=
x86_64-linux/usr/bin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysr=
oots/x86_64-linux/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sy=
sroots/x86_64-linux//bin:/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pi=
s1kor/siva/tmp/my_scripts/bitbake/bin:/usr/lib/lightdm/lightdm:/usr/local/s=
bin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"; export HOME=
=3D"/home/pis1kor"; git log --pretty=3Doneline -n 1 4e7767a24798b10de918b87=
540894c3953c6e220 -- 2> /dev/null | wc -l
DEBUG: Running export SSH_AGENT_PID=3D"2055"; export SSH_AUTH_SOCK=3D"/tmp/=
keyring-hgqhDa/ssh"; export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy";=
 export ftp_proxy=3D"ftp://pis1kor: shnasv@10.187.52.240:8080"; export http=
s_proxy=3D"https://pis1kor: shnasv@10.187.52.240:8080"; export http_proxy=
=3D"http://pis1kor: shnasv@10.187.52.240:8080"; export PATH=3D"/home/pis1ko=
r/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel=
/tmp/sysroots/x86_64-linux/usr/bin/cortexa5hf-vfp-poky-linux-gnueabi:/home/=
pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/sama5d3xek/usr/bin/cro=
ssscripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64=
-linux/usr/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/=
x86_64-linux/usr/bin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysr=
oots/x86_64-linux/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sy=
sroots/x86_64-linux//bin:/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pi=
s1kor/siva/tmp/my_scripts/bitbake/bin:/usr/lib/lightdm/lightdm:/usr/local/s=
bin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"; export HOME=
=3D"/home/pis1kor"; git remote rm origin
DEBUG: Running export SSH_AGENT_PID=3D"2055"; export SSH_AUTH_SOCK=3D"/tmp/=
keyring-hgqhDa/ssh"; export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy";=
 export ftp_proxy=3D"ftp://pis1kor: shnasv@10.187.52.240:8080"; export http=
s_proxy=3D"https://pis1kor: shnasv@10.187.52.240:8080"; export http_proxy=
=3D"http://pis1kor: hnasv@10.187.52.240:8080"; export PATH=3D"/home/pis1kor=
/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/=
tmp/sysroots/x86_64-linux/usr/bin/cortexa5hf-vfp-poky-linux-gnueabi:/home/p=
is1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/sama5d3xek/usr/bin/cros=
sscripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-=
linux/usr/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x=
86_64-linux/usr/bin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysro=
ots/x86_64-linux/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sys=
roots/x86_64-linux//bin:/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pis=
1kor/siva/tmp/my_scripts/bitbake/bin:/usr/lib/lightdm/lightdm:/usr/local/sb=
in:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"; export HOME=3D=
"/home/pis1kor"; git remote add --mirror=3Dfetch origin git://github.com/li=
nux4sam/linux-at91.git
DEBUG: Python function base_do_fetch finished
DEBUG: Python function do_fetch finished
ERROR: Function failed: Network access disabled through BB_NO_NETWORK but a=
ccess requested with command git fetch -f --prune git://github.com/linux4sa=
m/linux-at91.git refs/*:refs/* (for url git://github.com/linux4sam/linux-at=
91.git;protocol=3Dgit)
From: Amit Kumar [mailto:Amit.Kumar@lntinfotech.com]
Sent: Monday, January 06, 2014 12:45 PM
To: Sivaprasad Pala (RBEI/EAA1)
Subject: RE: yocto offline build

Hi,

            The path of the "SOURCE_MIRROR_URL" should be the same as where=
 you have downloaded or fetched all the packages.
Change instead of..
SOURCE_MIRROR_URL ?=3D "file://path/to/download/sources/<file:///\\path\to\=
download\sources\>"

Use this ...
SOURCE_MIRROR_URL ?=3D "${TOPDIR}/tmp/downloads-keepout"


Thanks & Regards
Amit K

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Sivaprasad Pala (RBEI=
/EAA1)
Sent: Monday, January 06, 2014 10:26 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] yocto offline build

Hello Yocto Help,

I am trying to build yocto offline using below steps.
Steps:


 1.  bitbake -c fetchall core-image-minimal
 2.  conf/local.conf changes
DL_DIR ?=3D "${TOPDIR}/tmp/downloads-keepout"
SSTATE_DIR ?=3D "${TOPDIR}/sstate-cache"

BB_NO_NETWORK =3D "0"
INHERIT +=3D "own-mirrors"
SOURCE_MIRROR_URL ?=3D "file://path/to/download/sources/<file:///\\path\to\=
download\sources\>"
BB_GENERATE_MIRROR_TARBALLS =3D "1"
BB_FETCH_PREMIRRORONLY =3D "1"
CONNECTIVITY_CHECK_URIS=3D""
DISABLE_NETWORK_SANITY =3D "1"

 1.  bitbake core-image-minimal

But I am getting errors in the step 3 saying not able to "unpack".

Please tell me "IF I MISSED OUT ANY STEPS".

Thanks and Regards,
Sivaprasad Pala.


________________________________
The contents of this e-mail and any attachment(s) may contain confidential =
or privileged information for the intended recipient(s). Unintended recipie=
nts are prohibited from taking action on the basis of information in this e=
-mail and using or disseminating the information, and must notify the sende=
r and delete it from their system. L&T Infotech will not accept responsibil=
ity or liability for the accuracy or completeness of, or the presence of an=
y virus or disabling code in this e-mail"

--_000_F2E05BCE6D875B4AAC726FD84CBB8F13236AA33CDCSGPMBX02APACb_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><!--[if !mso]><style>v\:* {behavior:url(#def=
ault#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
p.emailquote, li.emailquote, div.emailquote
	{mso-style-name:emailquote;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:1.0pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Trebuchet MS","sans-serif";
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1001348169;
	mso-list-template-ids:1759409624;}
@list l0:level1
	{mso-level-start-at:3;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1
	{mso-list-id:1011376842;
	mso-list-template-ids:1348230128;}
@list l1:level1
	{mso-level-start-at:3;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2
	{mso-list-id:2026902228;
	mso-list-template-ids:-463860594;}
@list l2:level1
	{mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level9
	{mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3
	{mso-list-id:2064137832;
	mso-list-template-ids:-1207017036;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'f=
ont-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbs=
p;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;fon=
t-family:"Calibri","sans-serif";color:#1F497D'>Hello Amit,<o:p></o:p></span=
></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Cali=
bri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMso=
Normal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";c=
olor:#1F497D'>I have changed local.conf as you mentioned.<o:p></o:p></span>=
</p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calib=
ri","sans-serif";color:#1F497D'>I got error (The below mentioned file is mi=
ssing ) as I understood. Please find log 1.<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'=
>And I have manually downloaded the file linux-at91.git.tar.gz from github =
and renamed it as git2_github.com.linux4sam.linux-at91.git.tar.gz.<o:p></o:=
p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-fami=
ly:"Calibri","sans-serif";color:#1F497D'>Then I gave the build again. Pleas=
e find the log 2 .<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D=
'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&n=
bsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;f=
ont-family:"Calibri","sans-serif";color:#1F497D'>If I give the build with <=
b>only</b> DL_DIR ?=3D &nbsp;&quot;/opt/lgp/downloads/sama5d3xek_downloads =
&quot; means on offline build. Like normal build it is working fine.<o:p></=
o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-fa=
mily:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p c=
lass=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","san=
s-serif";color:#1F497D'>Can you please tell me what might be the reason for=
 the build error.<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'=
font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;fo=
nt-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p=
><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri"=
,"sans-serif";color:#1F497D'>Thanks and Regards,<o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans=
-serif";color:#1F497D'>Sivaprasad Pala.<o:p></o:p></span></p><p class=3DMso=
Normal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";c=
olor:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0p=
t;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span=
></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Cali=
bri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMso=
Normal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";c=
olor:red'>Log 1:<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'f=
ont-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>file:///o=
pt/lgp/downloads/sama5d3xek_downloads/git2_github.com.linux4sam.linux-at91.=
git.tar.gz<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-si=
ze:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>Loading cache: =
100% |#####################################################################=
###########################################################################=
########################| ETA:&nbsp; 00:00:00<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'>Loaded 1139 entries from dependency cache.<o:p></o:p></=
span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"=
Calibri","sans-serif";color:#1F497D'>Parsing recipes: 100% |###############=
###########################################################################=
###########################################################################=
#| Time: 00:00:34<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'=
font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>Parsing =
of 830 .bb files complete (829 cached, 1 parsed). 1138 targets, 40 skipped,=
 0 masked, 0 errors.<o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0p=
t;font-family:"Calibri","sans-serif";color:#1F497D'>Build Configuration:<o:=
p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;fon=
t-family:"Calibri","sans-serif";color:#1F497D'>BB_VERSION&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.18.0&quot;<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-=
serif";color:#1F497D'>BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; =3D &quot;x86_64-linux&quot;<o:p></o:p></span></p><p class=3DMsoNormal=
><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#=
1F497D'>NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;Ubuntu-12.04&quot;<o:p></o:p>=
</span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family=
:"Calibri","sans-serif";color:#1F497D'>TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; =3D &quot;arm-poky-linux-gnueabi&quot;<o:p></o:p></span></=
p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri=
","sans-serif";color:#1F497D'>MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; =3D &quot;sama5d3xek&quot;<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","san=
s-serif";color:#1F497D'>DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; =3D &quot;poky&quot;<o:p></o:p></span></p><p class=3D=
MsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif=
";color:#1F497D'>DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;1.4.2&quot;<o:p=
></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font=
-family:"Calibri","sans-serif";color:#1F497D'>TUNE_FEATURES&nbsp;&nbsp;&nbs=
p;&nbsp; =3D &quot;armv7a vfp thumb callconvention-hard cortexa5&quot;<o:p>=
</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-=
family:"Calibri","sans-serif";color:#1F497D'>TARGET_FPU&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; =3D &quot;vfp&quot;<o:p></o:p></span></p><p class=3D=
MsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif=
";color:#1F497D'>meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;master:585eba90cf6e5d6151c025ca47a050a13=
db0c652&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font=
-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>meta-yocto&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;master:8c567d8d301a49f62=
5ca98513a7e37a6b3c4e0b5&quot;<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F49=
7D'>meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D &quot;master:bb83df38e46b9ad0c7ed1=
bfc1e814c85c16ed9b6&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span s=
tyle=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>=
meta-atmel-master =3D &quot;master:00387cba3551814841c486122d12c40e31a3e215=
&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:1=
1.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></=
span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"=
Calibri","sans-serif";color:#1F497D'>NOTE: Resolving any missing task queue=
 dependencies<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font=
-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>NOTE: Prepar=
ing runqueue<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-=
size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>NOTE: Executi=
ng SetScene Tasks<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'=
font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>NOTE: Ex=
ecuting RunQueue Tasks<o:p></o:p></span></p><p class=3DMsoNormal><span styl=
e=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>ERR=
OR: Function failed: Network access disabled through BB_NO_NETWORK but acce=
ss requested with command git fetch -f --prune git://github.com/linux4sam/l=
inux-at91.git refs/*:refs/* (for url git://github.com/linux4sam/linux-at91.=
git;protocol=3Dgit)<o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>ERRO=
R: Logfile of failure stored in: /home/pis1kor/siva/tmp/my_scripts/build_at=
mel/tmp/work/sama5d3xek-poky-linux-gnueabi/linux-yocto-custom/3.6.9+linux-3=
.6.9-at91-r1/temp/log.do_fetch.4809<o:p></o:p></span></p><p class=3DMsoNorm=
al><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color=
:#1F497D'>Log data follows:<o:p></o:p></span></p><p class=3DMsoNormal><span=
 style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D=
'>| DEBUG: Executing python function do_fetch<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'>| DEBUG: Executing python function base_do_fetch<o:p></=
o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-fa=
mily:"Calibri","sans-serif";color:#1F497D'>| DEBUG: Running export SSH_AGEN=
T_PID=3D&quot;2055&quot;; export SSH_AUTH_SOCK=3D&quot;/tmp/keyring-hgqhDa/=
ssh&quot;; export GIT_PROXY_COMMAND=3D&quot;/usr/local/bin/git-proxy&quot;;=
 export ftp_proxy=3D&quot;ftp://pis1kor:shnasv@10.187.52.240:8080&quot;; ex=
port https_proxy=3D&quot;https://pis1kor:96krishnasv@10.187.52.240:8080&quo=
t;; export http_proxy=3D&quot;http://pis1kor:shnasv@10.187.52.240:8080&quot=
;; export PATH=3D&quot;/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pis1=
kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/usr/bin/corte=
xa5hf-vfp-poky-linux-gnueabi:/home/pis1kor/siva/tmp/my_scripts/build_atmel/=
tmp/sysroots/sama5d3xek/usr/bin/crossscripts:/home/pis1kor/siva/tmp/my_scri=
pts/build_atmel/tmp/sysroots/x86_64-linux/usr/sbin:/home/pis1kor/siva/tmp/m=
y_scripts/build_atmel/tmp/sysroots/x86_64-linux/usr/bin:/home/pis1kor/siva/=
tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/sbin:/home/pis1kor/siv=
a/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux//bin:/home/pis1kor/s=
iva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/bitbake/bin:/u=
sr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/s=
bin:/bin:/usr/games&quot;; export HOME=3D&quot;/home/pis1kor&quot;; git log=
 --pretty=3Doneline -n 1 4e7767a24798b10de918b87540894c3953c6e220 -- 2&gt; =
/dev/null | wc -l<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'=
font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>| DEBUG:=
 Trying PREMIRRORS<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D=
'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>| DEBUG=
: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {'prot=
ocol': 'git'}] comparing ['cvs', '.*', '/.*', '', '', {}] to ['file', '', '=
/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p=
><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri"=
,"sans-serif";color:#1F497D'>| DEBUG: For url ['git', 'github.com', '/linux=
4sam/linux-at91.git', '', '', {'protocol': 'git'}] comparing ['svn', '.*', =
'/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads=
/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'fo=
nt-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>| DEBUG: F=
or url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {'protoco=
l': 'git'}] comparing ['git', '.*', '/.*', '', '', {}] to ['file', '', '/op=
t/lgp/downloads/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p><p=
 class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","s=
ans-serif";color:#1F497D'>| DEBUG: For url git://github.com/linux4sam/linux=
-at91.git;protocol=3Dgit returning file:///opt/lgp/downloads/sama5d3xek_dow=
nloads/git2_github.com.linux4sam.linux-at91.git.tar.gz<o:p></o:p></span></p=
><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri"=
,"sans-serif";color:#1F497D'>| DEBUG: For url ['file', '', '/opt/lgp/downlo=
ads/sama5d3xek_downloads/git2_github.com.linux4sam.linux-at91.git.tar.gz', =
'', '', {}] comparing ['cvs', '.*', '/.*', '', '', {}] to ['file', '', '/op=
t/lgp/downloads/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p><p=
 class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","s=
ans-serif";color:#1F497D'>| DEBUG: For url ['file', '', '/opt/lgp/downloads=
/sama5d3xek_downloads/git2_github.com.linux4sam.linux-at91.git.tar.gz', '',=
 '', {}] comparing ['svn', '.*', '/.*', '', '', {}] to ['file', '', '/opt/l=
gp/downloads/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans=
-serif";color:#1F497D'>| DEBUG: For url ['file', '', '/opt/lgp/downloads/sa=
ma5d3xek_downloads/git2_github.com.linux4sam.linux-at91.git.tar.gz', '', ''=
, {}] comparing ['git', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/=
downloads/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'>| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5=
d3xek_downloads/git2_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {=
}] comparing ['hg', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/down=
loads/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p><p class=3DM=
soNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"=
;color:#1F497D'>| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xe=
k_downloads/git2_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] c=
omparing ['bzr', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloa=
ds/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoN=
ormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";co=
lor:#1F497D'>| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_d=
ownloads/git2_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comp=
aring ['svk', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/=
sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNorm=
al><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color=
:#1F497D'>| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_down=
loads/git2_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] compari=
ng ['p4', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama=
5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><=
span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F=
497D'>| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_download=
s/git2_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing [=
'osc', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3=
xek_downloads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><spa=
n style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/g=
it2_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['ht=
tps?$', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d=
3xek_downloads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F49=
7D'>| DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/=
git2_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['f=
tp', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xe=
k_downloads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'=
>| DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', ''=
, {'protocol': 'git'}] comparing ['hg', '.*', '/.*', '', '', {}] to ['file'=
, '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></s=
pan></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"C=
alibri","sans-serif";color:#1F497D'>| DEBUG: For url ['git', 'github.com', =
'/linux4sam/linux-at91.git', '', '', {'protocol': 'git'}] comparing ['bzr',=
 '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_do=
wnloads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><span styl=
e=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>| D=
EBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {'=
protocol': 'git'}] comparing ['svk', '.*', '/.*', '', '', {}] to ['file', '=
', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span=
></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Cali=
bri","sans-serif";color:#1F497D'>| DEBUG: For url ['git', 'github.com', '/l=
inux4sam/linux-at91.git', '', '', {'protocol': 'git'}] comparing ['p4', '.*=
', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_downlo=
ads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D=
'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>| DEBUG=
: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {'prot=
ocol': 'git'}] comparing ['osc', '.*', '/.*', '', '', {}] to ['file', '', '=
/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p=
><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri"=
,"sans-serif";color:#1F497D'>| DEBUG: For url ['git', 'github.com', '/linux=
4sam/linux-at91.git', '', '', {'protocol': 'git'}] comparing ['https?$', '.=
*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_downl=
oads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>| DE=
BUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {'p=
rotocol': 'git'}] comparing ['ftp', '.*', '/.*', '', '', {}] to ['file', ''=
, '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span>=
</p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calib=
ri","sans-serif";color:#1F497D'>| DEBUG: Mirror fetch failure for url file:=
///opt/lgp/downloads/sama5d3xek_downloads/git2_github.com.linux4sam.linux-a=
t91.git.tar.gz (original url: git://github.com/linux4sam/linux-at91.git;pro=
tocol=3Dgit)<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-=
size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>| DEBUG: Fetc=
her failure: Unable to find file file:///opt/lgp/downloads/sama5d3xek_downl=
oads/git2_github.com.linux4sam.linux-at91.git.tar.gz anywhere. The paths th=
at were searched were:<o:p></o:p></span></p><p class=3DMsoNormal><span styl=
e=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>|&n=
bsp;&nbsp;&nbsp;&nbsp; /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/=
recipes-kernel/linux/linux-yocto-custom/arm<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'>|&nbsp;&nbsp;&nbsp;&nbsp; /home/pis1kor/siva/tmp/my_scr=
ipts/meta-atmel-master/recipes-kernel/linux/linux-yocto-custom/armv7a<o:p><=
/o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-f=
amily:"Calibri","sans-serif";color:#1F497D'>|&nbsp;&nbsp;&nbsp;&nbsp; /home=
/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/linux/linux-y=
octo-custom/sama5d3xek<o:p></o:p></span></p><p class=3DMsoNormal><span styl=
e=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>|&n=
bsp;&nbsp;&nbsp;&nbsp; /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/=
recipes-kernel/linux/linux-yocto-custom/poky<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'>|&nbsp;&nbsp;&nbsp;&nbsp; /home/pis1kor/siva/tmp/my_scr=
ipts/meta-atmel-master/recipes-kernel/linux/linux-yocto-custom/<o:p></o:p><=
/span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:=
"Calibri","sans-serif";color:#1F497D'>|&nbsp;&nbsp;&nbsp;&nbsp; /home/pis1k=
or/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/linux/linux-yocto-c=
ustom-3.6.9+linux-3.6.9-at91/arm<o:p></o:p></span></p><p class=3DMsoNormal>=
<span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1=
F497D'>|&nbsp;&nbsp;&nbsp;&nbsp; /home/pis1kor/siva/tmp/my_scripts/meta-atm=
el-master/recipes-kernel/linux/linux-yocto-custom-3.6.9+linux-3.6.9-at91/ar=
mv7a<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.=
0pt;font-family:"Calibri","sans-serif";color:#1F497D'>|&nbsp;&nbsp;&nbsp;&n=
bsp; /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/lin=
ux/linux-yocto-custom-3.6.9+linux-3.6.9-at91/sama5d3xek<o:p></o:p></span></=
p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri=
","sans-serif";color:#1F497D'>|&nbsp;&nbsp;&nbsp;&nbsp; /home/pis1kor/siva/=
tmp/my_scripts/meta-atmel-master/recipes-kernel/linux/linux-yocto-custom-3.=
6.9+linux-3.6.9-at91/poky<o:p></o:p></span></p><p class=3DMsoNormal><span s=
tyle=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>=
|&nbsp;&nbsp;&nbsp;&nbsp; /home/pis1kor/siva/tmp/my_scripts/meta-atmel-mast=
er/recipes-kernel/linux/linux-yocto-custom-3.6.9+linux-3.6.9-at91/<o:p></o:=
p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-fami=
ly:"Calibri","sans-serif";color:#1F497D'>|&nbsp;&nbsp;&nbsp;&nbsp; /home/pi=
s1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/linux/linux-yoct=
o-custom/arm<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-=
size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>|&nbsp;&nbsp;=
&nbsp;&nbsp; /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-ke=
rnel/linux/linux-yocto-custom/armv7a<o:p></o:p></span></p><p class=3DMsoNor=
mal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";colo=
r:#1F497D'>|&nbsp;&nbsp;&nbsp;&nbsp; /home/pis1kor/siva/tmp/my_scripts/meta=
-atmel-master/recipes-kernel/linux/linux-yocto-custom/sama5d3xek<o:p></o:p>=
</span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family=
:"Calibri","sans-serif";color:#1F497D'>|&nbsp;&nbsp;&nbsp;&nbsp; /home/pis1=
kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/linux/linux-yocto-=
custom/poky<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-s=
ize:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>|&nbsp;&nbsp;&=
nbsp; &nbsp;/home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-ker=
nel/linux/linux-yocto-custom/<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F49=
7D'>|&nbsp;&nbsp;&nbsp;&nbsp; /home/pis1kor/siva/tmp/my_scripts/meta-atmel-=
master/recipes-kernel/linux/files/arm<o:p></o:p></span></p><p class=3DMsoNo=
rmal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";col=
or:#1F497D'>|&nbsp;&nbsp;&nbsp;&nbsp; /home/pis1kor/siva/tmp/my_scripts/met=
a-atmel-master/recipes-kernel/linux/files/armv7a<o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans=
-serif";color:#1F497D'>|&nbsp;&nbsp;&nbsp;&nbsp; /home/pis1kor/siva/tmp/my_=
scripts/meta-atmel-master/recipes-kernel/linux/files/sama5d3xek<o:p></o:p><=
/span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:=
"Calibri","sans-serif";color:#1F497D'>|&nbsp;&nbsp;&nbsp;&nbsp; /home/pis1k=
or/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/linux/files/poky<o:=
p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;fon=
t-family:"Calibri","sans-serif";color:#1F497D'>|&nbsp;&nbsp;&nbsp;&nbsp; /h=
ome/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/linux/file=
s/<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0p=
t;font-family:"Calibri","sans-serif";color:#1F497D'>|&nbsp;&nbsp;&nbsp;&nbs=
p; /opt/lgp/downloads/sama5d3xek_downloads<o:p></o:p></span></p><p class=3D=
MsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif=
";color:#1F497D'>| DEBUG: Running export SSH_AGENT_PID=3D&quot;2055&quot;; =
export SSH_AUTH_SOCK=3D&quot;/tmp/keyring-hgqhDa/ssh&quot;; export GIT_PROX=
Y_COMMAND=3D&quot;/usr/local/bin/git-proxy&quot;; export ftp_proxy=3D&quot;=
ftp://pis1kor: shnasv@10.187.52.240:8080&quot;; export https_proxy=3D&quot;=
https://pis1kor: shnasv@10.187.52.240:8080&quot;; export http_proxy=3D&quot=
;http://pis1kor: shnasv@10.187.52.240:8080&quot;; export PATH=3D&quot;/home=
/pis1kor/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/buil=
d_atmel/tmp/sysroots/x86_64-linux/usr/bin/cortexa5hf-vfp-poky-linux-gnueabi=
:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/sama5d3xek/usr/=
bin/crossscripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots=
/x86_64-linux/usr/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sy=
sroots/x86_64-linux/usr/bin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/t=
mp/sysroots/x86_64-linux/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel=
/tmp/sysroots/x86_64-linux//bin:/home/pis1kor/siva/tmp/my_scripts/scripts:/=
home/pis1kor/siva/tmp/my_scripts/bitbake/bin:/usr/lib/lightdm/lightdm:/usr/=
local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games&quot;; e=
xport HOME=3D&quot;/home/pis1kor&quot;; git log --pretty=3Doneline -n 1 4e7=
767a24798b10de918b87540894c3953c6e220 -- 2&gt; /dev/null | wc -l<o:p></o:p>=
</span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family=
:"Calibri","sans-serif";color:#1F497D'>| DEBUG: Trying Upstream<o:p></o:p><=
/span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:=
"Calibri","sans-serif";color:#1F497D'>| DEBUG: Running export SSH_AGENT_PID=
=3D&quot;2055&quot;; export SSH_AUTH_SOCK=3D&quot;/tmp/keyring-hgqhDa/ssh&q=
uot;; export GIT_PROXY_COMMAND=3D&quot;/usr/local/bin/git-proxy&quot;; expo=
rt ftp_proxy=3D&quot;ftp://pis1kor: shnasv@10.187.52.240:8080&quot;; export=
 https_proxy=3D&quot;https://pis1kor: shnasv@10.187.52.240:8080&quot;; expo=
rt http_proxy=3D&quot;http://pis1kor: shnasv@10.187.52.240:8080&quot;; expo=
rt PATH=3D&quot;/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pis1kor/siv=
a/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/usr/bin/cortexa5hf-v=
fp-poky-linux-gnueabi:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sys=
roots/sama5d3xek/usr/bin/crossscripts:/home/pis1kor/siva/tmp/my_scripts/bui=
ld_atmel/tmp/sysroots/x86_64-linux/usr/sbin:/home/pis1kor/siva/tmp/my_scrip=
ts/build_atmel/tmp/sysroots/x86_64-linux/usr/bin:/home/pis1kor/siva/tmp/my_=
scripts/build_atmel/tmp/sysroots/x86_64-linux/sbin:/home/pis1kor/siva/tmp/m=
y_scripts/build_atmel/tmp/sysroots/x86_64-linux//bin:/home/pis1kor/siva/tmp=
/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/bitbake/bin:/usr/lib/=
lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bi=
n:/usr/games&quot;; export HOME=3D&quot;/home/pis1kor&quot;; git log --pret=
ty=3Doneline -n 1 4e7767a24798b10de918b87540894c3953c6e220 -- 2&gt; /dev/nu=
ll | wc -l<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-si=
ze:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>| DEBUG: Runnin=
g export SSH_AGENT_PID=3D&quot;2055&quot;; export SSH_AUTH_SOCK=3D&quot;/tm=
p/keyring-hgqhDa/ssh&quot;; export GIT_PROXY_COMMAND=3D&quot;/usr/local/bin=
/git-proxy&quot;; export ftp_proxy=3D&quot;ftp://pis1kor: shnasv@10.187.52.=
240:8080&quot;; export https_proxy=3D&quot;https://pis1kor: shnasv@10.187.5=
2.240:8080&quot;; export http_proxy=3D&quot;http://pis1kor: shnasv@10.187.5=
2.240:8080&quot;; export PATH=3D&quot;/home/pis1kor/siva/tmp/my_scripts/scr=
ipts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linu=
x/usr/bin/cortexa5hf-vfp-poky-linux-gnueabi:/home/pis1kor/siva/tmp/my_scrip=
ts/build_atmel/tmp/sysroots/sama5d3xek/usr/bin/crossscripts:/home/pis1kor/s=
iva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/usr/sbin:/home/pis=
1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/usr/bin:/hom=
e/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/sbin:/h=
ome/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux//bin:=
/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts=
/bitbake/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/s=
bin:/usr/bin:/sbin:/bin:/usr/games&quot;; export HOME=3D&quot;/home/pis1kor=
&quot;; git remote rm origin<o:p></o:p></span></p><p class=3DMsoNormal><spa=
n style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>| DEBUG: Running export SSH_AGENT_PID=3D&quot;2055&quot;; export SSH_AUT=
H_SOCK=3D&quot;/tmp/keyring-hgqhDa/ssh&quot;; export GIT_PROXY_COMMAND=3D&q=
uot;/usr/local/bin/git-proxy&quot;; export ftp_proxy=3D&quot;ftp://pis1kor:=
 shnasv@10.187.52.240:8080&quot;; export https_proxy=3D&quot;https://pis1ko=
r: shnasv@10.187.52.240:8080&quot;; export http_proxy=3D&quot;http://pis1ko=
r: shnasv@10.187.52.240:8080&quot;; export PATH=3D&quot;/home/pis1kor/siva/=
tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sy=
sroots/x86_64-linux/usr/bin/cortexa5hf-vfp-poky-linux-gnueabi:/home/pis1kor=
/siva/tmp/my_scripts/build_atmel/tmp/sysroots/sama5d3xek/usr/bin/crossscrip=
ts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/=
usr/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-=
linux/usr/bin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x8=
6_64-linux/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/=
x86_64-linux//bin:/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pis1kor/s=
iva/tmp/my_scripts/bitbake/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/us=
r/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games&quot;; export HOME=3D&=
quot;/home/pis1kor&quot;; git remote add --mirror=3Dfetch origin git://gith=
ub.com/linux4sam/linux-at91.git<o:p></o:p></span></p><p class=3DMsoNormal><=
span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F=
497D'>| DEBUG: Python function base_do_fetch finished<o:p></o:p></span></p>=
<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";color:#1F497D'>| DEBUG: Python function do_fetch finished<o:p>=
</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-=
family:"Calibri","sans-serif";color:#1F497D'>| ERROR: Function failed: Netw=
ork access disabled through BB_NO_NETWORK but access requested with command=
 git fetch -f --prune git://github.com/linux4sam/linux-at91.git refs/*:refs=
/* (for url git://github.com/linux4sam/linux-at91.git;protocol=3Dgit)<o:p><=
/o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-f=
amily:"Calibri","sans-serif";color:#1F497D'>ERROR: Task 622 (/home/pis1kor/=
siva/tmp/my_scripts/meta-atmel-master/recipes-kernel/linux/linux-yocto-cust=
om_3.6.9.bb, do_fetch) failed with exit code '1'<o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans=
-serif";color:#1F497D'>NOTE: Tasks Summary: Attempted 478 tasks of which 47=
6 didn't need to be rerun and 1 failed.<o:p></o:p></span></p><p class=3DMso=
Normal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";c=
olor:#1F497D'>Waiting for 0 running tasks to finish:<o:p></o:p></span></p><=
p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","=
sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal=
><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#=
1F497D'>Summary: 1 task failed:<o:p></o:p></span></p><p class=3DMsoNormal><=
span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F=
497D'>&nbsp; /home/pis1kor/siva/tmp/my_scripts/meta-atmel-master/recipes-ke=
rnel/linux/linux-yocto-custom_3.6.9.bb, do_fetch<o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans=
-serif";color:#1F497D'>Summary: There was 1 ERROR message shown, returning =
a non-zero exit code.<o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>pis1=
kor@KOR1015545VM1:~/siva/tmp/my_scripts$ vi build_atmel/conf/local.conf <o:=
p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;fon=
t-family:"Calibri","sans-serif";color:#1F497D'>pis1kor@KOR1015545VM1:~/siva=
/tmp/my_scripts$ bitbake -c clean linux-yocto-custom<o:p></o:p></span></p><=
p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","=
sans-serif";color:#1F497D'>Unable to find conf/bblayers.conf<o:p></o:p></sp=
an></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Ca=
libri","sans-serif";color:#1F497D'>BitBake must be run from within your bui=
ld directory: /home/pis1kor/siva/tmp/my_scripts/build_atmel<o:p></o:p></spa=
n></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Cal=
ibri","sans-serif";color:#1F497D'>pis1kor@KOR1015545VM1:~/siva/tmp/my_scrip=
ts$&nbsp; cd build_atmel/<o:p></o:p></span></p><p class=3DMsoNormal><span s=
tyle=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>=
pis1kor@KOR1015545VM1:~/siva/tmp/my_scripts/build_atmel$ bitbake -c clean l=
inux-yocto-custom<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'=
font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>Loading =
cache: 100% |##############################################################=
###########################################################################=
###############################| ETA:&nbsp; 00:00:00<o:p></o:p></span></p><=
p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","=
sans-serif";color:#1F497D'>Loaded 1139 entries from dependency cache.<o:p><=
/o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-f=
amily:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sa=
ns-serif";color:#1F497D'>Build Configuration:<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'>BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;1.18.0&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span styl=
e=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>BUI=
LD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-lin=
ux&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size=
:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>NATIVELSBSTRING&n=
bsp;&nbsp; =3D &quot;Ubuntu-12.04&quot;<o:p></o:p></span></p><p class=3DMso=
Normal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";c=
olor:#1F497D'>TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quo=
t;arm-poky-linux-gnueabi&quot;<o:p></o:p></span></p><p class=3DMsoNormal><s=
pan style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F4=
97D'>MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;sama5d3xek&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'=
>DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;poky&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>DIST=
RO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;1.4.2&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sa=
ns-serif";color:#1F497D'>TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;ar=
mv7a vfp thumb callconvention-hard cortexa5&quot;<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","san=
s-serif";color:#1F497D'>TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; =3D &quot;vfp&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>meta=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; =3D &quot;master:585eba90cf6e5d6151c025ca47a050a13db0c652&quot;<o:p></o=
:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-fam=
ily:"Calibri","sans-serif";color:#1F497D'>meta-yocto&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; =3D &quot;master:8c567d8d301a49f625ca98513a7e37a6b3c4e0=
b5&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size=
:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>meta-yocto-bsp&nb=
sp;&nbsp;&nbsp; =3D &quot;master:bb83df38e46b9ad0c7ed1bfc1e814c85c16ed9b6&q=
uot;<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.=
0pt;font-family:"Calibri","sans-serif";color:#1F497D'>meta-atmel-master =3D=
 &quot;master:00387cba3551814841c486122d12c40e31a3e215&quot;<o:p></o:p></sp=
an></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Ca=
libri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DM=
soNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"=
;color:#1F497D'>NOTE: Resolving any missing task queue dependencies<o:p></o=
:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-fam=
ily:"Calibri","sans-serif";color:#1F497D'>NOTE: Preparing runqueue<o:p></o:=
p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-fami=
ly:"Calibri","sans-serif";color:#1F497D'>NOTE: Executing RunQueue Tasks<o:p=
></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font=
-family:"Calibri","sans-serif";color:#1F497D'>NOTE: Tasks Summary: Attempte=
d 1 tasks of which 0 didn't need to be rerun and all succeeded.<o:p></o:p><=
/span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:=
"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:=
11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p><=
/span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:=
"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:=
11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p><=
/span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:=
"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:red'>Log :2 <o:p></o:p></span></p><p class=3DMsoNormal><span sty=
le=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>DE=
BUG: Executing python function do_fetch<o:p></o:p></span></p><p class=3DMso=
Normal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";c=
olor:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'fon=
t-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>DEBUG: Exec=
uting python function base_do_fetch<o:p></o:p></span></p><p class=3DMsoNorm=
al><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color=
:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-si=
ze:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>DEBUG: Running =
export SSH_AGENT_PID=3D&quot;2055&quot;; export SSH_AUTH_SOCK=3D&quot;/tmp/=
keyring-hgqhDa/ssh&quot;; export GIT_PROXY_COMMAND=3D&quot;/usr/local/bin/g=
it-proxy&quot;; export ftp_proxy=3D&quot;ftp://pis1kor: shnasv@10.187.52.24=
0:8080&quot;; export https_proxy=3D&quot;https://pis1kor: shnasv@10.187.52.=
240:8080&quot;; export http_proxy=3D&quot;http://pis1kor: shnasv@10.187.52.=
240:8080&quot;; export PATH=3D&quot;/home/pis1kor/siva/tmp/my_scripts/scrip=
ts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/=
usr/bin/cortexa5hf-vfp-poky-linux-gnueabi:/home/pis1kor/siva/tmp/my_scripts=
/build_atmel/tmp/sysroots/sama5d3xek/usr/bin/crossscripts:/home/pis1kor/siv=
a/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/usr/sbin:/home/pis1k=
or/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/usr/bin:/home/=
pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/sbin:/hom=
e/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux//bin:/h=
ome/pis1kor/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/b=
itbake/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbi=
n:/usr/bin:/sbin:/bin:/usr/games&quot;; export HOME=3D&quot;/home/pis1kor&q=
uot;; git log --pretty=3Doneline -n 1 4e7767a24798b10de918b87540894c3953c6e=
220 -- 2&gt; /dev/null | wc -l<o:p></o:p></span></p><p class=3DMsoNormal><s=
pan style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F4=
97D'><o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11=
.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>DEBUG: Trying PREMIR=
RORS<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.=
0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p></o:p></span></p=
><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri"=
,"sans-serif";color:#1F497D'>DEBUG: For url ['git', 'github.com', '/linux4s=
am/linux-at91.git', '', '', {'protocol': 'git'}] comparing ['cvs', '.*', '/=
.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/'=
, '', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font=
-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p></o:p><=
/span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:=
"Calibri","sans-serif";color:#1F497D'>DEBUG: For url ['git', 'github.com', =
'/linux4sam/linux-at91.git', '', '', {'protocol': 'git'}] comparing ['svn',=
 '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_do=
wnloads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><span styl=
e=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:=
p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;fon=
t-family:"Calibri","sans-serif";color:#1F497D'>DEBUG: For url ['git', 'gith=
ub.com', '/linux4sam/linux-at91.git', '', '', {'protocol': 'git'}] comparin=
g ['git', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama=
5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><=
span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F=
497D'><o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:1=
1.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>DEBUG: For url git:=
//github.com/linux4sam/linux-at91.git;protocol=3Dgit returning file:///opt/=
lgp/downloads/sama5d3xek_downloads/git2_github.com.linux4sam.linux-at91.git=
.tar.gz<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:=
11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p></o:p></span>=
</p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calib=
ri","sans-serif";color:#1F497D'>DEBUG: For url ['file', '', '/opt/lgp/downl=
oads/sama5d3xek_downloads/git2_github.com.linux4sam.linux-at91.git.tar.gz',=
 '', '', {}] comparing ['cvs', '.*', '/.*', '', '', {}] to ['file', '', '/o=
pt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p><=
p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","=
sans-serif";color:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal><span=
 style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D=
'>DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2=
_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['svn',=
 '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_do=
wnloads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><span styl=
e=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:=
p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;fon=
t-family:"Calibri","sans-serif";color:#1F497D'>DEBUG: For url ['file', '', =
'/opt/lgp/downloads/sama5d3xek_downloads/git2_github.com.linux4sam.linux-at=
91.git.tar.gz', '', '', {}] comparing ['git', '.*', '/.*', '', '', {}] to [=
'file', '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]<o:p></o=
:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-fam=
ily:"Calibri","sans-serif";color:#1F497D'><o:p></o:p></span></p><p class=3D=
MsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif=
";color:#1F497D'>DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek=
_downloads/git2_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] co=
mparing ['hg', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads=
/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNor=
mal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";colo=
r:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-s=
ize:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>DEBUG: For url=
 ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2_github.com.linu=
x4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['bzr', '.*', '/.*', ''=
, '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '=
', {}]<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:1=
1.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p></o:p></span><=
/p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibr=
i","sans-serif";color:#1F497D'>DEBUG: For url ['file', '', '/opt/lgp/downlo=
ads/sama5d3xek_downloads/git2_github.com.linux4sam.linux-at91.git.tar.gz', =
'', '', {}] comparing ['svk', '.*', '/.*', '', '', {}] to ['file', '', '/op=
t/lgp/downloads/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p><p=
 class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","s=
ans-serif";color:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'=
>DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2_=
github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['p4', '=
.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_down=
loads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p=
></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font=
-family:"Calibri","sans-serif";color:#1F497D'>DEBUG: For url ['file', '', '=
/opt/lgp/downloads/sama5d3xek_downloads/git2_github.com.linux4sam.linux-at9=
1.git.tar.gz', '', '', {}] comparing ['osc', '.*', '/.*', '', '', {}] to ['=
file', '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]<o:p></o:=
p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-fami=
ly:"Calibri","sans-serif";color:#1F497D'><o:p></o:p></span></p><p class=3DM=
soNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"=
;color:#1F497D'>DEBUG: For url ['file', '', '/opt/lgp/downloads/sama5d3xek_=
downloads/git2_github.com.linux4sam.linux-at91.git.tar.gz', '', '', {}] com=
paring ['https?$', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downl=
oads/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p><p class=3DMs=
oNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";=
color:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'fo=
nt-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>DEBUG: For=
 url ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/git2_github.com.=
linux4sam.linux-at91.git.tar.gz', '', '', {}] comparing ['ftp', '.*', '/.*'=
, '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/', '=
', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-si=
ze:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p></o:p></sp=
an></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Ca=
libri","sans-serif";color:#1F497D'>DEBUG: For url ['git', 'github.com', '/l=
inux4sam/linux-at91.git', '', '', {'protocol': 'git'}] comparing ['hg', '.*=
', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_downlo=
ads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D=
'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p></=
o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-fa=
mily:"Calibri","sans-serif";color:#1F497D'>DEBUG: For url ['git', 'github.c=
om', '/linux4sam/linux-at91.git', '', '', {'protocol': 'git'}] comparing ['=
bzr', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads/sama5d3x=
ek_downloads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNormal><span=
 style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D=
'><o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0p=
t;font-family:"Calibri","sans-serif";color:#1F497D'>DEBUG: For url ['git', =
'github.com', '/linux4sam/linux-at91.git', '', '', {'protocol': 'git'}] com=
paring ['svk', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/downloads=
/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p><p class=3DMsoNor=
mal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";colo=
r:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-s=
ize:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>DEBUG: For url=
 ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {'protocol': 'g=
it'}] comparing ['p4', '.*', '/.*', '', '', {}] to ['file', '', '/opt/lgp/d=
ownloads/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>DEBU=
G: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', '', {'pro=
tocol': 'git'}] comparing ['osc', '.*', '/.*', '', '', {}] to ['file', '', =
'/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]<o:p></o:p></span></=
p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri=
","sans-serif";color:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal><s=
pan style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F4=
97D'>DEBUG: For url ['git', 'github.com', '/linux4sam/linux-at91.git', '', =
'', {'protocol': 'git'}] comparing ['https?$', '.*', '/.*', '', '', {}] to =
['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '', {}]<o:p></=
o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-fa=
mily:"Calibri","sans-serif";color:#1F497D'><o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'>DEBUG: For url ['git', 'github.com', '/linux4sam/linux-=
at91.git', '', '', {'protocol': 'git'}] comparing ['ftp', '.*', '/.*', '', =
'', {}] to ['file', '', '/opt/lgp/downloads/sama5d3xek_downloads/', '', '',=
 {}]<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.=
0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p></o:p></span></p=
><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri"=
,"sans-serif";color:#1F497D'>DEBUG: Running export SSH_AGENT_PID=3D&quot;20=
55&quot;; export SSH_AUTH_SOCK=3D&quot;/tmp/keyring-hgqhDa/ssh&quot;; expor=
t GIT_PROXY_COMMAND=3D&quot;/usr/local/bin/git-proxy&quot;; export ftp_prox=
y=3D&quot;ftp://pis1kor: shnasv@10.187.52.240:8080&quot;; export https_prox=
y=3D&quot;https://pis1kor: shnasv@10.187.52.240:8080&quot;; export http_pro=
xy=3D&quot;http://pis1kor: shnasv@10.187.52.240:8080&quot;; export PATH=3D&=
quot;/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_sc=
ripts/build_atmel/tmp/sysroots/x86_64-linux/usr/bin/cortexa5hf-vfp-poky-lin=
ux-gnueabi:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/sama5=
d3xek/usr/bin/crossscripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tm=
p/sysroots/x86_64-linux/usr/sbin:/home/pis1kor/siva/tmp/my_scripts/build_at=
mel/tmp/sysroots/x86_64-linux/usr/bin:/home/pis1kor/siva/tmp/my_scripts/bui=
ld_atmel/tmp/sysroots/x86_64-linux/sbin:/home/pis1kor/siva/tmp/my_scripts/b=
uild_atmel/tmp/sysroots/x86_64-linux//bin:/home/pis1kor/siva/tmp/my_scripts=
/scripts:/home/pis1kor/siva/tmp/my_scripts/bitbake/bin:/usr/lib/lightdm/lig=
htdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/game=
s&quot;; export HOME=3D&quot;/home/pis1kor&quot;; git log --pretty=3Donelin=
e -n 1 4e7767a24798b10de918b87540894c3953c6e220 -- 2&gt; /dev/null | wc -l<=
o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;f=
ont-family:"Calibri","sans-serif";color:#1F497D'><o:p></o:p></span></p><p c=
lass=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","san=
s-serif";color:#1F497D'>DEBUG: Trying Upstream<o:p></o:p></span></p><p clas=
s=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-s=
erif";color:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>DEBU=
G: Running export SSH_AGENT_PID=3D&quot;2055&quot;; export SSH_AUTH_SOCK=3D=
&quot;/tmp/keyring-hgqhDa/ssh&quot;; export GIT_PROXY_COMMAND=3D&quot;/usr/=
local/bin/git-proxy&quot;; export ftp_proxy=3D&quot;ftp://pis1kor: shnasv@1=
0.187.52.240:8080&quot;; export https_proxy=3D&quot;https://pis1kor: shnasv=
@10.187.52.240:8080&quot;; export http_proxy=3D&quot;http://pis1kor: shnasv=
@10.187.52.240:8080&quot;; export PATH=3D&quot;/home/pis1kor/siva/tmp/my_sc=
ripts/scripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x8=
6_64-linux/usr/bin/cortexa5hf-vfp-poky-linux-gnueabi:/home/pis1kor/siva/tmp=
/my_scripts/build_atmel/tmp/sysroots/sama5d3xek/usr/bin/crossscripts:/home/=
pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/usr/sbin:=
/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/usr=
/bin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linu=
x/sbin:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-li=
nux//bin:/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/m=
y_scripts/bitbake/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/b=
in:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games&quot;; export HOME=3D&quot;/hom=
e/pis1kor&quot;; git log --pretty=3Doneline -n 1 4e7767a24798b10de918b87540=
894c3953c6e220 -- 2&gt; /dev/null | wc -l<o:p></o:p></span></p><p class=3DM=
soNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"=
;color:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'f=
ont-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>DEBUG: Ru=
nning export SSH_AGENT_PID=3D&quot;2055&quot;; export SSH_AUTH_SOCK=3D&quot=
;/tmp/keyring-hgqhDa/ssh&quot;; export GIT_PROXY_COMMAND=3D&quot;/usr/local=
/bin/git-proxy&quot;; export ftp_proxy=3D&quot;ftp://pis1kor: shnasv@10.187=
.52.240:8080&quot;; export https_proxy=3D&quot;https://pis1kor: shnasv@10.1=
87.52.240:8080&quot;; export http_proxy=3D&quot;http://pis1kor: shnasv@10.1=
87.52.240:8080&quot;; export PATH=3D&quot;/home/pis1kor/siva/tmp/my_scripts=
/scripts:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-=
linux/usr/bin/cortexa5hf-vfp-poky-linux-gnueabi:/home/pis1kor/siva/tmp/my_s=
cripts/build_atmel/tmp/sysroots/sama5d3xek/usr/bin/crossscripts:/home/pis1k=
or/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/usr/sbin:/home=
/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/usr/bin:=
/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/sbi=
n:/home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux//=
bin:/home/pis1kor/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scr=
ipts/bitbake/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/u=
sr/sbin:/usr/bin:/sbin:/bin:/usr/games&quot;; export HOME=3D&quot;/home/pis=
1kor&quot;; git remote rm origin<o:p></o:p></span></p><p class=3DMsoNormal>=
<span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1=
F497D'><o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:=
11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>DEBUG: Running exp=
ort SSH_AGENT_PID=3D&quot;2055&quot;; export SSH_AUTH_SOCK=3D&quot;/tmp/key=
ring-hgqhDa/ssh&quot;; export GIT_PROXY_COMMAND=3D&quot;/usr/local/bin/git-=
proxy&quot;; export ftp_proxy=3D&quot;ftp://pis1kor: shnasv@10.187.52.240:8=
080&quot;; export https_proxy=3D&quot;https://pis1kor: shnasv@10.187.52.240=
:8080&quot;; export http_proxy=3D&quot;http://pis1kor: hnasv@10.187.52.240:=
8080&quot;; export PATH=3D&quot;/home/pis1kor/siva/tmp/my_scripts/scripts:/=
home/pis1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/usr/=
bin/cortexa5hf-vfp-poky-linux-gnueabi:/home/pis1kor/siva/tmp/my_scripts/bui=
ld_atmel/tmp/sysroots/sama5d3xek/usr/bin/crossscripts:/home/pis1kor/siva/tm=
p/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/usr/sbin:/home/pis1kor/s=
iva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/usr/bin:/home/pis1=
kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux/sbin:/home/pi=
s1kor/siva/tmp/my_scripts/build_atmel/tmp/sysroots/x86_64-linux//bin:/home/=
pis1kor/siva/tmp/my_scripts/scripts:/home/pis1kor/siva/tmp/my_scripts/bitba=
ke/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/u=
sr/bin:/sbin:/bin:/usr/games&quot;; export HOME=3D&quot;/home/pis1kor&quot;=
; git remote add --mirror=3Dfetch origin git://github.com/linux4sam/linux-a=
t91.git<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:=
11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p></o:p></span>=
</p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calib=
ri","sans-serif";color:#1F497D'>DEBUG: Python function base_do_fetch finish=
ed<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0p=
t;font-family:"Calibri","sans-serif";color:#1F497D'><o:p></o:p></span></p><=
p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","=
sans-serif";color:#1F497D'>DEBUG: Python function do_fetch finished<o:p></o=
:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-fam=
ily:"Calibri","sans-serif";color:#1F497D'><o:p></o:p></span></p><p class=3D=
MsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif=
";color:#1F497D'>ERROR: Function failed: Network access disabled through BB=
_NO_NETWORK but access requested with command git fetch -f --prune git://gi=
thub.com/linux4sam/linux-at91.git refs/*:refs/* (for url git://github.com/l=
inux4sam/linux-at91.git;protocol=3Dgit)<o:p></o:p></span></p><div><div styl=
e=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'>=
<p class=3DMsoNormal><b><span style=3D'font-size:10.0pt;font-family:"Tahoma=
","sans-serif"'>From:</span></b><span style=3D'font-size:10.0pt;font-family=
:"Tahoma","sans-serif"'> Amit Kumar [mailto:Amit.Kumar@lntinfotech.com] <br=
><b>Sent:</b> Monday, January 06, 2014 12:45 PM<br><b>To:</b> Sivaprasad Pa=
la (RBEI/EAA1)<br><b>Subject:</b> RE: yocto offline build<o:p></o:p></span>=
</p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNor=
mal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif"=
;color:#1F497D'>Hi,<o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif";color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:=
10.0pt;font-family:"Trebuchet MS","sans-serif";color:#1F497D'>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The path of the &#822=
0;</span><span style=3D'font-size:10.0pt;font-family:"Calibri","sans-serif"=
'>SOURCE_MIRROR_URL</span><span style=3D'font-size:10.0pt;font-family:"Treb=
uchet MS","sans-serif";color:#1F497D'>&#8221; should be the same as where y=
ou have downloaded or fetched all the packages.<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","=
sans-serif";color:#1F497D'>Change instead of..<o:p></o:p></span></p><p clas=
s=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Calibri","sans-s=
erif"'>SOURCE_MIRROR_URL ?=3D &quot;<a href=3D"file:///\\path\to\download\s=
ources\">file://path/to/download/sources/</a>&quot;</span><span style=3D'fo=
nt-size:10.0pt;font-family:"Trebuchet MS","sans-serif";color:#1F497D'><o:p>=
</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-=
family:"Trebuchet MS","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span><=
/p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuc=
het MS","sans-serif";color:#1F497D'>Use this &#8230;<o:p></o:p></span></p><=
p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Calibri","=
sans-serif"'>SOURCE_MIRROR_URL ?=3D &quot;${TOPDIR}/tmp/downloads-keepout&q=
uot;<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.=
0pt;font-family:"Calibri","sans-serif"'><o:p>&nbsp;</o:p></span></p><p clas=
s=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Calibri","sans-s=
erif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font=
-size:10.0pt;font-family:"Calibri","sans-serif"'>Thanks &amp; Regards<o:p><=
/o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-f=
amily:"Calibri","sans-serif"'>Amit K</span><span style=3D'font-size:10.0pt;=
font-family:"Trebuchet MS","sans-serif";color:#1F497D'><o:p></o:p></span></=
p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuch=
et MS","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div st=
yle=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in=
'><p class=3DMsoNormal><b><span style=3D'font-size:10.0pt;font-family:"Taho=
ma","sans-serif"'>From:</span></b><span style=3D'font-size:10.0pt;font-fami=
ly:"Tahoma","sans-serif"'> <a href=3D"mailto:yocto-bounces@yoctoproject.org=
">yocto-bounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yocto=
project.org">mailto:yocto-bounces@yoctoproject.org</a>] <b>On Behalf Of </b=
>Sivaprasad Pala (RBEI/EAA1)<br><b>Sent:</b> Monday, January 06, 2014 10:26=
 AM<br><b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a><br><b>Subject:</b> [yocto] yocto offline build<o:p></o:p></span=
></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3D=
MsoNormal><span style=3D'font-size:10.0pt;font-family:"Calibri","sans-serif=
"'>Hello Yocto Help,<o:p></o:p></span></p></div><div><p class=3DMsoNormal><=
span style=3D'font-size:10.0pt;font-family:"Calibri","sans-serif"'>&nbsp;<o=
:p></o:p></span></p></div><div><p class=3DMsoNormal><span style=3D'font-siz=
e:10.0pt;font-family:"Calibri","sans-serif"'>I am trying to build yocto off=
line using below steps.<o:p></o:p></span></p></div><div><p class=3DMsoNorma=
l><span style=3D'font-size:10.0pt;font-family:"Calibri","sans-serif"'>Steps=
:<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span style=3D'font-=
size:10.0pt;font-family:"Calibri","sans-serif"'>&nbsp;<o:p></o:p></span></p=
></div><ol start=3D1 type=3D1><li class=3DMsoNormal style=3D'mso-margin-top=
-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2 level1 lfo3'><span style=
=3D'font-size:10.0pt;font-family:"Calibri","sans-serif"'>bitbake &#8211;c f=
etchall core-image-minimal<o:p></o:p></span></li><li class=3DMsoNormal styl=
e=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2 level1 =
lfo3'><span style=3D'font-size:10.0pt;font-family:"Calibri","sans-serif"'>c=
onf/local.conf changes <o:p></o:p></span></li></ol><div><p class=3DMsoNorma=
l><span style=3D'font-size:10.0pt;font-family:"Calibri","sans-serif"'>DL_DI=
R ?=3D &quot;${TOPDIR}/tmp/downloads-keepout&quot;<o:p></o:p></span></p></d=
iv><div><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"C=
alibri","sans-serif"'>SSTATE_DIR ?=3D &quot;${TOPDIR}/sstate-cache&quot;<o:=
p></o:p></span></p></div><div><p class=3DMsoNormal><span style=3D'font-size=
:10.0pt;font-family:"Calibri","sans-serif"'>&nbsp;<o:p></o:p></span></p></d=
iv><div><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"C=
alibri","sans-serif"'>BB_NO_NETWORK =3D &quot;0&quot;<o:p></o:p></span></p>=
</div><div><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family=
:"Calibri","sans-serif"'>INHERIT +=3D &quot;own-mirrors&quot;<o:p></o:p></s=
pan></p></div><div><p class=3DMsoNormal><span style=3D'font-size:10.0pt;fon=
t-family:"Calibri","sans-serif"'>SOURCE_MIRROR_URL ?=3D &quot;<a href=3D"fi=
le:///\\path\to\download\sources\">file://path/to/download/sources/</a>&quo=
t;<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span style=3D'font=
-size:10.0pt;font-family:"Calibri","sans-serif"'>BB_GENERATE_MIRROR_TARBALL=
S =3D &quot;1&quot;<o:p></o:p></span></p></div><div><p class=3DMsoNormal><s=
pan style=3D'font-size:10.0pt;font-family:"Calibri","sans-serif"'>BB_FETCH_=
PREMIRRORONLY =3D &quot;1&quot;<o:p></o:p></span></p></div><div><p class=3D=
MsoNormal><span style=3D'font-size:10.0pt;font-family:"Calibri","sans-serif=
"'>CONNECTIVITY_CHECK_URIS=3D&quot;&quot;<o:p></o:p></span></p></div><div><=
p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Calibri","=
sans-serif"'>DISABLE_NETWORK_SANITY =3D &quot;1&quot;<o:p></o:p></span></p>=
</div><ol start=3D3 type=3D1><li class=3DMsoNormal style=3D'mso-margin-top-=
alt:auto;mso-margin-bottom-alt:auto;mso-list:l0 level1 lfo6'><span style=3D=
'font-size:10.0pt;font-family:"Calibri","sans-serif"'>bitbake core-image-mi=
nimal<o:p></o:p></span></li></ol><div><p class=3DMsoNormal><span style=3D'f=
ont-size:10.0pt'>&nbsp;</span><span style=3D'font-size:10.0pt;font-family:"=
Calibri","sans-serif"'><o:p></o:p></span></p></div><div><p class=3DMsoNorma=
l><span style=3D'font-size:10.0pt;font-family:"Calibri","sans-serif"'>But I=
 am getting errors in the step 3 saying not able to &#8220;unpack&#8221;.<o=
:p></o:p></span></p></div><div><p class=3DMsoNormal><span style=3D'font-siz=
e:10.0pt;font-family:"Calibri","sans-serif"'>&nbsp;<o:p></o:p></span></p></=
div><div><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"=
Calibri","sans-serif"'>Please tell me &#8220;IF I MISSED OUT ANY STEPS&#822=
1;.<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span style=3D'fon=
t-size:10.0pt;font-family:"Calibri","sans-serif"'>&nbsp;<o:p></o:p></span><=
/p></div><div><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-fam=
ily:"Calibri","sans-serif"'>Thanks and Regards,<o:p></o:p></span></p></div>=
<div><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Cali=
bri","sans-serif"'>Sivaprasad Pala.<o:p></o:p></span></p></div><div><p clas=
s=3DMsoNormal><span style=3D'font-size:10.0pt'>&nbsp;</span><span style=3D'=
font-size:10.0pt;font-family:"Calibri","sans-serif"'><o:p></o:p></span></p>=
</div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><hr size=3D2 width=3D"100%" align=3D=
center></div><p class=3DMsoNormal><span style=3D'font-family:"Arial","sans-=
serif";color:black'>The contents of this e-mail and any attachment(s) may c=
ontain confidential or privileged information for the intended recipient(s)=
. Unintended recipients are prohibited from taking action on the basis of i=
nformation in this e-mail and using or disseminating the information, and m=
ust notify the sender and delete it from their system. L&amp;T Infotech wil=
l not accept responsibility or liability for the accuracy or completeness o=
f, or the presence of any virus or disabling code in this e-mail&quot;</spa=
n><o:p></o:p></p></div></body></html>=

--_000_F2E05BCE6D875B4AAC726FD84CBB8F13236AA33CDCSGPMBX02APACb_--
