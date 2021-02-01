Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web09.32422.1612180010636009697
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Feb 2021 03:46:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=Ec52/pqX;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1612180010; x=1769860010;
  h=from:to:subject:date:in-reply-to:mime-version;
  bh=uR3NLuDU9ImpsMrTR1a7ogmCmFhvWk3qG6G+ruQf01k=;
  b=Ec52/pqX47QlMSB7gCpYDcO8esmidQeq30wMxzvw2LCoQtwlJtRL5XK9
   MZk1bZZjtLRVm6M3XqGyXKKzIz+4BQiJg3wcJkqalEcKGReJ4lwFzdadw
   JLnV12gdhZeH43tUIG7qgiqH1eI8XyHTV96cOYCCynwz2rL3YULKZ9odN
   Y=;
IronPort-PHdr: =?us-ascii?q?9a23=3Ae7vrUhZf6p2MCnoA5m/8EFP/LSx+4OfEezUN459i?=
 =?us-ascii?q?sYplN5qZps2/ZR7h7PlgxGXEQZ/co6odzbaP4ua7CSdavd7B6ClELMUTEUddyI?=
 =?us-ascii?q?0/pE8JOIa9E0r1LfrnPWQRPf9pcxtbxUy9KlVfA83kZlff8TWY5D8WHQjjZ0Iu?=
 =?us-ascii?q?frymUoHdgN6q2O+s5pbdfxtHhCanYbN1MR66sRjdutMZjId/Lqs90BXEr3hHd+?=
 =?us-ascii?q?hIym5jOFafkwrh6suq85Nv7iZdt+g9+8JcVKnxYrg1Q6FfADk6KW4++dfltQPE?=
 =?us-ascii?q?TQuB53scVnsZnx9VCAXb7x/0Q4n8vDLiuuVyxCeVM8v2TaspWTu59KdkVAXoiC?=
 =?us-ascii?q?YcODEn9mzcl9F9g7haoBKloBx/3pLUbYSIP/dwYq/RYdUXTndHU81MVSJOH5m8?=
 =?us-ascii?q?YpMPAeQfIOhYs4fzqVgArRS8BAmjGOzgxyRSiXPq3603yfgtHR3Y0AEmAtkAsG?=
 =?us-ascii?q?7UrNLwNKoKX+y7y67IzTPYb/xIxzj985DEeQ08r/GQQ71wb9TeyU8yHA7bk16c?=
 =?us-ascii?q?rYLqMS6Q2ugDrmOW6PFgVf6xhG45tQ5xpCKjxsIrionPnYIa1E7L9T5izYkuP9?=
 =?us-ascii?q?K3VlV7YN6/EJtMqS6aMpB2Ttk+TGFvvSY307sLsoO0cyYW0poo3QLfa+CZfIiS?=
 =?us-ascii?q?5BLuTOecLDl5iX9leL+ymRi8/0a8x+D8VcS50UhGoypFn9TSsn0ByQHe5MiHRP?=
 =?us-ascii?q?Z54kus2DaC2QDX5+9LPUw5i6nWJpEnz7UtmJQTtkHDETX3mEXwlKKXdkIk9fS0?=
 =?us-ascii?q?6+TgerXmvJicN41qhQ7iLqQigMu/Af43MgQWUGib+Pi81L3+/ULiWrlFkvo2kq?=
 =?us-ascii?q?zfvZvHJsobvra0DxJJ3oo55RuyDS2q3MkckHQJNl5IeROKg5D0N13SOvz1Aviy?=
 =?us-ascii?q?j06jnTtx2vzLPrvsCYjXIHfZirfuZ7N95lZZyAo00N9Q+YpZCqoEIPLvQk/xs8?=
 =?us-ascii?q?HYDgMhPwy03ennDNJ925sYWWKPBK+WKqbSsUSL6+8vP+WAeJIZtCz7K/c//fLh?=
 =?us-ascii?q?lmU2lkEGfaipxpsXdG63HvF9I0mDfXXshdIBHX8Lvgo4UuPqlEWPXSNPa3qoUa?=
 =?us-ascii?q?8x5Cs3BJ+iAIrNXIyggb2M0D++HpJMZ2BGDl6MEW3vd4WBQ/oMcz6SLdF/kjMa?=
 =?us-ascii?q?U7itUYoh1RaotA/h1bVoMPHU9zYDup35ytd1/O3SlQou9TNqCsSdyHuBQH1znm?=
 =?us-ascii?q?MNXzM2xrxwoVRhylef1qh1m/xZFdtP6PNVVQc3Lprcz+1hC9DuQQLNZNeISFG6?=
 =?us-ascii?q?TdW6BjExVsgxw9gMY0ljB9qikgrP3y2wA78axPS3A8l+16XaxHX8PII18GrLyq?=
 =?us-ascii?q?Qnx3JuAvZ0dCfu0rVj+hbeAcjMlEOCmquxXa4V0TXc73uOyHHIt0ZdBko4G7TC?=
 =?us-ascii?q?VmwYTk/XtsjioFLFRKOpEa4gMAZK1YiFMKQAIon4il5aQ9/nOc/CeCSgnGysAg?=
 =?us-ascii?q?6SwbGBZ5asfH8SinbzEk8Bxko2+nCdOAUlQm+av2/AATomPhqvXnitu6Eqs2+2?=
 =?us-ascii?q?UEIyiQSNaVZs2qGd8BcYnu2HV/4WxfQPvyJ3+GY8J0q0w9+DU4nInAFmZqgJOd?=
 =?us-ascii?q?4=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DpBADu6Bdg/0LBJQpiHgEBCxIMQIJyg?=
 =?us-ascii?q?X6BJBkKlgwDjxOGAYVHgWgLAQEBAQEBAQEBCAEYAQYQBAEBhEoCgXkmOBMCEAE?=
 =?us-ascii?q?BBgEBAQEBBgQBhlENgjgigxkBAQEEASYGXAIBCBEEAQEvKAodCAEBBAESCIMfg?=
 =?us-ascii?q?X6wR3SBATOKWAkBgS6JS4NzggM+gRGDGT6CXQIDgScBEgGGGgSCXSc+CQoxG1O?=
 =?us-ascii?q?BFG2PSIpxgzqaSgcDgnaJNItIhngrhGKeMS2TfYk2k2wihCMCBAIEBQIWgW2BC?=
 =?us-ascii?q?nBwUIJpCUcXAg2SEoUUhUR0NwIGCgEBAwmLBIERAQE?=
X-IPAS-Result: =?us-ascii?q?A2DpBADu6Bdg/0LBJQpiHgEBCxIMQIJygX6BJBkKlgwDjxO?=
 =?us-ascii?q?GAYVHgWgLAQEBAQEBAQEBCAEYAQYQBAEBhEoCgXkmOBMCEAEBBgEBAQEBBgQBh?=
 =?us-ascii?q?lENgjgigxkBAQEEASYGXAIBCBEEAQEvKAodCAEBBAESCIMfgX6wR3SBATOKWAk?=
 =?us-ascii?q?BgS6JS4NzggM+gRGDGT6CXQIDgScBEgGGGgSCXSc+CQoxG1OBFG2PSIpxgzqaS?=
 =?us-ascii?q?gcDgnaJNItIhngrhGKeMS2TfYk2k2wihCMCBAIEBQIWgW2BCnBwUIJpCUcXAg2?=
 =?us-ascii?q?SEoUUhUR0NwIGCgEBAwmLBIERAQE?=
X-IronPort-AV: E=Sophos;i="5.79,392,1602547200"; 
   d="scan'208,217";a="482400923"
X-IronPort-AV: E=Sophos;i="5.79,392,1602547200"; 
   d="scan'208,217";a="243715813"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: #yocto #zeus #sdk populate_sdk_ext build failing
Thread-Topic: #yocto #zeus #sdk populate_sdk_ext build failing
Thread-Index: Adb2ki62K7RJTJj+Q66jlY0juAIcFQB/aWvA
Date: Mon, 1 Feb 2021 11:46:31 +0000
In-Reply-To: <MADEUP.165ED668EC590D36.30795@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.165F9D2E2C1A8F67.28411@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_eb62259844ca4775bd44525f6cc5a705baesystemscom_"

--_000_eb62259844ca4775bd44525f6cc5a705baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Any ideas on how to resolve this extended SDK build issue ?

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Monsees, Steven C (US) via lists.yoctoproject.org
Sent: Friday, January 29, 2021 6:04 PM
To: yocto@lists.yoctoproject.org
Subject: [yocto] #yocto #zeus #sdk populate_sdk_ext build failing

*** WARNING ***
EXTERNAL EMAIL -- This message originates from outside our organization.


I need some help in understanding why the SDK EXT is failing to build under=
 zeus...

Can someone explain why the extended sdk build fails and how I might resolv=
e ?

sbcb-defaultfs kernel builds and boots correctly...

SDK builds under zeus for sbcb-defaultfs :

bitbake sbcb-defaultfs-full -c populate_sdk    -WORKING CORRECTLY

bitbake sbcb-defaultfs-full -c populate_sdk_ext  -Fails build with the foll=
owing Errors:

17:13 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/sbcb-default> bitbake sbcb-defaultfs-full -c populate_sd=
k_ext
Loading cache: 100% |######################################################=
#####| Time: 0:00:00
Loaded 3645 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

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
meta                 =3D "master:a32ddd2b2a51b26c011fa50e441df39304651503"
meta-intel           =3D "zeus:d9942d4c3a710406b051852de7232db03c297f4e"
meta-intel
workspace            =3D "v2019.02:f635a364c55f1fb12519aff54924a0a5b947091e=
"

Initialising tasks: 100% |#################################################=
#####| Time: 0:00:04
Checking sstate mirror object availability: 100% |#########################=
#####| Time: 0:00:00
Sstate summary: Wanted 503 Found 298 Missed 205 Current 1936 (59% match, 91=
% complete)
NOTE: Executing Tasks
NOTE: Setscene tasks completed
WARNING: rpcsvc-proto-native-1.4+gitAUTOINC+9bc3b5b785-r0 do_fetch: Failed =
to fetch URL git://github.com/thkukuk/rpcsvc-proto, attempting MIRRORS if a=
vailable
WARNING: nativesdk-libnss-nis-3.1+gitAUTOINC+062f31999b-r0 do_fetch: Failed=
 to fetch URL git://github.com/thkukuk/libnss_nis, attempting MIRRORS if av=
ailable
NOTE: Excluding local workspace layer /disk0/scratch/smonsees/yocto/workspa=
ce_3/meta-bae/meta-limws/builds/sbcb-default/workspace from extensible SDK
ERROR: sbcb-defaultfs-full-1.0-r0 do_populate_sdk_ext: Failed to generate f=
iltered task list for extensible SDK:
/bin/bash: line 0: .: .: is a directory
ERROR: bitbake failed:
/bin/sh: bitbake: command not found
ERROR: sbcb-defaultfs-full-1.0-r0 do_populate_sdk_ext: Error executing a py=
thon function in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
*** 0002:copy_buildsystem(d)
     0003:
File: '/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/classes/populate=
_sdk_ext.bbclass', lineno: 444, function: copy_buildsystem
     0440:    sdk_ext_type =3D d.getVar('SDK_EXT_TYPE')
     0441:    if (sdk_ext_type !=3D 'minimal' or sdk_include_toolchain or d=
erivative) and not sdk_include_nativesdk:
     0442:        # Create the filtered task list used to generate the ssta=
te cache shipped with the SDK
     0443:        tasklistfn =3D d.getVar('WORKDIR') + '/tasklist.txt'
*** 0444:        create_filtered_tasklist(d, baseoutpath, tasklistfn, conf_=
initpath)
     0445:    else:
     0446:        tasklistfn =3D None
     0447:
     0448:    if os.path.exists(builddir + '/cache/bb_unihashes.dat'):
File: '/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/classes/populate=
_sdk_ext.bbclass', lineno: 180, function: create_filtered_tasklist
     0176:        # Clean out residue of running bitbake, which check_sstat=
e_task_list()
     0177:        # will effectively do
     0178:        clean_esdk_builddir(d, sdkbasepath)
     0179:    finally:
*** 0180:        os.replace(sdkbasepath + '/conf/local.conf.bak', sdkbasepa=
th + '/conf/local.conf')
     0181:
     0182:python copy_buildsystem () {
     0183:    import re
     0184:    import shutil
Exception: FileNotFoundError: [Errno 2] No such file or directory: '/disk0/=
scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/=
tmp/work/sbcb_default-poky-linux/sbcb-defaultfs-full/1.0-r0/sdk-ext/image//=
opt/limws/3.0.4/conf/local.conf.bak' -> '/disk0/scratch/smonsees/yocto/work=
space_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/sbcb_default-poky-=
linux/sbcb-defaultfs-full/1.0-r0/sdk-ext/image//opt/limws/3.0.4/conf/local.=
conf'

ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/workspac=
e_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/sbcb_default-poky-linu=
x/sbcb-defaultfs-full/1.0-r0/temp/log.do_populate_sdk_ext.14130
ERROR: Task (/disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/met=
a-limws/meta-intel/recipes-core/images/sbcb-defaultfs-full.bb:do_populate_s=
dk_ext) failed with exit code '1'
NOTE: Tasks Summary: Attempted 6770 tasks of which 6274 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
  /disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/meta-limws/met=
a-intel/recipes-core/images/sbcb-defaultfs-full.bb:do_populate_sdk_ext
Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
17:49 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/sbcb-default>

--_000_eb62259844ca4775bd44525f6cc5a705baesystemscom_
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Any ideas on how to re=
solve this extended SDK build issue ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> yocto@lists.yoctoproject.org &lt;yocto@=
lists.yoctoproject.org&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via lists.yoctoproject.org<br>
<b>Sent:</b> Friday, January 29, 2021 6:04 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> [yocto] #yocto #zeus #sdk populate_sdk_ext build failing<o:=
p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:solid windowtext 1.0pt;padding:1.0pt 4.0pt 1.0pt 4.0pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">*<strong=
><span style=3D"font-family:&quot;Arial&quot;,sans-serif">**
</span></strong></span><strong><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,sans-serif">WARNING
</span></strong><strong><span style=3D"font-size:12.0pt;font-family:&quot;A=
rial&quot;,sans-serif">***</span></strong><span style=3D"font-size:8.5pt;fo=
nt-family:&quot;Arial&quot;,sans-serif"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif">EXTERNAL EMAIL -- This message originates from outside our organizati=
on</span><span style=3D"font-size:8.5pt;font-family:&quot;Arial&quot;,sans-=
serif">.</span><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I need some help in understanding why the SDK EXT is=
 failing to build under zeus&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#2E75B6">Can someone explain=
 why the extended sdk build fails and how I might resolve ?</span><o:p></o:=
p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>sbcb-defaultfs kernel builds and boots correctly&=
#8230;<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SDK builds under zeus for sbcb-defaultfs :<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>bitbake sbcb-defaultfs-full -c populate_sdk&nbsp;=
&nbsp;&nbsp; -WORKING CORRECTLY<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red">bitbake sbcb-defaultfs-=
full -c populate_sdk_ext &nbsp;-Fails build with the following Errors:<o:p>=
</o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">17:13 smonsees@yix490016 /disk0/scratch/smonsees/yoc=
to/workspace_3/meta-bae/meta-limws/builds/sbcb-default&gt; bitbake sbcb-def=
aultfs-full -c populate_sdk_ext<o:p></o:p></p>
<p class=3D"MsoNormal">Loading cache: 100% |###############################=
############################| Time: 0:00:00<o:p></o:p></p>
<p class=3D"MsoNormal">Loaded 3645 entries from dependency cache.<o:p></o:p=
></p>
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
<p class=3D"MsoNormal">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;master:a32ddd2b2=
a51b26c011fa50e441df39304651503&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-intel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;zeus:d9942d4c3a710406b051852de7232db03c297f4e&=
quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-intel<o:p></o:p></p>
<p class=3D"MsoNormal">workspace&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;v2019.02:f635a364c55f1fb12519aff54924a0a5=
b947091e&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Initialising tasks: 100% |##########################=
############################| Time: 0:00:04<o:p></o:p></p>
<p class=3D"MsoNormal">Checking sstate mirror object availability: 100% |##=
############################| Time: 0:00:00<o:p></o:p></p>
<p class=3D"MsoNormal">Sstate summary: Wanted 503 Found 298 Missed 205 Curr=
ent 1936 (59% match, 91% complete)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Executing Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Setscene tasks completed<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: rpcsvc-proto-native-1.4&#43;gitAUTOINC&#43;=
9bc3b5b785-r0 do_fetch: Failed to fetch URL git://github.com/thkukuk/rpcsvc=
-proto, attempting MIRRORS if available<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: nativesdk-libnss-nis-3.1&#43;gitAUTOINC&#43=
;062f31999b-r0 do_fetch: Failed to fetch URL git://github.com/thkukuk/libns=
s_nis, attempting MIRRORS if available<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Excluding local workspace layer /disk0/scratch=
/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/workspa=
ce from extensible SDK<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: sbcb-defaultfs-full-1.0-r0 do_populate_sdk_ex=
t: Failed to generate filtered task list for extensible SDK:<o:p></o:p></p>
<p class=3D"MsoNormal">/bin/bash: line 0: .: .: is a directory<o:p></o:p></=
p>
<p class=3D"MsoNormal">ERROR: bitbake failed:<o:p></o:p></p>
<p class=3D"MsoNormal">/bin/sh: bitbake: command not found<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: sbcb-defaultfs-full-1.0-r0 do_populate_sdk_ex=
t: Error executing a python function in exec_python_func() autogenerated:<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The stack trace of python calls that resulted in thi=
s exception/failure was:<o:p></o:p></p>
<p class=3D"MsoNormal">File: 'exec_python_func() autogenerated', lineno: 2,=
 function: &lt;module&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0001:<o:p></o:p></p>
<p class=3D"MsoNormal">*** 0002:copy_buildsystem(d)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0003:<o:p></o:p></p>
<p class=3D"MsoNormal">File: '/disk0/scratch/smonsees/yocto/workspace_3/pok=
y/meta/classes/populate_sdk_ext.bbclass', lineno: 444, function: copy_build=
system<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0440:&nbsp;&nbsp;&nbsp; sdk=
_ext_type =3D d.getVar('SDK_EXT_TYPE')<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0441:&nbsp;&nbsp;&nbsp; if =
(sdk_ext_type !=3D 'minimal' or sdk_include_toolchain or derivative) and no=
t sdk_include_nativesdk:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0442:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; # Create the filtered task list used to generate the s=
state cache shipped with the SDK<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0443:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; tasklistfn =3D d.getVar('WORKDIR') &#43; '/tasklist.tx=
t'<o:p></o:p></p>
<p class=3D"MsoNormal">*** 0444:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
create_filtered_tasklist(d, baseoutpath, tasklistfn, conf_initpath)<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0445:&nbsp;&nbsp;&nbsp; els=
e:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0446:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; tasklistfn =3D None<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0447:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0448:&nbsp;&nbsp;&nbsp; if =
os.path.exists(builddir &#43; '/cache/bb_unihashes.dat'):<o:p></o:p></p>
<p class=3D"MsoNormal">File: '/disk0/scratch/smonsees/yocto/workspace_3/pok=
y/meta/classes/populate_sdk_ext.bbclass', lineno: 180, function: create_fil=
tered_tasklist<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0176:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; # Clean out residue of running bitbake, which check_ss=
tate_task_list()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0177:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; # will effectively do<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0178:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; clean_esdk_builddir(d, sdkbasepath)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0179:&nbsp;&nbsp;&nbsp; fin=
ally:<o:p></o:p></p>
<p class=3D"MsoNormal">*** 0180:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
os.replace(sdkbasepath &#43; '/conf/local.conf.bak', sdkbasepath &#43; '/co=
nf/local.conf')<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0181:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0182:python copy_buildsyste=
m () {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0183:&nbsp;&nbsp;&nbsp; imp=
ort re<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0184:&nbsp;&nbsp;&nbsp; imp=
ort shutil<o:p></o:p></p>
<p class=3D"MsoNormal">Exception: FileNotFoundError: [Errno 2] No such file=
 or directory: '/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-lim=
ws/builds/sbcb-default/tmp/work/sbcb_default-poky-linux/sbcb-defaultfs-full=
/1.0-r0/sdk-ext/image//opt/limws/3.0.4/conf/local.conf.bak'
 -&gt; '/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/build=
s/sbcb-default/tmp/work/sbcb_default-poky-linux/sbcb-defaultfs-full/1.0-r0/=
sdk-ext/image//opt/limws/3.0.4/conf/local.conf'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /disk0/scratch/=
smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work=
/sbcb_default-poky-linux/sbcb-defaultfs-full/1.0-r0/temp/log.do_populate_sd=
k_ext.14130<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task (/disk0/scratch/smonsees/yocto/workspace=
_3/poky/../meta-bae/meta-limws/meta-intel/recipes-core/images/sbcb-defaultf=
s-full.bb:do_populate_sdk_ext) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 6770 tasks of which 6=
274 didn't need to be rerun and 1 failed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: 1 task failed:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; /disk0/scratch/smonsees/yocto/workspace_3/pok=
y/../meta-bae/meta-limws/meta-intel/recipes-core/images/sbcb-defaultfs-full=
.bb:do_populate_sdk_ext<o:p></o:p></p>
<p class=3D"MsoNormal">Summary: There were 2 WARNING messages shown.<o:p></=
o:p></p>
<p class=3D"MsoNormal">Summary: There were 2 ERROR messages shown, returnin=
g a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal">17:49 smonsees@yix490016 /disk0/scratch/smonsees/yoc=
to/workspace_3/meta-bae/meta-limws/builds/sbcb-default&gt;<o:p></o:p></p>
</div>
</body>
</html>

--_000_eb62259844ca4775bd44525f6cc5a705baesystemscom_--
