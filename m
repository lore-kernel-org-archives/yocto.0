Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.17607.1618424630136773772
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 11:23:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=F0Pf3o6Z;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1618424630; x=1776104630;
  h=from:to:subject:date:mime-version;
  bh=j3ZjGearaOKVr7lDtq05stc7ndrrnGzdPC++FzlKH8U=;
  b=F0Pf3o6Z02Qaj0oRzWvmuKHkf+WphgWg4KfjUIjQzo2gE42Rh+rFwcLM
   X755HkdeBU6jfWtE127XHEAY+aEFW53PD9hPMPxqHFIx4doauFhrdigQA
   ZqoSCbe4JeO432ndQC5Anh+Jh0deBub+tIwezzmjoRQhAu8m6zibwR45w
   E=;
IronPort-SDR: i2fUQmYAban5uXBQ3wduGyqR4qdA8ysjLJ6LyiLLTvcr2xXSpbY400ACjTWNMrhJ2/juyPUFKt
 adM5YLWPX4FQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3A8XeHqB3G3MYraPWismDOOwQyDhhPgJ3EezUN4?=
 =?us-ascii?q?59isYplN5qZl7zcNUDSrc9gkEXOFd2Cra4d2qyP4vmrADZaqb+681k6OKRWU?=
 =?us-ascii?q?BEEjchE1ycBO+WiTXPBEfjxciYhF95DXlI2t1uyMExSBdqsLwaK+i764jEdA?=
 =?us-ascii?q?AjwOhRoLerpBIHSk9631+ev8JHPfglEnjWwba52IRmssAncstQajYR/Jqov1?=
 =?us-ascii?q?BfCv2dFdflRyW50P1yYggzy5t23/J5t8iRQv+wu+stdWqjkfKo2UKJVAi0+P?=
 =?us-ascii?q?286+MPkux/DTRCS5nQHSWUZjgBIAwne4x7kWJr6rzb3ufB82CmeOs32UKw0V?=
 =?us-ascii?q?DG/5KplVBPklCEKPCM//WrKiMJ/kbhbrQqhqRJh3oDUfI+bOvl/fqzBctwXX?=
 =?us-ascii?q?nBOUtpTVyFbHo+wc5UDAuwcNuhYtYn9oF4OoAOwCQerA+PvzCRIiWHo0q0hy?=
 =?us-ascii?q?+gqDBzI3BA+ENIQrnvUqsj+ObkPWuyxwqbG0DDPY/1L0jr684jIbg4uoe+SU?=
 =?us-ascii?q?rJ2a8bRzE4vFwXejlqOt4PlJCiY2f8XvGeF9OphVfmvi3I5pAF0uTij3Nsji?=
 =?us-ascii?q?o7Mho8MzF3P6Cp2zpovK9KiVE57fcCrEIFWtyyCOYV7TN8vTmBqtSs71LEKp?=
 =?us-ascii?q?IC2cSsKxZkjyBPSZOGLfYaI7xzsSeqcJTV1iXJqdb++mhq/70ytx+7/W8Spz?=
 =?us-ascii?q?VpEoSxImcTPuHAVzxHf99SLRuFz80qjwzqDygTe5+9eLU01lafXM4MtzqIqm?=
 =?us-ascii?q?pccvknPBCD7lF/rgKKWcEgv5/Km5P79Yrr8o5+RL4p0igbjPaswgsG/GuE4M?=
 =?us-ascii?q?hQWX2ic5OS8yKXv/U3nT7VOif07irfZv4raJcQdo665GAtY34In5hqjEjuqy?=
 =?us-ascii?q?tIYkmMdIF1eYh2IkZPpOlHVIPDkE/i/hk+snC13yPDBO73tGpTNLn7dn7f9Z?=
 =?us-ascii?q?btx9lJQxBA9wN1d/Z5YF7UMLfzpVkLwtNHUFho5PBa1w+bjBtV9zIQeWWeXD?=
 =?us-ascii?q?6+CLKPdr0GI6fwpI+WWYY8VvzD9K+M76PHwln80gkQScrO30psMaHG4BehmL?=
 =?us-ascii?q?FucYXr3mNsODWAKvg8mQOzwlFKCSSJTZ2q1X68k5jA7D56pDZvERo22hLyB3?=
 =?us-ascii?q?Ty7HoFNZmxcClGMFmvnd5mDW/cUciKSJc1hnSIYWri9UYMh0guutACpg4Zge?=
 =?us-ascii?q?6DF/SYEsrrn1cNp/KvCkhou8iRuCMaQ2H3LSHt71CtcVjg9wKdXpU1m1kzFw?=
 =?us-ascii?q?K9zn/tAD9tR6vhVFAAgOsiP4fZ9DoW4fwXHZdqEUxLuecmrHzw3Bvl5g+I1I?=
 =?us-ascii?q?gw1T86+gw7O2WyvBLkOmrGQLJY9/7nNxGT8It07wHHDgvpyx2I6S9dCYDX1z?=
 =?us-ascii?q?pV08BLeUtahrg=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AuiQBaKMru0YkXMBcTh6jsMiAIKoaSvp033?=
 =?us-ascii?q?AA3SlKJSB9WMqeisyogbAnzhfykjkcQzUNntqHNamGTxrnlaJdy48XILukQU?=
 =?us-ascii?q?3aqHKlRbsC0aLOyyDtcheQysdzzqFlGpIVNPTVLXxXyfn3+xO5FdFI+rK62Z?=
 =?us-ascii?q?ulj+vf0HthJDsCA51I1RtzCQqQDyRNKjVuOJxRLveh2vY=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AxAwAXMndg/0HBJQpagQkJgUmBI1O?=
 =?us-ascii?q?BLIFMliaBDZlgFIFoCwEBAQEBAQEBAQgBNAQBAYZGJjQJDgIDAQEMAQEGAQE?=
 =?us-ascii?q?BAQEGBAGBA4VRDII4IoQeXgEVayYBBBuCaoF+rzCBNBoCZYRYhQwJAYEvgWW?=
 =?us-ascii?q?FG4JehgNBgROCbIUdAYYPBIFUJk56EwEwG1sgYXiQREWKb55dBwODC4RDmDc?=
 =?us-ascii?q?sg02QdgOQMi2UaIIRoR8CBAIEBQIWgVSCE3CDOk8XApx2gSsCBgoBAQMJi3+?=
 =?us-ascii?q?BDwEB?=
X-IPAS-Result: =?us-ascii?q?A2AxAwAXMndg/0HBJQpagQkJgUmBI1OBLIFMliaBDZlgF?=
 =?us-ascii?q?IFoCwEBAQEBAQEBAQgBNAQBAYZGJjQJDgIDAQEMAQEGAQEBAQEGBAGBA4VRD?=
 =?us-ascii?q?II4IoQeXgEVayYBBBuCaoF+rzCBNBoCZYRYhQwJAYEvgWWFG4JehgNBgROCb?=
 =?us-ascii?q?IUdAYYPBIFUJk56EwEwG1sgYXiQREWKb55dBwODC4RDmDcsg02QdgOQMi2Ua?=
 =?us-ascii?q?IIRoR8CBAIEBQIWgVSCE3CDOk8XApx2gSsCBgoBAQMJi3+BDwEB?=
X-IronPort-AV: E=Sophos;i="5.82,223,1613433600"; 
   d="scan'208,217";a="365224893"
IronPort-SDR: yCYOAknN1wFTzMqWhKr9hYTR2GiiIhdOpdmXC8IF9eG5aBxBR0FMJ6QQWDIqJi8Jo0jE05Vubn
 6162TUwDIokQ==
X-IronPort-AV: E=Sophos;i="5.82,223,1613433600"; 
   d="scan'208,217";a="1985781"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #sdk SDK_EXTRA_TOOLS inclussion of python-native and devtool
Thread-Topic: #yocto #sdk SDK_EXTRA_TOOLS inclussion of python-native and
 devtool 
Thread-Index: AdcxWynD6PGIija1TUyNHOfjPuib2Q==
Date: Wed, 14 Apr 2021 18:22:45 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1675CCA0E52A781D.22921@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_760481e781154ed29ab32c945cb0dae0baesystemscom_"

--_000_760481e781154ed29ab32c945cb0dae0baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Working with zeus 3.0.4, extended SDK...

Could someone explain what I overlooked, or why this issue pops up with pyt=
hon-native support inclusion ?

Thanks...

When I add in native-python3 support

#
# Additional SDK Setup variables
#

SDKIMAGE_FEATURES_append =3D " staticdev-pkgs"

SDK_EXTRA_TOOLS =3D "  \
     nativesdk-python3-pprint \
     nativesdk-python3-pickle \
     nativesdk-python3-shell \
     nativesdk-python3-modules \
     nativesdk-python3-distutils \
     nativesdk-python3-xml \
     nativesdk-python3-compile \
     nativesdk-python3-six \
     nativesdk-cmake \
     "

TOOLCHAIN_HOST_TASK_append =3D "${SDK_EXTRA_TOOLS}"

I see the following error with devtool:

13:07 smonsees@yix490016 /disk0/scratch/smonsees> unset LD_LIBRARY_PATH
13:08 smonsees@yix490016 /disk0/scratch/smonsees>. /disk0/scratch/smonsees/=
aioxSDK_EXT_FULL/environment-setup-aarch64-poky-linux
SDK environment now set up; additionally you may now run devtool to perform=
 development tasks.
Run devtool --help for further details.
13:08 smonsees@yix490016 /disk0/scratch/smonsees>devtool --help
/disk0/scratch/smonsees/aioxSDK_EXT_FULL/sysroots/x86_64-pokysdk-linux/usr/=
bin/python3: /disk0/scratch/smonsees/aioxSDK_EXT_FULL/sysroots/x86_64-pokys=
dk-linux/usr/bin/python3.7.real: /opt/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/lib/ld-linux-x86-64.so.2: bad ELF interpreter: No such file or directo=
ry
/disk0/scratch/smonsees/aioxSDK_EXT_FULL/sysroots/x86_64-pokysdk-linux/usr/=
bin/python3: line 5: /disk0/scratch/smonsees/aioxSDK_EXT_FULL/sysroots/x86_=
64-pokysdk-linux/usr/bin/python3.7.real: Success

If I remove the "native-python" components, the issue goes away:

SDK_EXTRA_TOOLS =3D "  \
    nativesdk-cmake \
    "

14:09 smonsees@yix490016 /disk0/scratch/smonsees> unset LD_LIBRARY_PATH
14:11 smonsees@yix490016 /disk0/scratch/smonsees>. /disk0/scratch/smonsees/=
aioxSDK_EXT_FULL/environment-setup-aarch64-poky-linux
SDK environment now set up; additionally you may now run devtool to perform=
 development tasks.
Run devtool --help for further details.
14:11 smonsees@yix490016 /disk0/scratch/smonsees>devtool --help
NOTE: Starting bitbake server...
usage: devtool [--basepath BASEPATH] [--bbpath BBPATH] [-d] [-q]
               [--color COLOR] [-h]
               <subcommand> ...

OpenEmbedded development tool

options:
  --basepath BASEPATH   Base directory of SDK / build directory
  --bbpath BBPATH       Explicitly specify the BBPATH, rather than getting =
it
                        from the metadata
  -d, --debug           Enable debug output
  -q, --quiet           Print only errors
  --color COLOR         Colorize output (where COLOR is auto, always, never=
)
  -h, --help            show this help message and exit

subcommands:
  Beginning work on a recipe:
    add                   Add a new recipe
    modify                Modify the source for an existing recipe
    upgrade               Upgrade an existing recipe
  Getting information:
    status                Show workspace status
    search                Search available recipes
    latest-version        Report the latest version of an existing recipe
    check-upgrade-status  Report upgradability for multiple (or all) recipe=
s
  Working on a recipe in the workspace:
    build                 Build a recipe
    rename                Rename a recipe file in the workspace
    edit-recipe           Edit a recipe file
    find-recipe           Find a recipe file
    configure-help        Get help on configure script options
    update-recipe         Apply changes from external source tree to recipe
    reset                 Remove a recipe from your workspace
    finish                Finish working on a recipe in your workspace
  Testing changes on target:
    deploy-target         Deploy recipe output files to live target machine
    undeploy-target       Undeploy recipe output files in live target machi=
ne
    package               Build packages for a recipe
    build-image           Build image including workspace recipe packages
    runqemu               Run QEMU on the specified image
  Advanced:
    build-sdk             Build a derivative SDK of this one
    extract               Extract the source for an existing recipe
    sync                  Synchronize the source tree for an existing recip=
e
    export                Export workspace into a tar archive
    import                Import exported tar archive into workspace
    menuconfig            Alter build-time configuration for a recipe
  SDK maintenance:
    sdk-update            Update SDK components
    sdk-install           Install additional SDK components
Use devtool <subcommand> --help to get help on a specific command
14:11 smonsees@yix490016 /disk0/scratch/smonsees>



--_000_760481e781154ed29ab32c945cb0dae0baesystemscom_
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
<p class=3D"MsoNormal">Working with zeus 3.0.4, extended SDK&#8230;<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Could someone explain what I overlooked, or why this=
 issue pops up with python-native support inclusion ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I add in native-python3 support<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Additional SDK Setup variables<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SDKIMAGE_FEATURES_append =3D &quot; staticdev-pkgs&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SDK_EXTRA_TOOLS =3D &quot;&nbsp; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; nativesdk-python3-pprint \<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; nativesdk-python3-pickle \<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; nativesdk-python3-shell \<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; nativesdk-python3-modules \=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; nativesdk-python3-distutils=
 \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; nativesdk-python3-xml \<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; &nbsp;&nbsp;nativesdk-python3-compile \=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; nativesdk-python3-six \<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; nativesdk-cmake \<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">TOOLCHAIN_HOST_TASK_append =3D &quot;${SDK_EXTRA_TOO=
LS}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I see the following error with devtool:<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">13:07 smonsees@yix490016 /disk0/scratch/smonsees&gt;=
 unset LD_LIBRARY_PATH<o:p></o:p></p>
<p class=3D"MsoNormal">13:08 smonsees@yix490016 /disk0/scratch/smonsees&gt;=
. /disk0/scratch/smonsees/aioxSDK_EXT_FULL/environment-setup-aarch64-poky-l=
inux<o:p></o:p></p>
<p class=3D"MsoNormal">SDK environment now set up; additionally you may now=
 run devtool to perform development tasks.<o:p></o:p></p>
<p class=3D"MsoNormal">Run devtool --help for further details.<o:p></o:p></=
p>
<p class=3D"MsoNormal">13:08 smonsees@yix490016 /disk0/scratch/smonsees&gt;=
devtool --help<o:p></o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/aioxSDK_EXT_FULL/sysroots/x8=
6_64-pokysdk-linux/usr/bin/python3: /disk0/scratch/smonsees/aioxSDK_EXT_FUL=
L/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real: /opt/limws/3.0.4/sy=
sroots/x86_64-pokysdk-linux/lib/ld-linux-x86-64.so.2:
 bad ELF interpreter: No such file or directory<o:p></o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/aioxSDK_EXT_FULL/sysroots/x8=
6_64-pokysdk-linux/usr/bin/python3: line 5: /disk0/scratch/smonsees/aioxSDK=
_EXT_FULL/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real: Success<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If I remove the &#8220;native-python&#8221; componen=
ts, the issue goes away:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SDK_EXTRA_TOOLS =3D &quot;&nbsp; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; nativesdk-cmake \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">14:09 smonsees@yix490016 /disk0/scratch/smonsees&gt;=
 unset LD_LIBRARY_PATH<o:p></o:p></p>
<p class=3D"MsoNormal">14:11 smonsees@yix490016 /disk0/scratch/smonsees&gt;=
. /disk0/scratch/smonsees/aioxSDK_EXT_FULL/environment-setup-aarch64-poky-l=
inux<o:p></o:p></p>
<p class=3D"MsoNormal">SDK environment now set up; additionally you may now=
 run devtool to perform development tasks.<o:p></o:p></p>
<p class=3D"MsoNormal">Run devtool --help for further details.<o:p></o:p></=
p>
<p class=3D"MsoNormal">14:11 smonsees@yix490016 /disk0/scratch/smonsees&gt;=
devtool --help<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Starting bitbake server...<o:p></o:p></p>
<p class=3D"MsoNormal">usage: devtool [--basepath BASEPATH] [--bbpath BBPAT=
H] [-d] [-q]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [--color COLOR] [-h]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;subcommand&gt; ...<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">OpenEmbedded development tool<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">options:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; --basepath BASEPATH&nbsp;&nbsp; Base director=
y of SDK / build directory<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; --bbpath BBPATH&nbsp; &nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;Explicitly specify the BBPATH, rather than getting it<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; from the metadata<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; -d, --debug&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; Enable debug output<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; -q, --quiet&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; Print only errors<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; --color COLOR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; Colorize output (where COLOR is auto, always, never)<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp; -h, --help&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; show this help message and exit<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">subcommands:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Beginning work on a recipe:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; add&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; Add a new recipe<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; modify&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Modify the =
source for an existing recipe<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; upgrade&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Upgrade an exist=
ing recipe<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Getting information:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; status&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Show worksp=
ace status<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; search&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search avai=
lable recipes<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; latest-version&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; Report the latest version of an existing recipe<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; check-upgrade-status&nbsp; Report=
 upgradability for multiple (or all) recipes<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Working on a recipe in the workspace:<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; build&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Build =
a recipe<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; rename&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rename a re=
cipe file in the workspace<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; edit-recipe&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Edit a recipe file<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; find-recipe&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Find a recipe file<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; configure-help&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; Get help on configure script options<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; update-recipe&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; Apply changes from external source tree to rec=
ipe<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; reset&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Remove=
 a recipe from your workspace<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; finish&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Finish work=
ing on a recipe in your workspace<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Testing changes on target:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; deploy-target&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; Deploy recipe output files to live target mach=
ine<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; undeploy-target&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; Undeploy recipe output files in live target machine<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; package&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Build packages f=
or a recipe<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; build-image&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Build image including workspace reci=
pe packages<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; runqemu&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Run QEMU on the =
specified image<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Advanced:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; build-sdk&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Build a derivative SDK of =
this one<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; extract&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Extract the sour=
ce for an existing recipe<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; sync&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S=
ynchronize the source tree for an existing recipe<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; export&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Export work=
space into a tar archive<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; import&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Import expo=
rted tar archive into workspace<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; menuconfig&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alter build-time configuration =
for a recipe<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; SDK maintenance:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; sdk-update&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Update SDK components<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; sdk-install&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Install additional SDK components<o:=
p></o:p></p>
<p class=3D"MsoNormal">Use devtool &lt;subcommand&gt; --help to get help on=
 a specific command<o:p></o:p></p>
<p class=3D"MsoNormal">14:11 smonsees@yix490016 /disk0/scratch/smonsees&gt;=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_760481e781154ed29ab32c945cb0dae0baesystemscom_--
