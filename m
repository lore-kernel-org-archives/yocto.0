Return-Path: <mohamad.noor.alim.hussin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AA55E008D2; Thu, 26 Apr 2018 20:36:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E17F6E00823
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 20:36:49 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Apr 2018 20:36:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,333,1520924400"; d="scan'208,217";a="36534946"
Received: from pgsmsx103.gar.corp.intel.com ([10.221.44.82])
	by orsmga007.jf.intel.com with ESMTP; 26 Apr 2018 20:36:46 -0700
Received: from pgsmsx107.gar.corp.intel.com ([169.254.7.161]) by
	PGSMSX103.gar.corp.intel.com ([169.254.2.142]) with mapi id
	14.03.0319.002; Fri, 27 Apr 2018 11:30:50 +0800
From: "Hussin, Mohamad Noor Alim" <mohamad.noor.alim.hussin@intel.com>
To: Raymond Yeung <rksyeung@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: PXE Boot NFS not working
Thread-Index: AQHT3RibB3SjOiqCJ0iFNIV79C8ZUKQSpG5AgACjeVWAAHvGQA==
Date: Fri, 27 Apr 2018 03:30:49 +0000
Message-ID: <A05DCA0C0293664FB237A9C4B0E55E4601515B9E@PGSMSX107.gar.corp.intel.com>
References: <MWHPR19MB1183FFEEF33178BA3331F6A6C58E0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<A05DCA0C0293664FB237A9C4B0E55E4601515890@PGSMSX107.gar.corp.intel.com>
	<MWHPR19MB1183CCEDF7F16991BF5BCCA9C58E0@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB1183CCEDF7F16991BF5BCCA9C58E0@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYmJhMzdhMzUtNzRlMC00MDM5LWIxNmUtZTEyYmQ1YTMxZWQwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiIrbDdpY1dvUHB2QlJWOHhacjN6OGpkYlJEdWt4cTR2NkJHaTRRVUNxNE9UakduRnBueDBQMWJIUThUeUlqY1dpIn0=
x-ctpclassification: CTP_NT
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Re: PXE Boot NFS not working
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
X-List-Received-Date: Fri, 27 Apr 2018 03:36:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A05DCA0C0293664FB237A9C4B0E55E4601515B9EPGSMSX107garcor_"

--_000_A05DCA0C0293664FB237A9C4B0E55E4601515B9EPGSMSX107garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

You are using PXE with legacy BIOS as you use pxelinux.0 . To configure PXE=
 with legacy BIOS follow these instruction
Note: PXE server IP =3D 192.168.1.2
Target IP =3D 192.168.1.1

On PXE server

1.       make sure DHCP, NFS & TFTP services are up and running.

2.       change the filename "pxelinux.0"; in /etc/dhcp/dhcpd.conf. Then re=
start your DHCP service.

3.       Put your kernel to /path/to/tftpboot/image/ and extract your rootf=
s to /srv/rootfs/.

4.       Create a file in /path/to/tftpboot/pxelinux.cfg/default. The conte=
nt should like this

include menu.cfg

default vesamenu.c32

prompt 0

timeout 5

label Manual Netboot genericx86-64

menu label Netboot genericx86-64

linux image/bzImage

append root=3D/dev/nfs rw nfsroot=3D192.168.1.2:/srv/rootfs,hard,tcp,intr i=
p=3Ddhcp

if you want to use PXE with GRUB, bootx64.efi, you need to enable UEFI  ins=
tead of legacy BIOS in BIOS configuration. Follow these instruction.
on PXE server

1.       make sure DHCP, NFS & TFTP services are up and running.

2.       change the filename "bootx64.efi"; in /etc/dhcp/dhcpd.conf. Then r=
estart your DHCP service.

3.       Put your kernel to /path/to/tftpboot/image/ and extract your rootf=
s to /srv/rootfs/.

4.       If you want to get into GRUB,

a.       comment the commands from /path/to/tftpboot/grub/grub.cfg to avoid=
 grub automatically load the kernel from network.

b.      On GRUB, press "TAB" key to list available command. Or you can try =
use this command

                                                               i.      net_=
bootp

                                                             ii.      linux=
 (tftp,pxeserverip)/image/bzImage root=3D/dev/nfs rw nfsroot=3D192.168.1.2:=
/srv/rootfs,hard,tcp,intr ip=3Ddhcp

                                                            iii.      boot

5.       if you want boot automatically to NFS, create a file called grub.c=
fg in /path/to/tftpboot/grub.cfg. your grub.cfg should look like this

Set timeout 5

menuentry " genericx86-64" {

    linux image/bzImage root=3D/dev/nfs rw nfsroot=3D192.168.1.2:/srv/rootf=
s,hard,tcp,intr ip=3Ddhcp

    initrd image/initrd

}

6.       When your device boot, it will download bootx64.efi and the messag=
e something like this
>>Start PXE over IPv4.

Station IP address is 192.168.1.1

Server IP address is 192.168.1.2

NBP filename is bootx64.efi

NBP filesize is 1137016 Bytes

Downloading NBP file...

NBP file downloaded successfully.

Please note that I did not use initramfs or initrd as my kernel already hav=
e network module build-in. To build your kernel with network module, you ne=
ed to know which module need to build-in into your kernel. Simply boot your=
 device using *.hhdimg from USB stick. Then check loaded kernel module from=
 your device.
$ lsmod
Find the module something with network. Yes it is a little bit tricky.

Build your kernel in host machine.
$ bitbake virtual/kernel -c menuconfig
A menu will popup and search your kernel module using key "/". Make sure sy=
mbol module [*] indicate build-in.
$ bitbake virtual/kernel

You also can create a kernel bundle with initramfs.  Read this https://www.=
yoctoproject.org/docs/2.5/mega-manual/mega-manual.html#building-an-initramf=
s-image.
Maybe need to ask someone who are expert on kernel development on how to en=
able build-in kernel module.


Regards,
Alim Hussin

From: Raymond Yeung [mailto:rksyeung@hotmail.com]
Sent: Friday, April 27, 2018 1:12 AM
To: Hussin, Mohamad Noor Alim <mohamad.noor.alim.hussin@intel.com>; yocto@y=
octoproject.org
Subject: Re: PXE Boot NFS not working


Follow-up to my previous post, after seeing the reply below suggesting me n=
ot to use initramfs (but initrd is usable, right?).  BTW, I don't use bootx=
64.efi.  Instead, I use pxelinux.0 along with the other lib***.c32 files.



  1.  Is there a way to verify if GRUB (that I'm using) supports networking=
 or not?  It seems to have very limited user commands available.
  2.  How do I get into GRUB?  I'd been into GRUB, more like accidentally. =
 The reply below refers to grub.cfg.  Is this cfg file stored on target, or=
 on host (like pxelinux.cfg)?
  3.  How do I configure my build (and what yocto tool to use, if any) in o=
rder to get my network driver part of kernel, instead of being a LKM that i=
sn't there when I need it for NFS boot?

________________________________
From: Hussin, Mohamad Noor Alim <mohamad.noor.alim.hussin@intel.com<mailto:=
mohamad.noor.alim.hussin@intel.com>>
Sent: Thursday, April 26, 2018 12:26 AM
To: Raymond Yeung; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: RE: PXE Boot NFS not working


Refer to my post here https://lists.yoctoproject.org/pipermail/yocto/2018-A=
pril/040860.html



Don't use initramfs/initrd as it not working.





Regards,

Alim Hussin





--_000_A05DCA0C0293664FB237A9C4B0E55E4601515B9EPGSMSX107garcor_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.xmsonormal, li.xmsonormal, div.xmsonormal
	{mso-style-name:x_msonormal;
	mso-style-priority:99;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:986008004;
	mso-list-template-ids:1260419966;}
@list l1
	{mso-list-id:1269583724;
	mso-list-template-ids:1288473554;}
@list l1:level1
	{mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2
	{mso-list-id:1307130221;
	mso-list-type:hybrid;
	mso-list-template-ids:-1361559678 67698703 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l3
	{mso-list-id:2086106920;
	mso-list-type:hybrid;
	mso-list-template-ids:-261601224 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l3:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l3:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l3:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span lang=3D"EN-MY" sty=
le=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F=
497D">You are using PXE with legacy BIOS as you use pxelinux.0 . To configu=
re PXE with legacy BIOS follow these instruction<o:p></o:p></span></a></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Note: PXE server IP =
=3D 192.168.1.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Target IP =3D 192.168.=
1.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D">On PXE server<o:p></o:=
p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l3 level=
1 lfo5"><![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"m=
so-list:Ignore">1.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">make sure DHCP=
, NFS &amp; TFTP services are up and running.
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l3 level=
1 lfo5"><![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"m=
so-list:Ignore">2.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">change the fil=
ename &#8220;pxelinux.0&#8221;; in /etc/dhcp/dhcpd.conf. Then restart your =
DHCP service.<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l3 level=
1 lfo5"><![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"m=
so-list:Ignore">3.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Put your kerne=
l to /path/to/tftpboot/image/ and extract your rootfs to /srv/rootfs/.<o:p>=
</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l3 level=
1 lfo5"><![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"m=
so-list:Ignore">4.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Create a file =
in /path/to/tftpboot/pxelinux.cfg/default. The content should like this<o:p=
></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">include menu.cfg<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">default vesamenu.c32<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">prompt 0<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">timeout 5<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">label Manual Netboot genericx86-64<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">menu label Netboot genericx86-64<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">linux image/bzImage<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">append root=3D/dev/nfs rw nfsroot=3D192.168.1.2:/srv/rootfs,ha=
rd,tcp,intr ip=3Ddhcp<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D">if you want to use PXE=
 with GRUB, bootx64.efi, you need to enable UEFI &nbsp;instead of legacy BI=
OS in BIOS configuration. Follow these instruction.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D">on PXE server
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l2 level=
1 lfo4"><![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"m=
so-list:Ignore">1.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">make sure DHCP=
, NFS &amp; TFTP services are up and running.
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l2 level=
1 lfo4"><![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"m=
so-list:Ignore">2.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">change the fil=
ename &#8220;bootx64.efi&#8221;; in /etc/dhcp/dhcpd.conf. Then restart your=
 DHCP service.<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l2 level=
1 lfo4"><![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"m=
so-list:Ignore">3.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Put your kerne=
l to /path/to/tftpboot/image/ and extract your rootfs to /srv/rootfs/.<o:p>=
</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l2 level=
1 lfo4"><![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"m=
so-list:Ignore">4.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">If you want to=
 get into GRUB,
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l2 level2 lfo4">
<![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"mso-list:=
Ignore">a.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">comment the co=
mmands from /path/to/tftpboot/grub/grub.cfg to avoid grub automatically loa=
d the kernel from network.
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l2 level2 lfo4">
<![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"mso-list:=
Ignore">b.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">On GRUB, press=
 &#8220;TAB&#8221; key to list available command. Or you can try use this c=
ommand<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.5in;text-indent:-1.5in=
;mso-text-indent-alt:-9.0pt;mso-list:l2 level3 lfo4">
<![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"mso-list:=
Ignore"><span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>i.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3D"EN-MY" sty=
le=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F=
497D">net_bootp<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.5in;text-indent:-1.5in=
;mso-text-indent-alt:-9.0pt;mso-list:l2 level3 lfo4">
<![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"mso-list:=
Ignore"><span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>ii.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3D"EN-MY" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
F497D">linux (tftp,pxeserverip)/image/bzImage root=3D/dev/nfs rw nfsroot=3D=
192.168.1.2:/srv/rootfs,hard,tcp,intr
 ip=3Ddhcp<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.5in;text-indent:-1.5in=
;mso-text-indent-alt:-9.0pt;mso-list:l2 level3 lfo4">
<![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"mso-list:=
Ignore"><span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>iii.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3D"EN-MY" s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1F497D">boot<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l2 level=
1 lfo4"><![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"m=
so-list:Ignore">5.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">if you want bo=
ot automatically to NFS, create a file called grub.cfg in /path/to/tftpboot=
/grub.cfg. your grub.cfg should look like this<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">Set timeout 5<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">menuentry &quot; genericx86-64&quot; {<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">&nbsp;&nbsp;&nbsp; linux image/bzImage root=3D/dev/nfs rw nfsr=
oot=3D192.168.1.2:/srv/rootfs,hard,tcp,intr ip=3Ddhcp<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">&nbsp;&nbsp;&nbsp; initrd image/initrd<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">}<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l2 level=
1 lfo4"><![if !supportLists]><code><span lang=3D"EN-MY" style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span styl=
e=3D"mso-list:Ignore">6.<span style=3D"font:7.0pt &quot;Times New Roman&quo=
t;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></code><![endif]><span lang=3D"EN-MY" style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">When yo=
ur device boot, it will download bootx64.efi and the message something like=
 this</span><span style=3D"font-size:9.5pt;font-family:Consolas;color:black=
;border:none windowtext 1.0pt;padding:0in;background:#DFF0D8"><br>
<code><span style=3D"font-family:Consolas">&gt;&gt;Start PXE over IPv4. </s=
pan></code></span><code><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p></o:p></span></c=
ode></p>
<p class=3D"MsoListParagraph"><code><span style=3D"font-size:9.5pt;font-fam=
ily:Consolas;color:black;border:none windowtext 1.0pt;padding:0in;backgroun=
d:#DFF0D8">Station IP address is 192.168.1.1<o:p></o:p></span></code></p>
<p class=3D"MsoListParagraph"><code><span style=3D"font-size:9.5pt;font-fam=
ily:Consolas;color:black;border:none windowtext 1.0pt;padding:0in;backgroun=
d:#DFF0D8">Server IP address is 192.168.1.2<o:p></o:p></span></code></p>
<p class=3D"MsoListParagraph"><code><span style=3D"font-size:9.5pt;font-fam=
ily:Consolas;color:black;border:none windowtext 1.0pt;padding:0in;backgroun=
d:#DFF0D8">NBP filename is bootx64.efi
<o:p></o:p></span></code></p>
<p class=3D"MsoListParagraph"><code><span style=3D"font-size:9.5pt;font-fam=
ily:Consolas;color:black;border:none windowtext 1.0pt;padding:0in;backgroun=
d:#DFF0D8">NBP filesize is 1137016 Bytes
<o:p></o:p></span></code></p>
<p class=3D"MsoListParagraph"><code><span style=3D"font-size:9.5pt;font-fam=
ily:Consolas;color:black;border:none windowtext 1.0pt;padding:0in;backgroun=
d:#DFF0D8">Downloading NBP file...
<o:p></o:p></span></code></p>
<p class=3D"MsoListParagraph"><code><span style=3D"font-size:9.5pt;font-fam=
ily:Consolas;color:black;border:none windowtext 1.0pt;padding:0in;backgroun=
d:#DFF0D8">NBP file downloaded successfully.</span></code><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Please note that I did=
 not use initramfs or initrd as my kernel already have network module build=
-in. To build your kernel with network module, you
 need to know which module need to build-in into your kernel. Simply boot y=
our device using *.hhdimg from USB stick. Then check loaded kernel module f=
rom your device.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D">$ lsmod<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Find the module someth=
ing with network. Yes it is a little bit tricky.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Build your kernel in h=
ost machine.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D">$ bitbake virtual/kern=
el &#8211;c menuconfig<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D">A menu will popup and =
search your kernel module using key &#8220;/&#8221;. Make sure symbol modul=
e [*] indicate build-in.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D">$ bitbake virtual/kern=
el<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D">You also can create a =
kernel bundle with initramfs. &nbsp;Read this
</span><a href=3D"https://www.yoctoproject.org/docs/2.5/mega-manual/mega-ma=
nual.html#building-an-initramfs-image"><span lang=3D"EN-MY" style=3D"font-s=
ize:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">https://www.yoctopro=
ject.org/docs/2.5/mega-manual/mega-manual.html#building-an-initramfs-image<=
/span></a><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:#1F497D">.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Maybe need to ask some=
one who are expert on kernel development on how to enable build-in kernel m=
odule.</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Alim Hussin<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><a name=3D"_____replyseparator"></a><b><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">From:</spa=
n></b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-=
serif"> Raymond Yeung [mailto:rksyeung@hotmail.com]
<br>
<b>Sent:</b> Friday, April 27, 2018 1:12 AM<br>
<b>To:</b> Hussin, Mohamad Noor Alim &lt;mohamad.noor.alim.hussin@intel.com=
&gt;; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: PXE Boot NFS not working<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div id=3D"divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">F=
ollow-up to my previous post, after seeing the reply below suggesting me no=
t to use initramfs (but initrd is usable, right?). &nbsp;BTW, I don't use b=
ootx64.efi. &nbsp;Instead, I use pxelinux.0 along with
 the other lib***.c32 files.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<ol start=3D"1" type=3D"1">
<li class=3D"MsoNormal" style=3D"color:black;mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto;mso-list:l1 level1 lfo3">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Is there a way t=
o verify if GRUB (that I'm using) supports networking or not? &nbsp;It seem=
s to have very limited user commands available.<o:p></o:p></span></li><li c=
lass=3D"MsoNormal" style=3D"color:black;mso-margin-top-alt:auto;mso-margin-=
bottom-alt:auto;mso-list:l1 level1 lfo3">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">How do I get int=
o GRUB? &nbsp;I'd been into GRUB, more like accidentally. &nbsp;The reply b=
elow&nbsp;refers to grub.cfg. &nbsp;Is this cfg file stored on target, or o=
n host (like pxelinux.cfg)?<o:p></o:p></span></li><li class=3D"MsoNormal" s=
tyle=3D"color:black;mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-=
list:l1 level1 lfo3">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">How do I configu=
re my build (and what yocto tool to use, if any) in order to get my network=
 driver part of kernel, instead of being a LKM that isn't there when I need=
 it for NFS boot?<o:p></o:p></span></li></ol>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:black">From:</span></b><span style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"> Hussin=
, Mohamad Noor Alim &lt;</span><a href=3D"mailto:mohamad.noor.alim.hussin@i=
ntel.com"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,s=
ans-serif">mohamad.noor.alim.hussin@intel.com</span></a><span style=3D"font=
-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&gt;<b=
r>
<b>Sent:</b> Thursday, April 26, 2018 12:26 AM<br>
<b>To:</b> Raymond Yeung; </span><a href=3D"mailto:yocto@yoctoproject.org">=
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"=
>yocto@yoctoproject.org</span></a><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Calibri&quot;,sans-serif;color:black"><br>
<b>Subject:</b> RE: PXE Boot NFS not working</span><span style=3D"font-fami=
ly:&quot;Calibri&quot;,sans-serif;color:black">
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">&nbsp;<o:p></o:p></span></p>
</div>
</div>
<div>
<div>
<p class=3D"xmsonormal"><a name=3D"x__MailEndCompose"><span lang=3D"EN-MY" =
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:=
#1F497D">Refer to my post here
</span></a><a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2018-A=
pril/040860.html" id=3D"LPlnk128042"><span lang=3D"EN-MY" style=3D"font-siz=
e:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">https://lists.yoctopro=
ject.org/pipermail/yocto/2018-April/040860.html</span></a><span style=3D"fo=
nt-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p=
>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span st=
yle=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p><=
/span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Don&#8217;t use initr=
amfs/initrd as it not working.
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span st=
yle=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p><=
/span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span st=
yle=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p><=
/span></p>
<div>
<p class=3D"xmsonormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">Regards,</span><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">Alim Hussin</span><span style=3D"fon=
t-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
</div>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span st=
yle=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p><=
/span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"xmsonormal"><span style=3D"font-family:&quot;Calibri&quot;,sans=
-serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_A05DCA0C0293664FB237A9C4B0E55E4601515B9EPGSMSX107garcor_--
