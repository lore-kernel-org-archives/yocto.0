Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C181FE01404
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 17:16:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by fmsmga101.fm.intel.com with ESMTP; 22 Aug 2012 17:16:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,297,1344236400"; 
	d="scan'208,217";a="183949932"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by azsmga001.ch.intel.com with ESMTP; 22 Aug 2012 17:16:34 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 22 Aug 2012 17:16:33 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.178]) with mapi id
	14.01.0355.002; Wed, 22 Aug 2012 17:16:33 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Rudolf Streif <rudolf.streif@linux.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Garman, Scott A" <scott.a.garman@intel.com>
Thread-Topic: [yocto] [ADT] Sysroot setup issue
Thread-Index: AQHNf9oDPOoGMBbi5Uun5edXY0/PIJdmgYBA
Date: Thu, 23 Aug 2012 00:16:32 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46AE4A2C@ORSMSX101.amr.corp.intel.com>
References: <CA+gsK-pFJV-Lab1E8chP0KOcEs9hg=Oxe_5CNZaobKj0P5Xmaw@mail.gmail.com>
In-Reply-To: <CA+gsK-pFJV-Lab1E8chP0KOcEs9hg=Oxe_5CNZaobKj0P5Xmaw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [ADT] Sysroot setup issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Aug 2012 00:16:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C46AE4A2CORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C46AE4A2CORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Rudi,



I'm currently on vacation so have very limited access to my YP setup.  We'v=
e been using the sysroot and nfs like below to start qemu after adt-install=
ation, can you give it a try to see whether there's problem or not?



Runqemu youradtinstallerdir/download_image/bzImage-qemux86.bin ${HOME}/test=
-yocto/x86





Scott,



Can you help answer or look into the boot dir missing kernel file issue tha=
t Rudi's reporting to see whether it's a bug on our end?



Thanks,

Jessica



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Rudolf Streif
Sent: Tuesday, August 21, 2012 1:17 PM
To: yocto@yoctoproject.org
Subject: [yocto] [ADT] Sysroot setup issue



Hi,



I am trying to setup the ADT using an ADT installer. I have downloaded the =
installer from http://downloads.yoctoproject.org/releases/yocto/yocto-1.2.1=
/adt_installer/ as well as created my own installer using a build environme=
nt with Denzil 7.0.1.



The adt_installer.conf contains these settings:



YOCTOADT_REPO=3D"http://adtrepo.yoctoproject.org/1.2.1"

YOCTOADT_TARGETS=3D"arm x86"

YOCTOADT_QEMU=3D"Y"

YOCTOADT_NFS_UTIL=3D"Y"



YOCTOADT_ROOTFS_arm=3D"minimal"

YOCTOADT_TARGET_SYSROOT_IMAGE_arm=3D"minimal"

YOCTOADT_TARGET_SYSROOT_LOC_arm=3D"$HOME/test-yocto/arm"



YOCTOADT_ROOTFS_x86=3D"minimal"

YOCTOADT_TARGET_SYSROOT_IMAGE_x86=3D"minimal"

YOCTOADT_TARGET_SYSROOT_LOC_x86=3D"$HOME/test-yocto/x86"



The installer downloads kernel and root fs images. After the installation h=
as finished



${HOME}/test-yocto/arm/boot does not contain any kernel images and



${HOME}/test-yocto/x86/boot only contains a empty link bzImage -> bzImage-3=
.2.18-yocto-standard



I manually copied the x86 kernel image bzImage-qemux86.bin from the downloa=
d_image directory of the extracted installer tarball into the directory, in=
itialized the ADT environment and then ran



runqemu ${HOME}/test-yocto/x86/boot/bzImage-qemux86.bin ${HOME}/test-yocto/=
x86



The NFS user-space server initializes on the tap0 interface and the kernel =
boots. However, it panics because it cannot locate the root fs. rpcbind is =
started with the -i option on my system.



I also ran QEMU directly using:



/opt/poky/1.2.1/sysroots/x86_64-pokysdk-linux/usr/bin/qemu -kernel /home/ru=
di/test-yocto/x86/boot/bzImage-qemux86.bin -show-cursor -usb -usbdevice wac=
om-tablet -vga vmware -enable-gl -no-reboot -m 128 --append "root=3D/dev/nf=
s nfsroot=3D192.168.100.199<http://192.168.100.199>://home/rudi/test-yocto/=
x86 rw ip=3D192.168.100.38::192.168.100.199:255.255.255.0 mem=3D128M oprofi=
le.timer=3D1 "



with my dev system's NFS server running and exporting the file system (I ve=
rified that I can mount the exported file system via NFS).



Questions:

1.      Why do the sysroot boot directory not contain any kernel images? I =
don't think that is what it is supposed to be.
2.      Is there anything broken with the sysroot causing the boot process =
to fail when the kernel tries to access the root fs?
3.      Any hints on how to fix it?

Thanks,

Rudi




--_000_C6510F6D410BB64A8C15398EDC6B847C46AE4A2CORSMSX101amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1318149748;
	mso-list-template-ids:-1432181460;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Rudi,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I&#8217;m currently on va=
cation so have very limited access to my YP setup. &nbsp;We&#8217;ve been u=
sing the sysroot and nfs like below to start qemu after adt-installation,
 can you give it a try to see whether there&#8217;s problem or not?<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Runqemu youradtinstallerd=
ir/download_image/</span>bzImage-qemux86.bin ${HOME}/test-yocto/x86<o:p></o=
:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Scott,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Can you help answer or lo=
ok into the boot dir missing kernel file issue that Rudi&#8217;s reporting =
to see whether it&#8217;s a bug on our end?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Rudolf Streif<br>
<b>Sent:</b> Tuesday, August 21, 2012 1:17 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] [ADT] Sysroot setup issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi, <o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I am trying to setup the ADT using an ADT installer.=
 I have downloaded the installer from&nbsp;<a href=3D"http://downloads.yoct=
oproject.org/releases/yocto/yocto-1.2.1/adt_installer/">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-1.2.1/adt_installer/</a>&nbsp;as
 well as created my own installer using a build environment with Denzil 7.0=
.1.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">The adt_installer.conf contains these settings:<o:p>=
</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">YOCTOADT_REPO=3D&quot;<a href=3D"http://adtrepo.yoct=
oproject.org/1.2.1">http://adtrepo.yoctoproject.org/1.2.1</a>&quot;<o:p></o=
:p></p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_TARGETS=3D&quot;arm x86&quot;<o:p></o:p></p=
>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_QEMU=3D&quot;Y&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_NFS_UTIL=3D&quot;Y&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_ROOTFS_arm=3D&quot;minimal&quot;<o:p></o:p>=
</p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_TARGET_SYSROOT_IMAGE_arm=3D&quot;minimal&qu=
ot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_TARGET_SYSROOT_LOC_arm=3D&quot;$HOME/test-y=
octo/arm&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_ROOTFS_x86=3D&quot;minimal&quot;<o:p></o:p>=
</p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_TARGET_SYSROOT_IMAGE_x86=3D&quot;minimal&qu=
ot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_TARGET_SYSROOT_LOC_x86=3D&quot;$HOME/test-y=
octo/x86&quot;<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">The installer downloads kernel and root fs images. A=
fter the installation has finished<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">${HOME}/test-yocto/arm/boot does not contain any ker=
nel images and<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">${HOME}/test-yocto/x86/boot only contains a empty li=
nk&nbsp;bzImage -&gt; bzImage-3.2.18-yocto-standard<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I manually copied the x86 kernel image bzImage-qemux=
86.bin from the download_image directory of the extracted installer tarball=
 into the directory, initialized the ADT environment and then ran<o:p></o:p=
></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">runqemu&nbsp;${HOME}/test-yocto/x86/boot/bzImage-qem=
ux86.bin&nbsp;${HOME}/test-yocto/x86<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">The NFS user-space server initializes on the tap0 in=
terface and the kernel boots. However, it panics because it cannot locate t=
he root fs. rpcbind is started with the -i option on my system.<o:p></o:p><=
/p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I also ran QEMU directly using:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">/opt/poky/1.2.1/sysroots/x86_64-pokysdk-linux/usr/bi=
n/qemu -kernel /home/rudi/test-yocto/x86/boot/bzImage-qemux86.bin -show-cur=
sor -usb -usbdevice wacom-tablet -vga vmware -enable-gl -no-reboot -m 128 -=
-append &quot;root=3D/dev/nfs nfsroot=3D<a href=3D"http://192.168.100.199">=
192.168.100.199</a>://home/rudi/test-yocto/x86
 rw ip=3D192.168.100.38::192.168.100.199:255.255.255.0 mem=3D128M oprofile.=
timer=3D1 &quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">with my dev system's NFS server running and exportin=
g the file system (I verified that I can mount the exported file system via=
 NFS).<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Questions:<o:p></o:p></p>
</div>
<div>
<ol start=3D"1" type=3D"1">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l0 level1 lfo1">
Why do the sysroot boot directory not contain any kernel images? I don't th=
ink that is what it is supposed to be.<o:p></o:p></li><li class=3D"MsoNorma=
l" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l0 =
level1 lfo1">
Is there anything broken with the sysroot causing the boot process to fail =
when the kernel tries to access the root fs?<o:p></o:p></li><li class=3D"Ms=
oNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-li=
st:l0 level1 lfo1">
Any hints on how to fix it?<o:p></o:p></li></ol>
<div>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">Rudi<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C46AE4A2CORSMSX101amrcor_--
