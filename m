Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFC6BECAAD1
	for <webhook@archiver.kernel.org>; Wed, 31 Aug 2022 11:17:30 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.24261.1661944648182848776
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 04:17:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=KD3H9fbI;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1661944648; x=1819624648;
  h=from:to:subject:date:mime-version;
  bh=sqH87dqTRZBOWYQdGx/6GZ8s0bwOJW0hLAzP7rgc2ko=;
  b=KD3H9fbIba9DGuRaOyptN4VLIfaSG+CqohcItAo+haApF365fOXzqFYh
   DgyVTEnhSv1BQiy5/EbA7RGXVZXFdVKlcZvQnurY2zcu5UnW0QgvljpOS
   L/yT6FSJoFpWI7kD6IhIQxFoGi3rqn9nKmqB9FCByayGYyiri/2ZTJOVZ
   w=;
IronPort-SDR: 
 /Gx4QlCqT6aGxKqlV4sqM1/alYXwLONTqCeh7Dpw/xdz76+d3cyArzPNhvPfxFxGfnt3sPkGR6
 YTY5OlIFac+g==
X-IPAS-Result: =?us-ascii?q?A2A3AADyQg9j/0HBJQpaHQEBAQEJARIBBQUBQAmBMggBC?=
 =?us-ascii?q?wGBIIICAoFwjFaGDoJinQaBfAsBAQEBAQEBAQEIAUIEAQGJbiY0CQ4BAgQBA?=
 =?us-ascii?q?QEBAwIDAQEBAQUBAQYBAQEBAQEGBAGBG4UvOgyCNSKEH14BFSNIJgEEG4J2g?=
 =?us-ascii?q?haBDKkjgTMaAmWEcIUSCQGBMwGBZYUXbFKDMYYzQ4oQhWwEjiGJCQc3A0UeQ?=
 =?us-ascii?q?gMLDmkDFwMUAwUkBwMZDyMNDQQdDAMDBSUDAgIbBwICAwIGFQUCAk04CAQIB?=
 =?us-ascii?q?CskDwUCBy8FBC8CHgQFBhEIAhYCBgQEBAQVAhAIAggmFwcTMxkBBVkQCSEcK?=
 =?us-ascii?q?A0FBhMDIG0FRQ8oMjU5Kx0bCoESKigVAwQEAwIGEwMDIgIQLDEUBikTEi0HK?=
 =?us-ascii?q?3UJAgMibQMDBCgsAwkhAgEcBygmPAUFWT8DAxAiPQYDCQMCJ12aGhMxG4Fob?=
 =?us-ascii?q?5IVGI1ghAudIwcDg1KKCZYLLhaXEAOFUoUZhniHPY9KIKIEgVWDPwIEAgQFA?=
 =?us-ascii?q?haBYYIVcIM4UBcCnH+BMAIGCwEBAwmIMIEQgRIBAQ?=
IronPort-PHdr: A9a23:qHoC7xzK91SwY/zXCzJFylBlVkEcU1XcAAcZ59Idhq5Udez7ptK+Z
 heZv6UzxweYFazgqNt8w9LMtK7hXWFSqb2gi1slNKJ2ahkelM8NlBYhCsPWQWfyLfrtcjBoV
 J8aDAwt8H60K1VaF9jjbFPOvHKy8SQSGhLiPgZpO+j5AIHfg9q52uyo5ZHeYARFiDWhbb52M
 R67sRjfus4KjIV4N60/0AHJonxGe+RXwWNnO1eelAvi68mz4ZBu7T1et+ou+MBcX6r6eb84T
 aFDAzQ9L281/szrugLdQgaJ+3ART38ZkhtMAwjC8RH6QpL8uTb0u+ZhxCWXO9D9QLYpUjqg8
 qhrUgflhicZOTAk7GHZhM9+jKNHrx2uvBFw2ZLYYIOPOfZiYq/RY9UXTndBUMZLUCxBB5uxY
 4UIAeoGO+ZYtJfyqEUVrRemGAKiGf/vxSFWhnDo260xzvosGhzC0AMuAtwCtXrYp8jyOacJT
 eC60rfIwivFb/9M3Df9747Icgs/rv6SRrJ9atHexlMxGAPejlSQspDlMC2Q1uQWqWSU8+1gV
 ee2hmMhtgp+rSShyN02hYnVmoIa1ErE9SNhzYg7K9C1VE92bNylHZdOqi2XKYh7T8MmTmxnt
 ys217MItJ60ciQXzJkqxR7SZvOGfoSV/B/uUOWcLDRliX54d7yygQu5/0u4yuDkS8W4zExGo
 yRHn9XWq3wA0xLe5tKGR/Z95kutxCqD2xrc5+xLO0w5mrDXJ4Mhz7M2i5Edq17MHjXsl0Xzl
 KKWc0Ik9fW25On/ebXmo4OcN5dzigHjLqQigsy/Dvo8MggJR2Wb5/6z1L3l/U38W7VHivk7n
 63FvJzHP8gboLS2DxVO3Yk59Rm/FDen0M8EnXYZKVJFYwiLgJTuO1HLOPz4DPG/jEqwkDpz2
 vzKIqftD5vPI3TZjbvsebhw51RdxQcz1dxf4ohbCrAFIPL9QE/xs9nYAwciMwyo3ennFsty1
 oUEVWKKBa+ZNrjSvkGW6eI0OOSDf5UatyjmK/kl/P7ukWE2mVoGfaWzwZQXb3W4EuxgI0qCe
 XXsmMsOEX8WvgoiS+znkECOXSZJZ3muR6I8+i07CIW+AIbDQYCinKCB3CCgE51SZ2BGEUyME
 Wzye4SEXPcDdD6SIsh5kjweUrihSZEu2g2ytAPgzLpnNOXUqWUkssepxd9+++r7kRAp6ScyH
 sOWz2aVVWZ2k2gUATgs0+o39V16wUuE+ax5mOBDU81U7O9OSh09N5PX06p9Ed+kCSzbedLcA
 nOhRM6rDCp1BuktzsEDZQ5WU5WftVGJl36xH7ILmrrNAZsy6a/RxFD7Lstm2m3a2aw6yVIhR
 50cZiWdmqdj+l2LVMbymEKDmvPyHZk=
IronPort-Data: A9a23:kxOgDKtM6XAOJwlprgD/oEPfVufnVMFcMUV32f8akzHdYApBsoF/q
 tZmKTjXO6mJY2H2eookbd/lpk9VuJXdmtNnSQQ//nxjH3hDgMeUXt7xwmUcn8+xwm8vaGo9s
 q3yv/GZdJhcokf0/0zrb/69xZVF/fngqoDUUYYoAQgsA14/IMsdoUg7wbRh0tUx2YHR7z6l4
 LseneWOYDdJ5BYpagr424rbwP+4lK2v0N+wlgVWicFj5DcypVFMZH4sDf3Zw0/Df2VhNrXSq
 9AvbV2O1jixEx8FUrtJm1tgG6EAaua60QOm0hK6V0U+6/RPjnRa70o1CBYTQUBcqh6xtIpR9
 NcTqL2ualcNY4LLqftIBnG0EwkmVUFH0KHOIX66qp3CnhWfNX3lhf9nAVonJpEV//0xCmZLn
 RAaAGlVKEvcwbvnm/TlF4GAhex6RCXvFJgDt29ty3fcCvA9TJ3Ya6/D6MRJxys9g9sIFvHbD
 yYcQWMxNE6fPUYeUrsRIIgMncSDuCj1SQF/9WyfvaFnwW7e6BMkhdABN/KQILRmX/59j0GTu
 mXu+2XiHgpcJduU1T2d6HWui+TT2yThV+ov+KaQr6Ys2wLVnz1ITkNLPbemncSEZoeFc4o3A
 yQpFuAG9vBaGJCDJjUlYyCFnQ==
IronPort-HdrOrdr: A9a23:6KgoH6CzgSroC1flHegnsceALOsnbusQ8zAXPh9KJCC9I/bzqy
 nxpp8mPEfP+U0ssHFJo6HiBEDyewKnyXcV2/haAV7GZmXbUQSTXeZfBOfZogEIXheOjtK1tp
 0QPpSWaueAa2SS5PySiGbXLz9j+qj/zEnCv5a9854Zd3APV0gW1XYdNu/0KC1LbTgDIaB8OI
 uX58JBqTblU28QdN6HCn4MWPWGj8HXlbr9CCR2SCIP2U2rt3eF+bT6Gx+X0lM1SDVU24ov9m
 DDjkjQ+rijifem0RXRvlWjoai+2eGRi+erNvb8yfT9GQ+cyDpAUb4RG4Fq8gpF5d1Ho2xa7e
 Uk6y1QQ/ibrUmhMl1d6CGdpTUJ3FsVmgDf4E7djn35rcPjQjUmT8JHmIJCaxPcr1Etpddmzc
 twriukXjVsfGH9dQnGlq/1vitR5zyJiGtnlfRWg21UUIMYZrMUpYsD/FlNGJNFGC7h8ogoHO
 RnEcmZvZ9tABinRmGcunMqzM2nX3w1EBvDSk8eutaN2zwTmHxi1UMXyMEWg39F/pMgTJtP4f
 jCL81T5flzZ95Tabg4CPYKQMOxBGCISRXQMHiKKVCiD60DM2Klke+C3Fz03pDeRHUl9upDpH
 2aaiIoiYcbQTOcNfGz
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,277,1654560000";
   d="scan'208,217";a="16027639"
IronPort-SDR: 
 0wpqoj8ikFvnqp8IWoPjdyXVj64j9D+yqtXUmZHFxhp9i92IsEt5p34Kj/LBshXjVkYY1oj/or
 OP54ZUVVUCkA==
X-IronPort-AV: E=Sophos;i="5.93,277,1654560000";
   d="scan'208,217";a="91105964"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #dunfell #qemux86-64
Thread-Topic: #yocto #dunfell #qemux86-64
Thread-Index: Adi9Kz6D2hQuMkGuSp+JLpUK1uc+yA==
Date: Wed, 31 Aug 2022 11:17:24 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_0df47c30d3c54d498868c193d45e6953baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Aug 2022 11:17:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57954
Message-Id: <20220831111730.DFC6BECAAD1@smtp.lore.kernel.org>

--_000_0df47c30d3c54d498868c193d45e6953baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello:

I am attempting to evaluate dunfell -23.0.17, on a cetos7 linux box.

When building the default : core-image-minimal or core-image-sato, clean wi=
th no errors/warnings, on execution
I get the following error for both (see below)...


(1)    Is this an issue with the release ?,  and is there another release I=
 should be using ?

(2)    Is there something I need to pre-configure for these builds to run p=
roperly ?

(3)    How might I resolve this issue ?

06:57 smonsees@yix490016 /disk0/scratch/smonsees/yocto/yocto-dunfell/poky-d=
unfell-23.0.17/dunfell_Min>runqemu qemux86-64
runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e ...
runqemu - INFO - Continuing with the following parameters:
KERNEL: [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/d=
unfell_Min/tmp/deploy/images/qemux86-64/bzImage--5.4.192+gitAUTOINC+3fecb08=
507_85f0668fea-r0-qemux86-64-20220830151817.bin]
MACHINE: [qemux86-64]
FSTYPE: [ext4]
ROOTFS: [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/d=
unfell_Min/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-20220=
830151817.rootfs.ext4]
CONFFILE: [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17=
/dunfell_Min/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-202=
20830151817.qemuboot.conf]

runqemu - INFO - Setting up tap interface under sudo
[sudo] password for smonsees:
runqemu - INFO - Network configuration: ip=3D192.168.7.2::192.168.7.1:255.2=
55.255.0
runqemu - INFO - Running /disk0/scratch/smonsees/yocto/yocto-dunfell/poky-d=
unfell-23.0.17/dunfell_Min/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/=
recipe-sysroot-native/usr/bin/qemu-system-x86_64 -device virtio-net-pci,net=
dev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev tap,id=3Dnet0,ifname=3Dtap0,scri=
pt=3Dno,downscript=3Dno -drive file=3D/disk0/scratch/smonsees/yocto/yocto-d=
unfell/poky-dunfell-23.0.17/dunfell_Min/tmp/deploy/images/qemux86-64/core-i=
mage-minimal-qemux86-64-20220830151817.rootfs.ext4,if=3Dvirtio,format=3Draw=
 -show-cursor -usb -device usb-tablet -object rng-random,filename=3D/dev/ur=
andom,id=3Drng0 -device virtio-rng-pci,rng=3Drng0   -cpu core2duo -m 256 -s=
erial mon:vc -serial null -kernel /disk0/scratch/smonsees/yocto/yocto-dunfe=
ll/poky-dunfell-23.0.17/dunfell_Min/tmp/deploy/images/qemux86-64/bzImage--5=
.4.192+gitAUTOINC+3fecb08507_85f0668fea-r0-qemux86-64-20220830151817.bin -a=
ppend 'root=3D/dev/vda rw  mem=3D256M ip=3D192.168.7.2::192.168.7.1:255.255=
.255.0 oprofile.timer=3D1 '

runqemu - ERROR - Failed to run qemu: Could not initialize SDL(x11 not avai=
lable) - exiting

runqemu - INFO - Cleaning up
Set 'tap0' nonpersistent

Thank you for your help,
Steve


--_000_0df47c30d3c54d498868c193d45e6953baesystemscom_
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
	{mso-list-id:1134905018;
	mso-list-type:hybrid;
	mso-list-template-ids:20988230 -2073947994 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
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
<p class=3D"MsoNormal">Hello: <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am attempting to evaluate dunfell -23.0.17, on a c=
etos7 linux box.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When building the default : core-image-minimal or co=
re-image-sato, clean with no errors/warnings, on execution<o:p></o:p></p>
<p class=3D"MsoNormal">I get the following error for both (see below)&#8230=
;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">(1)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Is this an issue with the release ?, &nbsp;and is t=
here another release I should be using ?<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">(2)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Is there something I need to pre-configure for thes=
e builds to run properly ?<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">(3)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;
</span></span><![endif]>How might I resolve this issue ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">06:57 smonsees@yix490016 /disk0/scratch/smonsees/yoc=
to/yocto-dunfell/poky-dunfell-23.0.17/dunfell_Min&gt;runqemu qemux86-64<o:p=
></o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbak=
e -e ...<o:p></o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Continuing with the following param=
eters:<o:p></o:p></p>
<p class=3D"MsoNormal">KERNEL: [/disk0/scratch/smonsees/yocto/yocto-dunfell=
/poky-dunfell-23.0.17/dunfell_Min/tmp/deploy/images/qemux86-64/bzImage--5.4=
.192&#43;gitAUTOINC&#43;3fecb08507_85f0668fea-r0-qemux86-64-20220830151817.=
bin]<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE: [qemux86-64]<o:p></o:p></p>
<p class=3D"MsoNormal">FSTYPE: [ext4]<o:p></o:p></p>
<p class=3D"MsoNormal">ROOTFS: [/disk0/scratch/smonsees/yocto/yocto-dunfell=
/poky-dunfell-23.0.17/dunfell_Min/tmp/deploy/images/qemux86-64/core-image-m=
inimal-qemux86-64-20220830151817.rootfs.ext4]<o:p></o:p></p>
<p class=3D"MsoNormal">CONFFILE: [/disk0/scratch/smonsees/yocto/yocto-dunfe=
ll/poky-dunfell-23.0.17/dunfell_Min/tmp/deploy/images/qemux86-64/core-image=
-minimal-qemux86-64-20220830151817.qemuboot.conf]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Setting up tap interface under sudo=
<o:p></o:p></p>
<p class=3D"MsoNormal">[sudo] password for smonsees: <o:p></o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Network configuration: ip=3D192.168=
.7.2::192.168.7.1:255.255.255.0<o:p></o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Running /disk0/scratch/smonsees/yoc=
to/yocto-dunfell/poky-dunfell-23.0.17/dunfell_Min/tmp/work/x86_64-linux/qem=
u-helper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-x86_64 -de=
vice virtio-net-pci,netdev=3Dnet0,mac=3D52:54:00:12:34:02
 -netdev tap,id=3Dnet0,ifname=3Dtap0,script=3Dno,downscript=3Dno -drive fil=
e=3D/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/dunfel=
l_Min/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-2022083015=
1817.rootfs.ext4,if=3Dvirtio,format=3Draw -show-cursor
 -usb -device usb-tablet -object rng-random,filename=3D/dev/urandom,id=3Drn=
g0 -device virtio-rng-pci,rng=3Drng0&nbsp;&nbsp; -cpu core2duo -m 256 -seri=
al mon:vc -serial null -kernel /disk0/scratch/smonsees/yocto/yocto-dunfell/=
poky-dunfell-23.0.17/dunfell_Min/tmp/deploy/images/qemux86-64/bzImage--5.4.=
192&#43;gitAUTOINC&#43;3fecb08507_85f0668fea-r0-qemux86-64-20220830151817.b=
in
 -append 'root=3D/dev/vda rw&nbsp; mem=3D256M ip=3D192.168.7.2::192.168.7.1=
:255.255.255.0 oprofile.timer=3D1 '<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>runqemu - ERROR - Failed to run qemu: Could not i=
nitialize SDL(x11 not available) - exiting<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Cleaning up<o:p></o:p></p>
<p class=3D"MsoNormal">Set 'tap0' nonpersistent<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for your help,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0df47c30d3c54d498868c193d45e6953baesystemscom_--

