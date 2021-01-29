Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web08.373.1611961460433849661
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 15:04:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=M1vBtgXq;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1611961460; x=1769641460;
  h=from:to:subject:date:mime-version;
  bh=2VCPiGU1g1rULXm3AZ+rK2j8X9rvUcW+hqhHt5d15Po=;
  b=M1vBtgXqie5nH9D8GVCq9RqKveSzMn0YivGA0d5enFS6TLNFPG3OvdrK
   gPb9Ntbfkh0bW1cdfe2gaPJnrkmgs6ie5Rj9lQ3gRI9lYkz3i+gr1GLsu
   EoNinO6N4sO2e0DPUmGgse29hLe4l1YNnvKVXZQMl9NxFNrjxXHkx6qrY
   U=;
IronPort-PHdr: =?us-ascii?q?9a23=3ApNeLjh/bcI3Y8/9uRHKM819IXTAuvvDOBiVQ1KB+?=
 =?us-ascii?q?0+wXIJqq85mqBkHD//Il1AaPAdyKrakfwLKP++C4ACpcuMnH6ChDOLV3FDY9wf?=
 =?us-ascii?q?0MmAIhBMPXQWbaF9XNKxIAIcJZSVV+9Gu6O0UGUOz3ZlnVv2HgpWVKQka3OgV6?=
 =?us-ascii?q?PPn6FZDPhMqrye+y54fTYwJVjzahfL9+Nhq7oRjVu8UMj4ZvJKk9xgfUrnBVf+?=
 =?us-ascii?q?ha2X5kKUickhrh5Mq85oJv/zhVt/k868NOTKL2crgiQ7dFFjomKWc15MPqtRnH?=
 =?us-ascii?q?UwSC42YXX3sVnBRVHQXL9Qn2UZjtvCT0sOp9wzSaMtbtTb8oQzSi7rxkRwHuhS?=
 =?us-ascii?q?waKjM26mDXish3jKJGvBKsogF0zoDIbI2JMvd1Y6XQds4YS2VcRMZcTyxPDJ2h?=
 =?us-ascii?q?YYsTAeQPPudYoJXyqFYVtxSyGQusCfnzxjNUmHP727Ax3eQ7EQHB2QwtB9wCvn?=
 =?us-ascii?q?PTrNXzL6cdT/66zLLQwT7ecv1WxSny6JbWfRAnvPqBQ697fc7fxkcyEg/JgEib?=
 =?us-ascii?q?pIv+PzOJyOsNrXaU7+x6WeKqjG4nrRpxrSaxycc3kYTGnZgaxU7f9SR524Y1Oc?=
 =?us-ascii?q?O3SEtgYdK+DJRQsCSaOpJwT8g/TG5mpDw0xacauZ6nYicK0pInygbfZvCbc4aF?=
 =?us-ascii?q?7RLtWemQLDtkinxoZa+yihSs/EWi1OHwSMa53VdOoydLnNfBuWwB2hLc58WJRf?=
 =?us-ascii?q?Zz8Ems1DeT2w3T7OxPPE46la3eK5E7w74wkIIesUvCHi/qmEX2kbSZel849eiv?=
 =?us-ascii?q?7uTqZKjtqJyEN4Jslw3yLr4il8K9DOgiLAQCQWiW9f692bDj5UH1XalGguc2n6?=
 =?us-ascii?q?TZqpzWOMQWq66jDwNL0osv9hCyBCq83tsCh3kINldFdQqCj4juJl7BPuj1Dey6?=
 =?us-ascii?q?g1SwiDdrwO3GPqH5DpXNMHfDlLDhcK5h609T0gUzy9Vf54lQB70dPP7/RlL9uM?=
 =?us-ascii?q?beDhAjKQC72PzoB8tm1oIeQmKPHrGWMKbJsVOS+u0vJOyMaJcUuDb7Nfcl++bj?=
 =?us-ascii?q?gWIllVMHc6Sk34EbZG6mEvlmOUmUYHrhjs8EEWgQvwo+SOLqiEeFUT5Wf3uyRL?=
 =?us-ascii?q?486S8lCI24C4fPXIWtgLuH3CegAJJZeHtGB0uXHnjyaYqEQPcNaDmOIsB/lzwE?=
 =?us-ascii?q?TqKtRJMm1RGrrAP60aZoLvLI+i0EspLuzNh05+rPmhEu8jx5FMCd02CWT2FohW?=
 =?us-ascii?q?MEXT833KdjrkxhzVeDybJ4g/taFdNN+/xJTh02NZnGz+x1WJjOXVeLb9CCVFGO?=
 =?us-ascii?q?RtS9HSp3X9U639gWeUF/Ft6+yBfZ0GDiV64SnKCMLJg16b7HmWn2LNp602zB1q?=
 =?us-ascii?q?Qqkx8hWMQZZkO8gasqvS3UAZXEnl7d3522eLoR2mbmvCe+9ivE9BVDTANuXKOD?=
 =?us-ascii?q?WHcZfUbbtvzz707ZXqSyBLE8dABGzJjReeNxdtT1gAAeF7/YM9PEbjfplg=3D?=
 =?us-ascii?q?=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2B+BAD2khRg/0HhJQpiHgEBCxIMQIFEC?=
 =?us-ascii?q?4EjgX6BOwqWCpUXhy8LAQEBAQEBAQEBCAEbFAQBAYZFJjcGDgIQAQEGAQEBAQE?=
 =?us-ascii?q?GBAGGUQEMgjgig0cGXgGBACYBBBuDH4F+tVOBATOFWYR7CQGBLo0+ggM+gRGGN?=
 =?us-ascii?q?AKHWASCXSc+CQoxboEUbY9Eim6DOJpHBwOCdokykjorhGCeJC2Te4k2k2cihCI?=
 =?us-ascii?q?CBAIEBQIWgWyBe3BQgmkJRxcCDZISilh0NwIGCgEBAwmLBIERAQE?=
X-IPAS-Result: =?us-ascii?q?A2B+BAD2khRg/0HhJQpiHgEBCxIMQIFEC4EjgX6BOwqWCpU?=
 =?us-ascii?q?Xhy8LAQEBAQEBAQEBCAEbFAQBAYZFJjcGDgIQAQEGAQEBAQEGBAGGUQEMgjgig?=
 =?us-ascii?q?0cGXgGBACYBBBuDH4F+tVOBATOFWYR7CQGBLo0+ggM+gRGGNAKHWASCXSc+CQo?=
 =?us-ascii?q?xboEUbY9Eim6DOJpHBwOCdokykjorhGCeJC2Te4k2k2cihCICBAIEBQIWgWyBe?=
 =?us-ascii?q?3BQgmkJRxcCDZISilh0NwIGCgEBAwmLBIERAQE?=
X-IronPort-AV: E=Sophos;i="5.79,386,1602547200"; 
   d="scan'208,217";a="482160919"
X-IronPort-AV: E=Sophos;i="5.79,386,1602547200"; 
   d="scan'208,217";a="97335273"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #zeus #sdk populate_sdk_ext build failing
Thread-Topic: #yocto #zeus #sdk populate_sdk_ext build failing
Thread-Index: Adb2ki62K7RJTJj+Q66jlY0juAIcFQ==
Date: Fri, 29 Jan 2021 23:04:08 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.55.155.251]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.165ED668EC590D36.30795@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_bc4835c7cb614517b1b86d816100e8fdbaesystemscom_"

--_000_bc4835c7cb614517b1b86d816100e8fdbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


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

--_000_bc4835c7cb614517b1b86d816100e8fdbaesystemscom_
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
<p class=3D"MsoNormal">I need some help in understanding why the SDK EXT is=
 failing to build under zeus&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#2E75B6;mso-style-textfill-f=
ill-color:#2E75B6;mso-style-textfill-fill-alpha:100.0%">Can someone explain=
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

--_000_bc4835c7cb614517b1b86d816100e8fdbaesystemscom_--
