Return-Path: <thomas.t.druilhe.external@airbus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A547FE00D2F; Fri,  1 Feb 2019 02:03:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Feb 2019 02:03:28 PST
Received: from mo2.myeers.net (mo2.myeers.net [87.190.7.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3FF6E00C7D
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2019 02:03:27 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.56,548,1539640800"; d="scan'208,217";a="63769923"
Received: from unknown (HELO DE0-03HUB-P01.central.mail.corp) ([44.225.67.170])
	by de0-03iro-p03-out.myeers.net with ESMTP/TLS/AES256-SHA;
	01 Feb 2019 11:02:00 +0100
Received: from DE0-03DAG09-P04.central.mail.corp (44.225.65.38) by
	DE0-03HUB-P01.central.mail.corp (44.225.67.170) with Microsoft SMTP
	Server (TLS) id 15.0.1365.1; Fri, 1 Feb 2019 11:02:00 +0100
Received: from DE0-03DAG09-P03.central.mail.corp (44.225.65.37) by
	DE0-03DAG09-P04.central.mail.corp (44.225.65.38) with Microsoft SMTP
	Server (TLS) id 15.0.1365.1; Fri, 1 Feb 2019 11:01:59 +0100
Received: from DE0-03DAG09-P03.central.mail.corp ([fe80::dcdf:c9bc:1aed:32d5])
	by DE0-03DAG09-P03.central.mail.corp
	([fe80::dcdf:c9bc:1aed:32d5%15]) with
	mapi id 15.00.1365.000; Fri, 1 Feb 2019 11:01:58 +0100
From: "DRUILHE, Thomas (SOPRA STERIA GROUP SA)"
	<thomas.t.druilhe.external@airbus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Error function "license_create_manifest"
Thread-Index: AdS6FLFQIpy5PS/6SLuvcAyGXKrRBA==
Date: Fri, 1 Feb 2019 10:01:58 +0000
Message-ID: <9a8ca159fe124834a1a852428e32f89f@DE0-03DAG09-P03.central.mail.corp>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-gm-security: forwarded
MIME-Version: 1.0
Subject: Error function "license_create_manifest"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Feb 2019 10:03:35 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_9a8ca159fe124834a1a852428e32f89fDE003DAG09P03centralmai_"

--_000_9a8ca159fe124834a1a852428e32f89fDE003DAG09P03centralmai_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi

I'm trying to build  for an imx6 board with krogoth (I can't use newer vesi=
on), but i got an error during do_rootfs step. I'm triyng since 3 days to f=
ix but with no result.

Here the error :


Build Configuration:
BB_VERSION        =3D "1.30.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Debian-9.7"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "imx6qdl-iwg15-q7"
DISTRO            =3D "fsl-imx-x11"
DISTRO_VERSION    =3D "4.1.15-2.1.0"
TUNE_FEATURES     =3D "arm armv7a vfp  neon        callconvention-hard     =
   cortexa9"
TARGET_FPU        =3D "hard"
meta
meta-poky         =3D "HEAD:f5da2a5913319ad6ac2141438ba1aa17576326ab"
meta-oe
meta-multimedia   =3D "HEAD:247b1267bbe95719cd4877d2d3cfbaf2a2f4865a"
meta-fsl-arm      =3D "HEAD:be78894e4682f111575470fb23e51e6ba523508d"
meta-fsl-arm-extra =3D "HEAD:3dfb82fc7e703eae9891b3ffda0e9393701f2396"
meta-fsl-demos    =3D "HEAD:a165068f8a0d1cf29aabe4b4053f28be1c2aa492"
meta-bsp
meta-sdk          =3D "HEAD:823b26a67261270d2bf22d511e6190641a8a90cf"
meta-browser      =3D "HEAD:77736988073a5d90fcff9d0005c8477332ede387"
meta-gnome
meta-networking
meta-python
meta-filesystems  =3D "HEAD:247b1267bbe95719cd4877d2d3cfbaf2a2f4865a"
meta-qt5          =3D "HEAD:ccae79be69c5268df3b47e4e14cea0591c39a531"

NOTE: Preparing RunQueue
WARNING: virtual:native:/home/aplug/iwg15-release-bsp/sources/poky/meta/rec=
ipes-support/lzop/lzop_1.03.bb.do_build is tainted from a forced run
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
No currently running tasks (6643 of 8040)
No real function for mknod: /home/aplug/iwg15-release-bsp/build_iwg15/tmp/s=
ysroots/x86_64-linux/usr/bin/../lib/pseudo/lib64/libpseudo.so: undefined sy=
mbol: mknod
No real function for mknodat: /home/aplug/iwg15-release-bsp/build_iwg15/tmp=
/sysroots/x86_64-linux/usr/bin/../lib/pseudo/lib64/libpseudo.so: undefined =
symbol: mknodat
No real function for mknod: /home/aplug/iwg15-release-bsp/build_iwg15/tmp/s=
ysroots/x86_64-linux/usr/bin/../lib/pseudo/lib64/libpseudo.so: undefined sy=
mbol: mknod
No real function for mknodat: /home/aplug/iwg15-release-bsp/build_iwg15/tmp=
/sysroots/x86_64-linux/usr/bin/../lib/pseudo/lib64/libpseudo.so: undefinCur=
rently
1 running tasks (6643 of 8040):
0: fsl-image-gui-1.0-r0 do_rootfs (pid 5919)

ERROR: fsl-image-gui-1.0-r0 do_rootfs: Error executing a python function in=
 exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
*** 0002:license_create_manifest(d)
     0003:
File: '/home/aplug/iwg15-release-bsp/sources/poky/meta/classes/license.bbcl=
ass', lineno: 48, function: license_create_manifest
     0044:    pkg_dic =3D {}
     0045:    for pkg in sorted(image_list_installed_packages(d)):
     0046:        pkg_info =3D os.path.join(d.getVar('PKGDATA_DIR', True),
     0047:                                'runtime-reverse', pkg)
*** 0048:        pkg_name =3D os.path.basename(os.readlink(pkg_info))
     0049:
     0050:        pkg_dic[pkg_name] =3D oe.packagedata.read_pkgdatafile(pkg=
_info)
     0051:        if not "LICENSE" in pkg_dic[pkg_name].keys():
     0052:            pkg_lic_name =3D "LICENSE_" + pkg_name
Exception: OSError: [Errno 2] No such file or directory: '/home/aplug/iwg15=
-release-bsp/build_iwg15/tmp/sysroots/imx6qdl-iwg15-q7/pkgdata/runtime-reve=
rse/No'

ERROR: fsl-image-gui-1.0-r0 do_rootfs: Function failed: license_create_mani=
fest
ERROR: Logfile of failure stored in: /home/aplug/iwg15-release-bsp/build_iw=
g15/tmp/work/imx6qdl_iwg15_q7-poky-linux-gnueabi/fsl-image-gui/1.0-r0/temp/=
log.do_rootfs.5919
ERROR: Task 9 (/home/aplug/iwg15-release-bsp/sources/meta-fsl-bsp-release/i=
mx/meta-sdk/recipes-fsl/images/fsl-image-gui.bb, do_rootfs) failed with exi=
t code '1'

Thomas DRUILHE

The information in this e-mail is confidential. The contents may not be dis=
closed or used by anyone other than the addressee. Access to this e-mail by=
 anyone else is unauthorised.
If you are not the intended recipient, please notify Airbus immediately and=
 delete this e-mail.
Airbus cannot accept any responsibility for the accuracy or completeness of=
 this e-mail as it has been sent over public networks. If you have any conc=
erns over the content of this message or its Accuracy or Integrity, please =
contact Airbus immediately.
All outgoing e-mails from Airbus are checked using regularly updated virus =
scanning software but you should take whatever measures you deem to be appr=
opriate to ensure that this message and any attachments are virus free.

--_000_9a8ca159fe124834a1a852428e32f89fDE003DAG09P03centralmai_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Arial",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:FR">Hi <o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:FR"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">I&#8217;m trying to build&nbsp; for an imx6 board with krogoth (I can&#8=
217;t use newer vesion), but i got an error during do_rootfs step. I&#8217;=
m triyng since 3 days to fix but with no result.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">Here the error :
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">Build Configuration:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.30.0&qu=
ot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_=
64-linux&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;Debian-9.7&quot;<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm-poky-=
linux-gnueabi&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;imx6qdl-iwg15-q7&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;fsl-imx-x11&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;4.1.15-2.1.0&quot;<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm armv7a vfp&nbsp; neo=
n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; callconvention-hard&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cortexa9&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;hard&quot=
;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">meta<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;HEAD=
:f5da2a5913319ad6ac2141438ba1aa17576326ab&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">meta-oe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">meta-multimedia&nbsp;&nbsp; =3D &quot;HEAD:247b1267bbe95719cd4877d2d3cfb=
af2a2f4865a&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">meta-fsl-arm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;HEAD:be78894e4682f1=
11575470fb23e51e6ba523508d&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">meta-fsl-arm-extra =3D &quot;HEAD:3dfb82fc7e703eae9891b3ffda0e9393701f23=
96&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">meta-fsl-demos&nbsp;&nbsp;&nbsp; =3D &quot;HEAD:a165068f8a0d1cf29aabe4b4=
053f28be1c2aa492&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">meta-bsp<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">meta-sdk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot=
;HEAD:823b26a67261270d2bf22d511e6190641a8a90cf&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">meta-browser&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;HEAD:77736988073a5d=
90fcff9d0005c8477332ede387&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">meta-gnome<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">meta-networking<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">meta-python<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">meta-filesystems&nbsp; =3D &quot;HEAD:247b1267bbe95719cd4877d2d3cfbaf2a2=
f4865a&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">meta-qt5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot=
;HEAD:ccae79be69c5268df3b47e4e14cea0591c39a531&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">NOTE: Preparing RunQueue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">WARNING: virtual:native:/home/aplug/iwg15-release-bsp/sources/poky/meta/=
recipes-support/lzop/lzop_1.03.bb.do_build is tainted from a forced run<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">NOTE: Executing SetScene Tasks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">NOTE: Executing RunQueue Tasks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">No currently running tasks (6643 of 8040)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">No real function for mknod: /home/aplug/iwg15-release-bsp/build_iwg15/tm=
p/sysroots/x86_64-linux/usr/bin/../lib/pseudo/lib64/libpseudo.so: undefined=
 symbol: mknod<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">No real function for mknodat: /home/aplug/iwg15-release-bsp/build_iwg15/=
tmp/sysroots/x86_64-linux/usr/bin/../lib/pseudo/lib64/libpseudo.so: undefin=
ed symbol: mknodat<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">No real function for mknod: /home/aplug/iwg15-release-bsp/build_iwg15/tm=
p/sysroots/x86_64-linux/usr/bin/../lib/pseudo/lib64/libpseudo.so: undefined=
 symbol: mknod<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">No real function for mknodat: /home/aplug/iwg15-release-bsp/build_iwg15/=
tmp/sysroots/x86_64-linux/usr/bin/../lib/pseudo/lib64/libpseudo.so: undefin=
Currently
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">1 running tasks (6643 of 8040):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">0: fsl-image-gui-1.0-r0 do_rootfs (pid 5919)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">ERROR: fsl-image-gui-1.0-r0 do_rootfs: Error executing a python function=
 in exec_python_func() autogenerated:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">The stack trace of python calls that resulted in this exception/failure =
was:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">File: 'exec_python_func() autogenerated', lineno: 2, function: &lt;modul=
e&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">&nbsp;&nbsp;&nbsp;&nbsp; 0001:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">*** 0002:license_create_manifest(d)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">&nbsp;&nbsp;&nbsp;&nbsp; 0003:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">File: '/home/aplug/iwg15-release-bsp/sources/poky/meta/classes/license.b=
bclass', lineno: 48, function: license_create_manifest<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">&nbsp;&nbsp;&nbsp;&nbsp; 0044:&nbsp;&nbsp;&nbsp; pkg_dic =3D {}<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">&nbsp;&nbsp;&nbsp;&nbsp; 0045:&nbsp;&nbsp;&nbsp; for pkg in sorted(image=
_list_installed_packages(d)):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">&nbsp;&nbsp;&nbsp;&nbsp; 0046:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 pkg_info =3D os.path.join(d.getVar('PKGDATA_DIR', True),<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">&nbsp;&nbsp;&nbsp;&nbsp; 0047:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'runt=
ime-reverse', pkg)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">*** 0048:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pkg_name =3D os.path=
.basename(os.readlink(pkg_info))<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">&nbsp;&nbsp;&nbsp;&nbsp; 0049:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">&nbsp;&nbsp;&nbsp;&nbsp; 0050:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 pkg_dic[pkg_name] =3D oe.packagedata.read_pkgdatafile(pkg_info)<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">&nbsp;&nbsp;&nbsp;&nbsp; 0051:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 if not &quot;LICENSE&quot; in pkg_dic[pkg_name].keys():<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">&nbsp;&nbsp;&nbsp;&nbsp; 0052:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; pkg_lic_name =3D &quot;LICENSE_&quot; &#43; pkg_na=
me<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">Exception: OSError: [Errno 2] No such file or directory: '/home/aplug/iw=
g15-release-bsp/build_iwg15/tmp/sysroots/imx6qdl-iwg15-q7/pkgdata/runtime-r=
everse/No'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">ERROR: fsl-image-gui-1.0-r0 do_rootfs: Function failed: license_create_m=
anifest<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">ERROR: Logfile of failure stored in: /home/aplug/iwg15-release-bsp/build=
_iwg15/tmp/work/imx6qdl_iwg15_q7-poky-linux-gnueabi/fsl-image-gui/1.0-r0/te=
mp/log.do_rootfs.5919<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R">ERROR: Task 9 (/home/aplug/iwg15-release-bsp/sources/meta-fsl-bsp-releas=
e/imx/meta-sdk/recipes-fsl/images/fsl-image-gui.bb, do_rootfs) failed with =
exit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
R"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:FR">Thomas DRUIL=
HE<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<font style=3D"font-size: 9px;">The information in this e-mail is confident=
ial. The contents may not be disclosed or used by anyone other than the add=
ressee. Access to this e-mail by anyone else is unauthorised.<br>If you are=
 not the intended recipient, please notify Airbus immediately and delete th=
is e-mail.<br>Airbus cannot accept any responsibility for the accuracy or c=
ompleteness of this e-mail as it has been sent over public networks. If you=
 have any concerns over the content of this message or its Accuracy or Inte=
grity, please contact Airbus immediately.<br>All outgoing e-mails from Airb=
us are checked using regularly updated virus scanning software but you shou=
ld take whatever measures you deem to be appropriate to ensure that this me=
ssage and any attachments are virus free.</font></body>
</html>

--_000_9a8ca159fe124834a1a852428e32f89fDE003DAG09P03centralmai_--
