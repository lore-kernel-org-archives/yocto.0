Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22FCBE01404
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 17:54:18 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Aug 2012 17:54:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,297,1344236400"; 
	d="scan'208,217";a="212660716"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 22 Aug 2012 17:54:16 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 22 Aug 2012 17:54:16 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.150]) with mapi id
	14.01.0355.002; Wed, 22 Aug 2012 17:54:16 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Rudolf Streif <rudolf.streif@linux.com>
Thread-Topic: [yocto] [ADT] Sysroot setup issue
Thread-Index: AQHNf9oDPOoGMBbi5Uun5edXY0/PIJdmgYBAgACC5AD//45AQA==
Date: Thu, 23 Aug 2012 00:54:15 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46AE4A91@ORSMSX101.amr.corp.intel.com>
References: <CA+gsK-pFJV-Lab1E8chP0KOcEs9hg=Oxe_5CNZaobKj0P5Xmaw@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46AE4A2C@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-qXNiWQg0ztFFtjuSLz=qp9iL4A3Gex37+MZN5iFV-Eow@mail.gmail.com>
In-Reply-To: <CA+gsK-qXNiWQg0ztFFtjuSLz=qp9iL4A3Gex37+MZN5iFV-Eow@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Garman,
	Scott A" <scott.a.garman@intel.com>
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
X-List-Received-Date: Thu, 23 Aug 2012 00:54:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C46AE4A91ORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C46AE4A91ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Rudi,



Good to hear that you've resolved your issue. For the kernel issue, would y=
ou mind to file a bug (enhancement) in our bugzilla for us to track? As to =
adt-installer, it is meant to be an alternative way for people to setup the=
ir cross development environment, so patches are always welcome, esp. from =
community.  The few things you've pointed out are all good and valid that w=
orth to improve.



Thanks,

Jessica



From: rstreif@linuxfoundation.org [mailto:rstreif@linuxfoundation.org] On B=
ehalf Of Rudolf Streif
Sent: Wednesday, August 22, 2012 5:37 PM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org; Garman, Scott A
Subject: Re: [yocto] [ADT] Sysroot setup issue



Hi Jessica,



Thanks while responding while on vacation.



No worries. I have resolved the NFS boot issue. I entirely missed that my d=
ev system had a firewall running blocking ports 3048 and 3049 used by the u=
ser-space rpc.mountd and rpc.nfsd daemons that runquemu-export-rootfs sets =
up. My fault. Sorry about that.



The kernel images may be an incorrect expectation from my side. I checked t=
he ADT installer scripts and they do not seem to do anything with the kerne=
l images they download. From my point of view it would make sense to copy t=
hem into <sysroot>/boot.



The adt_installer.conf file suggests that minimal, minimal-dev, sato, sato-=
dev, sato-sdk,lsb, lsb-dev, lsb-sdk are valid images for YOCTOADT_ROOTFS_<a=
rch>, but really only the *-dev and *-sdk images make sense for an ADT as t=
he others are missing the dev headers and libs.



While the ADT installer downloads all the image files specified in YOCTOADT=
_ROOTFS_<arch> it really only extracts the one specified by YOCTOADT_TARGET=
_SYSROOT_IMAGE_<arch> into the location specified by YOCTOADT_TARGET_SYSROO=
T_LOC_<arch>. If you keep the installer files around you can of course late=
r install them with runqemu-extract-sdk but that's not necessarily intuitiv=
e.



I eventually extracted all the sysroot images into separate directories and=
 created a link to the one I wanted to use with the name specified by YOCTO=
ADT_TARGET_SYSROOT_LOC_<arch>. That works well.



I don't know what the overall direction of development for the ADT installe=
r is but I could make some patches to address these items if that makes sen=
se to the community.



:rjs





On Wed, Aug 22, 2012 at 5:16 PM, Zhang, Jessica <jessica.zhang@intel.com<ma=
ilto:jessica.zhang@intel.com>> wrote:

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



From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of Rudolf Streif
Sent: Tuesday, August 21, 2012 1:17 PM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
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






--_000_C6510F6D410BB64A8C15398EDC6B847C46AE4A91ORSMSX101amrcor_
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
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
	{mso-list-id:2107386750;
	mso-list-template-ids:-2040481564;}
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Good to hear that you&#82=
17;ve resolved your issue. For the kernel issue, would you mind to file a b=
ug (enhancement) in our bugzilla for us to track? As to adt-installer,
 it is meant to be an alternative way for people to setup their cross devel=
opment environment, so patches are always welcome, esp. from community.&nbs=
p; The few things you&#8217;ve pointed out are all good and valid that wort=
h to improve.<o:p></o:p></span></p>
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
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> rstreif@=
linuxfoundation.org [mailto:rstreif@linuxfoundation.org]
<b>On Behalf Of </b>Rudolf Streif<br>
<b>Sent:</b> Wednesday, August 22, 2012 5:37 PM<br>
<b>To:</b> Zhang, Jessica<br>
<b>Cc:</b> yocto@yoctoproject.org; Garman, Scott A<br>
<b>Subject:</b> Re: [yocto] [ADT] Sysroot setup issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi Jessica,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks while responding while on vacation.<o:p></o:p=
></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">No worries. I have resolved the NFS boot issue. I en=
tirely missed that my dev system had a firewall running blocking ports 3048=
 and 3049 used by the user-space rpc.mountd and rpc.nfsd daemons that runqu=
emu-export-rootfs sets up. My fault.
 Sorry about that.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">The kernel images may be an incorrect expectation fr=
om my side. I checked the ADT installer scripts and they do not seem to do =
anything with the kernel images they download. From my point of view it wou=
ld make sense to copy them into &lt;sysroot&gt;/boot.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">The adt_installer.conf file suggests that&nbsp;minim=
al, minimal-dev, sato, sato-dev, sato-sdk,lsb, lsb-dev, lsb-sdk are valid i=
mages for&nbsp;YOCTOADT_ROOTFS_&lt;arch&gt;, but really only the *-dev and =
*-sdk images make sense for an ADT as the others are
 missing the dev headers and libs.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">While the ADT installer downloads all the image file=
s specified in YOCTOADT_ROOTFS_&lt;arch&gt; it really only extracts the one=
 specified by&nbsp;YOCTOADT_TARGET_SYSROOT_IMAGE_&lt;arch&gt; into the loca=
tion specified by&nbsp;YOCTOADT_TARGET_SYSROOT_LOC_&lt;arch&gt;.
 If you keep the installer files around you can of course later install the=
m with&nbsp;runqemu-extract-sdk but that's not necessarily intuitive.<o:p><=
/o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I eventually extracted all the sysroot images into s=
eparate directories and created a link to the one I wanted to use with the =
name specified by&nbsp;YOCTOADT_TARGET_SYSROOT_LOC_&lt;arch&gt;. That works=
 well.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I don't know what the overall direction of developme=
nt for the ADT installer is but I could make some patches to address these =
items if that makes sense to the community.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">:rjs<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Wed, Aug 22, 2012 at 5:16 PM, Zhang, Jessica &lt;=
<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@=
intel.com</a>&gt; wrote:<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Hi Rudi,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">I&#8217;m currently on vacation so have=
 very limited access to my YP setup. &nbsp;We&#8217;ve been using the sysro=
ot
 and nfs like below to start qemu after adt-installation, can you give it a=
 try to see whether there&#8217;s problem or not?</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Runqemu youradtinstallerdir/download_im=
age/</span>bzImage-qemux86.bin ${HOME}/test-yocto/x86<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Scott,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Can you help answer or look into the bo=
ot dir missing kernel file issue that Rudi&#8217;s reporting to
 see whether it&#8217;s a bug on our end?</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Thanks,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Jessica</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,=
&quot;sans-serif&quot;">From:</span></b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Rudolf Streif<br>
<b>Sent:</b> Tuesday, August 21, 2012 1:17 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] [ADT] Sysroot setup issue</span><o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Hi,
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I am trying to setup the ADT using an ADT installer. I have downlo=
aded the installer from&nbsp;<a href=3D"http://downloads.yoctoproject.org/r=
eleases/yocto/yocto-1.2.1/adt_installer/" target=3D"_blank">http://download=
s.yoctoproject.org/releases/yocto/yocto-1.2.1/adt_installer/</a>&nbsp;as
 well as created my own installer using a build environment with Denzil 7.0=
.1.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">The adt_installer.conf contains these settings:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">YOCTOADT_REPO=3D&quot;<a href=3D"http://adtrepo.yoctoproject.org/1=
.2.1" target=3D"_blank">http://adtrepo.yoctoproject.org/1.2.1</a>&quot;<o:p=
></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">YOCTOADT_TARGETS=3D&quot;arm x86&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">YOCTOADT_QEMU=3D&quot;Y&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">YOCTOADT_NFS_UTIL=3D&quot;Y&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">YOCTOADT_ROOTFS_arm=3D&quot;minimal&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">YOCTOADT_TARGET_SYSROOT_IMAGE_arm=3D&quot;minimal&quot;<o:p></o:p>=
</p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">YOCTOADT_TARGET_SYSROOT_LOC_arm=3D&quot;$HOME/test-yocto/arm&quot;=
<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">YOCTOADT_ROOTFS_x86=3D&quot;minimal&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">YOCTOADT_TARGET_SYSROOT_IMAGE_x86=3D&quot;minimal&quot;<o:p></o:p>=
</p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">YOCTOADT_TARGET_SYSROOT_LOC_x86=3D&quot;$HOME/test-yocto/x86&quot;=
<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">The installer downloads kernel and root fs images. After the insta=
llation has finished<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">${HOME}/test-yocto/arm/boot does not contain any kernel images and=
<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">${HOME}/test-yocto/x86/boot only contains a empty link&nbsp;bzImag=
e -&gt; bzImage-3.2.18-yocto-standard<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I manually copied the x86 kernel image bzImage-qemux86.bin from th=
e download_image directory of the extracted installer tarball into the dire=
ctory, initialized the ADT environment
 and then ran<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">runqemu&nbsp;${HOME}/test-yocto/x86/boot/bzImage-qemux86.bin&nbsp;=
${HOME}/test-yocto/x86<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">The NFS user-space server initializes on the tap0 interface and th=
e kernel boots. However, it panics because it cannot locate the root fs. rp=
cbind is started with the -i option
 on my system.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I also ran QEMU directly using:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">/opt/poky/1.2.1/sysroots/x86_64-pokysdk-linux/usr/bin/qemu -kernel=
 /home/rudi/test-yocto/x86/boot/bzImage-qemux86.bin -show-cursor -usb -usbd=
evice wacom-tablet -vga vmware -enable-gl
 -no-reboot -m 128 --append &quot;root=3D/dev/nfs nfsroot=3D<a href=3D"http=
://192.168.100.199" target=3D"_blank">192.168.100.199</a>://home/rudi/test-=
yocto/x86 rw ip=3D192.168.100.38::192.168.100.199:255.255.255.0 mem=3D128M =
oprofile.timer=3D1 &quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">with my dev system's NFS server running and exporting the file sys=
tem (I verified that I can mount the exported file system via NFS).<o:p></o=
:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Questions:<o:p></o:p></p>
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Thanks,<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Rudi<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C46AE4A91ORSMSX101amrcor_--
