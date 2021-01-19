Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.11231.1611063769799329469
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jan 2021 05:42:52 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=OpSCGVUQ;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1611063769; x=1768743769;
  h=from:to:subject:date:mime-version;
  bh=52gSnTnHxPoO9qKBjc2UU87+PHZqB1IagAJ/WUd8iI4=;
  b=OpSCGVUQQdGAZ9c9LEaXZWZ3h+EUbLECQaCMXjrm1ll/TW1psEPLDsRV
   f1FXLFQxkJRiLl5f1LeE8sv+j9Oc5JguzUz7LAQJomw+EP/ChM3LDjC9D
   NddqCJ2noGWyxTbkOJJy8I3jz9PqZqLPf9bctvpJ47PycBqyA13ROIrDu
   4=;
IronPort-PHdr: =?us-ascii?q?9a23=3AwUHquRYQwDPv7Q52/pD5oKr/LSx+4OfEezUN459i?=
 =?us-ascii?q?sYplN5qZpsy/YR7h7PlgxGXEQZ/co6odzbaP4ua5ASddu97B6ClELMUTEUddyI?=
 =?us-ascii?q?0/pE8JOIa9E0r1LfrnPWQRPf9pcxtbxUy9KlVfA83kZlff8TWY5D8WHQjjZ0Iu?=
 =?us-ascii?q?frymUoHdgN6q2O+s5pbdfxtHhCanYbN1MR66sRjdutMZjId/Lqs90AbFrmdHd+?=
 =?us-ascii?q?lW229jOFafkwrh6suq85Nv7iZdt+g9+8JcVKnxYrg1Q6FfADk6KW4++dfltQPE?=
 =?us-ascii?q?TQuB53scVnsZnx9VCAXb7x/0Q4n8vDLiuuVyxCeVM8v2TaspWTu59KdkVAXoiC?=
 =?us-ascii?q?YcODEn9mzcl9F9g7haoBKloBx/3pLUbYSIP/dwYq/RYdUXTndHU81MVSJOH5m8?=
 =?us-ascii?q?YpMPAeQfIOhYs4fzqVgPrRSiCgahH/ngxiNKhnLswaE2z/otHAfb1wIgBdIOt3?=
 =?us-ascii?q?HUoc37OKkVVuC1yrLIwivdYPNNwTv29ZXGcgw/rvGSQ71wd9faxFcyHA/BgFqe?=
 =?us-ascii?q?tInpMz2I3ekKqGib8/RvVfyxhG4hsQ1xpz+vxsE3iobXmI0V0UvJ+j5jz4krPt?=
 =?us-ascii?q?25SFV7YcK6H5tVrCGWLZd5QsQnQ2xxvisx17IJt4KhcicQ1JQn2wDQa+aBc4WQ?=
 =?us-ascii?q?/x7uVvidLDlliH97Zr+zmgu//EegxOHgSMS501dHoylKnNfDuH4AyxPd5MibR/?=
 =?us-ascii?q?Zy+kqs2zmC2hzc5O9KIE05iazWIIMvzL43k5ocq0XDHinulUrrkqCZbUQk9fKu?=
 =?us-ascii?q?6+j9ZbXmvJCcOolpgQ/9KqQjgtGzDfgiPgUAXWWX4/qw2KPj8EHjQbhHjuU6nr?=
 =?us-ascii?q?TFvJzAKskWqbS1DgBP3oo+6xuyCSqt3s4CknkdNl1FfQqKj43uO17TPv/1Fey/?=
 =?us-ascii?q?g1GwkDdzwPDGI6HhDo3NLnfdlLfheq5w61JTyQUpy9Bf4olUB7UdLP7vRkP9qc?=
 =?us-ascii?q?bUDhkjPACu2OnoEsty1pgeWGKUHq+WLqbSsUSS6u0zJOmMYZcZuDf7K/c7+/7j?=
 =?us-ascii?q?lWI1lUMHcaSn35Ybcm60EupmLkmDYHfhgs8NEWIQsQo/SOzqhkeCUTlWZ3uqRK?=
 =?us-ascii?q?I8+i80CJy4AofFXIythbuB3CGgHpJIeG9GEUuBHmzyeIqaQPcNaDmSItN/nTwB?=
 =?us-ascii?q?TritUZMu1RartAPi0bpoMvLU+jEEtZLkzNV05+rTmg0u9TxzFMmd12CNT3ponm?=
 =?us-ascii?q?MTXTM33Kd/rlBhyleEyah4mftYFd5N6PxVTgc2L5ncz/Z1C4O6ZgWUNMaOQ0qh?=
 =?us-ascii?q?atGnGi0qCMM2yMMJe1x6GdipklbExSXgS+sEkLeXA7Qw87nAxD7gIM1hzG7c06?=
 =?us-ascii?q?sshEVgRdFAYz6InKl6okL2AIjSnkiC0+6RaakC0SiF3y/D8FHP9gkMSxJ9T6jD?=
 =?us-ascii?q?G3UYYFDboM/R7ErPVK61FbkiKU1KzsvUefgCUcHgkVgTHKSrA9/ZeW/kw2o=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2B+BABS4QZg/0HhJQpiHgEBCxIMQIFEC?=
 =?us-ascii?q?4EjgX6BOQqWBZURhy8LAQEBAQEBAQEBCAEjDAQBAYZAJjcGDgIQAQEGAQEBAQE?=
 =?us-ascii?q?GBAGGUQELgjgig00aRAGBACYBBBuDH4F+gRevMYE0gz2CHIR1CQGBLoFci1uCA?=
 =?us-ascii?q?z6BEY4OBIJZQAIhCQoBKgFzJANmAW+PPopqgzaaQQcDgneJL5IwK4RamCARhV8?=
 =?us-ascii?q?tk26LHJE3R4Q1AgQCBAUCFoFsgXtwgzkJRxcCDZcmhUR0AjUCBgoBAQMJi1cyX?=
 =?us-ascii?q?wEB?=
X-IPAS-Result: =?us-ascii?q?A2B+BABS4QZg/0HhJQpiHgEBCxIMQIFEC4EjgX6BOQqWBZU?=
 =?us-ascii?q?Rhy8LAQEBAQEBAQEBCAEjDAQBAYZAJjcGDgIQAQEGAQEBAQEGBAGGUQELgjgig?=
 =?us-ascii?q?00aRAGBACYBBBuDH4F+gRevMYE0gz2CHIR1CQGBLoFci1uCAz6BEY4OBIJZQAI?=
 =?us-ascii?q?hCQoBKgFzJANmAW+PPopqgzaaQQcDgneJL5IwK4RamCARhV8tk26LHJE3R4Q1A?=
 =?us-ascii?q?gQCBAUCFoFsgXtwgzkJRxcCDZcmhUR0AjUCBgoBAQMJi1cyXwEB?=
X-IronPort-AV: E=Sophos;i="5.79,358,1602547200"; 
   d="scan'208,217";a="340636875"
X-IronPort-AV: E=Sophos;i="5.79,358,1602547200"; 
   d="scan'208,217";a="96295465"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #kernel BB_GENERATE_MIRROR_TARBALLS
Thread-Topic: #yocto #kernel BB_GENERATE_MIRROR_TARBALLS
Thread-Index: AdbuaJKKv64mRxX0TTiT7tjgC5xrOg==
Date: Tue, 19 Jan 2021 13:42:45 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.165BA5F71253BD01.16848@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_dac59938a5b34c178da5c37b40fad505baesystemscom_"

--_000_dac59938a5b34c178da5c37b40fad505baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

When I generate MIRROR TARBALLS for my build it does not appear to generate=
 all the required tarballs...

I tested by tested by rebuilding with "BB_NO_NETWORK =3D 1", and received t=
he following build Error (see below).

Is there something else I need to define to get all the required tarballs i=
n build ?

Thanks,
Steve

Initialising tasks: 100% |#################################################=
#########| Time: 0:00:03
Sstate summary: Wanted 1412 Found 0 Missed 1412 Current 0 (0% match, 0% com=
plete)
NOTE: Executing Tasks
NOTE: Setscene tasks completed
ERROR: ncurses-native-6.1+20190803-r0 do_fetch: Network access disabled thr=
ough BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_PREMIRRORONLY)=
 but access requested with command LANG=3DC git -c core.fsyncobjectfiles=3D=
0 clone --bare --mirror https://salsa.debian.org/debian/ncurses.git /disk0/=
scratch/smonsees/yocto/workspace_3/downloads/aarch64/git2/salsa.debian.org.=
debian.ncurses.git --progress (for url git://salsa.debian.org/debian/ncurse=
s.git;protocol=3Dhttps)
ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/workspac=
e_3/meta-bae/meta-limws/builds/aiox-default/tmp/work/x86_64-linux/ncurses-n=
ative/6.1+20190803-r0/temp/log.do_fetch.16824
ERROR: Task (virtual:native:/disk0/scratch/smonsees/yocto/workspace_3/poky/=
meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_fetch) failed with exi=
t code '1'
NOTE: Tasks Summary: Attempted 99 tasks of which 0 didn't need to be rerun =
and 1 failed.

Summary: 1 task failed:
  virtual:native:/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipe=
s-core/ncurses/ncurses_6.1+20190803.bb:do_fetch

ncurses_6.1+20190803.bb:

require ncurses.inc

SRC_URI +=3D "file://0001-tic-hang.patch \
            file://0002-configure-reproducible.patch \
            file://config.cache \
            file://0001-ncurses-selective-backport-of-20191012-patch.patch =
\
"
# commit id corresponds to the revision in package version
SRCREV =3D "3c9b2677c96c645496997321bf2fe465a5e7e21f"
S =3D "${WORKDIR}/git"
EXTRA_OECONF +=3D "--with-abi-version=3D5 --cache-file=3D${B}/config.cache"
UPSTREAM_CHECK_GITTAGREGEX =3D "(?P<pver>\d+(\.\d+)+(\+\d+)*)"

CVE_VERSION =3D "6.1.${@d.getVar("PV").split('+')[1]}"

/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/aiox-d=
efault/tmp/work/x86_64-linux/ncurses-native/6.1+20190803-r0/temp/log.do_fet=
ch.16824:

DEBUG: Executing python function extend_recipe_sysroot
NOTE: Direct dependencies are []
NOTE: Installed into sysroot: []
NOTE: Skipping as already exists in sysroot: []
DEBUG: Python function extend_recipe_sysroot finished
DEBUG: Executing python function do_fetch
DEBUG: Executing python function base_do_fetch
DEBUG: Trying PREMIRRORS
DEBUG: For url ['git', 'salsa.debian.org', '/debian/ncurses.git', '', '', O=
rderedDict([('protocol', 'https')])] comparing ['git', '.*', '/.*', '', '',=
 OrderedDict()] to ['file', '', '//ede/tms/yocto/zeus/downloads/aarch64', '=
', '', OrderedDict()]
DEBUG: For url git://salsa.debian.org/debian/ncurses.git;protocol=3Dhttps r=
eturning file:///ede/tms/yocto/zeus/downloads/aarch64/git2_salsa.debian.org=
.debian.ncurses.git.tar.gz
DEBUG: For url ['file', '', '/ede/tms/yocto/zeus/downloads/aarch64/git2_sal=
sa.debian.org.debian.ncurses.git.tar.gz', '', '', OrderedDict()] comparing =
['ftp', '.*', '/.*', '', '', OrderedDict()] to ['file', '', '//ede/tms/yoct=
o/zeus/downloads/aarch64', '', '', OrderedDict()]
DEBUG: For url ['file', '', '/ede/tms/yocto/zeus/downloads/aarch64/git2_sal=
sa.debian.org.debian.ncurses.git.tar.gz', '', '', OrderedDict()] comparing =
['http', '.*', '/.*', '', '', OrderedDict()] to ['file', '', '//ede/tms/yoc=
to/zeus/downloads/aarch64', '', '', OrderedDict()]
DEBUG: For url ['file', '', '/ede/tms/yocto/zeus/downloads/aarch64/git2_sal=
sa.debian.org.debian.ncurses.git.tar.gz', '', '', OrderedDict()] comparing =
['https', '.*', '/.*', '', '', OrderedDict()] to ['file', '', '//ede/tms/yo=
cto/zeus/downloads/aarch64', '', '', OrderedDict()]
DEBUG: For url ['git', 'salsa.debian.org', '/debian/ncurses.git', '', '', O=
rderedDict([('protocol', 'https')])] comparing ['ftp', '.*', '/.*', '', '',=
 OrderedDict()] to ['file', '', '//ede/tms/yocto/zeus/downloads/aarch64', '=
', '', OrderedDict()]
DEBUG: For url ['git', 'salsa.debian.org', '/debian/ncurses.git', '', '', O=
rderedDict([('protocol', 'https')])] comparing ['http', '.*', '/.*', '', ''=
, OrderedDict()] to ['file', '', '//ede/tms/yocto/zeus/downloads/aarch64', =
'', '', OrderedDict()]
DEBUG: For url ['git', 'salsa.debian.org', '/debian/ncurses.git', '', '', O=
rderedDict([('protocol', 'https')])] comparing ['https', '.*', '/.*', '', '=
', OrderedDict()] to ['file', '', '//ede/tms/yocto/zeus/downloads/aarch64',=
 '', '', OrderedDict()]
DEBUG: Mirror fetch failure for url file:///ede/tms/yocto/zeus/downloads/aa=
rch64/git2_salsa.debian.org.debian.ncurses.git.tar.gz (original url: git://=
salsa.debian.org/debian/ncurses.git;protocol=3Dhttps)
DEBUG: Fetcher failure: Unable to find file file:///ede/tms/yocto/zeus/down=
loads/aarch64/git2_salsa.debian.org.debian.ncurses.git.tar.gz anywhere. The=
 paths that were searched were:
    /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-core/ncurse=
s/ncurses-6.1+20190803/limws
    /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-core/ncurse=
s/ncurses/limws
    /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-core/ncurse=
s/files/limws
    /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-core/ncurse=
s/ncurses-6.1+20190803/
    /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-core/ncurse=
s/ncurses/
    /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-core/ncurse=
s/files/
    /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-core/ncurse=
s/ncurses-6.1+20190803/x86-64
    /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-core/ncurse=
s/ncurses/x86-64
    /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-core/ncurse=
s/files/x86-64
    /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-core/ncurse=
s/ncurses-6.1+20190803/
    /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-core/ncurse=
s/ncurses/
    /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-core/ncurse=
s/files/
    /disk0/scratch/smonsees/yocto/workspace_3/downloads/aarch64
DEBUG: Trying Upstream
ERROR: Network access disabled through BB_NO_NETWORK (or set indirectly due=
 to use of BB_FETCH_PREMIRRORONLY) but access requested with command LANG=
=3DC git -c core.fsyncobjectfiles=3D0 clone --bare --mirror https://salsa.d=
ebian.org/debian/ncurses.git /disk0/scratch/smonsees/yocto/workspace_3/down=
loads/aarch64/git2/salsa.debian.org.debian.ncurses.git --progress (for url =
git://salsa.debian.org/debian/ncurses.git;protocol=3Dhttps)
DEBUG: Python function base_do_fetch finished



--_000_dac59938a5b34c178da5c37b40fad505baesystemscom_
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
<p class=3D"MsoNormal">When I generate MIRROR TARBALLS for my build it does=
 not appear to generate all the required tarballs&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tested by tested by rebuilding with &#8220;BB_NO_N=
ETWORK =3D 1&#8221;, and received the following build Error (see below).<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there something else I need to define to get all =
the required tarballs in build ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Initialising tasks: 100% |##########################=
################################| Time: 0:00:03<o:p></o:p></p>
<p class=3D"MsoNormal">Sstate summary: Wanted 1412 Found 0 Missed 1412 Curr=
ent 0 (0% match, 0% complete)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Executing Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Setscene tasks completed<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: ncurses-native-6.1&#43;20190803-r0 do_fetch: =
Network access disabled through BB_NO_NETWORK (or set indirectly due to use=
 of BB_FETCH_PREMIRRORONLY) but access requested with command LANG=3DC git =
-c core.fsyncobjectfiles=3D0 clone --bare
 --mirror https://salsa.debian.org/debian/ncurses.git /disk0/scratch/smonse=
es/yocto/workspace_3/downloads/aarch64/git2/salsa.debian.org.debian.ncurses=
.git --progress (for url git://salsa.debian.org/debian/ncurses.git;protocol=
=3Dhttps)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /disk0/scratch/=
smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/aiox-default/tmp/work=
/x86_64-linux/ncurses-native/6.1&#43;20190803-r0/temp/log.do_fetch.16824<o:=
p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task (virtual:native:/disk0/scratch/smonsees/=
yocto/workspace_3/poky/meta/recipes-core/ncurses/ncurses_6.1&#43;20190803.b=
b:do_fetch) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 99 tasks of which 0 d=
idn't need to be rerun and 1 failed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: 1 task failed:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; virtual:native:/disk0/scratch/smonsees/yocto/=
workspace_3/poky/meta/recipes-core/ncurses/ncurses_6.1&#43;20190803.bb:do_f=
etch<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ncurses_6.1&#43;20190803.bb:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">require ncurses.inc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRC_URI &#43;=3D &quot;file://0001-tic-hang.patch \<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; file://0002-configure-reproducible.patch \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; file://config.cache \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; file://0001-ncurses-selective-backport-of-20191012-patch.pat=
ch \<o:p></o:p></p>
<p class=3D"MsoNormal">&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"># commit id corresponds to the revision in package v=
ersion<o:p></o:p></p>
<p class=3D"MsoNormal">SRCREV =3D &quot;3c9b2677c96c645496997321bf2fe465a5e=
7e21f&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">S =3D &quot;${WORKDIR}/git&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">EXTRA_OECONF &#43;=3D &quot;--with-abi-version=3D5 -=
-cache-file=3D${B}/config.cache&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">UPSTREAM_CHECK_GITTAGREGEX =3D &quot;(?P&lt;pver&gt;=
\d&#43;(\.\d&#43;)&#43;(\&#43;\d&#43;)*)&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">CVE_VERSION =3D &quot;6.1.${@d.getVar(&quot;PV&quot;=
).split('&#43;')[1]}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/m=
eta-limws/builds/aiox-default/tmp/work/x86_64-linux/ncurses-native/6.1&#43;=
20190803-r0/temp/log.do_fetch.16824:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">DEBUG: Executing python function extend_recipe_sysro=
ot<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Direct dependencies are []<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Installed into sysroot: []<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Skipping as already exists in sysroot: []<o:p>=
</o:p></p>
<p class=3D"MsoNormal">DEBUG: Python function extend_recipe_sysroot finishe=
d<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Executing python function do_fetch<o:p></o:p>=
</p>
<p class=3D"MsoNormal">DEBUG: Executing python function base_do_fetch<o:p><=
/o:p></p>
<p class=3D"MsoNormal">DEBUG: Trying PREMIRRORS<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: For url ['git', 'salsa.debian.org', '/debian/=
ncurses.git', '', '', OrderedDict([('protocol', 'https')])] comparing ['git=
', '.*', '/.*', '', '', OrderedDict()] to ['file', '', '//ede/tms/yocto/zeu=
s/downloads/aarch64', '', '', OrderedDict()]<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: For url git://salsa.debian.org/debian/ncurses=
.git;protocol=3Dhttps returning file:///ede/tms/yocto/zeus/downloads/aarch6=
4/git2_salsa.debian.org.debian.ncurses.git.tar.gz<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: For url ['file', '', '/ede/tms/yocto/zeus/dow=
nloads/aarch64/git2_salsa.debian.org.debian.ncurses.git.tar.gz', '', '', Or=
deredDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['fil=
e', '', '//ede/tms/yocto/zeus/downloads/aarch64',
 '', '', OrderedDict()]<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: For url ['file', '', '/ede/tms/yocto/zeus/dow=
nloads/aarch64/git2_salsa.debian.org.debian.ncurses.git.tar.gz', '', '', Or=
deredDict()] comparing ['http', '.*', '/.*', '', '', OrderedDict()] to ['fi=
le', '', '//ede/tms/yocto/zeus/downloads/aarch64',
 '', '', OrderedDict()]<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: For url ['file', '', '/ede/tms/yocto/zeus/dow=
nloads/aarch64/git2_salsa.debian.org.debian.ncurses.git.tar.gz', '', '', Or=
deredDict()] comparing ['https', '.*', '/.*', '', '', OrderedDict()] to ['f=
ile', '', '//ede/tms/yocto/zeus/downloads/aarch64',
 '', '', OrderedDict()]<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: For url ['git', 'salsa.debian.org', '/debian/=
ncurses.git', '', '', OrderedDict([('protocol', 'https')])] comparing ['ftp=
', '.*', '/.*', '', '', OrderedDict()] to ['file', '', '//ede/tms/yocto/zeu=
s/downloads/aarch64', '', '', OrderedDict()]<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: For url ['git', 'salsa.debian.org', '/debian/=
ncurses.git', '', '', OrderedDict([('protocol', 'https')])] comparing ['htt=
p', '.*', '/.*', '', '', OrderedDict()] to ['file', '', '//ede/tms/yocto/ze=
us/downloads/aarch64', '', '', OrderedDict()]<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: For url ['git', 'salsa.debian.org', '/debian/=
ncurses.git', '', '', OrderedDict([('protocol', 'https')])] comparing ['htt=
ps', '.*', '/.*', '', '', OrderedDict()] to ['file', '', '//ede/tms/yocto/z=
eus/downloads/aarch64', '', '', OrderedDict()]<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Mirror fetch failure for url file:///ede/tms/=
yocto/zeus/downloads/aarch64/git2_salsa.debian.org.debian.ncurses.git.tar.g=
z (original url: git://salsa.debian.org/debian/ncurses.git;protocol=3Dhttps=
)<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Fetcher failure: Unable to find file file:///=
ede/tms/yocto/zeus/downloads/aarch64/git2_salsa.debian.org.debian.ncurses.g=
it.tar.gz anywhere. The paths that were searched were:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /disk0/scratch/smonsees/yocto/wor=
kspace_3/poky/meta/recipes-core/ncurses/ncurses-6.1&#43;20190803/limws<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /disk0/scratch/smonsees/yocto/wor=
kspace_3/poky/meta/recipes-core/ncurses/ncurses/limws<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /disk0/scratch/smonsees/yocto/wor=
kspace_3/poky/meta/recipes-core/ncurses/files/limws<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /disk0/scratch/smonsees/yocto/wor=
kspace_3/poky/meta/recipes-core/ncurses/ncurses-6.1&#43;20190803/<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /disk0/scratch/smonsees/yocto/wor=
kspace_3/poky/meta/recipes-core/ncurses/ncurses/<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /disk0/scratch/smonsees/yocto/wor=
kspace_3/poky/meta/recipes-core/ncurses/files/<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /disk0/scratch/smonsees/yocto/wor=
kspace_3/poky/meta/recipes-core/ncurses/ncurses-6.1&#43;20190803/x86-64<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /disk0/scratch/smonsees/yocto/wor=
kspace_3/poky/meta/recipes-core/ncurses/ncurses/x86-64<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /disk0/scratch/smonsees/yocto/wor=
kspace_3/poky/meta/recipes-core/ncurses/files/x86-64<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /disk0/scratch/smonsees/yocto/wor=
kspace_3/poky/meta/recipes-core/ncurses/ncurses-6.1&#43;20190803/<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /disk0/scratch/smonsees/yocto/wor=
kspace_3/poky/meta/recipes-core/ncurses/ncurses/<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /disk0/scratch/smonsees/yocto/wor=
kspace_3/poky/meta/recipes-core/ncurses/files/<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; /disk0/scratch/smonsees/yocto/wor=
kspace_3/downloads/aarch64<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Trying Upstream<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red">ERROR: Network access d=
isabled through BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_PRE=
MIRRORONLY) but access requested with command LANG=3DC git -c core.fsyncobj=
ectfiles=3D0 clone --bare --mirror https://salsa.debian.org/debian/ncurses.=
git
 /disk0/scratch/smonsees/yocto/workspace_3/downloads/aarch64/git2/salsa.deb=
ian.org.debian.ncurses.git --progress (for url git://salsa.debian.org/debia=
n/ncurses.git;protocol=3Dhttps)<o:p></o:p></span></b></p>
<p class=3D"MsoNormal">DEBUG: Python function base_do_fetch finished<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_dac59938a5b34c178da5c37b40fad505baesystemscom_--
