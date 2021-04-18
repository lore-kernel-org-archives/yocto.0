Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.16235.1618775798416603016
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Apr 2021 12:56:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=gR3HxMFs;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1618775798; x=1776455798;
  h=from:to:subject:date:mime-version;
  bh=n7HxlUjbhu4vZfmluIX9BkGckhSNH2mbGyY9tyMggJY=;
  b=gR3HxMFsB5ApZCDIWuMQ184F4tEfT66cHjwJ9vz5oK4zKmfSNC7VyLLh
   oVPF+R28CpU4bTJJLPDItwLfiqDgEdb3JHIMpkmRy1Hs5VIV5j/TXHlX3
   tFJ5InEoRNZpx6IHO7UfIxGF2/xdL7Rw1pPG9pNN18JiJXYi4MYTD0JBr
   8=;
IronPort-SDR: FZj6FFl2aD9z2TgZqAWBnrdZGB8b8tNUYqUGqaAhUvfeSMflNbOsNljF4L26m+EQFPPMsN4NKV
 MopDy1zQwisQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3ApgJEUhUMYBvU20CIE6qjg4BHCAXV8KxpVTF92?=
 =?us-ascii?q?vIco4ILSbyq+tHYBGea288FpGHAUYiT0f9Yke2e6/mmBTVRp8zZ6jtaKdRlb?=
 =?us-ascii?q?FwssY0uhQsuAcqIWwXQDcXBSGgEJvlET0Jv5HqhMEJYS47UblzWpWCuv3ZJQ?=
 =?us-ascii?q?k2sfQV6Kf7oFYHMks+5y/69+4HJYwVPmTGxfa5+IA+5oAnMssQam5VuJrovx?=
 =?us-ascii?q?hfGvndEZvldyH91K16Ugxvy/Nq78oR58yRXtfIh9spAXrv/cq8lU7FWDykoP?=
 =?us-ascii?q?n4s6sHzuhbNUQWA5n0HUmULiRVIGBTK7Av7XpjqrCT3sPd21TSAMs33SbA0X?=
 =?us-ascii?q?imi77tuRRT1hioLKyI1/WfKgcF2kalVog+upwZnzoDUfo+bKeZ+cK3ec9MbW?=
 =?us-ascii?q?WVOUd1cWDZdDoO+dYYDE/YNMfheooLgp1UOtxy+BQy0Ce/hzTFIgXn23bYk3?=
 =?us-ascii?q?Os/CgHKxBErEc8SsHvKstX6KqESWv2rwaLVyTnMYe5Y1TLz5IPVdR0huu2MU?=
 =?us-ascii?q?qxuccXPz0kjDQbFjlKWqYz+ITyayP8NvnOA4OV6S+2vkG4mqxptojexw8csk?=
 =?us-ascii?q?ZPFiZ4SylDB7Ch0xps+KtKkRkBhe9GkDIdQuD+AN4twWs4sTW9ltTo7x7AEu?=
 =?us-ascii?q?JO3YjUGxYokyhPfb/GKfIeF7g/tWuuRLjl0mXZodbC/ihu98EWs1/PxW8233?=
 =?us-ascii?q?VtJsydJj9bCu3YQ3BLQ8siKUuZx8lu71TuB1Q3f8P9ILV40mKbBKpMswqY8m?=
 =?us-ascii?q?ocPvUjZHiL7mF/6gLKWe0gk4OSk9uDqb7vgq5SBLYF7kBv+Pb4rmsGnBOQ4N?=
 =?us-ascii?q?RUBUHaD9OSn0b3j4VX5QLJXjv0qiqXZsI7VJcAcpqOhHw9U3Zws6xC6Dze91?=
 =?us-ascii?q?NkUgWULIE5YdB6diYjmIUvCL+viAvihmFStkCxrx+zYMb3kGZXBNGTMkLDkf?=
 =?us-ascii?q?bpl6k5czhQ8zcxH6p5JFr0NOvz+V03ruNDGEBM0Mxa4zufnBdll04MRQ2OPA?=
 =?us-ascii?q?quXMKPItl+I4/oiI/KQZIALpjbyNf4l6+TrjX8+n18dZrem0oUMaH2jBftpO?=
 =?us-ascii?q?VuWYWHsg9caDWcFoA8+TPfwhFKeVj5TYm6+X7gg6TEjFIKmEYDDS5itgbyGw?=
 =?us-ascii?q?Ci7AppWa3tCClCNCnfoa56EV+0MaSKVPsBhjjsEVaC7S48m1xGhqhP1y6Z9I?=
 =?us-ascii?q?urT4C0YusGr6N8grfzUng013Th1FNiGlXCKRH1zhnkPRTI9wOZ4u0M3ggOS1?=
 =?us-ascii?q?qNkhNRcFMdP/LVYVQwmMobGyO53AMy0XRjOKISnUlGjF5+DBjcqQ98qh5c1f?=
 =?us-ascii?q?0tjFtPqpViD4hHrSfdBjKCGGpEytKfb2WP8Kt1VwX/Lz7g6k1QjWY1EMmjw1?=
 =?us-ascii?q?f03zBTaG4OcyxbRrK2tb6lJhEbw?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AuYUVgawStJbri4O2GXz8KrPx1eskLtp033?=
 =?us-ascii?q?Aq2lEZdDV8eMaVjt3rufwd2wP9hjp5YgBYpfmrPq6cTXTAsbt85ocMNbmvNT?=
 =?us-ascii?q?OWwFeABodk8Ifk3nncCzTzn9QtpJtIXqBiBLTLfD9HpOng5g3QKbYd6fmd9q?=
 =?us-ascii?q?eQg/zCi01BdmhRAJ1IyydcJkKlHlZtRA9AbKBJZKa0wsZcvTKvdTA2Q62Adx?=
 =?us-ascii?q?84dtPOrdHKi57qCCRub3FIiTWmtj+09KX8VyGRwxZ2aUI9/Z4Z7WPHnwblj5?=
 =?us-ascii?q?/T0c2T9x7G22ffq7RQldfxo+EzYPCkt8kPJj3gzjuvfYRqMofy2QwdnefH0i?=
 =?us-ascii?q?dIrPD85zswNcV67H3cOlq4pBP8sjOL7B8er1vZjX6Rmz/KvNHwTjNSMbs7ua?=
 =?us-ascii?q?tpNj/ir3cGkP45+qRRxG6dv4dQFnr77V7AzumNbT1Mu2aO5Voa+NR/s1VvFb?=
 =?us-ascii?q?EzT5J8lsgl0HpoLb88PATcgbpKLMBiCdiZ/e1RfE+RchnizxRS6dGoRzApEh?=
 =?us-ascii?q?+NX0gFvaWuokdrtX191g8GyNcEnnEGnahNN6Vs9qDDKaRnlLZHU88QY+Z8HY?=
 =?us-ascii?q?46MLWKNlA=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DkAwChjnxg/0HhJQpaHgEBCxIMQAm?=
 =?us-ascii?q?BPguBI4F/gUyWLJpugXwLAQEBAQEBAQEBCAE0BAEBhkYmNQgOAgMBAQwBAQY?=
 =?us-ascii?q?BAQEBAQYEAYEDhVEMgjgihB5eARVrJgEEG4JqgX6rYYE0GgJlhFiFHAkBgTC?=
 =?us-ascii?q?BZYUcgl6GA0GBE44aBIJdJz4JO25RQxdWkFKLLYNSmw0HA4MMnQMslEsDkDS?=
 =?us-ascii?q?VHp5kI4QzAgQCBAUCFoFWAoIPcIM6TxcCnHqBKwIGCgEBAwmLf4EQAQE?=
X-IPAS-Result: =?us-ascii?q?A2DkAwChjnxg/0HhJQpaHgEBCxIMQAmBPguBI4F/gUyWL?=
 =?us-ascii?q?JpugXwLAQEBAQEBAQEBCAE0BAEBhkYmNQgOAgMBAQwBAQYBAQEBAQYEAYEDh?=
 =?us-ascii?q?VEMgjgihB5eARVrJgEEG4JqgX6rYYE0GgJlhFiFHAkBgTCBZYUcgl6GA0GBE?=
 =?us-ascii?q?44aBIJdJz4JO25RQxdWkFKLLYNSmw0HA4MMnQMslEsDkDSVHp5kI4QzAgQCB?=
 =?us-ascii?q?AUCFoFWAoIPcIM6TxcCnHqBKwIGCgEBAwmLf4EQAQE?=
X-IronPort-AV: E=Sophos;i="5.82,232,1613433600"; 
   d="scan'208,217";a="366777497"
IronPort-SDR: KF81zJSaTDre9HC+yd+mpXOsZu2hgKEnjIqwFxseY6myzB7N4gCE63QOeMQZTZapPRi74F9bQL
 pgFv2rCC9LTI4923YHvdJ9He1m2OUPmsq37v53CjL57CVcnTH1LsceC4RP/NCOAVkN15hbEC7/
 UuWc1tFeGDOiJ0Qvx04vyaMN3Nc0cr2c1HQkNjNCNUj2B5ciGw/w+3O9qDR+HLXvIzOzugOi/U
 EEw1oCT/8apldt0WoW7DsCVS70+wTEFK9qcGihkf6ygtkInc8xaIWD2EVauSI0o10VtxzQ0uZc
 AnE=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #llvm
Thread-Topic: #yocto #llvm
Thread-Index: Adc0jFEUqm8oGbZHRAqZq1g7iiD8ZA==
Date: Sun, 18 Apr 2021 19:56:35 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.55.155.193]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.16770C03A0381EAC.10214@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_23a53b9d486e40f7919c7249934b4c52baesystemscom_"

--_000_23a53b9d486e40f7919c7249934b4c52baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I attempted to add llvm to my zeus image, and I am seeing the following Yoc=
to build error...

What is the actual problem here, and how best resolve ?

Build Configuration:
BB_VERSION           =3D "1.44.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "rhel-7.9"
TARGET_SYS           =3D "x86_64-poky-linux"
MACHINE              =3D "sbcb-default"
DISTRO               =3D "limws"
DISTRO_VERSION       =3D "3.0.4"
TUNE_FEATURES        =3D "m64 corei7"
TARGET_FPU           =3D ""
meta
meta-poky            =3D "my_yocto_3.0.4:f2eb22a8783f1eecf99bd4042695bab920=
eed00e"
meta-perl
meta-python
meta-filesystems
meta-networking
meta-initramfs
meta-oe              =3D "zeus:2b5dd1eb81cd08bc065bc76125f2856e9383e98b"
meta-clang           =3D "zeus:f5355ca9b86fb5de5930132ffd95a9b352d694f9"
meta                 =3D "master:a32ddd2b2a51b26c011fa50e441df39304651503"
meta-intel           =3D "zeus:d9942d4c3a710406b051852de7232db03c297f4e"
meta-intel           =3D "v2019.02:f635a364c55f1fb12519aff54924a0a5b947091e=
"

Initialising tasks: 100% |#################################################=
######| Time: 0:00:04
Checking sstate mirror object availability: 100% |#########################=
######| Time: 0:00:00
Sstate summary: Wanted 2129 Found 2090 Missed 39 Current 0 (98% match, 0% c=
omplete)
NOTE: Executing Tasks
NOTE: Setscene tasks completed
ERROR: llvm-8.0.1-r0 do_compile: Execution of '/disk0/scratch/smonsees/yoct=
o/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/llvm/8.0.1=
-r0/temp/run.do_compile.18964' failed with exit code 1:
ninja: error: '/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-defau=
lt/tmp/work/corei7-64-poky-linux/llvm/8.0.1-r0/recipe-sysroot-native/usr/bi=
n/llvm-tblgen8.0.1', needed by 'include/llvm/IR/Attributes.inc', missing an=
d no known rule to make it
WARNING: /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp=
/work/corei7-64-poky-linux/llvm/8.0.1-r0/temp/run.do_compile.18964:1 exit 1=
 from 'ninja -v -j 4'

ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/workspac=
e_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/llvm/8.0.1-r0/temp/l=
og.do_compile.18964
Log data follows:
| DEBUG: Executing shell function do_compile
| ninja: error: '/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-def=
ault/tmp/work/corei7-64-poky-linux/llvm/8.0.1-r0/recipe-sysroot-native/usr/=
bin/llvm-tblgen8.0.1', needed by 'include/llvm/IR/Attributes.inc', missing =
and no known rule to make it
| WARNING: /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/t=
mp/work/corei7-64-poky-linux/llvm/8.0.1-r0/temp/run.do_compile.18964:1 exit=
 1 from 'ninja -v -j 4'
| ERROR: Execution of '/disk0/scratch/smonsees/yocto/workspace_3/builds2/sb=
cb-default/tmp/work/corei7-64-poky-linux/llvm/8.0.1-r0/temp/run.do_compile.=
18964' failed with exit code 1:
| ninja: error: '/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-def=
ault/tmp/work/corei7-64-poky-linux/llvm/8.0.1-r0/recipe-sysroot-native/usr/=
bin/llvm-tblgen8.0.1', needed by 'include/llvm/IR/Attributes.inc', missing =
and no known rule to make it
| WARNING: /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/t=
mp/work/corei7-64-poky-linux/llvm/8.0.1-r0/temp/run.do_compile.18964:1 exit=
 1 from 'ninja -v -j 4'
|
ERROR: Task (/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-de=
vtools/llvm/llvm_git.bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5949 tasks of which 5385 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
  /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-devtools/llvm=
/llvm_git.bb:do_compile
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
15:16 smonsees@yix490038 /disk0/scratch/smonsees/yocto/workspace_3/builds2/=
sbcb-default>

--_000_23a53b9d486e40f7919c7249934b4c52baesystemscom_
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
<p class=3D"MsoNormal">I attempted to add llvm to my zeus image, and I am s=
eeing the following Yocto build error&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What is the actual problem here, and how best resolv=
e ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Build Configuration:<o:p></o:p></p>
<p class=3D"MsoNormal">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;1.44.0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &q=
uot;rhel-7.9&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-poky-linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;sbcb-default&quot;<o:p></o:p></=
p>
<p class=3D"MsoNormal">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;limws&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;3.0.4&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; =3D &quot;m64 corei7&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta<o:p></o:p></p>
<p class=3D"MsoNormal">meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;my_yocto_3.0.4:f2eb22a8783f1eecf99bd40426=
95bab920eed00e&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-perl<o:p></o:p></p>
<p class=3D"MsoNormal">meta-python<o:p></o:p></p>
<p class=3D"MsoNormal">meta-filesystems<o:p></o:p></p>
<p class=3D"MsoNormal">meta-networking<o:p></o:p></p>
<p class=3D"MsoNormal">meta-initramfs<o:p></o:p></p>
<p class=3D"MsoNormal">meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;zeus:2b5dd1eb81cd08bc065bc76125=
f2856e9383e98b&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-clang&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;zeus:f5355ca9b86fb5de5930132ffd95a9b352d694f9&=
quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;master:a32ddd2b2=
a51b26c011fa50e441df39304651503&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-intel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;zeus:d9942d4c3a710406b051852de7232db03c297f4e&=
quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-intel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;v2019.02:f635a364c55f1fb12519aff54924a0a5b9470=
91e&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Initialising tasks: 100% |##########################=
#############################| Time: 0:00:04<o:p></o:p></p>
<p class=3D"MsoNormal">Checking sstate mirror object availability: 100% |##=
#############################| Time: 0:00:00<o:p></o:p></p>
<p class=3D"MsoNormal">Sstate summary: Wanted 2129 Found 2090 Missed 39 Cur=
rent 0 (98% match, 0% complete)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Executing Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Setscene tasks completed<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: llvm-8.0.1-r0 do_compile: Execution of '/disk=
0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-6=
4-poky-linux/llvm/8.0.1-r0/temp/run.do_compile.18964' failed with exit code=
 1:<o:p></o:p></p>
<p class=3D"MsoNormal">ninja: error: '/disk0/scratch/smonsees/yocto/workspa=
ce_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/llvm/8.0.1-r0/recip=
e-sysroot-native/usr/bin/llvm-tblgen8.0.1', needed by 'include/llvm/IR/Attr=
ibutes.inc', missing and no known
 rule to make it<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: /disk0/scratch/smonsees/yocto/workspace_3/b=
uilds2/sbcb-default/tmp/work/corei7-64-poky-linux/llvm/8.0.1-r0/temp/run.do=
_compile.18964:1 exit 1 from 'ninja -v -j 4'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /disk0/scratch/=
smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-lin=
ux/llvm/8.0.1-r0/temp/log.do_compile.18964<o:p></o:p></p>
<p class=3D"MsoNormal">Log data follows:<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing shell function do_compile<o:p></o=
:p></p>
<p class=3D"MsoNormal">| ninja: error: '/disk0/scratch/smonsees/yocto/works=
pace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/llvm/8.0.1-r0/rec=
ipe-sysroot-native/usr/bin/llvm-tblgen8.0.1', needed by 'include/llvm/IR/At=
tributes.inc', missing and no known
 rule to make it<o:p></o:p></p>
<p class=3D"MsoNormal">| WARNING: /disk0/scratch/smonsees/yocto/workspace_3=
/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/llvm/8.0.1-r0/temp/run.=
do_compile.18964:1 exit 1 from 'ninja -v -j 4'<o:p></o:p></p>
<p class=3D"MsoNormal">| ERROR: Execution of '/disk0/scratch/smonsees/yocto=
/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/llvm/8.0.1-=
r0/temp/run.do_compile.18964' failed with exit code 1:<o:p></o:p></p>
<p class=3D"MsoNormal">| ninja: error: '/disk0/scratch/smonsees/yocto/works=
pace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/llvm/8.0.1-r0/rec=
ipe-sysroot-native/usr/bin/llvm-tblgen8.0.1',
<b><span style=3D"color:red">needed by 'include/llvm/IR/Attributes.inc', mi=
ssing and no known rule to make it</span></b><o:p></o:p></p>
<p class=3D"MsoNormal">| WARNING: /disk0/scratch/smonsees/yocto/workspace_3=
/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/llvm/8.0.1-r0/temp/run.=
do_compile.18964:1 exit 1 from 'ninja -v -j 4'<o:p></o:p></p>
<p class=3D"MsoNormal">|<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task (/disk0/scratch/smonsees/yocto/workspace=
_3/poky/meta/recipes-devtools/llvm/llvm_git.bb:do_compile) failed with exit=
 code '1'<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 5949 tasks of which 5=
385 didn't need to be rerun and 1 failed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: 1 task failed:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; /disk0/scratch/smonsees/yocto/workspace_3/pok=
y/meta/recipes-devtools/llvm/llvm_git.bb:do_compile<o:p></o:p></p>
<p class=3D"MsoNormal">Summary: There was 1 ERROR message shown, returning =
a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal">15:16 smonsees@yix490038 /disk0/scratch/smonsees/yoc=
to/workspace_3/builds2/sbcb-default&gt;<o:p></o:p></p>
</div>
</body>
</html>

--_000_23a53b9d486e40f7919c7249934b4c52baesystemscom_--
