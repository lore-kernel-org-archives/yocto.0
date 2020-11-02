Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.114.1604349078776334687
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Nov 2020 12:31:19 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=aLz0ML3E;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1604349078; x=1762029078;
  h=from:to:subject:date:mime-version;
  bh=+jzsCBXAYsbK4OLiuAqa2HWXagSlp9H6uuYBD5QMLYs=;
  b=aLz0ML3E8d9SuFequFAhRQcbLlZZZMG/WJrdmtgwfQar9lCYb2QoKlnQ
   mAdf+SXItXIBidcSfzzpZV8LuDs+TQ4JzGHebC3Oolljf9agcxl53YeUm
   3KJ2yQZqn5kpfDkqeAmEPFdTT0iA83iz9WLRBxmSQ3LaBoY55rDnDwDLu
   o=;
IronPort-PHdr: =?us-ascii?q?9a23=3A7DNdRhL1jf9VSPeW99mcpTZWNBhigK39O0sv0rFi?=
 =?us-ascii?q?tYgXKv75rarrMEGX3/hxlliBBdydt6sbzbOO6uu9BSQp2tWoiDg6aptCVhsI24?=
 =?us-ascii?q?09vjcLJ4q7M3D9N+PgdCcgHc5PBxdP9nC/NlVJSo6lPwWB6nK94iQPFRrhKAF7?=
 =?us-ascii?q?Ovr6GpLIj8Swyuu+54Dfbx9HiTagY75+Ngi6oRnMusUZgYZvJbs6xwfUrHdPZ+?=
 =?us-ascii?q?lY335jK0iJnxb76Mew/Zpj/DpVtvk86cNOUrj0crohQ7BAAzsoL2465MvwtRne?=
 =?us-ascii?q?VgSP/WcTUn8XkhVTHQfI6gzxU4rrvSv7sup93zSaPdHzQLspVzmu87tnRRn1gy?=
 =?us-ascii?q?oBKjU38nzYitZogaxbvhyvugB/zYDXboGUKPVxcbjQcskGSWpDRMtdSzBNDp26?=
 =?us-ascii?q?YoASD+QBJ+FYr4zlqlcAqhW+Ag+sBPjxxTBWnX/6xbAx3fk9EQ7YwgwvAdQOu2?=
 =?us-ascii?q?nKod7oMKsdX/27wKzGwT7eaP5Wwiv955bWch8/p/GAR7dwcc3XyUk0CQzKkE6Q?=
 =?us-ascii?q?pJf+MDyPyOsNqGia7/F8Ve2xjm4nsBt9rSSoxscpk4TEgJ8exV/Y+ytj2ok1Oc?=
 =?us-ascii?q?G4R1BhYd6iCJZdtz2WOYt5T80iTGxluTo2xLMbtJOmfiUH1pYqywDBZ/GIcoWF?=
 =?us-ascii?q?5hzuWuieLDtkin9od7yyihm8/0Wuy+DwSsm53VBXpSRLldnMs2oC1x3V6sWfRf?=
 =?us-ascii?q?t9/1uh2TaS1w/I8O1LPUc0la/dJpU8wbAwjoIevVnfEiPslkj7jrWaels69uWo?=
 =?us-ascii?q?8ejqY7TrqoeBO4NokA3zPasjlta7DOgiMQUDXW6W8vmm2rL55032WrBKg+Uzkq?=
 =?us-ascii?q?nerZ/VO9wWprW8Aw9JyoYj7Au/Dyu+3NQYg3YHKFVFdQqbgIfzIFHBPPX4Dey7?=
 =?us-ascii?q?jlmokzpn2+7KMqfnAprXNHTMi63ucqhm609c0woz0c5Q55dPCr0bPP3zXUrxuM?=
 =?us-ascii?q?TZDh8/LQO03/7qBMhh2o8EV2+CALWVPL3MvVKI/O4iIuiBaJcQuDnnKvgl4/Du?=
 =?us-ascii?q?jWU+mV8YZaSpxocXZ26mHvt4JUWVe3/sgtAHEWcRoAUxUvfqhUaZXjFJeXmyRK?=
 =?us-ascii?q?I95ionCI24CIfDXZqhj6CG3Ce+BpFWfHxJCkiQEXf0cIWJQ/cNaCWOLc99lTwJ?=
 =?us-ascii?q?TryhS4461RGyrw/20bpmLu3I9S0EspLjzMJ15+rRlR4s6TN0E96R02aXT2F7zS?=
 =?us-ascii?q?s0QGp8zad0vUtVzlaYzbM+kvtTCdtL/fRLXwwmc5nGwKYyX8H1UR7GVtOIU0q9?=
 =?us-ascii?q?BMShCi02Vsg2wdIFfwB6Adr03T7Z2C//SZoSkaeGCYdwupnA0mb8IY5Wgzb77+?=
 =?us-ascii?q?hrxw09XsZROGvgg6l57AXeHKbDmkiChr22eKEHmiXK8THQniK1oEhEXVsoAu3+?=
 =?us-ascii?q?VncFax6OoA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ABBQAPa6Bf/0LhJQpigQmCcoF3gTYKl?=
 =?us-ascii?q?GWdEwsBAQEBAQEBAQEIARsUBAEBhlUmOBMCEAEBBgEBAQEBBgQBhlEBC4I3IoM?=
 =?us-ascii?q?sIRpEAYEAJgEEG4MfgX6wdoE0gzuCHIUaCQGBLoFcjTs+gRGGLQKHVQSQLopKg?=
 =?us-ascii?q?yeZfwcDgmyJCJF1K4RCnSiTSokUlysCBAIEBQIVgWuBenCDOQlHFwINjisXg06?=
 =?us-ascii?q?KWHQ4AgYKAQEDCY03Ml8BAQ?=
X-IPAS-Result: =?us-ascii?q?A2ABBQAPa6Bf/0LhJQpigQmCcoF3gTYKlGWdEwsBAQEBAQE?=
 =?us-ascii?q?BAQEIARsUBAEBhlUmOBMCEAEBBgEBAQEBBgQBhlEBC4I3IoMsIRpEAYEAJgEEG?=
 =?us-ascii?q?4MfgX6wdoE0gzuCHIUaCQGBLoFcjTs+gRGGLQKHVQSQLopKgyeZfwcDgmyJCJF?=
 =?us-ascii?q?1K4RCnSiTSokUlysCBAIEBQIVgWuBenCDOQlHFwINjisXg06KWHQ4AgYKAQEDC?=
 =?us-ascii?q?Y03Ml8BAQ?=
X-IronPort-AV: E=Sophos;i="5.77,445,1596499200"; 
   d="scan'208,217";a="322356856"
X-IronPort-AV: E=Sophos;i="5.77,445,1596499200"; 
   d="scan'208,217";a="171006571"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto -zeus
Thread-Topic: #yocto -zeus
Thread-Index: AdaxVqG+TwYxYxogR7aDXyVBFJsJxQ==
Date: Mon, 2 Nov 2020 20:31:02 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1643CAFCDC51C983.19423@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1173e8b238b344309ca3811f545b01cebaesystemscom_"

--_000_1173e8b238b344309ca3811f545b01cebaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Attempting to move to zeus...
Build with zeus 3.0.4, using "bitbake -k", all other downloads for kernel/i=
mage were successful...

Can someone tell why I am getting the following 4 errors and how best to re=
solve ?


Loading cache: 100% |######################################################=
#########################################| Time: 0:00:00
Loaded 3642 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "1.44.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "rhel-7.8"
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
meta-intel           =3D "zeus:d9942d4c3a710406b051852de7232db03c297f4e"
meta-intel           =3D "v2019.02:f635a364c55f1fb12519aff54924a0a5b947091e=
"

Initialising tasks: 100% |#################################################=
#########################################| Time: 0:00:03
Sstate summary: Wanted 316 Found 296 Missed 20 Current 1793 (93% match, 99%=
 complete)
NOTE: Executing Tasks
NOTE: Setscene tasks completed
WARNING: ovmf-native-edk2-stable201905-r0 do_fetch: Failed to fetch URL git=
sm://github.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dgit, attempti=
ng MIRRORS if available
ERROR: ovmf-native-edk2-stable201905-r0 do_fetch: Fetcher failure: Fetch co=
mmand export PSEUDO_DISABLED=3D1; unset _PYTHON_SYSCONFIGDATA_NAME; export =
DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-3LFubab4k2,guid=3D5c1=
9cfb5af3a9248c3a7a8bb5f7eedd1"; export SSH_AGENT_PID=3D"22978"; export SSH_=
AUTH_SOCK=3D"/run/user/11588/keyring/ssh"; export PATH=3D"/disk0/scratch/sm=
onsees/yocto/workspace_3/poky/scripts/native-intercept:/disk0/scratch/smons=
ees/yocto/workspace_3/poky/scripts:/disk0/scratch/smonsees/yocto/workspace_=
3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf-native=
/edk2-stable201905-r0/recipe-sysroot-native/usr/bin/x86_64-linux:/disk0/scr=
atch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp=
/work/x86_64-linux/ovmf-native/edk2-stable201905-r0/recipe-sysroot-native/u=
sr/bin:/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds=
/sbcb-default/tmp/work/x86_64-linux/ovmf-native/edk2-stable201905-r0/recipe=
-sysroot-native/usr/sbin:/disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf-native/edk2-stab=
le201905-r0/recipe-sysroot-native/usr/bin:/disk0/scratch/smonsees/yocto/wor=
kspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf=
-native/edk2-stable201905-r0/recipe-sysroot-native/sbin:/disk0/scratch/smon=
sees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86=
_64-linux/ovmf-native/edk2-stable201905-r0/recipe-sysroot-native/bin:/disk0=
/scratch/smonsees/yocto/workspace_3/poky/bitbake/bin:/disk0/scratch/smonsee=
s/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/hosttools";=
 export HOME=3D"/ede/smonsees"; LANG=3DC git -c core.fsyncobjectfiles=3D0 c=
lone --bare --mirror git://github.com/tianocore/edk2.git /disk0/scratch/smo=
nsees/yocto/workspace_3/downloads/intel/git2/github.com.tianocore.edk2.git =
--progress failed with exit code 128, output:
Cloning into bare repository '/disk0/scratch/smonsees/yocto/workspace_3/dow=
nloads/intel/git2/github.com.tianocore.edk2.git'...

fatal: unable to connect to github.com:
github.com[0: 140.82.114.4]: errno=3DConnection timed out


ERROR: ovmf-native-edk2-stable201905-r0 do_fetch: Fetcher failure for URL: =
'gitsm://github.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dgit'. Una=
ble to fetch URL from any source.
ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/workspac=
e_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf-nati=
ve/edk2-stable201905-r0/temp/log.do_fetch.1158
ERROR: Task (virtual:native:/disk0/scratch/smonsees/yocto/workspace_3/poky/=
meta/recipes-core/ovmf/ovmf_git.bb:do_fetch) failed with exit code '1'
WARNING: ovmf-edk2-stable201905-r0 do_fetch: Failed to fetch URL gitsm://gi=
thub.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dgit, attempting MIRR=
ORS if available
ERROR: ovmf-edk2-stable201905-r0 do_fetch: Fetcher failure: Fetch command e=
xport PSEUDO_DISABLED=3D1; unset _PYTHON_SYSCONFIGDATA_NAME; export DBUS_SE=
SSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-3LFubab4k2,guid=3D5c19cfb5af=
3a9248c3a7a8bb5f7eedd1"; export SSH_AGENT_PID=3D"22978"; export SSH_AUTH_SO=
CK=3D"/run/user/11588/keyring/ssh"; export PATH=3D"/disk0/scratch/smonsees/=
yocto/workspace_3/poky/scripts:/disk0/scratch/smonsees/yocto/workspace_3/me=
ta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/ovmf/ed=
k2-stable201905-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/disk0/s=
cratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/t=
mp/work/corei7-64-poky-linux/ovmf/edk2-stable201905-r0/recipe-sysroot/usr/b=
in/crossscripts:/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-lim=
ws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/ovmf/edk2-stable201905=
-r0/recipe-sysroot-native/usr/sbin:/disk0/scratch/smonsees/yocto/workspace_=
3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/ovm=
f/edk2-stable201905-r0/recipe-sysroot-native/usr/bin:/disk0/scratch/smonsee=
s/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7=
-64-poky-linux/ovmf/edk2-stable201905-r0/recipe-sysroot-native/sbin:/disk0/=
scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/=
tmp/work/corei7-64-poky-linux/ovmf/edk2-stable201905-r0/recipe-sysroot-nati=
ve/bin:/disk0/scratch/smonsees/yocto/workspace_3/poky/bitbake/bin:/disk0/sc=
ratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tm=
p/hosttools"; export HOME=3D"/ede/smonsees"; LANG=3DC git -c core.fsyncobje=
ctfiles=3D0 clone --bare --mirror git://github.com/tianocore/edk2.git /disk=
0/scratch/smonsees/yocto/workspace_3/downloads/intel/git2/github.com.tianoc=
ore.edk2.git --progress failed with exit code 128, output:
Cloning into bare repository '/disk0/scratch/smonsees/yocto/workspace_3/dow=
nloads/intel/git2/github.com.tianocore.edk2.git'...

fatal: unable to connect to github.com:
github.com[0: 140.82.112.3]: errno=3DConnection timed out


ERROR: ovmf-edk2-stable201905-r0 do_fetch: Fetcher failure for URL: 'gitsm:=
//github.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dgit'. Unable to =
fetch URL from any source.
ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/workspac=
e_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/o=
vmf/edk2-stable201905-r0/temp/log.do_fetch.1182
ERROR: Task (/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-co=
re/ovmf/ovmf_git.bb:do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5885 tasks of which 5868 didn't need to be r=
erun and 2 failed.

Summary: 2 tasks failed:
  virtual:native:/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipe=
s-core/ovmf/ovmf_git.bb:do_fetch
  /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-core/ovmf/ovm=
f_git.bb:do_fetch
Summary: There were 3 WARNING messages shown.
Summary: There were 4 ERROR messages shown, returning a non-zero exit code.


--_000_1173e8b238b344309ca3811f545b01cebaesystemscom_
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
<p class=3D"MsoNormal">Attempting to move to zeus&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal">Build with zeus 3.0.4, using &#8220;bitbake &#8211;k=
&#8221;, all other downloads for kernel/image were successful&#8230;<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can someone tell why I am getting the following 4 er=
rors and how best to resolve ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Loading cache: 100% |###############################=
################################################################| Time: 0:0=
0:00<o:p></o:p></p>
<p class=3D"MsoNormal">Loaded 3642 entries from dependency cache.<o:p></o:p=
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
uot;rhel-7.8&quot;<o:p></o:p></p>
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
<p class=3D"MsoNormal">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;my_yocto_3.0.4:f2eb22a8783f1eecf99bd40426=
95bab920eed00e&quot;<o:p></o:p></p>
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
<p class=3D"MsoNormal">meta-intel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;zeus:d9942d4c3a710406b051852de7232db03c297f4e&=
quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-intel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;v2019.02:f635a364c55f1fb12519aff54924a0a5b9470=
91e&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Initialising tasks: 100% |##########################=
################################################################| Time: 0:0=
0:03<o:p></o:p></p>
<p class=3D"MsoNormal">Sstate summary: Wanted 316 Found 296 Missed 20 Curre=
nt 1793 (93% match, 99% complete)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Executing Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Setscene tasks completed<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: ovmf-native-edk2-stable201905-r0 do_fetch: =
Failed to fetch URL gitsm://github.com/tianocore/edk2.git;branch=3Dmaster;p=
rotocol=3Dgit, attempting MIRRORS if available<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: ovmf-native-edk2-stable201905-r0 do_fetch: Fe=
tcher failure: Fetch command export PSEUDO_DISABLED=3D1; unset _PYTHON_SYSC=
ONFIGDATA_NAME; export DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:abstract=3D/tm=
p/dbus-3LFubab4k2,guid=3D5c19cfb5af3a9248c3a7a8bb5f7eedd1&quot;;
 export SSH_AGENT_PID=3D&quot;22978&quot;; export SSH_AUTH_SOCK=3D&quot;/ru=
n/user/11588/keyring/ssh&quot;; export PATH=3D&quot;/disk0/scratch/smonsees=
/yocto/workspace_3/poky/scripts/native-intercept:/disk0/scratch/smonsees/yo=
cto/workspace_3/poky/scripts:/disk0/scratch/smonsees/yocto/workspace_3/meta=
-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf-native/edk2-=
stable201905-r0/recipe-sysroot-native/usr/bin/x86_64-linux:/disk0/scratch/s=
monsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/=
x86_64-linux/ovmf-native/edk2-stable201905-r0/recipe-sysroot-native/usr/bin=
:/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-=
default/tmp/work/x86_64-linux/ovmf-native/edk2-stable201905-r0/recipe-sysro=
ot-native/usr/sbin:/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-=
limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf-native/edk2-stable2019=
05-r0/recipe-sysroot-native/usr/bin:/disk0/scratch/smonsees/yocto/workspace=
_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf-nativ=
e/edk2-stable201905-r0/recipe-sysroot-native/sbin:/disk0/scratch/smonsees/y=
octo/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-li=
nux/ovmf-native/edk2-stable201905-r0/recipe-sysroot-native/bin:/disk0/scrat=
ch/smonsees/yocto/workspace_3/poky/bitbake/bin:/disk0/scratch/smonsees/yoct=
o/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/hosttools&quot;;
 export HOME=3D&quot;/ede/smonsees&quot;; LANG=3DC git -c core.fsyncobjectf=
iles=3D0 clone --bare --mirror git://github.com/tianocore/edk2.git /disk0/s=
cratch/smonsees/yocto/workspace_3/downloads/intel/git2/github.com.tianocore=
.edk2.git --progress failed with exit code 128,
 output:<o:p></o:p></p>
<p class=3D"MsoNormal">Cloning into bare repository '/disk0/scratch/smonsee=
s/yocto/workspace_3/downloads/intel/git2/github.com.tianocore.edk2.git'...<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">fatal: unable to connect to github.com:<o:p></o:p></=
p>
<p class=3D"MsoNormal">github.com[0: 140.82.114.4]: errno=3DConnection time=
d out<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: ovmf-native-edk2-stable201905-r0 do_fetch: Fe=
tcher failure for URL: 'gitsm://github.com/tianocore/edk2.git;branch=3Dmast=
er;protocol=3Dgit'. Unable to fetch URL from any source.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /disk0/scratch/=
smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work=
/x86_64-linux/ovmf-native/edk2-stable201905-r0/temp/log.do_fetch.1158<o:p><=
/o:p></p>
<p class=3D"MsoNormal">ERROR: Task (virtual:native:/disk0/scratch/smonsees/=
yocto/workspace_3/poky/meta/recipes-core/ovmf/ovmf_git.bb:do_fetch) failed =
with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: ovmf-edk2-stable201905-r0 do_fetch: Failed =
to fetch URL gitsm://github.com/tianocore/edk2.git;branch=3Dmaster;protocol=
=3Dgit, attempting MIRRORS if available<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: ovmf-edk2-stable201905-r0 do_fetch: Fetcher f=
ailure: Fetch command export PSEUDO_DISABLED=3D1; unset _PYTHON_SYSCONFIGDA=
TA_NAME; export DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:abstract=3D/tmp/dbus-=
3LFubab4k2,guid=3D5c19cfb5af3a9248c3a7a8bb5f7eedd1&quot;;
 export SSH_AGENT_PID=3D&quot;22978&quot;; export SSH_AUTH_SOCK=3D&quot;/ru=
n/user/11588/keyring/ssh&quot;; export PATH=3D&quot;/disk0/scratch/smonsees=
/yocto/workspace_3/poky/scripts:/disk0/scratch/smonsees/yocto/workspace_3/m=
eta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/ovmf/e=
dk2-stable201905-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/disk0/=
scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/=
tmp/work/corei7-64-poky-linux/ovmf/edk2-stable201905-r0/recipe-sysroot/usr/=
bin/crossscripts:/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-li=
mws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/ovmf/edk2-stable20190=
5-r0/recipe-sysroot-native/usr/sbin:/disk0/scratch/smonsees/yocto/workspace=
_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/ov=
mf/edk2-stable201905-r0/recipe-sysroot-native/usr/bin:/disk0/scratch/smonse=
es/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei=
7-64-poky-linux/ovmf/edk2-stable201905-r0/recipe-sysroot-native/sbin:/disk0=
/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default=
/tmp/work/corei7-64-poky-linux/ovmf/edk2-stable201905-r0/recipe-sysroot-nat=
ive/bin:/disk0/scratch/smonsees/yocto/workspace_3/poky/bitbake/bin:/disk0/s=
cratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/t=
mp/hosttools&quot;;
 export HOME=3D&quot;/ede/smonsees&quot;; LANG=3DC git -c core.fsyncobjectf=
iles=3D0 clone --bare --mirror git://github.com/tianocore/edk2.git /disk0/s=
cratch/smonsees/yocto/workspace_3/downloads/intel/git2/github.com.tianocore=
.edk2.git --progress failed with exit code 128,
 output:<o:p></o:p></p>
<p class=3D"MsoNormal">Cloning into bare repository '/disk0/scratch/smonsee=
s/yocto/workspace_3/downloads/intel/git2/github.com.tianocore.edk2.git'...<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">fatal: unable to connect to github.com:<o:p></o:p></=
p>
<p class=3D"MsoNormal">github.com[0: 140.82.112.3]: errno=3DConnection time=
d out<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: ovmf-edk2-stable201905-r0 do_fetch: Fetcher f=
ailure for URL: 'gitsm://github.com/tianocore/edk2.git;branch=3Dmaster;prot=
ocol=3Dgit'. Unable to fetch URL from any source.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /disk0/scratch/=
smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work=
/corei7-64-poky-linux/ovmf/edk2-stable201905-r0/temp/log.do_fetch.1182<o:p>=
</o:p></p>
<p class=3D"MsoNormal">ERROR: Task (/disk0/scratch/smonsees/yocto/workspace=
_3/poky/meta/recipes-core/ovmf/ovmf_git.bb:do_fetch) failed with exit code =
'1'<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 5885 tasks of which 5=
868 didn't need to be rerun and 2 failed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: 2 tasks failed:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; virtual:native:/disk0/scratch/smonsees/yocto/=
workspace_3/poky/meta/recipes-core/ovmf/ovmf_git.bb:do_fetch<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; /disk0/scratch/smonsees/yocto/workspace_3/pok=
y/meta/recipes-core/ovmf/ovmf_git.bb:do_fetch<o:p></o:p></p>
<p class=3D"MsoNormal">Summary: There were 3 WARNING messages shown.<o:p></=
o:p></p>
<p class=3D"MsoNormal">Summary: There were 4 ERROR messages shown, returnin=
g a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_1173e8b238b344309ca3811f545b01cebaesystemscom_--
