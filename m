Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web11.9007.1610029664915193065
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jan 2021 06:27:47 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=LK21YnOM;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1610029664; x=1767709664;
  h=from:to:subject:date:mime-version;
  bh=lc0b1GEe5FA9ebcrgWxtKPM36c/GGh+e3PY4zwZakqg=;
  b=LK21YnOMT5tTdPImSsJpTX0BqFvlfkDUQxrjI3FJKUJHB9TBIShYmW6v
   w+xP4fye7+2eYz66BX5jYnbbYCwflSkwR5DKH8oFasXTkdFx4Tat1oVSi
   MYO10aTjmOTkiOc8iBDOXnyI2TMyu1UwJEqsRn0XTh7maCjKMWPbBExiO
   k=;
IronPort-PHdr: =?us-ascii?q?9a23=3ASKxJcRFnqImlgnizJ/bPD51GYnF86YWxBRYc798d?=
 =?us-ascii?q?s5kLTJ7yr8qwAkXT6L1XgUPTWs2DsrQY0rWQ6fy6EjFfqb+681k6OKRWUBEEjc?=
 =?us-ascii?q?hE1ycBO+WiTXPBEfjxciYhF95DXlI2t1uyMExSBdqsLwaK+i764jEdAAjwOhRo?=
 =?us-ascii?q?LerpBIHSk9631+ev8JHPfglEnjWwba5wIRmsswncudcajYRiJ6sz1xDEvmZGd+?=
 =?us-ascii?q?NKyG1yOFmdhQz85sC+/J5i9yRfpfcs/NNeXKv5Yqo1U6VWACwpPG4p6sLrswLD?=
 =?us-ascii?q?TRaU6XsHTmoWiBtIDBPb4xz8Q5z8rzH1tut52CmdIM32UbU5Uims4qt3VBPljj?=
 =?us-ascii?q?oMOjgk+2/Vl8NwlrpWrhK/qRJi347aboKbNPticazSZt4aQHZNXsRLWiBdHo+w?=
 =?us-ascii?q?cY0CBPcBM+ZCqIn9okMDoRW5CwmrAuPv0SFHiWHt3aEizu8vDB3G0xI+H90Qtn?=
 =?us-ascii?q?Tfscv4P7oWXe+70afEyDvPZO5R1Dfm9IjHbA4hru+KXb5qdMrRzk8vFxjbgVqO?=
 =?us-ascii?q?sozoJCia2f4TvGiA7+tgTv6vhHAiqwFquDSg2sAsiozQi48T11vL+jl3zpwvKt?=
 =?us-ascii?q?2kVE50f8SkEJ1IuiyVKod7Xt0vTmNotis5xLMLuIO3cDYLxZk6xhPRa+GLfoyW?=
 =?us-ascii?q?7hzsSuqfLil1iW9hdby/hxu//lStx+zgWsSp0FtHqDdOnNrUtn0VyhDf9tKLR/?=
 =?us-ascii?q?V/80u7xDqC0w7e5vtFLE01jabXNoItzqQ/m5ccq0jOETX6lFjogKKXcEgv5/Km?=
 =?us-ascii?q?5P79Yrr8o5+RL4p0igbjPaswgsG/GuE4MhQWX2ic5OS8yKXv/U3nT7VOif07iq?=
 =?us-ascii?q?/ZsJDcJcsBo665GAxY34Y/5xqjEjuqytIYkmMdIF1eYh2IkZPpOlHVIPDkE/i/?=
 =?us-ascii?q?hk+snC13yPDBO73tGpTNLn7dn7f9Zbtx9lJQxBA9wN1d/Z5YF7UMLfzpVkLwtd?=
 =?us-ascii?q?HUFho5PBa1w+bjBtV9zIQeWWeXD6+CLKPdr0GI6fwpI+WWYY8VvzD9K+M76PHw?=
 =?us-ascii?q?ln80gkQScrO30psMaHG4BehmLFucYXr3mNsODWAKvg8mQOzwlFKCSSJTZ2q1X6?=
 =?us-ascii?q?8k5jA7D56pDZvERo22hLyB3Ty7HoFNZmxcClGMFmvnd5mDW/cUciKSJc1hnSIY?=
 =?us-ascii?q?Wri9UYMh0guutACpg4Zge6DF/SYEsrrn1cNp/KvCkhou8iRuCMaQ2H3LSHt71C?=
 =?us-ascii?q?tcVjg9wKdXpU1m1kzFwK9zn/tAD9tR6vhVFAAgOsiP4fZ9DoW4fwXHZdqEUxLu?=
 =?us-ascii?q?ecmrHzw3Bvl5g+I1Igw1T86+gw7O2WyvBLkOmrGQLJY9/7nNxGT8It07wHHDgv?=
 =?us-ascii?q?pyx2I6S9dCYDX1zpV08BLeUtbE?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ACBQDPGfdf/0LBJQpiHgEBCxIMQIJyU?=
 =?us-ascii?q?4ErgUKVbY8RjSwLAQEBAQEBAQEBBAQBLwQBAYRKgXImOBMCEAEBBgEBAQEBBgQ?=
 =?us-ascii?q?BhlILgjgig01eAVAwJgEEGwaDGYF9sAaBNIVYhGoQCQGBLoFTijuDID6BEYd9L?=
 =?us-ascii?q?4VhBIIAWUgUBwkKATBuHQdRYSePNoplgUoJAYFgiH2RPwcDgnaEXoJolA4rolq?=
 =?us-ascii?q?UEJx7IoQgAgQCBAUCFoFtgXpwgzpPFwINnGqBKwIGCgEBAwmKIi2BBjJfAQE?=
X-IPAS-Result: =?us-ascii?q?A2ACBQDPGfdf/0LBJQpiHgEBCxIMQIJyU4ErgUKVbY8RjSw?=
 =?us-ascii?q?LAQEBAQEBAQEBBAQBLwQBAYRKgXImOBMCEAEBBgEBAQEBBgQBhlILgjgig01eA?=
 =?us-ascii?q?VAwJgEEGwaDGYF9sAaBNIVYhGoQCQGBLoFTijuDID6BEYd9L4VhBIIAWUgUBwk?=
 =?us-ascii?q?KATBuHQdRYSePNoplgUoJAYFgiH2RPwcDgnaEXoJolA4rolqUEJx7IoQgAgQCB?=
 =?us-ascii?q?AUCFoFtgXpwgzpPFwINnGqBKwIGCgEBAwmKIi2BBjJfAQE?=
X-IronPort-AV: E=Sophos;i="5.79,329,1602547200"; 
   d="3516'?scan'208,217";a="475095486"
X-IronPort-AV: E=Sophos;i="5.79,329,1602547200"; 
   d="3516'?scan'208,217";a="239777779"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #kernel
Thread-Topic: #yocto #kernel
Thread-Index: Adbk/uye5R/8ZUYzRrqd6ji5t3zZiQ==
Date: Thu, 7 Jan 2021 14:27:40 +0000
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.126]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1657F973C1A7C634.4998@lists.yoctoproject.org>
X-Groupsio-MsgNum: 51916
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_a62c5dfa1f904a2ab31929768625fa4dbaesystemscom_"

--_004_a62c5dfa1f904a2ab31929768625fa4dbaesystemscom_
Content-Type: multipart/alternative;
	boundary="_000_a62c5dfa1f904a2ab31929768625fa4dbaesystemscom_"

--_000_a62c5dfa1f904a2ab31929768625fa4dbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable




What would cause this "opkg" to not pull in these components ?, and how do =
I ensure "opkg" can find these components : "inetutils-rsh" and  "inetutils=
-rshd" ?

Using "zeus"..., error log attached...

Build output:

07:34 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/aiox-default> bitbake -k aiox-defaultfs
WARNING: Host distribution "rhel-7.9" has not been validated with this vers=
ion of the build system; you may possibly experience unexpected failures. I=
t is recommended that you use a tested distribution.
WARNING: /disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-linaro/meta=
-linaro/recipes-kernel/linux/linux-hikey-ilp32_4.12.bb: Variable key FILES_=
${KERNEL_PACKAGE_NAME}-devicetree (/${KERNEL_IMAGEDEST}/*.dtb /${KERNEL_IMA=
GEDEST}/*.dtbo) replaces original key FILES_kernel-devicetree ( /boot/*.dtb=
).
WARNING: /disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-linaro/meta=
-linaro/recipes-kernel/linux/linux-hikey-ilp32_4.12.bb: Variable key RDEPEN=
DS_${KERNEL_PACKAGE_NAME}-image ( ${@oe.utils.conditional('KERNEL_IMAGETYPE=
', 'vmlinux', '${KERNEL_PACKAGE_NAME}-vmlinux', '', d)}) replaces original =
key RDEPENDS_kernel-image ( kernel-devicetree).
`
Parsing recipes: 100% |####################################################=
#######################################| Time: 0:02:21Parsing of 2473 .bb f=
iles complete (0 cached, 2473 parsed). 3669 targets, 145 skipped, 0 masked,=
 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "1.44.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "rhel-7.9"
TARGET_SYS           =3D "aarch64-poky-linux"
MACHINE              =3D "aiox-default"
DISTRO               =3D "limws"
DISTRO_VERSION       =3D "3.0.4"
TUNE_FEATURES        =3D "aarch64"
TARGET_FPU           =3D ""
meta
meta-poky            =3D "my_yocto_3.0.4:f2eb22a8783f1eecf99bd4042695bab920=
eed00e"
meta-linaro          =3D "zeus:a414b5555301d0c80facb6dc5a5badbc69036131"
meta-perl
meta-python
meta-filesystems
meta-networking
meta-initramfs
meta-oe              =3D "zeus:2b5dd1eb81cd08bc065bc76125f2856e9383e98b"
meta-xilinx-bsp
meta-xilinx-contrib  =3D "zeus:b82343ac5f013926839627cee9dae7106c008ae9"
meta-bl31
meta-aarch64         =3D "v2019.02:f635a364c55f1fb12519aff54924a0a5b947091e=
"

Initialising tasks: 100% |#################################################=
#######################################| Time: 0:00:03
Sstate summary: Wanted 1412 Found 1361 Missed 51 Current 0 (96% match, 0% c=
omplete)
NOTE: Executing Tasks
NOTE: Setscene tasks completed
ERROR: aiox-defaultfs-1.0-r0 do_rootfs: Unable to install packages. Command=
 '/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/aiox=
-default/tmp/work/aiox_default-poky-linux/aiox-defaultfs/1.0-r0/recipe-sysr=
oot-native/usr/bin/opkg --volatile-cache -f /disk0/scratch/smonsees/yocto/w=
orkspace_3/meta-bae/meta-limws/builds/aiox-default/tmp/work/aiox_default-po=
ky-linux/aiox-defaultfs/1.0-r0/opkg.conf -t /disk0/scratch/smonsees/yocto/w=
orkspace_3/meta-bae/meta-limws/builds/aiox-default/tmp/work/aiox_default-po=
ky-linux/aiox-defaultfs/1.0-r0/temp/ipktemp/ -o /disk0/scratch/smonsees/yoc=
to/workspace_3/meta-bae/meta-limws/builds/aiox-default/tmp/work/aiox_defaul=
t-poky-linux/aiox-defaultfs/1.0-r0/rootfs  --force_postinstall --prefer-arc=
h-to-version   install base-files bash bc binutils bridge-utils coreutils c=
rush cs-hdlc dhcp-server dhcp-server-config e2fsprogs ethtool haveged hdpar=
m i2c- tools inetutils inetutils-rsh inetutils-rshd iperf3 iproute2 iptable=
s iputils iputils-ping kernel-modules key-helper kmod libpci3 module-init-t=
ools mtd-utils mtd-utils-ubifs nano ncurses ncurses-dev net-tools netcat nf=
s-utils nfs-utils-stats ntfs-3g ntfsprogs openssh openssh-sftp-server packa=
gegroup-base-vfat packagegroup-core-boot pciutils pciutils-ids peekpoke per=
l plx8000 plx8000nt plxsvc pub-key python python-stringold python-subproces=
s rsync run-postinsts sg3-utils swig tar tcpdump tftp-hpa tftp-hpa-server t=
raceroute usbutils util-linux wolfssl xinetd' returned 255:
Collected errors:
* opkg_prepare_url_for_install: Couldn't find anything to satisfy 'inetutil=
s-rsh'.
* rm_r: Failed to open dir /disk0/scratch/smonsees/yocto/workspace_3/meta-b=
ae/meta-limws/builds/aiox-default/tmp/work/aiox_default-poky-linux/aiox-def=
aultfs/1.0-r0/temp/ipktemp//opkg-XugyZ2: No such file or directory.

ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/workspac=
e_3/meta-bae/meta-limws/builds/aiox-default/tmp/work/aiox_default-poky-linu=
x/aiox-defaultfs/1.0-r0/temp/log.do_rootfs.3516
ERROR: Task (/disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/met=
a-limws/meta-aarch64/recipes-core/images/aiox-defaultfs.bb:do_rootfs) faile=
d with exit code '1'
NOTE: Tasks Summary: Attempted 3941 tasks of which 3509 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
  /disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/meta-limws/met=
a-aarch64/recipes-core/images/aiox-defaultfs.bb:do_rootfs
Summary: There were 3 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
07:52 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/aiox-default>


07:52 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/aiox-default>bitbake -e inetutils-rsh
WARNING: Host distribution "rhel-7.9" has not been validated with this vers=
ion of the build system; you may possibly experience unexpected failures. I=
t is recommended that you use a tested distribution.
Loading cache: 100% |######################################################=
#######################################| Time: 0:00:00
Loaded 3668 entries from dependency cache.
Parsing recipes: 100% |####################################################=
#######################################| Time: 0:00:00
Parsing of 2473 .bb files complete (2471 cached, 2 parsed). 3669 targets, 1=
45 skipped, 0 masked, 0 errors.
ERROR: Nothing PROVIDES 'inetutils-rsh'. Close matches:
  inetutils
  inetutils RPROVIDES inetutils-rsh

Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
08:32 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/aiox-default>

08:53 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/aiox-default>bitbake -e inetutils | grep ^S=3D
S=3D"/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/a=
iox-default/tmp/work/aarch64-poky-linux/inetutils/1.9.4-r0/inetutils-1.9.4"
08:54 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/aiox-default>bitbake -e inetutils | grep ^WORKDIR=3D
WORKDIR=3D"/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/bu=
ilds/aiox-default/tmp/work/aarch64-poky-linux/inetutils/1.9.4-r0"
08:54 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/aiox-default>bitbake -e inetutils | grep ^IMAGE_FSTYPES=
=3D
IMAGE_FSTYPES=3D"cpio.gz"
08:54 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/aiox-default>

Thanks,
Steve

--_000_a62c5dfa1f904a2ab31929768625fa4dbaesystemscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What would cause this &#8220;opkg&#8221; to not pull=
 in these components ?, and how do I ensure &#8220;opkg&#8221; can find the=
se components : &#8220;inetutils-rsh&#8221; and &nbsp;&#8220;inetutils-rshd=
&#8221; ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Using &#8220;zeus&#8221;&#8230;, error log attached&=
#8230; <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Build output:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">07:34 smonsees@yix490016 /disk0/scratch/smonsees/yoc=
to/workspace_3/meta-bae/meta-limws/builds/aiox-default&gt; bitbake -k aiox-=
defaultfs<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: Host distribution &quot;rhel-7.9&quot; has =
not been validated with this version of the build system; you may possibly =
experience unexpected failures. It is recommended that you use a tested dis=
tribution.<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: /disk0/scratch/smonsees/yocto/workspace_3/p=
oky/../meta-linaro/meta-linaro/recipes-kernel/linux/linux-hikey-ilp32_4.12.=
bb: Variable key FILES_${KERNEL_PACKAGE_NAME}-devicetree (/${KERNEL_IMAGEDE=
ST}/*.dtb /${KERNEL_IMAGEDEST}/*.dtbo)
 replaces original key FILES_kernel-devicetree ( /boot/*.dtb).<o:p></o:p></=
p>
<p class=3D"MsoNormal">WARNING: /disk0/scratch/smonsees/yocto/workspace_3/p=
oky/../meta-linaro/meta-linaro/recipes-kernel/linux/linux-hikey-ilp32_4.12.=
bb: Variable key RDEPENDS_${KERNEL_PACKAGE_NAME}-image ( ${@oe.utils.condit=
ional('KERNEL_IMAGETYPE', 'vmlinux',
 '${KERNEL_PACKAGE_NAME}-vmlinux', '', d)}) replaces original key RDEPENDS_=
kernel-image ( kernel-devicetree).<o:p></o:p></p>
<p class=3D"MsoNormal">`<o:p></o:p></p>
<p class=3D"MsoNormal">Parsing recipes: 100% |#############################=
##############################################################| Time: 0:02:=
21Parsing of 2473 .bb files complete (0 cached, 2473 parsed). 3669 targets,=
 145 skipped, 0 masked, 0 errors.<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Resolving any missing task queue dependencies<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Build Configuration:<o:p></o:p></p>
<p class=3D"MsoNormal">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;1.44.0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &q=
uot;rhel-7.9&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;aarch64-poky-linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;aiox-default&quot;<o:p></o:p></=
p>
<p class=3D"MsoNormal">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;limws&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;3.0.4&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; =3D &quot;aarch64&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;my_yocto_3.0.4:f2eb22a8783f1eecf99bd40426=
95bab920eed00e&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-linaro&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; =3D &quot;zeus:a414b5555301d0c80facb6dc5a5badbc69036131&quot;=
<o:p></o:p></p>
<p class=3D"MsoNormal">meta-perl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-python&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-filesystems&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p>=
</p>
<p class=3D"MsoNormal">meta-networking&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p><=
/o:p></p>
<p class=3D"MsoNormal">meta-initramfs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <=
o:p></o:p></p>
<p class=3D"MsoNormal">meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;zeus:2b5dd1eb81cd08bc065bc76125=
f2856e9383e98b&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-xilinx-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p><=
/o:p></p>
<p class=3D"MsoNormal">meta-xilinx-contrib&nbsp; =3D &quot;zeus:b82343ac5f0=
13926839627cee9dae7106c008ae9&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-bl31&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-aarch64&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; =3D &quot;v2019.02:f635a364c55f1fb12519aff54924a0a5b947091e&quot;<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Initialising tasks: 100% |##########################=
##############################################################| Time: 0:00:=
03<o:p></o:p></p>
<p class=3D"MsoNormal">Sstate summary: Wanted 1412 Found 1361 Missed 51 Cur=
rent 0 (96% match, 0% complete)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Executing Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Setscene tasks completed<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: aiox-defaultfs-1.0-r0 do_rootfs: Unable to in=
stall packages. Command '/disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/aiox-default/tmp/work/aiox_default-poky-linux/aiox-defau=
ltfs/1.0-r0/recipe-sysroot-native/usr/bin/opkg
 --volatile-cache -f /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/met=
a-limws/builds/aiox-default/tmp/work/aiox_default-poky-linux/aiox-defaultfs=
/1.0-r0/opkg.conf -t /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/met=
a-limws/builds/aiox-default/tmp/work/aiox_default-poky-linux/aiox-defaultfs=
/1.0-r0/temp/ipktemp/
 -o /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/ai=
ox-default/tmp/work/aiox_default-poky-linux/aiox-defaultfs/1.0-r0/rootfs&nb=
sp; --force_postinstall --prefer-arch-to-version&nbsp;&nbsp; install base-f=
iles bash bc binutils bridge-utils coreutils crush
 cs-hdlc dhcp-server dhcp-server-config e2fsprogs ethtool haveged hdparm i2=
c- tools
<b><span style=3D"color:red">inetutils</span></b><span style=3D"color:red">=
 <b>inetutils-rsh inetutils-rshd</b>
</span>iperf3 iproute2 iptables iputils iputils-ping kernel-modules key-hel=
per kmod libpci3 module-init-tools mtd-utils mtd-utils-ubifs nano ncurses n=
curses-dev net-tools netcat nfs-utils nfs-utils-stats ntfs-3g ntfsprogs ope=
nssh openssh-sftp-server packagegroup-base-vfat
 packagegroup-core-boot pciutils pciutils-ids peekpoke perl plx8000 plx8000=
nt plxsvc pub-key python python-stringold python-subprocess rsync run-posti=
nsts sg3-utils swig tar tcpdump tftp-hpa tftp-hpa-server traceroute usbutil=
s util-linux wolfssl xinetd' returned
 255:<o:p></o:p></p>
<p class=3D"MsoNormal">Collected errors:<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red">* opkg_prepare_url_for_=
install: Couldn't find anything to satisfy 'inetutils-rsh'</span></b>.<o:p>=
</o:p></p>
<p class=3D"MsoNormal">* rm_r: Failed to open dir /disk0/scratch/smonsees/y=
octo/workspace_3/meta-bae/meta-limws/builds/aiox-default/tmp/work/aiox_defa=
ult-poky-linux/aiox-defaultfs/1.0-r0/temp/ipktemp//opkg-XugyZ2: No such fil=
e or directory.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /disk0/scratch/=
smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/aiox-default/tmp/work=
/aiox_default-poky-linux/aiox-defaultfs/1.0-r0/temp/log.do_rootfs.3516<o:p>=
</o:p></p>
<p class=3D"MsoNormal">ERROR: Task (/disk0/scratch/smonsees/yocto/workspace=
_3/poky/../meta-bae/meta-limws/meta-aarch64/recipes-core/images/aiox-defaul=
tfs.bb:do_rootfs) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 3941 tasks of which 3=
509 didn't need to be rerun and 1 failed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: 1 task failed:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; /disk0/scratch/smonsees/yocto/workspace_3/pok=
y/../meta-bae/meta-limws/meta-aarch64/recipes-core/images/aiox-defaultfs.bb=
:do_rootfs<o:p></o:p></p>
<p class=3D"MsoNormal">Summary: There were 3 WARNING messages shown.<o:p></=
o:p></p>
<p class=3D"MsoNormal">Summary: There was 1 ERROR message shown, returning =
a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal">07:52 smonsees@yix490016 /disk0/scratch/smonsees/yoc=
to/workspace_3/meta-bae/meta-limws/builds/aiox-default&gt;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">07:52 smonsees@yix490016 /disk0/scratch/smonsees/yoc=
to/workspace_3/meta-bae/meta-limws/builds/aiox-default&gt;<b><span style=3D=
"color:red">bitbake -e inetutils-rsh</span></b><o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: Host distribution &quot;rhel-7.9&quot; has =
not been validated with this version of the build system; you may possibly =
experience unexpected failures. It is recommended that you use a tested dis=
tribution.<o:p></o:p></p>
<p class=3D"MsoNormal">Loading cache: 100% |###############################=
##############################################################| Time: 0:00:=
00<o:p></o:p></p>
<p class=3D"MsoNormal">Loaded 3668 entries from dependency cache.<o:p></o:p=
></p>
<p class=3D"MsoNormal">Parsing recipes: 100% |#############################=
##############################################################| Time: 0:00:=
00<o:p></o:p></p>
<p class=3D"MsoNormal">Parsing of 2473 .bb files complete (2471 cached, 2 p=
arsed). 3669 targets, 145 skipped, 0 masked, 0 errors.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Nothing PROVIDES 'inetutils-rsh'. Close match=
es:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; inetutils<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; inetutils RPROVIDES inetutils-rsh<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: There was 1 WARNING message shown.<o:p></o:=
p></p>
<p class=3D"MsoNormal">Summary: There was 1 ERROR message shown, returning =
a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal">08:32 smonsees@yix490016 /disk0/scratch/smonsees/yoc=
to/workspace_3/meta-bae/meta-limws/builds/aiox-default&gt;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">08:53 smonsees@yix490016 /disk0/scratch/smonsees/yoc=
to/workspace_3/meta-bae/meta-limws/builds/aiox-default&gt;<b><span style=3D=
"color:red">bitbake -e inetutils | grep ^S=3D</span></b><o:p></o:p></p>
<p class=3D"MsoNormal">S=3D&quot;/disk0/scratch/smonsees/yocto/workspace_3/=
meta-bae/meta-limws/builds/aiox-default/tmp/work/aarch64-poky-linux/inetuti=
ls/1.9.4-r0/inetutils-1.9.4&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">08:54 smonsees@yix490016 /disk0/scratch/smonsees/yoc=
to/workspace_3/meta-bae/meta-limws/builds/aiox-default&gt;<b><span style=3D=
"color:red">bitbake -e inetutils | grep ^WORKDIR=3D</span></b><o:p></o:p></=
p>
<p class=3D"MsoNormal">WORKDIR=3D&quot;/disk0/scratch/smonsees/yocto/worksp=
ace_3/meta-bae/meta-limws/builds/aiox-default/tmp/work/aarch64-poky-linux/i=
netutils/1.9.4-r0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">08:54 smonsees@yix490016 /disk0/scratch/smonsees/yoc=
to/workspace_3/meta-bae/meta-limws/builds/aiox-default&gt;<b><span style=3D=
"color:red">bitbake -e inetutils | grep ^IMAGE_FSTYPES=3D</span></b><o:p></=
o:p></p>
<p class=3D"MsoNormal">IMAGE_FSTYPES=3D&quot;cpio.gz&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">08:54 smonsees@yix490016 /disk0/scratch/smonsees/yoc=
to/workspace_3/meta-bae/meta-limws/builds/aiox-default&gt;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_a62c5dfa1f904a2ab31929768625fa4dbaesystemscom_--

--_004_a62c5dfa1f904a2ab31929768625fa4dbaesystemscom_
Content-Type: application/octet-stream; name="log.do_rootfs.3516"
Content-Description: log.do_rootfs.3516
Content-Disposition: attachment; filename="log.do_rootfs.3516"; size=13119;
	creation-date="Thu, 07 Jan 2021 14:24:19 GMT";
	modification-date="Thu, 07 Jan 2021 14:23:14 GMT"
Content-Transfer-Encoding: base64

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZXh0ZW5kX3JlY2lwZV9zeXNyb290Ck5P
VEU6IERpcmVjdCBkZXBlbmRlbmNpZXMgYXJlIFsnL2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9j
dG8vd29ya3NwYWNlXzMvcG9reS9tZXRhL3JlY2lwZXMtY29yZS9nbGliYy9jcm9zcy1sb2NhbGVk
ZWYtbmF0aXZlXzIuMzAuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvZGlzazAvc2NyYXRjaC9z
bW9uc2Vlcy95b2N0by93b3Jrc3BhY2VfMy9wb2t5Ly4uL21ldGEteGlsaW54L21ldGEteGlsaW54
LWJzcC9yZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC14bG54XzIwMTkuMi5iYjpkb19wb3B1bGF0
ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lvY3Rv
L3dvcmtzcGFjZV8zL3Bva3kvbWV0YS9yZWNpcGVzLWJzcC91LWJvb3QvdS1ib290LXRvb2xzXzIw
MTkuMDcuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy95
b2N0by93b3Jrc3BhY2VfMy9wb2t5Ly4uL21ldGEtYmFlL21ldGEtbGltd3MvbWV0YS1hYXJjaDY0
L3JlY2lwZXMta2VybmVsL2RldmljZXRyZWUvZGV2aWNldHJlZS5iYjpkb19wb3B1bGF0ZV9zeXNy
b290JywgJ3ZpcnR1YWw6bmF0aXZlOi9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lvY3RvL3dvcmtz
cGFjZV8zL3Bva3kvbWV0YS9yZWNpcGVzLWV4dGVuZGVkL3BpZ3ovcGlnel8yLjQuYmI6ZG9fcG9w
dWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy95
b2N0by93b3Jrc3BhY2VfMy9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9wc2V1ZG8vcHNldWRv
X2dpdC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lv
Y3RvL3dvcmtzcGFjZV8zL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL21rbGlicy9ta2xpYnMt
bmF0aXZlXzAuMS40NC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9k
aXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lvY3RvL3dvcmtzcGFjZV8zL3Bva3kvbWV0YS9yZWNpcGVz
LWRldnRvb2xzL29wa2ctdXRpbHMvb3BrZy11dGlsc18wLjQuMi5iYjpkb19wb3B1bGF0ZV9zeXNy
b290JywgJy9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lvY3RvL3dvcmtzcGFjZV8zL3Bva3kvbWV0
YS9yZWNpcGVzLWNvcmUvZ2xpYmMvbGRjb25maWctbmF0aXZlXzIuMTIuMS5iYjpkb19wb3B1bGF0
ZV9zeXNyb290JywgJy9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lvY3RvL3dvcmtzcGFjZV8zL3Bv
a3kvLi4vbWV0YS1iYWUvbWV0YS1saW13cy9tZXRhLWFhcmNoNjQvcmVjaXBlcy1iYWUvY3liZXIv
c2lnbmF0dXJlLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2Rpc2sw
L3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvcG9reS9tZXRhL3JlY2lwZXMtY29y
ZS91cGRhdGUtcmMuZC91cGRhdGUtcmMuZF8wLjguYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2
aXJ0dWFsOm5hdGl2ZTovZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy95b2N0by93b3Jrc3BhY2VfMy9w
b2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9tYWtlZGV2cy9tYWtlZGV2c18xLjAuMS5iYjpkb19w
b3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9kaXNrMC9zY3JhdGNoL3Ntb25zZWVz
L3lvY3RvL3dvcmtzcGFjZV8zL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL29wa2cvb3BrZ18w
LjQuMS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lv
Y3RvL3dvcmtzcGFjZV8zL3Bva3kvbWV0YS9yZWNpcGVzLWtlcm5lbC9rbW9kL2RlcG1vZHdyYXBw
ZXItY3Jvc3NfMS4wLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2Rpc2swL3NjcmF0Y2gvc21v
bnNlZXMveW9jdG8vd29ya3NwYWNlXzMvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvcWVtdS9x
ZW11d3JhcHBlci1jcm9zc18xLjAuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvZGlzazAvc2Ny
YXRjaC9zbW9uc2Vlcy95b2N0by93b3Jrc3BhY2VfMy9wb2t5Ly4uL21ldGEteGlsaW54L21ldGEt
eGlsaW54LWJzcC9yZWNpcGVzLWJzcC91LWJvb3QvdS1ib290LXhsbnhfMjAxOS4yLmJiOmRvX3Bv
cHVsYXRlX3N5c3Jvb3QnXQpOT1RFOiBJbnN0YWxsZWQgaW50byBzeXNyb290OiBbJ3BpZ3otbmF0
aXZlJywgJ21rbGlicy1uYXRpdmUnLCAnb3BrZy11dGlscy1uYXRpdmUnLCAnbGRjb25maWctbmF0
aXZlJywgJ3VwZGF0ZS1yYy5kLW5hdGl2ZScsICdtYWtlZGV2cy1uYXRpdmUnLCAnb3BrZy1uYXRp
dmUnLCAnc2hhZG93LW5hdGl2ZScsICdkZWJpYW51dGlscy1uYXRpdmUnLCAnbGlic29sdi1uYXRp
dmUnLCAnbGliYXJjaGl2ZS1uYXRpdmUnLCAncnBtLW5hdGl2ZScsICdjbWFrZS1uYXRpdmUnLCAn
ZXhwYXQtbmF0aXZlJywgJ2UyZnNwcm9ncy1uYXRpdmUnLCAnbHpvLW5hdGl2ZScsICdwb3B0LW5h
dGl2ZScsICdmaWxlLW5hdGl2ZScsICdlbGZ1dGlscy1uYXRpdmUnLCAnZGJ1cy1uYXRpdmUnLCAn
ZGItbmF0aXZlJywgJ25zcy1uYXRpdmUnLCAncGVybC1uYXRpdmUnLCAnY3VybC1uYXRpdmUnLCAn
bnNwci1uYXRpdmUnXQpOT1RFOiBTa2lwcGluZyBhcyBhbHJlYWR5IGV4aXN0cyBpbiBzeXNyb290
OiBbJ2Nyb3NzLWxvY2FsZWRlZi1uYXRpdmUnLCAnbGludXgteGxueCcsICd1LWJvb3QtdG9vbHMt
bmF0aXZlJywgJ2RldmljZXRyZWUnLCAncHNldWRvLW5hdGl2ZScsICdzaWduYXR1cmUnLCAnZGVw
bW9kd3JhcHBlci1jcm9zcycsICdxZW11d3JhcHBlci1jcm9zcycsICd1LWJvb3QteGxueCcsICd4
ei1uYXRpdmUnLCAnYXV0b21ha2UtbmF0aXZlJywgJ3F1aWx0LW5hdGl2ZScsICdsaWJ0b29sLW5h
dGl2ZScsICdhdXRvY29uZi1uYXRpdmUnLCAnZ251LWNvbmZpZy1uYXRpdmUnLCAnbGliZ2NjJywg
J29wZW5zc2wtbmF0aXZlJywgJ2ZsZXgtbmF0aXZlJywgJ2djYy1ydW50aW1lJywgJ2dsaWJjJywg
J3psaWItbmF0aXZlJywgJ2ttb2QtbmF0aXZlJywgJ2dldHRleHQtbWluaW1hbC1uYXRpdmUnLCAn
cWVtdS1uYXRpdmUnLCAncGtnY29uZmlnLW5hdGl2ZScsICdwYXRjaC1uYXRpdmUnLCAnYXJtLXRy
dXN0ZWQtZmlybXdhcmUnLCAncG11ZncnLCAnZnNibCcsICd0ZXhpbmZvLWR1bW15LW5hdGl2ZScs
ICdtNC1uYXRpdmUnLCAnbGludXgtbGliYy1oZWFkZXJzJywgJ2d0ay1kb2MtbmF0aXZlJywgJ3B5
dGhvbjMtbmF0aXZlJywgJ2dsaWItMi4wLW5hdGl2ZScsICduaW5qYS1uYXRpdmUnLCAnYnppcDIt
bmF0aXZlJywgJ2F0dHItbmF0aXZlJywgJ2dkYm0tbmF0aXZlJywgJ3V0aWwtbGludXgtbmF0aXZl
JywgJ2xpYnRpcnBjLW5hdGl2ZScsICdyZWFkbGluZS1uYXRpdmUnLCAnc3FsaXRlMy1uYXRpdmUn
LCAnbGlibnNsMi1uYXRpdmUnLCAnbGliZmZpLW5hdGl2ZScsICdsaWJwY3JlLW5hdGl2ZScsICdn
ZXR0ZXh0LW5hdGl2ZScsICdtZXNvbi1uYXRpdmUnLCAncmUyYy1uYXRpdmUnLCAnbmN1cnNlcy1u
YXRpdmUnLCAnbGliY2FwLW5nLW5hdGl2ZScsICdweXRob24zLXNldHVwdG9vbHMtbmF0aXZlJywg
J3VuemlwLW5hdGl2ZSddCkRFQlVHOiBzZWQgLWUgJ3M6XlteL10qLzovZGlzazAvc2NyYXRjaC9z
bW9uc2Vlcy95b2N0by93b3Jrc3BhY2VfMy9tZXRhLWJhZS9tZXRhLWxpbXdzL2J1aWxkcy9haW94
LWRlZmF1bHQvdG1wL3dvcmsvYWlveF9kZWZhdWx0LXBva3ktbGludXgvYWlveC1kZWZhdWx0ZnMv
MS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS86ZycgL2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMv
eW9jdG8vd29ya3NwYWNlXzMvbWV0YS1iYWUvbWV0YS1saW13cy9idWlsZHMvYWlveC1kZWZhdWx0
L3RtcC9zeXNyb290cy1jb21wb25lbnRzL3g4Nl82NC9ycG0tbmF0aXZlL2ZpeG1lcGF0aCAvZGlz
azAvc2NyYXRjaC9zbW9uc2Vlcy95b2N0by93b3Jrc3BhY2VfMy9tZXRhLWJhZS9tZXRhLWxpbXdz
L2J1aWxkcy9haW94LWRlZmF1bHQvdG1wL3N5c3Jvb3RzLWNvbXBvbmVudHMveDg2XzY0L2UyZnNw
cm9ncy1uYXRpdmUvZml4bWVwYXRoIC9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lvY3RvL3dvcmtz
cGFjZV8zL21ldGEtYmFlL21ldGEtbGltd3MvYnVpbGRzL2Fpb3gtZGVmYXVsdC90bXAvc3lzcm9v
dHMtY29tcG9uZW50cy94ODZfNjQvZWxmdXRpbHMtbmF0aXZlL2ZpeG1lcGF0aCAvZGlzazAvc2Ny
YXRjaC9zbW9uc2Vlcy95b2N0by93b3Jrc3BhY2VfMy9tZXRhLWJhZS9tZXRhLWxpbXdzL2J1aWxk
cy9haW94LWRlZmF1bHQvdG1wL3N5c3Jvb3RzLWNvbXBvbmVudHMveDg2XzY0L2RidXMtbmF0aXZl
L2ZpeG1lcGF0aCAvZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy95b2N0by93b3Jrc3BhY2VfMy9tZXRh
LWJhZS9tZXRhLWxpbXdzL2J1aWxkcy9haW94LWRlZmF1bHQvdG1wL3N5c3Jvb3RzLWNvbXBvbmVu
dHMveDg2XzY0L3BlcmwtbmF0aXZlL2ZpeG1lcGF0aCAvZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy95
b2N0by93b3Jrc3BhY2VfMy9tZXRhLWJhZS9tZXRhLWxpbXdzL2J1aWxkcy9haW94LWRlZmF1bHQv
dG1wL3N5c3Jvb3RzLWNvbXBvbmVudHMveDg2XzY0L2N1cmwtbmF0aXZlL2ZpeG1lcGF0aCAvZGlz
azAvc2NyYXRjaC9zbW9uc2Vlcy95b2N0by93b3Jrc3BhY2VfMy9tZXRhLWJhZS9tZXRhLWxpbXdz
L2J1aWxkcy9haW94LWRlZmF1bHQvdG1wL3N5c3Jvb3RzLWNvbXBvbmVudHMveDg2XzY0L25zcHIt
bmF0aXZlL2ZpeG1lcGF0aCB8IHhhcmdzIHNlZCAtaSAtZSAnczpGSVhNRVNUQUdJTkdESVJUQVJH
RVQ6L2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvbWV0YS1iYWUvbWV0
YS1saW13cy9idWlsZHMvYWlveC1kZWZhdWx0L3RtcC93b3JrL2Fpb3hfZGVmYXVsdC1wb2t5LWxp
bnV4L2Fpb3gtZGVmYXVsdGZzLzEuMC1yMC9yZWNpcGUtc3lzcm9vdDpnOyBzOkZJWE1FU1RBR0lO
R0RJUkhPU1Q6L2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvbWV0YS1i
YWUvbWV0YS1saW13cy9idWlsZHMvYWlveC1kZWZhdWx0L3RtcC93b3JrL2Fpb3hfZGVmYXVsdC1w
b2t5LWxpbnV4L2Fpb3gtZGVmYXVsdGZzLzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmU6Zycg
LWUgJ3M6RklYTUVfUFNFVURPX1NZU1JPT1Q6L2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9jdG8v
d29ya3NwYWNlXzMvbWV0YS1iYWUvbWV0YS1saW13cy9idWlsZHMvYWlveC1kZWZhdWx0L3RtcC9z
eXNyb290cy1jb21wb25lbnRzL3g4Nl82NC9wc2V1ZG8tbmF0aXZlOmcnIC1lICdzOkZJWE1FX0hP
U1RUT09MU19ESVI6L2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvbWV0
YS1iYWUvbWV0YS1saW13cy9idWlsZHMvYWlveC1kZWZhdWx0L3RtcC9ob3N0dG9vbHM6ZycgLWUg
J3M6RklYTUVfUEtHREFUQV9ESVI6L2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3Nw
YWNlXzMvbWV0YS1iYWUvbWV0YS1saW13cy9idWlsZHMvYWlveC1kZWZhdWx0L3RtcC9wa2dkYXRh
L2Fpb3gtZGVmYXVsdDpnJyAtZSAnczpGSVhNRV9QU0VVRE9fTE9DQUxTVEFURURJUjovZGlzazAv
c2NyYXRjaC9zbW9uc2Vlcy95b2N0by93b3Jrc3BhY2VfMy9tZXRhLWJhZS9tZXRhLWxpbXdzL2J1
aWxkcy9haW94LWRlZmF1bHQvdG1wL3dvcmsvYWlveF9kZWZhdWx0LXBva3ktbGludXgvYWlveC1k
ZWZhdWx0ZnMvMS4wLXIwL3BzZXVkby86ZycgLWUgJ3M6RklYTUVfTE9HRklGTzovZGlzazAvc2Ny
YXRjaC9zbW9uc2Vlcy95b2N0by93b3Jrc3BhY2VfMy9tZXRhLWJhZS9tZXRhLWxpbXdzL2J1aWxk
cy9haW94LWRlZmF1bHQvdG1wL3dvcmsvYWlveF9kZWZhdWx0LXBva3ktbGludXgvYWlveC1kZWZh
dWx0ZnMvMS4wLXIwL3RlbXAvZmlmby4zNTE2OmcnCkRFQlVHOiBQeXRob24gZnVuY3Rpb24gZXh0
ZW5kX3JlY2lwZV9zeXNyb290IGZpbmlzaGVkCkRFQlVHOiBFeGVjdXRpbmcgcHl0aG9uIGZ1bmN0
aW9uIGRvX3Jvb3RmcwpOT1RFOiBJbml0aWFsaXppbmcgaW50ZXJjZXB0IGRpciBmb3IgL2Rpc2sw
L3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvbWV0YS1iYWUvbWV0YS1saW13cy9i
dWlsZHMvYWlveC1kZWZhdWx0L3RtcC93b3JrL2Fpb3hfZGVmYXVsdC1wb2t5LWxpbnV4L2Fpb3gt
ZGVmYXVsdGZzLzEuMC1yMC9yb290ZnMKREVCVUc6IENvbGxlY3RlZCBpbnRlcmNlcHRzOgogIC9k
aXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lvY3RvL3dvcmtzcGFjZV8zL3Bva3kvc2NyaXB0cy9wb3N0
aW5zdC1pbnRlcmNlcHRzL2RlbGF5X3RvX2ZpcnN0X2Jvb3QKICAvZGlzazAvc2NyYXRjaC9zbW9u
c2Vlcy95b2N0by93b3Jrc3BhY2VfMy9wb2t5L3NjcmlwdHMvcG9zdGluc3QtaW50ZXJjZXB0cy9w
b3N0aW5zdF9pbnRlcmNlcHQKICAvZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy95b2N0by93b3Jrc3Bh
Y2VfMy9wb2t5L3NjcmlwdHMvcG9zdGluc3QtaW50ZXJjZXB0cy91cGRhdGVfZm9udF9jYWNoZQog
IC9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lvY3RvL3dvcmtzcGFjZV8zL3Bva3kvc2NyaXB0cy9w
b3N0aW5zdC1pbnRlcmNlcHRzL3VwZGF0ZV9naW9fbW9kdWxlX2NhY2hlCiAgL2Rpc2swL3NjcmF0
Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvcG9reS9zY3JpcHRzL3Bvc3RpbnN0LWludGVy
Y2VwdHMvdXBkYXRlX2d0a19pY29uX2NhY2hlCiAgL2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9j
dG8vd29ya3NwYWNlXzMvcG9reS9zY3JpcHRzL3Bvc3RpbnN0LWludGVyY2VwdHMvdXBkYXRlX2d0
a19pbW1vZHVsZXNfY2FjaGUKICAvZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy95b2N0by93b3Jrc3Bh
Y2VfMy9wb2t5L3NjcmlwdHMvcG9zdGluc3QtaW50ZXJjZXB0cy91cGRhdGVfcGl4YnVmX2NhY2hl
CiAgL2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvcG9reS9zY3JpcHRz
L3Bvc3RpbnN0LWludGVyY2VwdHMvdXBkYXRlX3VkZXZfaHdkYgoKTk9URTogIyMjIyMjIEdlbmVy
YXRlIHJvb3RmcyAjIyMjIyMjCk5PVEU6IEV4ZWN1dGluZyAnL2Rpc2swL3NjcmF0Y2gvc21vbnNl
ZXMveW9jdG8vd29ya3NwYWNlXzMvbWV0YS1iYWUvbWV0YS1saW13cy9idWlsZHMvYWlveC1kZWZh
dWx0L3RtcC93b3JrL2Fpb3hfZGVmYXVsdC1wb2t5LWxpbnV4L2Fpb3gtZGVmYXVsdGZzLzEuMC1y
MC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jpbi9vcGtnLW1ha2UtaW5kZXggLXIgL2Rpc2sw
L3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvbWV0YS1iYWUvbWV0YS1saW13cy9i
dWlsZHMvYWlveC1kZWZhdWx0L3RtcC93b3JrL2Fpb3hfZGVmYXVsdC1wb2t5LWxpbnV4L2Fpb3gt
ZGVmYXVsdGZzLzEuMC1yMC9vZS1yb290ZnMtcmVwby9haW94X2RlZmF1bHQvUGFja2FnZXMgLXAg
L2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvbWV0YS1iYWUvbWV0YS1s
aW13cy9idWlsZHMvYWlveC1kZWZhdWx0L3RtcC93b3JrL2Fpb3hfZGVmYXVsdC1wb2t5LWxpbnV4
L2Fpb3gtZGVmYXVsdGZzLzEuMC1yMC9vZS1yb290ZnMtcmVwby9haW94X2RlZmF1bHQvUGFja2Fn
ZXMgLW0gL2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvbWV0YS1iYWUv
bWV0YS1saW13cy9idWlsZHMvYWlveC1kZWZhdWx0L3RtcC93b3JrL2Fpb3hfZGVmYXVsdC1wb2t5
LWxpbnV4L2Fpb3gtZGVmYXVsdGZzLzEuMC1yMC9vZS1yb290ZnMtcmVwby9haW94X2RlZmF1bHQn
IC4uLgpOT1RFOiBFeGVjdXRpbmcgJy9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lvY3RvL3dvcmtz
cGFjZV8zL21ldGEtYmFlL21ldGEtbGltd3MvYnVpbGRzL2Fpb3gtZGVmYXVsdC90bXAvd29yay9h
aW94X2RlZmF1bHQtcG9reS1saW51eC9haW94LWRlZmF1bHRmcy8xLjAtcjAvcmVjaXBlLXN5c3Jv
b3QtbmF0aXZlL3Vzci9iaW4vb3BrZy1tYWtlLWluZGV4IC1yIC9kaXNrMC9zY3JhdGNoL3Ntb25z
ZWVzL3lvY3RvL3dvcmtzcGFjZV8zL21ldGEtYmFlL21ldGEtbGltd3MvYnVpbGRzL2Fpb3gtZGVm
YXVsdC90bXAvd29yay9haW94X2RlZmF1bHQtcG9reS1saW51eC9haW94LWRlZmF1bHRmcy8xLjAt
cjAvb2Utcm9vdGZzLXJlcG8vYWxsL1BhY2thZ2VzIC1wIC9kaXNrMC9zY3JhdGNoL3Ntb25zZWVz
L3lvY3RvL3dvcmtzcGFjZV8zL21ldGEtYmFlL21ldGEtbGltd3MvYnVpbGRzL2Fpb3gtZGVmYXVs
dC90bXAvd29yay9haW94X2RlZmF1bHQtcG9reS1saW51eC9haW94LWRlZmF1bHRmcy8xLjAtcjAv
b2Utcm9vdGZzLXJlcG8vYWxsL1BhY2thZ2VzIC1tIC9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lv
Y3RvL3dvcmtzcGFjZV8zL21ldGEtYmFlL21ldGEtbGltd3MvYnVpbGRzL2Fpb3gtZGVmYXVsdC90
bXAvd29yay9haW94X2RlZmF1bHQtcG9reS1saW51eC9haW94LWRlZmF1bHRmcy8xLjAtcjAvb2Ut
cm9vdGZzLXJlcG8vYWxsJyAuLi4KTk9URTogRXhlY3V0aW5nICcvZGlzazAvc2NyYXRjaC9zbW9u
c2Vlcy95b2N0by93b3Jrc3BhY2VfMy9tZXRhLWJhZS9tZXRhLWxpbXdzL2J1aWxkcy9haW94LWRl
ZmF1bHQvdG1wL3dvcmsvYWlveF9kZWZhdWx0LXBva3ktbGludXgvYWlveC1kZWZhdWx0ZnMvMS4w
LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL29wa2ctbWFrZS1pbmRleCAtciAvZGlz
azAvc2NyYXRjaC9zbW9uc2Vlcy95b2N0by93b3Jrc3BhY2VfMy9tZXRhLWJhZS9tZXRhLWxpbXdz
L2J1aWxkcy9haW94LWRlZmF1bHQvdG1wL3dvcmsvYWlveF9kZWZhdWx0LXBva3ktbGludXgvYWlv
eC1kZWZhdWx0ZnMvMS4wLXIwL29lLXJvb3Rmcy1yZXBvL2FhcmNoNjQvUGFja2FnZXMgLXAgL2Rp
c2swL3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvbWV0YS1iYWUvbWV0YS1saW13
cy9idWlsZHMvYWlveC1kZWZhdWx0L3RtcC93b3JrL2Fpb3hfZGVmYXVsdC1wb2t5LWxpbnV4L2Fp
b3gtZGVmYXVsdGZzLzEuMC1yMC9vZS1yb290ZnMtcmVwby9hYXJjaDY0L1BhY2thZ2VzIC1tIC9k
aXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lvY3RvL3dvcmtzcGFjZV8zL21ldGEtYmFlL21ldGEtbGlt
d3MvYnVpbGRzL2Fpb3gtZGVmYXVsdC90bXAvd29yay9haW94X2RlZmF1bHQtcG9reS1saW51eC9h
aW94LWRlZmF1bHRmcy8xLjAtcjAvb2Utcm9vdGZzLXJlcG8vYWFyY2g2NCcgLi4uCk5PVEU6IElu
c3RhbGxpbmcgdGhlIGZvbGxvd2luZyBwYWNrYWdlczogYmFzZS1maWxlcyBiYXNoIGJjIGJpbnV0
aWxzIGJyaWRnZS11dGlscyBjb3JldXRpbHMgY3J1c2ggY3MtaGRsYyBkaGNwLXNlcnZlciBkaGNw
LXNlcnZlci1jb25maWcgZTJmc3Byb2dzIGV0aHRvb2wgaGF2ZWdlZCBoZHBhcm0gaTJjLXRvb2xz
IGluZXR1dGlscyBpbmV0dXRpbHMtcnNoIGluZXR1dGlscy1yc2hkIGlwZXJmMyBpcHJvdXRlMiBp
cHRhYmxlcyBpcHV0aWxzIGlwdXRpbHMtcGluZyBrZXJuZWwtbW9kdWxlcyBrZXktaGVscGVyIGtt
b2QgbGlicGNpMyBtb2R1bGUtaW5pdC10b29scyBtdGQtdXRpbHMgbXRkLXV0aWxzLXViaWZzIG5h
bm8gbmN1cnNlcyBuY3Vyc2VzLWRldiBuZXQtdG9vbHMgbmV0Y2F0IG5mcy11dGlscyBuZnMtdXRp
bHMtc3RhdHMgbnRmcy0zZyBudGZzcHJvZ3Mgb3BlbnNzaCBvcGVuc3NoLXNmdHAtc2VydmVyIHBh
Y2thZ2Vncm91cC1iYXNlLXZmYXQgcGFja2FnZWdyb3VwLWNvcmUtYm9vdCBwY2l1dGlscyBwY2l1
dGlscy1pZHMgcGVla3Bva2UgcGVybCBwbHg4MDAwIHBseDgwMDBudCBwbHhzdmMgcHViLWtleSBw
eXRob24gcHl0aG9uLXN0cmluZ29sZCBweXRob24tc3VicHJvY2VzcyByc3luYyBydW4tcG9zdGlu
c3RzIHNnMy11dGlscyBzd2lnIHRhciB0Y3BkdW1wIHRmdHAtaHBhIHRmdHAtaHBhLXNlcnZlciB0
cmFjZXJvdXRlIHVzYnV0aWxzIHV0aWwtbGludXggd29sZnNzbCB4aW5ldGQKTk9URTogL2Rpc2sw
L3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvbWV0YS1iYWUvbWV0YS1saW13cy9i
dWlsZHMvYWlveC1kZWZhdWx0L3RtcC93b3JrL2Fpb3hfZGVmYXVsdC1wb2t5LWxpbnV4L2Fpb3gt
ZGVmYXVsdGZzLzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jpbi9vcGtnIC0tdm9s
YXRpbGUtY2FjaGUgLWYgL2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMv
bWV0YS1iYWUvbWV0YS1saW13cy9idWlsZHMvYWlveC1kZWZhdWx0L3RtcC93b3JrL2Fpb3hfZGVm
YXVsdC1wb2t5LWxpbnV4L2Fpb3gtZGVmYXVsdGZzLzEuMC1yMC9vcGtnLmNvbmYgLXQgL2Rpc2sw
L3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvbWV0YS1iYWUvbWV0YS1saW13cy9i
dWlsZHMvYWlveC1kZWZhdWx0L3RtcC93b3JrL2Fpb3hfZGVmYXVsdC1wb2t5LWxpbnV4L2Fpb3gt
ZGVmYXVsdGZzLzEuMC1yMC90ZW1wL2lwa3RlbXAvIC1vIC9kaXNrMC9zY3JhdGNoL3Ntb25zZWVz
L3lvY3RvL3dvcmtzcGFjZV8zL21ldGEtYmFlL21ldGEtbGltd3MvYnVpbGRzL2Fpb3gtZGVmYXVs
dC90bXAvd29yay9haW94X2RlZmF1bHQtcG9reS1saW51eC9haW94LWRlZmF1bHRmcy8xLjAtcjAv
cm9vdGZzICAtLWZvcmNlX3Bvc3RpbnN0YWxsIC0tcHJlZmVyLWFyY2gtdG8tdmVyc2lvbiAgIGlu
c3RhbGwgYmFzZS1maWxlcyBiYXNoIGJjIGJpbnV0aWxzIGJyaWRnZS11dGlscyBjb3JldXRpbHMg
Y3J1c2ggY3MtaGRsYyBkaGNwLXNlcnZlciBkaGNwLXNlcnZlci1jb25maWcgZTJmc3Byb2dzIGV0
aHRvb2wgaGF2ZWdlZCBoZHBhcm0gaTJjLXRvb2xzIGluZXR1dGlscyBpbmV0dXRpbHMtcnNoIGlu
ZXR1dGlscy1yc2hkIGlwZXJmMyBpcHJvdXRlMiBpcHRhYmxlcyBpcHV0aWxzIGlwdXRpbHMtcGlu
ZyBrZXJuZWwtbW9kdWxlcyBrZXktaGVscGVyIGttb2QgbGlicGNpMyBtb2R1bGUtaW5pdC10b29s
cyBtdGQtdXRpbHMgbXRkLXV0aWxzLXViaWZzIG5hbm8gbmN1cnNlcyBuY3Vyc2VzLWRldiBuZXQt
dG9vbHMgbmV0Y2F0IG5mcy11dGlscyBuZnMtdXRpbHMtc3RhdHMgbnRmcy0zZyBudGZzcHJvZ3Mg
b3BlbnNzaCBvcGVuc3NoLXNmdHAtc2VydmVyIHBhY2thZ2Vncm91cC1iYXNlLXZmYXQgcGFja2Fn
ZWdyb3VwLWNvcmUtYm9vdCBwY2l1dGlscyBwY2l1dGlscy1pZHMgcGVla3Bva2UgcGVybCBwbHg4
MDAwIHBseDgwMDBudCBwbHhzdmMgcHViLWtleSBweXRob24gcHl0aG9uLXN0cmluZ29sZCBweXRo
b24tc3VicHJvY2VzcyByc3luYyBydW4tcG9zdGluc3RzIHNnMy11dGlscyBzd2lnIHRhciB0Y3Bk
dW1wIHRmdHAtaHBhIHRmdHAtaHBhLXNlcnZlciB0cmFjZXJvdXRlIHVzYnV0aWxzIHV0aWwtbGlu
dXggd29sZnNzbCB4aW5ldGQKRVJST1I6IFVuYWJsZSB0byBpbnN0YWxsIHBhY2thZ2VzLiBDb21t
YW5kICcvZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy95b2N0by93b3Jrc3BhY2VfMy9tZXRhLWJhZS9t
ZXRhLWxpbXdzL2J1aWxkcy9haW94LWRlZmF1bHQvdG1wL3dvcmsvYWlveF9kZWZhdWx0LXBva3kt
bGludXgvYWlveC1kZWZhdWx0ZnMvMS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmlu
L29wa2cgLS12b2xhdGlsZS1jYWNoZSAtZiAvZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy95b2N0by93
b3Jrc3BhY2VfMy9tZXRhLWJhZS9tZXRhLWxpbXdzL2J1aWxkcy9haW94LWRlZmF1bHQvdG1wL3dv
cmsvYWlveF9kZWZhdWx0LXBva3ktbGludXgvYWlveC1kZWZhdWx0ZnMvMS4wLXIwL29wa2cuY29u
ZiAtdCAvZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy95b2N0by93b3Jrc3BhY2VfMy9tZXRhLWJhZS9t
ZXRhLWxpbXdzL2J1aWxkcy9haW94LWRlZmF1bHQvdG1wL3dvcmsvYWlveF9kZWZhdWx0LXBva3kt
bGludXgvYWlveC1kZWZhdWx0ZnMvMS4wLXIwL3RlbXAvaXBrdGVtcC8gLW8gL2Rpc2swL3NjcmF0
Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvbWV0YS1iYWUvbWV0YS1saW13cy9idWlsZHMv
YWlveC1kZWZhdWx0L3RtcC93b3JrL2Fpb3hfZGVmYXVsdC1wb2t5LWxpbnV4L2Fpb3gtZGVmYXVs
dGZzLzEuMC1yMC9yb290ZnMgIC0tZm9yY2VfcG9zdGluc3RhbGwgLS1wcmVmZXItYXJjaC10by12
ZXJzaW9uICAgaW5zdGFsbCBiYXNlLWZpbGVzIGJhc2ggYmMgYmludXRpbHMgYnJpZGdlLXV0aWxz
IGNvcmV1dGlscyBjcnVzaCBjcy1oZGxjIGRoY3Atc2VydmVyIGRoY3Atc2VydmVyLWNvbmZpZyBl
MmZzcHJvZ3MgZXRodG9vbCBoYXZlZ2VkIGhkcGFybSBpMmMtdG9vbHMgaW5ldHV0aWxzIGluZXR1
dGlscy1yc2ggaW5ldHV0aWxzLXJzaGQgaXBlcmYzIGlwcm91dGUyIGlwdGFibGVzIGlwdXRpbHMg
aXB1dGlscy1waW5nIGtlcm5lbC1tb2R1bGVzIGtleS1oZWxwZXIga21vZCBsaWJwY2kzIG1vZHVs
ZS1pbml0LXRvb2xzIG10ZC11dGlscyBtdGQtdXRpbHMtdWJpZnMgbmFubyBuY3Vyc2VzIG5jdXJz
ZXMtZGV2IG5ldC10b29scyBuZXRjYXQgbmZzLXV0aWxzIG5mcy11dGlscy1zdGF0cyBudGZzLTNn
IG50ZnNwcm9ncyBvcGVuc3NoIG9wZW5zc2gtc2Z0cC1zZXJ2ZXIgcGFja2FnZWdyb3VwLWJhc2Ut
dmZhdCBwYWNrYWdlZ3JvdXAtY29yZS1ib290IHBjaXV0aWxzIHBjaXV0aWxzLWlkcyBwZWVrcG9r
ZSBwZXJsIHBseDgwMDAgcGx4ODAwMG50IHBseHN2YyBwdWIta2V5IHB5dGhvbiBweXRob24tc3Ry
aW5nb2xkIHB5dGhvbi1zdWJwcm9jZXNzIHJzeW5jIHJ1bi1wb3N0aW5zdHMgc2czLXV0aWxzIHN3
aWcgdGFyIHRjcGR1bXAgdGZ0cC1ocGEgdGZ0cC1ocGEtc2VydmVyIHRyYWNlcm91dGUgdXNidXRp
bHMgdXRpbC1saW51eCB3b2xmc3NsIHhpbmV0ZCcgcmV0dXJuZWQgMjU1OgpDb2xsZWN0ZWQgZXJy
b3JzOgogKiBvcGtnX3ByZXBhcmVfdXJsX2Zvcl9pbnN0YWxsOiBDb3VsZG4ndCBmaW5kIGFueXRo
aW5nIHRvIHNhdGlzZnkgJ2luZXR1dGlscy1yc2gnLgogKiBybV9yOiBGYWlsZWQgdG8gb3BlbiBk
aXIgL2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvbWV0YS1iYWUvbWV0
YS1saW13cy9idWlsZHMvYWlveC1kZWZhdWx0L3RtcC93b3JrL2Fpb3hfZGVmYXVsdC1wb2t5LWxp
bnV4L2Fpb3gtZGVmYXVsdGZzLzEuMC1yMC90ZW1wL2lwa3RlbXAvL29wa2ctWHVneVoyOiBObyBz
dWNoIGZpbGUgb3IgZGlyZWN0b3J5LgoKREVCVUc6IFB5dGhvbiBmdW5jdGlvbiBkb19yb290ZnMg
ZmluaXNoZWQK

--_004_a62c5dfa1f904a2ab31929768625fa4dbaesystemscom_--
