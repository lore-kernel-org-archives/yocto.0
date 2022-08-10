Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F30C3C00140
	for <webhook@archiver.kernel.org>; Wed, 10 Aug 2022 14:27:35 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.6454.1660141646354534012
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Aug 2022 07:27:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=Bwls6kAA;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1660141646; x=1817821646;
  h=from:to:subject:date:mime-version;
  bh=DfuDkJosTQKJrHY+ae1ilv7cFKBE3GvGo7MY3BOHZjE=;
  b=Bwls6kAAW9b6vS1BuqJw/ZemSE3M743Dieyul36Lkp2bXY+Eq1sOnpnW
   5dyKAExxbcUvH9SmZUmFd1gdrK0C2HuVLf8uewihgVLkBr+vWCymnq36x
   1peRtsYaBOHinXfavHeHKam+3mOxa3dKtMnDrcwza8fbBHlzIh+haUVN3
   M=;
IronPort-SDR: 
 O/Ht4HcXRHJBqq6Iv0iTkuqwtyxV497pDbrLRIwlTxEDhIZZzT/okPShdk1kOXB2qHDIIgTI75
 +BtnZ4lj78+g==
X-IPAS-Result: =?us-ascii?q?A2AmAACYv/Ni/0LBJQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YEyBwEBCwGBIIICAoFZF4xWhgqCYoEWm2eBfAsBAQEBAQEBAQEIATMPBAEBi?=
 =?us-ascii?q?gImNAkOAQIEAQEBAQMCAwEBAQEFAQEGAQEBAQEBBgQBgRuFLzkBDII1IoQfX?=
 =?us-ascii?q?gEVIwgEPCYBBBuCdoIWgQypMoEzGgJlgmCBBUFJhRKBPQGBZYRdYk2DCw+EJ?=
 =?us-ascii?q?IINQ4EVgnOCeYMPhWwEhm6KTIcdBzcDRR5CAwsORAgJFxIQEAIEERoLBgMWP?=
 =?us-ascii?q?gkCBA4DQAgNAxEEAw8YCRIIEAQGAzEMJQsDBQ8MAQYDBgUDAQMbAxQDBSQHA?=
 =?us-ascii?q?xkPIw0NBB8dAwMFJQMCAhsHAgIDAgYVBgICTjkIBAgEKyMPBQIHLwUELwIeB?=
 =?us-ascii?q?AUGEQgCFgIGBAQEBBYCEAgCCCcXBxMzGQEFWRAJIRwoEAUGEwMgbwVFDygzN?=
 =?us-ascii?q?TwrHxsKgRIqKxUDBAQDAgYTAwMiAhAuMQMVBikTEi0HK3UJAgMibgMDBCouA?=
 =?us-ascii?q?wkhAgEcBwkiKD0FBV+YFYEbgQknJBoTASsFG1MoFIEOOpIDDAcCDAONW4QJn?=
 =?us-ascii?q?RcHA4NSigWBIpRmLhaDdoFQinQDhkUDimqGd5cAII0tlE4ThQECBAIEBQIWg?=
 =?us-ascii?q?WGCFXCDNwlIFwKWKYEMhUp1OwIGCwEBAwmMZYEQgRIBAQ?=
IronPort-PHdr: A9a23:rxZlyRyI5MrL/7XXCzIjzVBlVkEcU1XcAAcZ59Idhq5Udez7ptK+Z
 heZv6k3xwCQFazgqNt8w9LMtK7hXWFSqb2gi1slNKJ2ahkelM8NlBYhCsPWQWfyLfrtcjBoV
 J8aDAwt8H60K1VaF9jjbFPOvHKy8SQSGhLiPgZpO+j5AIHfg9q52uyo5ZHebBtEiDW/bL9vM
 R67sRjfus4KjIV4N60/0AHJonxGe+RXwWNnO1eelAvi68mz4ZBu7T1et+ou+MBcX6r6eb84T
 aFDAzQ9L281/szrugLdQgaJ+3ART38ZkhtMAwjC8RH6QpL8uTb0u+ZhxCWXO9D9QLYpUjqg8
 qhrUgflhicZOTAk7GHZhM9+jKNHrx2uvBFw2ZLYYIOPOfZiYq/RY9UXTndBUMZLUCxBB5uxY
 4UIAeoGO+ZYtJfyqEUVrRemGAKiGf/vxSFWhnDo260xzvosGhzC0AMuAtwCtXrYp8jyOacJT
 eC60rfIwivFb/9M3Df9747Icgs/rv6SRrJ9atHexlMxGAPejlSQspDlMC2Q1uQWqWSU8+1gV
 ee2hmMhtgp+rSShyN02hYnVmoIa1ErE9SNhzYsoIdC1R052bMCrHpdNtyyXNoR4T8E+Tm12u
 is3xaMLt5GlcSYKypkr2gDSZ+KEfoWI/B7uW+ScLSt3iX54Zb6ygQu5/0anyu35TMa00VBKo
 zJdktnLtXAM1wbf6s2aRfdl/keuwyyP2B3d6+5eO0A7i7DXK5s8zbIoj5ocr0HDHjLslEXzk
 aCabkIk9fax5+v7ZbXmvIGTO5Vxig7jKqgvmsu/DvgkMggJR2ib4+O81L/98kLlXLVGlPo2k
 rPWsJzCIsQbvrC2AwlL3YYm8BmwESqp38kGknYaNl5FfwiHj4fvNlrTI/74Fe+yj0mwnDtxy
 f3LPKftDojJI3XNirvsfLdw51ZBxAYv19xS6J1ZBqsOLf7pR0P8tNrVBQIjPQOu2eboEtB92
 5sbWWKIH6CWLrvfsUSN5uIzO+mMY5IVuCrlJ/gl+fHuiXg5lEcbfamp25sYcnW4Hu9lLkiZf
 XbgnsoNHX0MvgUkVuDlk0eNXiBIZ3eyRKI8+i80CIe9DYvZWo+th7mB0D+6Hp1QeG9GFkiBH
 Wr0e4meVfoBajieLtJlnzEKT7SsSo4s2QmrtADgyrpnKuTU+jcftZLmzNV1/PHTmg8s9TNqC
 cSRyWSNT2ZynmMTWTA5wrt/rFdmxViZz6d4mPxZFcdP5/xXVwc6LoTQwPB9C9D3Qg7BeMyGR
 068Qtq6GTExUs4xw9gWbkpgA9milAzM3zK2A78JkLyGHJw18qXA0HjtIMZw0HLG1Kg6j1k6W
 ctDL22nhqlj+AjPAI7Ji1+Zl6GodasCwCHN6H2PzW2UvEFXA0ZMVvCPTHcUekz+qdXi+liEX
 rilFbM/KAxDxMWebKxQZZeh2URBT+vkENDfeH6q3Xa3DgqP3qmLbofhZyMaxiqLW2YelAVGt
 1OBMxMzCzzl61nCASJjExrEKwPRyqg04CegUkIqwgfMakpnzLe44TYfjPGHWugP07cf/iwmr
 mMnTx6Gw9vKBo/Y9EJad6JGbIZliGo=
IronPort-Data: A9a23:1vqQH6NUnDuRdXTvrR0wlcFynXyQoLVcMsEvi/4bfWQNrUor0DcAy
 2cdWzjSb/qDMzage9wib4yz804GvsCEytRqG3M5pCpnJ55oRWopJjg7wmPYZX76whjrFRo/h
 ykmQoCbap1yEhcwnz/1WlTbhSAUOZqgG/ytU4YoBggrHVU+EHd40Uo58wIEqtcAbeaRUlvlV
 eza/pW31G+Ng1aY5UpNtspvADs21BjDkGtwUm4WPJinj3eC/5UhN6/zEInqR5fOrii4KcbhL
 wrL5OnREmo0ZH7BAPv9+lrwWhVirrI/oWFih1IOM5VOjCSuqQQYjpoCM8MeVH1dtBbOhtQg6
 /Qcp7KZHFJB0q3kwIzxUjFeEyd3OLYWpeefeD65uIqZxkDdYmDwzvB1SkoxOOX0+M4uWScVq
 rpBeWtLME7ra+GemdpXTsF3msk9Ic+tOYQZoXxt1hnTBPs9UIvfTqDRo9Rf2V/cg+geQK+CO
 5BAAdZpRBfEZBYSO1FLM4I7g8f3g12vcBlfpF3A8MLb5ECWlmSdyoPFId3eZtuiQcROgl3et
 2XN42PhGBYYOdeDjz2f/RqRavTnxHu9A91UTezjsKA06LGO+lEu5NQtfQPTiZGEZoSWALqz9
 2R8FvISkJUP
IronPort-HdrOrdr: A9a23:N1dg6qmB3HIXk67GWOFnMpox4JzpDfLn3DAbv31ZSRFFG/Fwz/
 re5cjzpiWE8Ar5OUtQ5exoV5PwJk80maQU3WAdB9yftWrdyRSVxeNZnO3fKlTbckWRl9K1vp
 0QEZSWfeeAaWSS+vyKhTVQfexQo+WvweSFlO3ex3BiQUVQZ6Rp/25CYDpzFHcYeOAMP+tDKH
 PV3Ls8m9K0Ek57UixNbUNoYwHsnay3qK7b
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,227,1654560000";
   d="scan'208,217";a="8514421"
IronPort-SDR: 
 D5DcADq2w4gaHYJ8VzC2X3yh+4SmjTcFjdCyvVxeh1ml5rfhs5nzJs5RtPQJ2j71UrDNCjqfG7
 jhRnhXxFvxEzGc3EtLKB3sN5NcbSbtRwIGxcFVoEcPoeHOzZJZM2uj3Na2g4+KC5rc5ClnvT3Z
 Gsk3kY7hKuwedUUvBY7c6VcwxEMImAt3H1smm4ds9S3h6vW9YGuAWyQ4apX7wKxhlz0XkdvCnv
 E3R++oG40/NWSYVOrk0wLrYDu9M9DsLUZMxoHQaqhIxxQnABkGoN4ybnEVzJuqoiTA16q9a7YN
 jxo=
X-IronPort-AV: E=Sophos;i="5.93,227,1654560000";
   d="scan'208,217";a="338287389"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #kirkstone qemu
Thread-Topic: #kirkstone qemu
Thread-Index: Adisw6KsLdYbLdT1QD6GA+1polMIwA==
Date: Wed, 10 Aug 2022 14:27:23 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_0dbe1ec3826846feb1b713c3b00bcb8dbaesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Aug 2022 14:27:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57816
Message-Id: <20220810142735.F30C3C00140@smtp.lore.kernel.org>

--_000_0dbe1ec3826846feb1b713c3b00bcb8dbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello:

I built kirkstone core-image-sato from scratch no modifications, clean buil=
d was going test kirkstone out...
When I went to run using qemu I saw the following issue with "tun", even af=
ter a manual tun config I still got another qemu error (see below):


(1)    Is this a known issue and how would I build in proper "tun" support =
for the core-image-sato/qemu  ?

(2)    How would I run "runqemu-gen-tapdevs" to manually create one for tes=
ting ?

[yocto_user@9d7e1015e117 poky-kirkstone-4.0.2]$ ls
bitbake        kirkstone2            MAINTAINERS.md  meta-poky       oe-ini=
t-build-env   README.poky.md
contrib        LICENSE               Makefile        meta-selftest   README=
.hardware.md  README.qemu.md
documentation  LICENSE.GPL-2.0-only  MEMORIAM        meta-skeleton   README=
.md           scripts
kirkstone1     LICENSE.MIT           meta            meta-yocto-bsp  README=
.OE-Core.md
[yocto_user@9d7e1015e117 poky-kirkstone-4.0.2]$ source oe-init-build-env ki=
rkstone2
You had no conf/bblayers.conf file. This configuration file has therefore b=
een
created for you with some default values. To add additional metadata layers
into your configuration please add entries to conf/bblayers.conf.

The Yocto Project has extensive documentation about OE including a referenc=
e
manual which can be found at:
    https://docs.yoctoproject.org

For more information about OpenEmbedded see the website:
    https://www.openembedded.org/


### Shell environment set up for builds. ###

You can now run 'bitbake <target>'

Common targets are:
    core-image-minimal
    core-image-full-cmdline
    core-image-sato
    core-image-weston
    meta-toolchain
    meta-ide-support

You can also run generated qemu images with a command like 'runqemu qemux86=
'

Other commonly useful commands are:
- 'devtool' and 'recipetool' handle common recipe tasks
- 'bitbake-layers' handles common layer tasks
- 'oe-pkgdata-util' handles common target package tasks
[yocto_user@9d7e1015e117 kirkstone2]$ bitbake -k core-image-sato
Loading cache: 100% |                                                      =
                                 | ETA:  --:--:--
Loaded 0 entries from dependency cache.
Parsing recipes: 100% |####################################################=
##################################| Time: 0:00:49
Parsing of 882 .bb files complete (0 cached, 882 parsed). 1641 targets, 44 =
skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "2.0.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "centos-7"
TARGET_SYS           =3D "x86_64-poky-linux"
MACHINE              =3D "qemux86-64"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "4.0.2"
TUNE_FEATURES        =3D "m64 core2"
TARGET_FPU           =3D ""
meta
meta-poky
meta-yocto-bsp       =3D "<unknown>:<unknown>"

Initialising tasks: 100% |#################################################=
##################################| Time: 0:00:05
Sstate summary: Wanted 2730 Local 2722 Mirrors 5 Missed 3 Current 0 (99% ma=
tch, 0% complete)
NOTE: Executing Tasks
NOTE: Tasks Summary: Attempted 6556 tasks of which 6543 didn't need to be r=
erun and all succeeded.
[yocto_user@9d7e1015e117 kirkstone2]$ runqemu qemux86-64
runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e ...
runqemu - ERROR - TUN control device /dev/net/tun is unavailable; you may n=
eed to enable TUN (e.g. sudo modprobe tun)
runqemu - INFO - Cleaning up
[yocto_user@9d7e1015e117 kirkstone2]$ lsmod |grep tun
tun                    36164  0
[yocto_user@9d7e1015e117 kirkstone2]$ sudo modprobe tun
[sudo] password :
[yocto_user@9d7e1015e117 kirkstone2]$ lsmod |grep tun
tun                    36164  0
[yocto_user@9d7e1015e117 kirkstone2]$ ls /dev
console  core  fd  full  mqueue  null  ptmx  pts  random  shm  stderr  stdi=
n  stdout  tty  urandom  zero
[yocto_user@9d7e1015e117 kirkstone2]$ mkdir -p /dev/net
mkdir: cannot create directory '/dev/net': Permission denied
[yocto_user@9d7e1015e117 kirkstone2]$ sudo mkdir -p /dev/net
[yocto_user@9d7e1015e117 kirkstone2]$ ls /dev
console  core  fd  full  mqueue  net  null  ptmx  pts  random  shm  stderr =
 stdin  stdout  tty  urandom  zero
[yocto_user@9d7e1015e117 kirkstone2]$ sudo mknod /dev/net/tun c 10 200
[yocto_user@9d7e1015e117 kirkstone2]$ sudo chmod 0666 /dev/net/tun
[yocto_user@9d7e1015e117 kirkstone2]$ ls -l /dev/net/tun
crw-rw-rw-. 1 root root 10, 200 Aug 10 14:10 /dev/net/tun
[yocto_user@9d7e1015e117 kirkstone2]$ runqemu qemux86-64
runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e ...
runqemu - INFO - Continuing with the following parameters:
KERNEL: [/disk0/scratch/yocto_user/yocto/workspace_zeus/poky-kirkstone-4.0.=
2/kirkstone2/tmp/deploy/images/qemux86-64/bzImage--5.15.44+git0+947149960e_=
eb3df10e3f-r0-qemux86-64-20220809161004.bin]
MACHINE: [qemux86-64]
FSTYPE: [ext4]
ROOTFS: [/disk0/scratch/yocto_user/yocto/workspace_zeus/poky-kirkstone-4.0.=
2/kirkstone2/tmp/deploy/images/qemux86-64/core-image-sato-qemux86-64-202208=
10140132.rootfs.ext4]
CONFFILE: [/disk0/scratch/yocto_user/yocto/workspace_zeus/poky-kirkstone-4.=
0.2/kirkstone2/tmp/deploy/images/qemux86-64/core-image-sato-qemux86-64-2022=
0810140132.qemuboot.conf]

runqemu - INFO - Setting up tap interface under sudo
runqemu - ERROR - Setting up tap device failed:
Command '('sudo', '/disk0/scratch/yocto_user/yocto/workspace_zeus/poky-kirk=
stone-4.0.2/scripts/runqemu-ifup', '1000', '1000', '/disk0/scratch/yocto_us=
er/yocto/workspace_zeus/poky-kirkstone-4.0.2/kirkstone2/tmp/work/x86_64-lin=
ux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin')' returned non-=
zero exit status 1.
Run runqemu-gen-tapdevs to manually create one.
runqemu - INFO - Cleaning up
[yocto_user@9d7e1015e117 kirkstone2]$

Thanks,
Steve

--_000_0dbe1ec3826846feb1b713c3b00bcb8dbaesystemscom_
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
/* List Definitions */
@list l0
	{mso-list-id:1504776657;
	mso-list-type:hybrid;
	mso-list-template-ids:-1547906722 -646263214 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"\(%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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
<p class=3D"MsoNormal">Hello:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I built kirkstone core-image-sato from scratch no mo=
difications, clean build was going test kirkstone out&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal">When I went to run using qemu I saw the following is=
sue with &#8220;tun&#8221;, even after a manual tun config I still got anot=
her qemu error (see below):<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">(1)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Is this a known issue and how would I build in prop=
er &#8220;tun&#8221; support for the core-image-sato/qemu &nbsp;?<o:p></o:p=
></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">(2)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;
</span></span><![endif]>How would I run &#8220;runqemu-gen-tapdevs&#8221; t=
o manually create one for testing ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 poky-kirkstone-4.0.2]$ ls<o=
:p></o:p></p>
<p class=3D"MsoNormal">bitbake&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ki=
rkstone2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
MAINTAINERS.md&nbsp; meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oe-init-=
build-env&nbsp;&nbsp; README.poky.md<o:p></o:p></p>
<p class=3D"MsoNormal">contrib&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LI=
CENSE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Makefile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta-self=
test&nbsp;&nbsp; README.hardware.md&nbsp; README.qemu.md<o:p></o:p></p>
<p class=3D"MsoNormal">documentation&nbsp; LICENSE.GPL-2.0-only&nbsp; MEMOR=
IAM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta-skeleton&nbsp;&nbsp; REA=
DME.md&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; scripts<=
o:p></o:p></p>
<p class=3D"MsoNormal">kirkstone1&nbsp;&nbsp;&nbsp;&nbsp; LICENSE.MIT&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta-yocto-bsp&nbsp; REA=
DME.OE-Core.md<o:p></o:p></p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 poky-kirkstone-4.0.2]$ sour=
ce oe-init-build-env kirkstone2
<o:p></o:p></p>
<p class=3D"MsoNormal">You had no conf/bblayers.conf file. This configurati=
on file has therefore been<o:p></o:p></p>
<p class=3D"MsoNormal">created for you with some default values. To add add=
itional metadata layers<o:p></o:p></p>
<p class=3D"MsoNormal">into your configuration please add entries to conf/b=
blayers.conf.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The Yocto Project has extensive documentation about =
OE including a reference<o:p></o:p></p>
<p class=3D"MsoNormal">manual which can be found at:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; https://docs.yoctoproject.org<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For more information about OpenEmbedded see the webs=
ite:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; https://www.openembedded.org/<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">### Shell environment set up for builds. ###<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">You can now run 'bitbake &lt;target&gt;'<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Common targets are:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; core-image-minimal<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; core-image-full-cmdline<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; core-image-sato<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; core-image-weston<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; meta-toolchain<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; meta-ide-support<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">You can also run generated qemu images with a comman=
d like 'runqemu qemux86'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Other commonly useful commands are:<o:p></o:p></p>
<p class=3D"MsoNormal">- 'devtool' and 'recipetool' handle common recipe ta=
sks<o:p></o:p></p>
<p class=3D"MsoNormal">- 'bitbake-layers' handles common layer tasks<o:p></=
o:p></p>
<p class=3D"MsoNormal">- 'oe-pkgdata-util' handles common target package ta=
sks<o:p></o:p></p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 kirkstone2]$ bitbake -k cor=
e-image-sato<o:p></o:p></p>
<p class=3D"MsoNormal">Loading cache: 100% |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| ETA:&nbsp; --:--:--<o:p></o:p></p>
<p class=3D"MsoNormal">Loaded 0 entries from dependency cache.<o:p></o:p></=
p>
<p class=3D"MsoNormal">Parsing recipes: 100% |#############################=
#########################################################| Time: 0:00:49<o:=
p></o:p></p>
<p class=3D"MsoNormal">Parsing of 882 .bb files complete (0 cached, 882 par=
sed). 1641 targets, 44 skipped, 0 masked, 0 errors.<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Resolving any missing task queue dependencies<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Build Configuration:<o:p></o:p></p>
<p class=3D"MsoNormal">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;2.0.0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &q=
uot;centos-7&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-poky-linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;qemux86-64&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;poky&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;4.0.2&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; =3D &quot;m64 core2&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-yocto-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Initialising tasks: 100% |##########################=
#########################################################| Time: 0:00:05<o:=
p></o:p></p>
<p class=3D"MsoNormal">Sstate summary: Wanted 2730 Local 2722 Mirrors 5 Mis=
sed 3 Current 0 (99% match, 0% complete)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Executing Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 6556 tasks of which 6=
543 didn't need to be rerun and all succeeded.<o:p></o:p></p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 kirkstone2]$ runqemu qemux8=
6-64<o:p></o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbak=
e -e ...<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red">runqemu - ERROR - TUN c=
ontrol device /dev/net/tun is unavailable; you may need to enable TUN (e.g.=
 sudo modprobe tun)<o:p></o:p></span></b></p>
<p class=3D"MsoNormal">runqemu - INFO - Cleaning up<o:p></o:p></p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 kirkstone2]$ lsmod |grep tu=
n<o:p></o:p></p>
<p class=3D"MsoNormal">tun&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 36164&nbs=
p; 0 <o:p></o:p></p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 kirkstone2]$ sudo modprobe =
tun<o:p></o:p></p>
<p class=3D"MsoNormal">[sudo] password : <o:p></o:p></p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 kirkstone2]$ lsmod |grep tu=
n<o:p></o:p></p>
<p class=3D"MsoNormal">tun&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 36164&nbs=
p; 0 <o:p></o:p></p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 kirkstone2]$ ls /dev<o:p></=
o:p></p>
<p class=3D"MsoNormal">console&nbsp; core&nbsp; fd&nbsp; full&nbsp; mqueue&=
nbsp; null&nbsp; ptmx&nbsp; pts&nbsp; random&nbsp; shm&nbsp; stderr&nbsp; s=
tdin&nbsp; stdout&nbsp; tty&nbsp; urandom&nbsp; zero<o:p></o:p></p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 kirkstone2]$ mkdir -p /dev/=
net<o:p></o:p></p>
<p class=3D"MsoNormal">mkdir: cannot create directory &#8216;/dev/net&#8217=
;: Permission denied<o:p></o:p></p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 kirkstone2]$ sudo mkdir -p =
/dev/net<o:p></o:p></p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 kirkstone2]$ ls /dev<o:p></=
o:p></p>
<p class=3D"MsoNormal">console&nbsp; core&nbsp; fd&nbsp; full&nbsp; mqueue&=
nbsp; net&nbsp; null&nbsp; ptmx&nbsp; pts&nbsp; random&nbsp; shm&nbsp; stde=
rr&nbsp; stdin&nbsp; stdout&nbsp; tty&nbsp; urandom&nbsp; zero<o:p></o:p></=
p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 kirkstone2]$ sudo mknod /de=
v/net/tun c 10 200<o:p></o:p></p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 kirkstone2]$ sudo chmod 066=
6 /dev/net/tun<o:p></o:p></p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 kirkstone2]$ ls -l /dev/net=
/tun<o:p></o:p></p>
<p class=3D"MsoNormal">crw-rw-rw-. 1 root root 10, 200 Aug 10 14:10 /dev/ne=
t/tun<o:p></o:p></p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 kirkstone2]$ runqemu qemux8=
6-64<o:p></o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbak=
e -e ...<o:p></o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Continuing with the following param=
eters:<o:p></o:p></p>
<p class=3D"MsoNormal">KERNEL: [/disk0/scratch/yocto_user/yocto/workspace_z=
eus/poky-kirkstone-4.0.2/kirkstone2/tmp/deploy/images/qemux86-64/bzImage--5=
.15.44&#43;git0&#43;947149960e_eb3df10e3f-r0-qemux86-64-20220809161004.bin]=
<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE: [qemux86-64]<o:p></o:p></p>
<p class=3D"MsoNormal">FSTYPE: [ext4]<o:p></o:p></p>
<p class=3D"MsoNormal">ROOTFS: [/disk0/scratch/yocto_user/yocto/workspace_z=
eus/poky-kirkstone-4.0.2/kirkstone2/tmp/deploy/images/qemux86-64/core-image=
-sato-qemux86-64-20220810140132.rootfs.ext4]<o:p></o:p></p>
<p class=3D"MsoNormal">CONFFILE: [/disk0/scratch/yocto_user/yocto/workspace=
_zeus/poky-kirkstone-4.0.2/kirkstone2/tmp/deploy/images/qemux86-64/core-ima=
ge-sato-qemux86-64-20220810140132.qemuboot.conf]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Setting up tap interface under sudo=
<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red">runqemu - ERROR - Setti=
ng up tap device failed:<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red">Command '('sudo', '/dis=
k0/scratch/yocto_user/yocto/workspace_zeus/poky-kirkstone-4.0.2/scripts/run=
qemu-ifup', '1000', '1000', '/disk0/scratch/yocto_user/yocto/workspace_zeus=
/poky-kirkstone-4.0.2/kirkstone2/tmp/work/x86_64-linux/qemu-helper-native/1=
.0-r1/recipe-sysroot-native/usr/bin')'
 returned non-zero exit status 1.<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red">Run runqemu-gen-tapdevs=
 to manually create one</span></b>.<o:p></o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Cleaning up<o:p></o:p></p>
<p class=3D"MsoNormal">[yocto_user@9d7e1015e117 kirkstone2]$ <o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_0dbe1ec3826846feb1b713c3b00bcb8dbaesystemscom_--

