Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0425EE00872; Thu,  6 Nov 2014 02:42:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Nov 2014 02:42:04 PST
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7306FE0080D
	for <yocto@yoctoproject.org>; Thu,  6 Nov 2014 02:42:04 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ap8FAJhPW1SHCzIm/2dsb2JhbABbgkgjIyA0WQTLBh0BC4Z4VAKBHRYBAQEBAQFxC4QEAQEDEhteARUVDkgmAQQbGogfAQynfYRxoCELAQEBHpBgDUOCHg9EJIEeBZAAgiGEUYhPPYMQgyCKMIQJg3hsAQEBgUWBAwEBAQ
X-IronPort-AV: E=Sophos;i="5.07,325,1413259200"; d="scan'208,217";a="93452808"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	06 Nov 2014 05:40:57 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC02.global.avaya.com) ([135.64.58.12])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	06 Nov 2014 05:40:57 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC02.global.avaya.com ([135.64.58.12]) with mapi id
	14.03.0174.001; Thu, 6 Nov 2014 11:40:55 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Error while trying to setup using ADT installer
Thread-Index: Ac/5rZZhrL3TepNkT5Gvo53l1xfSKQ==
Date: Thu, 6 Nov 2014 10:40:55 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE308361C6@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.45]
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 07 Nov 2014 08:25:52 -0800
Subject: Error while trying to setup using ADT installer
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
X-List-Received-Date: Thu, 06 Nov 2014 10:42:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE308361C6AZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE308361C6AZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I was trying to setup Yocto 1.7 released development environment but while =
the ADT installer tries to download files it get error as 403 forbidden. Be=
low is the snapshot of the same.
<Snip>
[ADT_INST] Please enter your selections here:
I
Spider mode enabled. Check if remote file exists.
--2014-11-06 16:02:03--  http://adtrepo.yoctoproject.org//1.7
Resolving adtrepo.yoctoproject.org... 140.211.169.59
Connecting to adtrepo.yoctoproject.org|140.211.169.59|:80... connected.
HTTP request sent, awaiting response... 301 Moved Permanently
Location: http://adtrepo.yoctoproject.org/1.7/ [following]
Spider mode enabled. Check if remote file exists.
--2014-11-06 16:02:04--  http://adtrepo.yoctoproject.org/1.7/
Connecting to adtrepo.yoctoproject.org|140.211.169.59|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Remote file exists and could contain further links,
but recursion is disabled -- not retrieving.

OPKG is not setup, setting up opkg in local, which is required for installi=
ng yocto ADT...

Configure opkg ...

Make opkg ...

Make Install opkg ...

Successfully installed OPKG.

Creating new images downloading folder: ./download_image ...
Downloading file: zImage-qemuarm.bin...
--2014-11-06 16:02:25--  http://adtrepo.yoctoproject.org//1.7/rootfs/qemuar=
m/zImage-qemuarm.bin
Resolving adtrepo.yoctoproject.org... 140.211.169.59
Connecting to adtrepo.yoctoproject.org|140.211.169.59|:80... connected.
HTTP request sent, awaiting response... 403 Forbidden
2014-11-06 16:02:27 ERROR 403: Forbidden.

Downloading file: core-image-minimal-qemuarm.tar.bz2...
--2014-11-06 16:02:27--  http://adtrepo.yoctoproject.org//1.7/rootfs/qemuar=
m/core-image-minimal-qemuarm.tar.bz2
Resolving adtrepo.yoctoproject.org... 140.211.169.59
Connecting to adtrepo.yoctoproject.org|140.211.169.59|:80... connected.
HTTP request sent, awaiting response... 403 Forbidden
2014-11-06 16:02:28 ERROR 403: Forbidden.
. . .
Downloading file: core-image-sato-sdk-qemux86.tar.bz2...
--2014-11-06 16:02:29--  http://adtrepo.yoctoproject.org//1.7/rootfs/qemux8=
6/core-image-sato-sdk-qemux86.tar.bz2
Resolving adtrepo.yoctoproject.org... 140.211.169.59
Connecting to adtrepo.yoctoproject.org|140.211.169.59|:80... connected.
HTTP request sent, awaiting response... 403 Forbidden
2014-11-06 16:02:29 ERROR 403: Forbidden.


Start installing selected native ADT for archs: arm x86...
#######################################################################
Please note from this point on installation requires sudo password ...
#######################################################################
[sudo] password for test:
Successfully create directory /opt/poky/1.7//var/lib/opkg.
Updating opkg...
</snip>

I have even tried to open aboye URLs through browser still I get the same e=
rror. So any thoughts to fix this issue as I am using adt_installer.tar.bz2=
  for the same.

Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE308361C6AZFFEXMB01globa_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I was trying to setup Yocto 1.7 released development=
 environment but while the ADT installer tries to download files it get err=
or as 403 forbidden. Below is the snapshot of the same.<o:p></o:p></p>
<p class=3D"MsoNormal">&lt;Snip&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">[ADT_INST] Please enter your selections here:<o:p></=
o:p></p>
<p class=3D"MsoNormal">I<o:p></o:p></p>
<p class=3D"MsoNormal">Spider mode enabled. Check if remote file exists.<o:=
p></o:p></p>
<p class=3D"MsoNormal">--2014-11-06 16:02:03--&nbsp; http://adtrepo.yoctopr=
oject.org//1.7<o:p></o:p></p>
<p class=3D"MsoNormal">Resolving adtrepo.yoctoproject.org... 140.211.169.59=
<o:p></o:p></p>
<p class=3D"MsoNormal">Connecting to adtrepo.yoctoproject.org|140.211.169.5=
9|:80... connected.<o:p></o:p></p>
<p class=3D"MsoNormal">HTTP request sent, awaiting response... 301 Moved Pe=
rmanently<o:p></o:p></p>
<p class=3D"MsoNormal">Location: http://adtrepo.yoctoproject.org/1.7/ [foll=
owing]<o:p></o:p></p>
<p class=3D"MsoNormal">Spider mode enabled. Check if remote file exists.<o:=
p></o:p></p>
<p class=3D"MsoNormal">--2014-11-06 16:02:04--&nbsp; http://adtrepo.yoctopr=
oject.org/1.7/<o:p></o:p></p>
<p class=3D"MsoNormal">Connecting to adtrepo.yoctoproject.org|140.211.169.5=
9|:80... connected.<o:p></o:p></p>
<p class=3D"MsoNormal">HTTP request sent, awaiting response... 200 OK<o:p><=
/o:p></p>
<p class=3D"MsoNormal">Length: unspecified [text/html]<o:p></o:p></p>
<p class=3D"MsoNormal">Remote file exists and could contain further links,<=
o:p></o:p></p>
<p class=3D"MsoNormal">but recursion is disabled -- not retrieving.<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">OPKG is not setup, setting up opkg in local, which i=
s required for installing yocto ADT...<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Configure opkg ...<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Make opkg ...<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Make Install opkg ...<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Successfully installed OPKG.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Creating new images downloading folder: ./download_i=
mage ...<o:p></o:p></p>
<p class=3D"MsoNormal">Downloading file: zImage-qemuarm.bin...<o:p></o:p></=
p>
<p class=3D"MsoNormal">--2014-11-06 16:02:25--&nbsp; http://adtrepo.yoctopr=
oject.org//1.7/rootfs/qemuarm/zImage-qemuarm.bin<o:p></o:p></p>
<p class=3D"MsoNormal">Resolving adtrepo.yoctoproject.org... 140.211.169.59=
<o:p></o:p></p>
<p class=3D"MsoNormal">Connecting to adtrepo.yoctoproject.org|140.211.169.5=
9|:80... connected.<o:p></o:p></p>
<p class=3D"MsoNormal">HTTP request sent, awaiting response... 403 Forbidde=
n<o:p></o:p></p>
<p class=3D"MsoNormal">2014-11-06 16:02:27 ERROR 403: Forbidden.<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Downloading file: core-image-minimal-qemuarm.tar.bz2=
...<o:p></o:p></p>
<p class=3D"MsoNormal">--2014-11-06 16:02:27--&nbsp; http://adtrepo.yoctopr=
oject.org//1.7/rootfs/qemuarm/core-image-minimal-qemuarm.tar.bz2<o:p></o:p>=
</p>
<p class=3D"MsoNormal">Resolving adtrepo.yoctoproject.org... 140.211.169.59=
<o:p></o:p></p>
<p class=3D"MsoNormal">Connecting to adtrepo.yoctoproject.org|140.211.169.5=
9|:80... connected.<o:p></o:p></p>
<p class=3D"MsoNormal">HTTP request sent, awaiting response... 403 Forbidde=
n<o:p></o:p></p>
<p class=3D"MsoNormal">2014-11-06 16:02:28 ERROR 403: Forbidden.<o:p></o:p>=
</p>
<p class=3D"MsoNormal">. . . <o:p></o:p></p>
<p class=3D"MsoNormal">Downloading file: core-image-sato-sdk-qemux86.tar.bz=
2...<o:p></o:p></p>
<p class=3D"MsoNormal">--2014-11-06 16:02:29--&nbsp; http://adtrepo.yoctopr=
oject.org//1.7/rootfs/qemux86/core-image-sato-sdk-qemux86.tar.bz2<o:p></o:p=
></p>
<p class=3D"MsoNormal">Resolving adtrepo.yoctoproject.org... 140.211.169.59=
<o:p></o:p></p>
<p class=3D"MsoNormal">Connecting to adtrepo.yoctoproject.org|140.211.169.5=
9|:80... connected.<o:p></o:p></p>
<p class=3D"MsoNormal">HTTP request sent, awaiting response... 403 Forbidde=
n<o:p></o:p></p>
<p class=3D"MsoNormal">2014-11-06 16:02:29 ERROR 403: Forbidden.<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Start installing selected native ADT for archs: arm =
x86...<o:p></o:p></p>
<p class=3D"MsoNormal">####################################################=
###################<o:p></o:p></p>
<p class=3D"MsoNormal">Please note from this point on installation requires=
 sudo password ...<o:p></o:p></p>
<p class=3D"MsoNormal">####################################################=
###################<o:p></o:p></p>
<p class=3D"MsoNormal">[sudo] password for test:<o:p></o:p></p>
<p class=3D"MsoNormal">Successfully create directory /opt/poky/1.7//var/lib=
/opkg.<o:p></o:p></p>
<p class=3D"MsoNormal">Updating opkg...<o:p></o:p></p>
<p class=3D"MsoNormal">&lt;/snip&gt;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have even tried to open aboye URLs through browser=
 still I get the same error. So any thoughts to fix this issue as I am usin=
g adt_installer.tar.bz2&nbsp; for the same.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Abhinav<o:p></o:p></p>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE308361C6AZFFEXMB01globa_--
