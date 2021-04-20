Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.10846.1618926202285562761
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 06:43:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=QQXLPy3U;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1618926202; x=1776606202;
  h=from:to:subject:date:mime-version;
  bh=YZwwf8zoSAuK2xQokS6Dx4clSINGRgwv8qy+3DD/hS4=;
  b=QQXLPy3UWE+JnMpZ+pnp2RoOgNqnAOuYyoeQwQrUYwYb01icabvpoIpR
   C0WpshtXZkOUE6hMvNLNRgPRDGujGiSGMQEfzYW60KAIyBurDq7rZGqE2
   PjbrxsqY9fi1j7yREoEIjt2gGizc1qCXnjAkIQe7uN6HcqJ7umRICur5o
   w=;
IronPort-SDR: dtiDtZ+r/Q3bCBAHNMLWCBpOWfZdMtqgPfy9lUx6h6YdPbuhs5iqhf5Ko7JjLyCJVFGRazYM9L
 8l1jjkIRwEzg==
IronPort-PHdr: =?us-ascii?q?A9a23=3A5OxyoROLb48VuxGJPcIl6naKDRdPi93PFj5Q0?=
 =?us-ascii?q?YIujvd0So/mwa6KFHLW6fgltlLVR4KTs6sC17OH9fq4BCdbvt6oizMrSNR0T?=
 =?us-ascii?q?RgLiMEbzUQLIfWuLgnFFsPsdDEwB89YVVVorDmROElRH9viNRWJ+iXhpTEdF?=
 =?us-ascii?q?Q/iOgVrO+/7BpDdj9it1+C15pbffxhEiCCybL9vKBi6txvdutUWjIdtJKs8y?=
 =?us-ascii?q?AbCr2dVdehR2W5mP0+YkQzm5se38p5j8iBQtOwk+sVdT6j0fLk2QKJBAjg+P?=
 =?us-ascii?q?G87+MPktR/YTQuS/XQcSXkZkgBJAwfe8h73WIr6vzbguep83CmaOtD2TawxV?=
 =?us-ascii?q?D+/4apnVAPkhSEaPDM/7WrZiNF/jLhDrRyhuRJx3pLUbo+WOvp/YqzScsgXS?=
 =?us-ascii?q?nBdUsZTTSFNHp+wY5UJAuEcPehYtY79p14WoBewAgesA+XvyiRWiXDoxq02y?=
 =?us-ascii?q?/kqHxza3AM+AdIBrnLUp8jrOawPVey6wrTGwTDNY/hL3jr985TIfQ4/of6SW?=
 =?us-ascii?q?7J8a8/RyU4pFwPekFqft5flMiiO2esXrWeb9OphVfmzi2E5rgFxuSKjydsri?=
 =?us-ascii?q?onMn48YzE3P+iplzogvP9K4VFJ7bsC+EJtWryyUOYV7T98jTmxquSs21KAKt?=
 =?us-ascii?q?IC4cSUKzJkqyBHSZ+GJfYWI7RzvSeKcLDV4iX9qeb+zmgi//Eyjx+D/S8S4z?=
 =?us-ascii?q?VlEoyxYmdfPrnAAzwHf5tSdRvZz/EqtwyuD2gTd5+1eIE05lLLXJ4M9zrIqm?=
 =?us-ascii?q?Zcevl7PEyDslEnrjKKbcFgv9PKy5OT9eLrmo4eRN4pzig7jLKsjgte/AeEkM?=
 =?us-ascii?q?ggWWGib5Pi82KXj/ULnRLVKieU7kq/ZsJDcP8sbo7W5DgxV34o/9xqzEi2q0?=
 =?us-ascii?q?NICknUdN11KYgyIj5PpOlHVPPD3E/K/g0+2nDh3wPDGO6XtApTLLnfdjLfsZ?=
 =?us-ascii?q?atx51JGxAc9z91T/Y9YB7UPLf7pW0L8tcTUDhojPAy1x+bnBs991oQbWW+XG?=
 =?us-ascii?q?a+ZLL3dsUGW6eIpOeWMYYgVuDDmK/c7+fHulmQ0lkQHcqa3xpsWaGu4Huh4L?=
 =?us-ascii?q?EWcenrgmMsOEWAPvgYmVuzllEWCUSJPZ3a1R6895jY7B566DYfEXY2thL2B3?=
 =?us-ascii?q?DynHp1NfGxHCleMHmv0d4WDQ/cMciWSIs1/nTMYSbitUYgh1QuhtFyy970yZ?=
 =?us-ascii?q?PvT8TEfnZbiz8RuofzUng017SZzDcmWzyeKVW4+1jcZQDQq24h7oFdh0RGS1?=
 =?us-ascii?q?qNkhORCEt5e7O8PVR01Y83y1et/XprXXQTac9qSDB6dXti4DDd5ZZpx/uRPK?=
 =?us-ascii?q?Q4pAMmvkB3FmS+tBaQYmqejDpU56bPHw3X0PIB2zHOQh/pptEUvXsYabT7uv?=
 =?us-ascii?q?aV47QWGX+b0?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ATs+PHq9yTjCUlrOi88Fuk+AqI+orLtY04l?=
 =?us-ascii?q?Q7vn1ZYxpTb8CeioSSjO0WvCWExAo5dXk8lbm7VZWobmjb8fdOkMIsFJODeC?=
 =?us-ascii?q?Wjh2eyNoFl6uLZsnDdMgnz7PRU26slU6UWMrHNJGN3h8r7/wW0euxIqLLszI?=
 =?us-ascii?q?mTmezcw31xJDsaIZ1I0gERMGn0cy0GJ3gldP9JcOv6l6w33kvZCA9nFLXHdw?=
 =?us-ascii?q?V1IJm81qy75OOUEGx2cm9SmX7++0LgmfbHLyQ=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2A9AwAL2n5g/0LBJQpaHgEBCxIMQAm?=
 =?us-ascii?q?BPguBI1OBLIFBC5YtA4EJmWIUgWgLAQEBAQEBAQEBCAEdARYEAQGEUAKBdSY?=
 =?us-ascii?q?0CQ4CAwEBDAEBBgEBAQEBBgQBgQOFUQyCOCKDagEBBQEsXgEIDQQEAQFXCh0?=
 =?us-ascii?q?JAQQTCIJqgX6pEHeBNBoCZYRYhReBOoFlhRyCXoYDQYETgmw2PoQpAYYQBIF?=
 =?us-ascii?q?UJk56EwEwG1sgYXiQTEWKcp5lBwODDIRDkSiHGR4Pg0+QfAOQNC2UcYISoSw?=
 =?us-ascii?q?CBAIEBQIWgVSCE3CDOVAXApx6czgCBgoBAQMJi3+BEAEB?=
X-IPAS-Result: =?us-ascii?q?A2A9AwAL2n5g/0LBJQpaHgEBCxIMQAmBPguBI1OBLIFBC?=
 =?us-ascii?q?5YtA4EJmWIUgWgLAQEBAQEBAQEBCAEdARYEAQGEUAKBdSY0CQ4CAwEBDAEBB?=
 =?us-ascii?q?gEBAQEBBgQBgQOFUQyCOCKDagEBBQEsXgEIDQQEAQFXCh0JAQQTCIJqgX6pE?=
 =?us-ascii?q?HeBNBoCZYRYhReBOoFlhRyCXoYDQYETgmw2PoQpAYYQBIFUJk56EwEwG1sgY?=
 =?us-ascii?q?XiQTEWKcp5lBwODDIRDkSiHGR4Pg0+QfAOQNC2UcYISoSwCBAIEBQIWgVSCE?=
 =?us-ascii?q?3CDOVAXApx6czgCBgoBAQMJi3+BEAEB?=
X-IronPort-AV: E=Sophos;i="5.82,237,1613433600"; 
   d="scan'208,217";a="367334427"
IronPort-SDR: d1LZ5/JPqx45XIS150jeENNZ+oS0f4H37bsP5EVwEggVG/UNXDFoVCRd1UwJmUnH14JfB3kp6e
 QveSUt5i4HTwCGjuJg2DFykRybCGqmg76r0Go7+xKBsB3WMAqsllav4P/dNkpmWnXlqB+3thBK
 0Cx0ETeKIcbb3ydFO1BYFKD8VXD/5Rug3woFZkkzp4YXENE9Me+MEkIg3rNtEj8D2HXGk5G82W
 mY9G7ZAe0ScKdg56tDmB93RscBL0VuL8xNhKNp7fogUCi6j4K7wpeIiSeB6NIrAPFleON84lFR
 d3s=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: #yocto #sdk SDK_EXTRA_TOOLS inclussion of python-native and devtool
Thread-Topic: #yocto #sdk SDK_EXTRA_TOOLS inclussion of python-native and
 devtool 
Thread-Index: AdcxWynD6PGIija1TUyNHOfjPuib2QEj4ZDA
Date: Tue, 20 Apr 2021 13:42:19 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.167794CE403A0E82.8085@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_aa46718ff7b44644ae7b1fcad8ff6ac9baesystemscom_"

--_000_aa46718ff7b44644ae7b1fcad8ff6ac9baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Any one seen this before... ?

SDK appears to be working okay without the inclusion of native python3 comp=
onents, not sure how the inclusion breaks devtool...

From: Monsees, Steven C (US)
Sent: Wednesday, April 14, 2021 2:23 PM
To: 'yocto@lists.yoctoproject.org' <yocto@lists.yoctoproject.org>
Subject: #yocto #sdk SDK_EXTRA_TOOLS inclussion of python-native and devtoo=
l


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



--_000_aa46718ff7b44644ae7b1fcad8ff6ac9baesystemscom_
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
span.EmailStyle19
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Any one seen this befo=
re&#8230; ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">SDK appears to be work=
ing okay without the inclusion of native python3 components, not sure how t=
he inclusion breaks devtool&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Monsees, Steven C (US) <br>
<b>Sent:</b> Wednesday, April 14, 2021 2:23 PM<br>
<b>To:</b> 'yocto@lists.yoctoproject.org' &lt;yocto@lists.yoctoproject.org&=
gt;<br>
<b>Subject:</b> #yocto #sdk SDK_EXTRA_TOOLS inclussion of python-native and=
 devtool
<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_aa46718ff7b44644ae7b1fcad8ff6ac9baesystemscom_--
