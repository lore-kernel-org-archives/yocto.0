Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 108C4C00140
	for <webhook@archiver.kernel.org>; Tue,  2 Aug 2022 15:18:03 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.7467.1659453482080255692
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 08:18:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=ITCFalph;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1659453482; x=1817133482;
  h=from:to:subject:date:mime-version;
  bh=F7Ft2I1OrtR5fQwwYgn77DrpHYe7+QHZi75bgXvb9qo=;
  b=ITCFalphXLVz501I6nYFK89NemMT4BzyAX3pTHH7kaq6f2/XZ1DMgwre
   yBgBkGw8QVkjcqBEh8wwnrjqWsAEkoFp3+6YArYmkHHjPCMFN0Y3lq6rW
   7Co288+DNVkdmaWBftDi2kLA+6a1JEMUi0UAKkOVaUydVejSQQdmAbJ2x
   4=;
IronPort-SDR: 
 V3maelutg1WtkGPyMJguFTijm2B8iV2558uKe7ERfPR/rQmhKMe7EFTWOI1Wezlm33iZ90iat9
 ocQRMWx6pCPw==
X-IPAS-Result: =?us-ascii?q?A2DvAwAIP+li/0LBJQpaHgEBCxIMQAmBOwuBIYICAoFwk?=
 =?us-ascii?q?mCCYpx8gXwLAQEBAQEBAQEBCAFCBAEBiX8mNQgOAQIEAQEBAQMCAwEBAQEFA?=
 =?us-ascii?q?QEGAQEBAQEBBgQBgRuFLzoMgjUihB9eARVrJgEEG4J2gg6BDKkrgTMaAmWEb?=
 =?us-ascii?q?4USgT2BZoV/gwsPhjFDj3wEl2AHNgNFHkIDCw5ECAkXEhAQAgQRGgsGAxY/C?=
 =?us-ascii?q?QIEDgNACA0DEQQDDxgJEggQBAYDMQwlCwMFDwwBBgMGBQMBAxsDFAMFJAcDH?=
 =?us-ascii?q?A8jDQ0EHx0DAwUlAwICGwcCAgMCBhUGAgJOOQgECAQrJA8FAgcvBQQvAh4EB?=
 =?us-ascii?q?QYRCAIWAgYEBAQEFgIQCAIIJxcHEzMZAQVZEAkhHCgQBQYTAyBvBUUPKDM1P?=
 =?us-ascii?q?CsfGwqBEiorFQMEBAMCBhUDAyICEC4xAxUGKRMSLQkqdQkCAyJtAwMEKi4DC?=
 =?us-ascii?q?R8CARwHCSaaAT4TMR2CVZIOjXGECZ0WBwODUaAJLhWXAgORYpZ9IKIYhHQCB?=
 =?us-ascii?q?AIEBQIWgWIBghNwgzlQFwKcf4EwAgYLAQEDCY10gRIBAQ?=
IronPort-PHdr: A9a23:vmmhkBMhO80EwQobu5ol6nafDRdPi9zP1u491JMrhvp0f7i5+Ny6Z
 QqDv64r1gWUFtWGo9t/yMPu+5j6XmIB5ZvT+FsjS7drEyE/tMMNggY7C9SEA0CoZNTjbig9A
 dgQHAQ9pyLzPkdaAtvxaEPPqXOu8zESBg//NQ1oLejpB4Lelcu62/689pHJfQlEmjqwbbxxI
 Ri2sA7cqtQYjYx+J6gr1xDHuGFIe+NYxWNpIVKcgRPx7dqu8ZBg7ipdpesv+9ZPXqvmcas4S
 6dYDCk9PGAu+MLrrxjDQhCR6XYaT24bjwBHAwnB7BH9Q5fxri73vfdz1SWGIcH7S60/VDK/5
 KlpVRDokj8KOT4n/m/Klsx+gqFVoBO9qBNw2IPbep2ZNPhkc6/BYd8WW2xMVdtRWSxbBYO8a
 pMCA+QGM+ZfqYn9vEUBogWlBQW0Gejh1yNIiWHo3aIk1eQqDB/L1xEkE90ArXrYqdv5P7oVX
 OCu0KnH0yvDYO1Q2Tvn7YjIdRYhoeqSUr1uasrc0lIgGBnbgVWLqY3lJC+V2foIs2iA9eZvS
 eWvi2s+pgx3vzOgydsihJPTiYIJ1lDL6z95wIAtKNO2RkN2fd+pHZlRui2EKod7XMAvTmFst
 Ss1xbAKpJC1cSgFxpg6wxPSafyKfoeJ7x7+SuucJTR1iXF4db6iiBi/91WrxO7kVsSszVpGs
 jBJn9fOu3wXyhDe7saKRuF880qgwTqDyhzf5vtLLE07j6bWJIQtzqMwm5cVrE/NBDX5mF/sg
 6+Tbkgk/++o5Pn5bbj+vZ+cMpN0ihn5MqQzhsyzGeQ4PRYKX2ic4em80r3j/UvjT7VPlf07k
 anUvIzGKcgGvKK5BRVa3pw45BmlETimy9QZnWIbLF1bfRKHlJLlNE3JIPD9Ffu/glKsnyl3x
 /3eI7HtHo/BI3bBnbv7YLpw70BRxBAywN1e/55UD6sOIPP3Wk//rtzYCRo5PhSvw+b7Ftp9y
 J0RWWSVDq+cN6PSt0SI6fwxLOmXf4IaoyzyJOY+5//uln85hUESfayy3ZcNdH+4GfFmL12fY
 XX3mtgBC3sFvhIiTOz2j12PSSNfa26oX60g/jE7FJ6mDYDbS4Gth7yOwDu7HppNa2BCC1CMC
 mvod56eV/YMbyKdPtNhkjscVbi7TI8h1w+huxPmy7Z9KerU4CIY5trf040/9urYiRYa8T1vE
 9/bwmaGU2ZshGQKSjQqmqdlrgY1nkaE2rR/q/hZDsBIoeJOWRs9LYTbzeFxF5b1QA2XLfmTT
 1PzCPChByo8Q8l1i+QSblhwHZ2JxlD+5GvgS+sOi7GVCZpy96XaxHX8PO53wnvdxbI9glw9B
 MBIMDv11eZE6wHPCtuRwA2inKGwePFEtBM=
IronPort-Data: A9a23:vm2lR6prW3NzvxUjxoB8V+dlz11eBmKNZxIvgKrLsJaIsI4StFCzt
 garIBmEOa3fY2v2Ld90YYu0/UhV7MeDmtRmSVc4+X1gQn4Q9+PIVI+TRqvS04N+DSFhoGZPt
 Zh2hgzodZhsJpPkjk72dOWn8RGQ7InQLlbGILes1htZGEk1E0/NtTo5w7Rj2t4w24Dia++wk
 YqaT/P3aQfNNwFcbzp8B5Kr8HuDa9yr5Vv0FnRnDRx6lAe2e0s9VfrzFontR5fMebS4K8bhL
 wr1IBBVyUuCl/slIovNfr8W6STmSJaKVeSFoiI+t6RPHnGuqwRqupvXOsbwZm981RKP2PlQ1
 +lz77vsVyYwP6zDscY0Bkww/yFWZcWq+ZfBIX62tNfDkhWeKj3qyrNkBUwtLJYE9+NsR2pJ8
 JT0KhhUNlbY2KTvken9FLcEascLdaEHOKsEpnx+wDefCPEgWp3OWI3A7NJDzSwsi8VVW/3ZY
 qL1bBIxNkyRP0UQUrsRILElo9i2n0C4SD5njE+Kva0X6kLSyTUkhdABN/KQILRmX/59j0GTu
 mXu+2XiHgpcJduU1T2d6HWui+TT2yThV+ov+KaQr6Ys2wLVnz1ITkNIPbemncSEZoeFc4o3A
 yQpFuAG8cDeKGTDogHBYiCF
IronPort-HdrOrdr: A9a23:4kFasKrbpuftD7gjpGAzNgEaV5o2eYIsimQD101hICG9E/bo8v
 xG+c5x6faaslgssR0b9uxoW5PwI080i6QU3WB5B97LMWXbUQCTTb2Kg7GSoAEIHReVytJg
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,211,1654560000";
   d="scan'208,217";a="6209407"
IronPort-SDR: 
 D+Ay53EN82nr/ei7Ggt0VT8iXJCutFgjIiZMYFw7Vby06DBcWrlP9TDti2a1at7bday0I05u5D
 vM8lCeRfICJOYtU3DUPyhXq9iODetars1lhPUNuZbt18L5zF3i398KHZCPWcWyh1dV3NLfhXCp
 6e/jvOTwns1i2/5yQchd8cqdT97TQmW15x7kvoENxRnTJ0n7YnEwqahJVu9CtyBLprurZC7/cF
 vKjKACmBqOOcnIZuX/op0ifL8nPgMFwm4+rnT7oVbibRs3H6Pt7XgBGPxJJERwOyvzMpsZSw1s
 SLQ=
X-IronPort-AV: E=Sophos;i="5.93,211,1654560000";
   d="scan'208,217";a="336891474"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: poky-dunfell-23.0.17
Thread-Topic: poky-dunfell-23.0.17
Thread-Index: AdimgiMeKGp2RxcZRhGYkFDCTjm4rA==
Date: Tue, 2 Aug 2022 15:16:59 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_b091cf3f04ec4bdb97f24755a3bf4ee4baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Aug 2022 15:18:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57737
Message-Id: <20220802151803.108C4C00140@smtp.lore.kernel.org>

--_000_b091cf3f04ec4bdb97f24755a3bf4ee4baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I wanted to do a simple test with dunfell, my system meets all the minimum =
requirements based on documentation, and I am running under centos7...

I downloaded poky-dunfell-23.0.17, built both "core-image-minimal" and "cor=
e-image-sato" with not build issues, but when I go to run "runqemu qemux86-=
64" I am getting the following error for both builds, can you explain why a=
nd how to to correct for this ?

11:07 smonsees@yix490093 /disk0/scratch/smonsees/yocto/yocto-dunfell/poky-d=
unfell-23.0.17/mdunfell>runqemu qemux86-64
runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e ...
runqemu - INFO - Continuing with the following parameters:
KERNEL: [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/m=
dunfell/tmp/deploy/images/qemux86-64/bzImage--5.4.192+gitAUTOINC+3fecb08507=
_85f0668fea-r0-qemux86-64-20220802141232.bin]
MACHINE: [qemux86-64]
FSTYPE: [ext4]
ROOTFS: [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/m=
dunfell/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-20220802=
141232.rootfs.ext4]
CONFFILE: [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17=
/mdunfell/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-202208=
02141232.qemuboot.conf]

runqemu - INFO - Setting up tap interface under sudo
runqemu - INFO - Network configuration: ip=3D192.168.7.2::192.168.7.1:255.2=
55.255.0
runqemu - INFO - Running /disk0/scratch/smonsees/yocto/yocto-dunfell/poky-d=
unfell-23.0.17/mdunfell/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/rec=
ipe-sysroot-native/usr/bin/qemu-system-x86_64 -device virtio-net-pci,netdev=
=3Dnet0,mac=3D52:54:00:12:34:02 -netdev tap,id=3Dnet0,ifname=3Dtap0,script=
=3Dno,downscript=3Dno -drive file=3D/disk0/scratch/smonsees/yocto/yocto-dun=
fell/poky-dunfell-23.0.17/mdunfell/tmp/deploy/images/qemux86-64/core-image-=
minimal-qemux86-64-20220802141232.rootfs.ext4,if=3Dvirtio,format=3Draw -sho=
w-cursor -usb -device usb-tablet -object rng-random,filename=3D/dev/urandom=
,id=3Drng0 -device virtio-rng-pci,rng=3Drng0   -cpu core2duo -m 256 -serial=
 mon:vc -serial null -kernel /disk0/scratch/smonsees/yocto/yocto-dunfell/po=
ky-dunfell-23.0.17/mdunfell/tmp/deploy/images/qemux86-64/bzImage--5.4.192+g=
itAUTOINC+3fecb08507_85f0668fea-r0-qemux86-64-20220802141232.bin -append 'r=
oot=3D/dev/vda rw  mem=3D256M ip=3D192.168.7.2::192.168.7.1:255.255.255.0 o=
profile.timer=3D1 '

runqemu - ERROR - Failed to run qemu: X Error:  BadRequest
  Request Major code 130 (MIT-SHM)
  Request Minor code 1 ()
  Error Serial #124
  Current Serial #125

runqemu - INFO - Cleaning up
Set 'tap0' nonpersistent
11:07 smonsees@yix490093 /disk0/scratch/smonsees/yocto/yocto-dunfell/poky-d=
unfell-23.0.17/mdunfell>

Thanks,
Steve

--_000_b091cf3f04ec4bdb97f24755a3bf4ee4baesystemscom_
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
<p class=3D"MsoNormal">I wanted to do a simple test with dunfell, my system=
 meets all the minimum requirements based on documentation, and I am runnin=
g under centos7&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I downloaded poky-dunfell-23.0.17, built both &#8220=
;core-image-minimal&#8221; and &#8220;core-image-sato&#8221; with not build=
 issues, but when I go to run &#8220;runqemu qemux86-64&#8221; I am getting=
 the following error for both builds, can you explain why and how to to
 correct for this ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">11:07 smonsees@yix490093 /disk0/scratch/smonsees/yoc=
to/yocto-dunfell/poky-dunfell-23.0.17/mdunfell&gt;runqemu qemux86-64<o:p></=
o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbak=
e -e ...<o:p></o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Continuing with the following param=
eters:<o:p></o:p></p>
<p class=3D"MsoNormal">KERNEL: [/disk0/scratch/smonsees/yocto/yocto-dunfell=
/poky-dunfell-23.0.17/mdunfell/tmp/deploy/images/qemux86-64/bzImage--5.4.19=
2&#43;gitAUTOINC&#43;3fecb08507_85f0668fea-r0-qemux86-64-20220802141232.bin=
]<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE: [qemux86-64]<o:p></o:p></p>
<p class=3D"MsoNormal">FSTYPE: [ext4]<o:p></o:p></p>
<p class=3D"MsoNormal">ROOTFS: [/disk0/scratch/smonsees/yocto/yocto-dunfell=
/poky-dunfell-23.0.17/mdunfell/tmp/deploy/images/qemux86-64/core-image-mini=
mal-qemux86-64-20220802141232.rootfs.ext4]<o:p></o:p></p>
<p class=3D"MsoNormal">CONFFILE: [/disk0/scratch/smonsees/yocto/yocto-dunfe=
ll/poky-dunfell-23.0.17/mdunfell/tmp/deploy/images/qemux86-64/core-image-mi=
nimal-qemux86-64-20220802141232.qemuboot.conf]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Setting up tap interface under sudo=
<o:p></o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Network configuration: ip=3D192.168=
.7.2::192.168.7.1:255.255.255.0<o:p></o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Running /disk0/scratch/smonsees/yoc=
to/yocto-dunfell/poky-dunfell-23.0.17/mdunfell/tmp/work/x86_64-linux/qemu-h=
elper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-x86_64 -devic=
e virtio-net-pci,netdev=3Dnet0,mac=3D52:54:00:12:34:02
 -netdev tap,id=3Dnet0,ifname=3Dtap0,script=3Dno,downscript=3Dno -drive fil=
e=3D/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/mdunfe=
ll/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-2022080214123=
2.rootfs.ext4,if=3Dvirtio,format=3Draw -show-cursor
 -usb -device usb-tablet -object rng-random,filename=3D/dev/urandom,id=3Drn=
g0 -device virtio-rng-pci,rng=3Drng0&nbsp;&nbsp; -cpu core2duo -m 256 -seri=
al mon:vc -serial null -kernel /disk0/scratch/smonsees/yocto/yocto-dunfell/=
poky-dunfell-23.0.17/mdunfell/tmp/deploy/images/qemux86-64/bzImage--5.4.192=
&#43;gitAUTOINC&#43;3fecb08507_85f0668fea-r0-qemux86-64-20220802141232.bin
 -append 'root=3D/dev/vda rw&nbsp; mem=3D256M ip=3D192.168.7.2::192.168.7.1=
:255.255.255.0 oprofile.timer=3D1 '<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">runqemu - ERROR - Failed to run qemu: X Error:&nbsp;=
 BadRequest<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Request Major code 130 (MIT-SHM)<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp; Request Minor code 1 ()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Error Serial #124<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Current Serial #125<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">runqemu - INFO - Cleaning up<o:p></o:p></p>
<p class=3D"MsoNormal">Set 'tap0' nonpersistent<o:p></o:p></p>
<p class=3D"MsoNormal">11:07 smonsees@yix490093 /disk0/scratch/smonsees/yoc=
to/yocto-dunfell/poky-dunfell-23.0.17/mdunfell&gt;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_b091cf3f04ec4bdb97f24755a3bf4ee4baesystemscom_--

