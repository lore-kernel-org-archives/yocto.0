Return-Path: <mohamad.noor.alim.hussin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B757E008D2; Thu, 26 Apr 2018 23:57:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB91FE00823
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 23:57:12 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Apr 2018 23:57:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,334,1520924400"; d="scan'208,217";a="54054264"
Received: from pgsmsx106.gar.corp.intel.com ([10.221.44.98])
	by orsmga002.jf.intel.com with ESMTP; 26 Apr 2018 23:57:10 -0700
Received: from pgsmsx107.gar.corp.intel.com ([169.254.7.161]) by
	PGSMSX106.gar.corp.intel.com ([169.254.9.197]) with mapi id
	14.03.0319.002; Fri, 27 Apr 2018 14:57:08 +0800
From: "Hussin, Mohamad Noor Alim" <mohamad.noor.alim.hussin@intel.com>
To: Raymond Yeung <rksyeung@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: PXE Boot NFS not working
Thread-Index: AQHT3RibB3SjOiqCJ0iFNIV79C8ZUKQSpG5AgACjeVWAAHvGQIAAQNzagAAjf0A=
Date: Fri, 27 Apr 2018 06:57:07 +0000
Message-ID: <A05DCA0C0293664FB237A9C4B0E55E4601515C0E@PGSMSX107.gar.corp.intel.com>
References: <MWHPR19MB1183FFEEF33178BA3331F6A6C58E0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<A05DCA0C0293664FB237A9C4B0E55E4601515890@PGSMSX107.gar.corp.intel.com>
	<MWHPR19MB1183CCEDF7F16991BF5BCCA9C58E0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<A05DCA0C0293664FB237A9C4B0E55E4601515B9E@PGSMSX107.gar.corp.intel.com>
	<MWHPR19MB1183DFBD3321D3E4ACE7AB7BC58D0@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB1183DFBD3321D3E4ACE7AB7BC58D0@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTg4ZmI5NTktMDE3Ni00YjA2LTgwNTQtNzA5ZjNmYmQ2ODE3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJcL1VZOUw3MklacWtmXC9PcnFETkcwamh0dHpYK3dyS1NiT1ZZTldVOHhOdEZmMVhaeThVYkZDc0pRR1lMazY0aDEifQ==
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
X-List-Received-Date: Fri, 27 Apr 2018 06:57:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A05DCA0C0293664FB237A9C4B0E55E4601515C0EPGSMSX107garcor_"

--_000_A05DCA0C0293664FB237A9C4B0E55E4601515C0EPGSMSX107garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Regarding to your question on legacy BIOS.

1.       vesamenu.c32 or menu.32 are graphic library to display PXE menu. N=
ormally if you don't provide these files, you will not able to see PXE menu=
.

2.       Use kernel or linux parameter is depend on your GRUB bootloader co=
mmand. You can try to load the kernel without initrd/initramfs/rootfs to ma=
ke sure your kernel able to load from network. After you able to load the k=
ernel, you will hit kernel panic as kernel unable to find rootfs.

3.       3. "hard,tcp,intr" they are nfs parameter. If your server side use=
 nfs v3 the you need to specify "nfsroot=3D192.168.1.2:/srv/rootfs,nfsvers=
=3D3".

4.       Make sure you only have one DHCP service running. If you use route=
r, turn off the DHCP service on your router. Another way just put static IP=
 address for your board in dhcpd.conf. if you want to have another DHCP ser=
ver running then you need to use proxyDHCP on your PXE server.

a.       Example for configure static IP in DHCP server.

host myboard {

hardware ethernet 00:0A:A1:B2:C3:;

fixed-address 192.168.1.1;

}

5.       Your kernel wait for "removable media"? Are you include initramfs/=
initrd? Actually you can remove initramfs/initrd if you want to use NFS boo=
t. Can you check LED on Ethernet port. If blink the your network is up. Try=
 to ping to your target device to make sure your network is working.

Regards,
Alim Hussin

From: Raymond Yeung [mailto:rksyeung@hotmail.com]
Sent: Friday, April 27, 2018 12:43 PM
To: Hussin, Mohamad Noor Alim <mohamad.noor.alim.hussin@intel.com>; yocto@y=
octoproject.org
Subject: Re: PXE Boot NFS not working


Thanks a lot Alim for the detail step-by-step, for both modes.  I'd like to=
 stay with legacy mode with pxelinux.0 for now.  I'm doing pretty much the =
same as what you described below, with exceptions -



  1.  I'm not using vesamenu.c32.  Instead menu.32 is used, though I don't =
think that would be an issue.
  2.  I use "kernel image/bzImage" instead of "linux image/bzImage".  Still=
 this shouldn't be an issue.
  3.  With the "append" line, I've a question - what is the significance of=
 the options "hard, tcp, intr"?  I currently don't use them.


Since my last email this morning, I'd made some progress -



  1.  I figured out how to reconfigure the kernel with bitbake menuconfig t=
o change my Ethernet driver from .ko to part of kernel.
  2.  I now have a confusing situation, due to Avahi-daemon in the mix.  PX=
EBoot would request IP address via DHCP.  Then when this NFS boot runs, it =
too uses DHCP, and allocates a different IP address.  I suppose this is fin=
e, so long as I've enough IP address to spare.  However, Avahi-daemon also =
request IP address and get the board yet another IP address.  I've yet to f=
igure out how to turn off Avahi-daemon.  And NFS boot still doesn't work (I=
 don't see the mount point with "df -h").
  3.  Client side uses NFS v4.1 while server side uses v3.  Would this be a=
 problem?  I suppose there must be backward compatibility built into NFS.


Also, in the "Append" line of pxelinux.cfg/default, I add nfsrootdebug.  Wh=
at sort of NFS debugs should I see?  I only see two NFS logs, and 4 RPC cal=
ls.  Is there anyway to turn up the verbosity so I know how NFS client fail=
s?



Until I get some more insights to above, I'd proceed to investigate the oth=
er issue - why my kernel initialization would need to wait for any "removab=
le media" indefinitely, and see if I could fix/change this.



Thanks,

Raymond





________________________________
From: Hussin, Mohamad Noor Alim <mohamad.noor.alim.hussin@intel.com<mailto:=
mohamad.noor.alim.hussin@intel.com>>
Sent: Thursday, April 26, 2018 8:30 PM
To: Raymond Yeung; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: RE: PXE Boot NFS not working


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
To: Hussin, Mohamad Noor Alim <mohamad.noor.alim.hussin@intel.com<mailto:mo=
hamad.noor.alim.hussin@intel.com>>; yocto@yoctoproject.org<mailto:yocto@yoc=
toproject.org>
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





--_000_A05DCA0C0293664FB237A9C4B0E55E4601515C0EPGSMSX107garcor_
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
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.xmsolistparagraph, li.xmsolistparagraph, div.xmsolistparagraph
	{mso-style-name:x_msolistparagraph;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.xxmsonormal, li.xxmsonormal, div.xxmsonormal
	{mso-style-name:x_xmsonormal;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle22
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
/* List Definitions */
@list l0
	{mso-list-id:251470046;
	mso-list-template-ids:762580422;}
@list l1
	{mso-list-id:320474534;
	mso-list-template-ids:-1473577598;}
@list l2
	{mso-list-id:1016805697;
	mso-list-template-ids:2075561346;}
@list l3
	{mso-list-id:2025474164;
	mso-list-type:hybrid;
	mso-list-template-ids:-1399422118 67698703 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
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
497D">Regarding to your question on legacy BIOS.<o:p></o:p></span></a></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l3 level=
1 lfo4"><![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"m=
so-list:Ignore">1.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">vesamenu.c32 o=
r menu.32 are graphic library to display PXE menu. Normally if you don&#821=
7;t provide these files, you will not able to see PXE
 menu. <o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l3 level=
1 lfo4"><![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"m=
so-list:Ignore">2.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Use kernel or =
linux parameter is depend on your GRUB bootloader command. You can try to l=
oad the kernel without initrd/initramfs/rootfs
 to make sure your kernel able to load from network. After you able to load=
 the kernel, you will hit kernel panic as kernel unable to find rootfs.<o:p=
></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l3 level=
1 lfo4"><![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"m=
so-list:Ignore">3.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">3. &#8220;hard=
,tcp,intr&#8221; they are nfs parameter. If your server side use nfs v3 the=
 you need to specify
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">&#8220;nfsroot=3D192.168.1.2:/srv/root=
fs</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1F497D">,nfsvers=3D3&#8221;.
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l3 level=
1 lfo4"><![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"m=
so-list:Ignore">4.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Make sure you =
only have one DHCP service running. If you use router, turn off the DHCP se=
rvice on your router. Another way just put static
 IP address for your board in dhcpd.conf. if you want to have another DHCP =
server running then you need to use proxyDHCP on your PXE server.
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l3 level2 lfo4">
<![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"mso-list:=
Ignore">a.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Example for co=
nfigure static IP in DHCP server.
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">host myboard {<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">hardware ethernet 00:0A:A1:B2:C3:;<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">fixed-address 192.168.1.1;<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"EN-=
MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D">}<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l3 level=
1 lfo4"><![if !supportLists]><span lang=3D"EN-MY" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span style=3D"m=
so-list:Ignore">5.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-MY" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Your kernel wa=
it for &#8220;removable media&#8221;? Are you include initramfs/initrd? Act=
ually you can remove initramfs/initrd if you want to use NFS
 boot. Can you check LED on Ethernet port. If blink the your network is up.=
 Try to ping to your target device to make sure your network is working.<o:=
p></o:p></span></p>
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
<b>Sent:</b> Friday, April 27, 2018 12:43 PM<br>
<b>To:</b> Hussin, Mohamad Noor Alim &lt;mohamad.noor.alim.hussin@intel.com=
&gt;; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: PXE Boot NFS not working<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div id=3D"divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">T=
hanks a lot Alim for the detail step-by-step, for both modes. &nbsp;I'd lik=
e to stay with legacy mode with pxelinux.0 for now. &nbsp;I'm doing pretty =
much the same as what you described below, with exceptions
 -<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<ol start=3D"1" type=3D"1">
<li class=3D"MsoNormal" style=3D"color:black;mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto;mso-list:l1 level1 lfo1">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I'm not using ve=
samenu.c32. &nbsp;Instead menu.32 is used, though I don't think that would =
be an issue.<o:p></o:p></span></li><li class=3D"MsoNormal" style=3D"color:b=
lack;mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l1 level1 =
lfo1">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I use &quot;kern=
el image/bzImage&quot; instead of &quot;linux image/bzImage&quot;. &nbsp;St=
ill this shouldn't be an issue.<o:p></o:p></span></li><li class=3D"MsoNorma=
l" style=3D"color:black;mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;=
mso-list:l1 level1 lfo1">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">With the &quot;a=
ppend&quot; line, I've a&nbsp;question - what is the significance of the op=
tions &quot;hard, tcp, intr&quot;? &nbsp;I currently don't use them. &nbsp;=
<o:p></o:p></span></li></ol>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">S=
ince my last email this morning, I'd made some progress -<o:p></o:p></span>=
</p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<ol start=3D"1" type=3D"1">
<li class=3D"MsoNormal" style=3D"color:black;mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto;mso-list:l0 level1 lfo2">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I figured out ho=
w to reconfigure the kernel with bitbake menuconfig to change my Ethernet d=
river from .ko to part of kernel.<o:p></o:p></span></li><li class=3D"MsoNor=
mal" style=3D"color:black;mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o;mso-list:l0 level1 lfo2">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I now have a con=
fusing situation, due to Avahi-daemon in the mix. &nbsp;PXEBoot would reque=
st IP address via DHCP. &nbsp;Then when this NFS boot runs, it too uses DHC=
P, and allocates a different IP address. &nbsp;I suppose this
 is fine, so long as I've enough IP address to spare. &nbsp;However, Avahi-=
daemon also request IP address and get the board yet another IP address. &n=
bsp;I've yet to figure out how to turn off Avahi-daemon. &nbsp;And NFS boot=
 still doesn't work (I don't see the mount point
 with &quot;df -h&quot;). &nbsp;<o:p></o:p></span></li><li class=3D"MsoNorm=
al" style=3D"color:black;mso-margin-top-alt:auto;mso-margin-bottom-alt:auto=
;mso-list:l0 level1 lfo2">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Client side uses=
 NFS v4.1 while server side uses v3. &nbsp;Would this be a problem? &nbsp;I=
 suppose there must be backward compatibility built into NFS.<o:p></o:p></s=
pan></li></ol>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">A=
lso, in the &quot;Append&quot; line of pxelinux.cfg/default, I add nfsrootd=
ebug. &nbsp;What sort of NFS debugs should I see? &nbsp;I only see two NFS =
logs, and 4 RPC calls. &nbsp;Is there anyway to turn up the verbosity
 so I know how NFS client fails?<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">U=
ntil I get some more insights to above, I'd proceed to investigate the othe=
r issue - why my kernel initialization would need to wait for any &quot;rem=
ovable media&quot; indefinitely, and see if I could fix/change
 this.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">T=
hanks,<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">R=
aymond<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:black">From:</span></b><span style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"> Hussin=
, Mohamad Noor Alim &lt;<a href=3D"mailto:mohamad.noor.alim.hussin@intel.co=
m">mohamad.noor.alim.hussin@intel.com</a>&gt;<br>
<b>Sent:</b> Thursday, April 26, 2018 8:30 PM<br>
<b>To:</b> Raymond Yeung; <a href=3D"mailto:yocto@yoctoproject.org">yocto@y=
octoproject.org</a><br>
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
#1F497D">You are using PXE with legacy BIOS as you use pxelinux.0 . To conf=
igure PXE with legacy BIOS follow these instruction</span></a><span style=
=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></sp=
an></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Note: PXE server IP =
=3D 192.168.1.2</span><span style=3D"font-family:&quot;Calibri&quot;,sans-s=
erif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Target IP =3D 192.168=
.1.1</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:=
black"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span st=
yle=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p><=
/span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">On PXE server</span><=
span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p>=
</o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"text-indent:-.25in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1F497D">1.</span><span lang=3D"EN-MY" style=3D"font-size:7.0pt;color=
:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">make sure DHCP, NFS &amp; TFTP service=
s are up and running.
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"text-indent:-.25in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1F497D">2.</span><span lang=3D"EN-MY" style=3D"font-size:7.0pt;color=
:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">change the filename &#8220;pxelinux.0&=
#8221;; in /etc/dhcp/dhcpd.conf. Then restart your DHCP service.</span><spa=
n style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o=
:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"text-indent:-.25in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1F497D">3.</span><span lang=3D"EN-MY" style=3D"font-size:7.0pt;color=
:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">Put your kernel to /path/to/tftpboot/i=
mage/ and extract your rootfs to /srv/rootfs/.</span><span style=3D"font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"text-indent:-.25in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1F497D">4.</span><span lang=3D"EN-MY" style=3D"font-size:7.0pt;color=
:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">Create a file in /path/to/tftpboot/pxe=
linux.cfg/default. The content should like this</span><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.0in"><span lang=3D"EN=
-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:#1F497D">include menu.cfg</span><span style=3D"font-family:&quot;Calib=
ri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.0in"><span lang=3D"EN=
-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:#1F497D">default vesamenu.c32</span><span style=3D"font-family:&quot;C=
alibri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.0in"><span lang=3D"EN=
-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:#1F497D">prompt 0</span><span style=3D"font-family:&quot;Calibri&quot;=
,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.0in"><span lang=3D"EN=
-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:#1F497D">timeout 5</span><span style=3D"font-family:&quot;Calibri&quot=
;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.0in"><span lang=3D"EN=
-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:#1F497D">label Manual Netboot genericx86-64</span><span style=3D"font-=
family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.0in"><span lang=3D"EN=
-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:#1F497D">menu label Netboot genericx86-64</span><span style=3D"font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.0in"><span lang=3D"EN=
-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:#1F497D">linux image/bzImage</span><span style=3D"font-family:&quot;Ca=
libri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.0in"><span lang=3D"EN=
-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:#1F497D">append root=3D/dev/nfs rw nfsroot=3D192.168.1.2:/srv/rootfs,h=
ard,tcp,intr ip=3Ddhcp</span><span style=3D"font-family:&quot;Calibri&quot;=
,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span st=
yle=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p><=
/span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">if you want to use PX=
E with GRUB, bootx64.efi, you need to enable UEFI &nbsp;instead of legacy B=
IOS in BIOS configuration. Follow these instruction.
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">on PXE server
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"text-indent:-.25in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1F497D">1.</span><span lang=3D"EN-MY" style=3D"font-size:7.0pt;color=
:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">make sure DHCP, NFS &amp; TFTP service=
s are up and running.
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"text-indent:-.25in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1F497D">2.</span><span lang=3D"EN-MY" style=3D"font-size:7.0pt;color=
:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">change the filename &#8220;bootx64.efi=
&#8221;; in /etc/dhcp/dhcpd.conf. Then restart your DHCP service.</span><sp=
an style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></=
o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"text-indent:-.25in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1F497D">3.</span><span lang=3D"EN-MY" style=3D"font-size:7.0pt;color=
:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">Put your kernel to /path/to/tftpboot/i=
mage/ and extract your rootfs to /srv/rootfs/.</span><span style=3D"font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"text-indent:-.25in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1F497D">4.</span><span lang=3D"EN-MY" style=3D"font-size:7.0pt;color=
:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">If you want to get into GRUB,
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.0in;text-indent:-.25i=
n"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri=
&quot;,sans-serif;color:#1F497D">a.</span><span lang=3D"EN-MY" style=3D"fon=
t-size:7.0pt;color:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">comment the commands from /path/to/tft=
pboot/grub/grub.cfg to avoid grub automatically load the kernel from networ=
k.
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.0in;text-indent:-.25i=
n"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri=
&quot;,sans-serif;color:#1F497D">b.</span><span lang=3D"EN-MY" style=3D"fon=
t-size:7.0pt;color:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">On GRUB, press &#8220;TAB&#8221; key t=
o list available command. Or you can try use this command</span><span style=
=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></sp=
an></p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.5in;text-indent:-1.5i=
n"><span lang=3D"EN-MY" style=3D"font-size:7.0pt;color:#1F497D">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">i.</span><span lang=3D"EN-MY" style=3D=
"font-size:7.0pt;color:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">net_bootp</span><span style=3D"font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.5in;text-indent:-1.5i=
n"><span lang=3D"EN-MY" style=3D"font-size:7.0pt;color:#1F497D">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">ii.</span><span lang=3D"EN-MY" style=
=3D"font-size:7.0pt;color:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">linux (tftp,pxeserverip)/image/bzImage=
 root=3D/dev/nfs rw nfsroot=3D192.168.1.2:/srv/rootfs,hard,tcp,intr ip=3Ddh=
cp</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:bl=
ack"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.5in;text-indent:-1.5i=
n"><span lang=3D"EN-MY" style=3D"font-size:7.0pt;color:#1F497D">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">iii.</span><span lang=3D"EN-MY" style=
=3D"font-size:7.0pt;color:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">boot</span><span style=3D"font-family:=
&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"text-indent:-.25in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1F497D">5.</span><span lang=3D"EN-MY" style=3D"font-size:7.0pt;color=
:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">if you want boot automatically to NFS,=
 create a file called grub.cfg in /path/to/tftpboot/grub.cfg. your grub.cfg=
 should look like this</span><span style=3D"font-family:&quot;Calibri&quot;=
,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.0in"><span lang=3D"EN=
-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:#1F497D">Set timeout 5</span><span style=3D"font-family:&quot;Calibri&=
quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.0in"><span lang=3D"EN=
-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:#1F497D">menuentry &quot; genericx86-64&quot; {</span><span style=3D"f=
ont-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></=
p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.0in"><span lang=3D"EN=
-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:#1F497D">&nbsp;&nbsp;&nbsp; linux image/bzImage root=3D/dev/nfs rw nfs=
root=3D192.168.1.2:/srv/rootfs,hard,tcp,intr ip=3Ddhcp</span><span style=3D=
"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span>=
</p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.0in"><span lang=3D"EN=
-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:#1F497D">&nbsp;&nbsp;&nbsp; initrd image/initrd</span><span style=3D"f=
ont-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></=
p>
<p class=3D"xmsolistparagraph" style=3D"margin-left:1.0in"><span lang=3D"EN=
-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:#1F497D">}</span><span style=3D"font-family:&quot;Calibri&quot;,sans-s=
erif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph" style=3D"text-indent:-.25in"><code><span lan=
g=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-=
serif;color:#1F497D">6.</span></code><code><span lang=3D"EN-MY" style=3D"fo=
nt-size:7.0pt;font-family:&quot;Times New Roman&quot;,serif;color:#1F497D">=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></code><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:#1F497D">When your device boot, it will =
download bootx64.efi and the message something like this</span><span style=
=3D"font-size:9.5pt;font-family:Consolas;color:black;border:none windowtext=
 1.0pt;padding:0in;background:#DFF0D8"><br>
</span><code><span style=3D"font-size:10.0pt;font-family:Consolas;color:bla=
ck;border:none windowtext 1.0pt;padding:0in;background:#DFF0D8">&gt;&gt;Sta=
rt PXE over IPv4.
</span></code><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;col=
or:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph"><code><span style=3D"font-size:9.5pt;font-fa=
mily:Consolas;color:black;border:none windowtext 1.0pt;padding:0in;backgrou=
nd:#DFF0D8">Station IP address is 192.168.1.1</span></code><span style=3D"f=
ont-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></=
p>
<p class=3D"xmsolistparagraph"><code><span style=3D"font-size:9.5pt;font-fa=
mily:Consolas;color:black;border:none windowtext 1.0pt;padding:0in;backgrou=
nd:#DFF0D8">Server IP address is 192.168.1.2</span></code><span style=3D"fo=
nt-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p=
>
<p class=3D"xmsolistparagraph"><code><span style=3D"font-size:9.5pt;font-fa=
mily:Consolas;color:black;border:none windowtext 1.0pt;padding:0in;backgrou=
nd:#DFF0D8">NBP filename is bootx64.efi
</span></code><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;col=
or:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph"><code><span style=3D"font-size:9.5pt;font-fa=
mily:Consolas;color:black;border:none windowtext 1.0pt;padding:0in;backgrou=
nd:#DFF0D8">NBP filesize is 1137016 Bytes
</span></code><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;col=
or:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph"><code><span style=3D"font-size:9.5pt;font-fa=
mily:Consolas;color:black;border:none windowtext 1.0pt;padding:0in;backgrou=
nd:#DFF0D8">Downloading NBP file...
</span></code><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;col=
or:black"><o:p></o:p></span></p>
<p class=3D"xmsolistparagraph"><code><span style=3D"font-size:9.5pt;font-fa=
mily:Consolas;color:black;border:none windowtext 1.0pt;padding:0in;backgrou=
nd:#DFF0D8">NBP file downloaded successfully.</span></code><span style=3D"f=
ont-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></=
p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span st=
yle=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p><=
/span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Please note that I di=
d not use initramfs or initrd as my kernel already have network module buil=
d-in. To build your kernel with network module,
 you need to know which module need to build-in into your kernel. Simply bo=
ot your device using *.hhdimg from USB stick. Then check loaded kernel modu=
le from your device.</span><span style=3D"font-family:&quot;Calibri&quot;,s=
ans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">$ lsmod</span><span s=
tyle=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p>=
</span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Find the module somet=
hing with network. Yes it is a little bit tricky.</span><span style=3D"font=
-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span st=
yle=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p><=
/span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Build your kernel in =
host machine.</span><span style=3D"font-family:&quot;Calibri&quot;,sans-ser=
if;color:black"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">$ bitbake virtual/ker=
nel &#8211;c menuconfig</span><span style=3D"font-family:&quot;Calibri&quot=
;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">A menu will popup and=
 search your kernel module using key &#8220;/&#8221;. Make sure symbol modu=
le [*] indicate build-in.</span><span style=3D"font-family:&quot;Calibri&qu=
ot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">$ bitbake virtual/ker=
nel</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:b=
lack"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span st=
yle=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p><=
/span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">You also can create a=
 kernel bundle with initramfs. &nbsp;Read this
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k"><a href=3D"https://www.yoctoproject.org/docs/2.5/mega-manual/mega-manual=
.html#building-an-initramfs-image" id=3D"LPlnk380214"><span lang=3D"EN-MY" =
style=3D"font-size:11.0pt">https://www.yoctoproject.org/docs/2.5/mega-manua=
l/mega-manual.html#building-an-initramfs-image</span></a></span><span lang=
=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-s=
erif;color:#1F497D">.</span><span style=3D"font-family:&quot;Calibri&quot;,=
sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Maybe need to ask som=
eone who are expert on kernel development on how to enable build-in kernel =
module.</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;col=
or:black"><o:p></o:p></span></p>
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
<p class=3D"xmsonormal"><a name=3D"x______replyseparator" id=3D"LPlnk458569=
"></a><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:black">From:</span></b><span style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:black"> Raymond Yeung
 [<a href=3D"mailto:rksyeung@hotmail.com">mailto:rksyeung@hotmail.com</a>] =
<br>
<b>Sent:</b> Friday, April 27, 2018 1:12 AM<br>
<b>To:</b> Hussin, Mohamad Noor Alim &lt;<a href=3D"mailto:mohamad.noor.ali=
m.hussin@intel.com">mohamad.noor.alim.hussin@intel.com</a>&gt;;
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: PXE Boot NFS not working</span><span style=3D"font-fami=
ly:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
</div>
</div>
<p class=3D"xmsonormal"><span style=3D"font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&nbsp;<o:p></o:p></span></p>
<div id=3D"x_divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">F=
ollow-up to my previous post, after seeing the reply below suggesting me no=
t to use initramfs (but initrd is usable, right?). &nbsp;BTW, I don't use b=
ootx64.efi. &nbsp;Instead, I use pxelinux.0 along with
 the other lib***.c32 files.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">&=
nbsp;<o:p></o:p></span></p>
<ol start=3D"1" type=3D"1">
<li class=3D"MsoNormal" style=3D"color:black;mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto;mso-list:l2 level1 lfo3">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Is there a way t=
o verify if GRUB (that I'm using) supports networking or not? &nbsp;It seem=
s to have very limited user commands available.<o:p></o:p></span></li><li c=
lass=3D"MsoNormal" style=3D"color:black;mso-margin-top-alt:auto;mso-margin-=
bottom-alt:auto;mso-list:l2 level1 lfo3">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">How do I get int=
o GRUB? &nbsp;I'd been into GRUB, more like accidentally. &nbsp;The reply b=
elow&nbsp;refers to grub.cfg. &nbsp;Is this cfg file stored on target, or o=
n host (like pxelinux.cfg)?<o:p></o:p></span></li><li class=3D"MsoNormal" s=
tyle=3D"color:black;mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-=
list:l2 level1 lfo3">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif">How do I configu=
re my build (and what yocto tool to use, if any) in order to get my network=
 driver part of kernel, instead of being a LKM that isn't there when I need=
 it for NFS boot?<o:p></o:p></span></li></ol>
<p class=3D"xmsonormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-=
family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p></span>=
</p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"x_divRplyFwdMsg">
<p class=3D"xmsonormal"><b><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,sans-serif;color:black">From:</span></b><span style=3D"font=
-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"> Hussi=
n, Mohamad Noor Alim &lt;</span><span style=3D"font-family:&quot;Calibri&qu=
ot;,sans-serif;color:black"><a href=3D"mailto:mohamad.noor.alim.hussin@inte=
l.com" id=3D"LPlnk299610"><span style=3D"font-size:11.0pt">mohamad.noor.ali=
m.hussin@intel.com</span></a></span><span style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:black">&gt;<br>
<b>Sent:</b> Thursday, April 26, 2018 12:26 AM<br>
<b>To:</b> Raymond Yeung; </span><span style=3D"font-family:&quot;Calibri&q=
uot;,sans-serif;color:black"><a href=3D"mailto:yocto@yoctoproject.org" id=
=3D"LPlnk754864"><span style=3D"font-size:11.0pt">yocto@yoctoproject.org</s=
pan></a></span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:black"><br>
<b>Subject:</b> RE: PXE Boot NFS not working</span><span style=3D"font-fami=
ly:&quot;Calibri&quot;,sans-serif;color:black">
<o:p></o:p></span></p>
<div>
<p class=3D"xmsonormal"><span style=3D"font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&nbsp;<o:p></o:p></span></p>
</div>
</div>
<div>
<div>
<p class=3D"xxmsonormal"><a name=3D"x_x__MailEndCompose" id=3D"LPlnk830709"=
><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-family:&quot;Calibri&q=
uot;,sans-serif;color:#1F497D">Refer to my post here
</span></a><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:=
black"><a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2018-April=
/040860.html" id=3D"LPlnk128042"><span lang=3D"EN-MY" style=3D"font-size:11=
.0pt">https://lists.yoctoproject.org/pipermail/yocto/2018-April/040860.html=
</span></a><o:p></o:p></span></p>
<p class=3D"xxmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span s=
tyle=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p>=
</span></p>
<p class=3D"xxmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Don&#8217;t use init=
ramfs/initrd as it not working.
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k"><o:p></o:p></span></p>
<p class=3D"xxmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span s=
tyle=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p>=
</span></p>
<p class=3D"xxmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span s=
tyle=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p>=
</span></p>
<div>
<p class=3D"xxmsonormal"><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:#1F497D">Regards,</span><span style=3D"font-=
family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"xxmsonormal"><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:#1F497D">Alim Hussin</span><span style=3D"fo=
nt-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span></p=
>
</div>
<p class=3D"xxmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">&nbsp;</span><span s=
tyle=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p>=
</span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"xxmsonormal"><span style=3D"font-family:&quot;Calibri&quot;,san=
s-serif;color:black">&nbsp;<o:p></o:p></span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_A05DCA0C0293664FB237A9C4B0E55E4601515C0EPGSMSX107garcor_--
