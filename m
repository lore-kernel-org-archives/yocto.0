Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 416F5E008D2; Thu, 26 Apr 2018 22:17:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.7.51 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-oln040092007051.outbound.protection.outlook.com [40.92.7.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BA6EE00823
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 22:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=FXHEmLuJIuBd18zOYBkReqDOt9B49CnMRgGsgvTnc3M=;
	b=OUAqpoTlZkAPg8k/0pVpkyPNIXRmhIdSasBfib2/yGvsy1Zi5mteYfL4zz8dFXxFQIzzNPgXRp4PfoPHuqHHTn5uDB9/i1DQmN+VeAHN1Wu9tKyBsiBNK2/pPKUzHotMeWt2W4+wKvndKu1NjTwAzqdvimBpvBlfZhJH3IYzQHlRzfPlQvnWvAsZdWG59st9Lev2E6vmloBTPQXhQFLx5AsufsrRPsTH2akDPLr2pKG6il0Df4knU3m/k23nR79QNp8dj4sfe1gflGiRu8qNfmcPYp5Y+RnSr3V/uWLg4bA9rmnwFubMjw0FjHOL/8jH9TBMmoMVaMH75oqf1F7xuw==
Received: from DM3NAM03FT051.eop-NAM03.prod.protection.outlook.com
	(10.152.82.51) by DM3NAM03HT169.eop-NAM03.prod.protection.outlook.com
	(10.152.83.118) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.696.11;
	Fri, 27 Apr 2018 04:43:21 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.82.53) by
	DM3NAM03FT051.mail.protection.outlook.com (10.152.83.56) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.696.11 via Frontend Transport; Fri, 27 Apr 2018 04:43:21 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8%18]) with mapi id 15.20.0696.020;
	Fri, 27 Apr 2018 04:43:21 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "Hussin, Mohamad Noor Alim" <mohamad.noor.alim.hussin@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: PXE Boot NFS not working
Thread-Index: AQHT3RibB3SjOiqCJ0iFNIV79C8ZUKQSpG5AgACjeVWAAHvGQIAAQNza
Date: Fri, 27 Apr 2018 04:43:21 +0000
Message-ID: <MWHPR19MB1183DFBD3321D3E4ACE7AB7BC58D0@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183FFEEF33178BA3331F6A6C58E0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<A05DCA0C0293664FB237A9C4B0E55E4601515890@PGSMSX107.gar.corp.intel.com>
	<MWHPR19MB1183CCEDF7F16991BF5BCCA9C58E0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<A05DCA0C0293664FB237A9C4B0E55E4601515B9E@PGSMSX107.gar.corp.intel.com>
In-Reply-To: <A05DCA0C0293664FB237A9C4B0E55E4601515B9E@PGSMSX107.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:CB68EC8FE9BE048847CDCFFBC290CB4FC13D7BC817CA45752129164990500063;
	UpperCasedChecksum:BDCFF43AD4129EED4FFAEAF6EF5C928F6CCEE6D9CA2AE9E7CDBEE26C9E9F8424;
	SizeAsReceived:7489; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [AP8MciiKjWGm/MoFjUMPbu2+Gqc4hmfMCYm20nkjICBMCgXLWB/bUv5UTdxdyZ8D]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM3NAM03HT169;
	7:QVx+JP2Sc9aEKsgTrMeQaHfc9Axore4nV9TZOoe/BQufGDmGJEqD1t3N2jrXirlLZE0cPMjzt3tPhInoiGJBqtubFbyBqjB99eYkPOohKL3mSIwLRRD8GQtLVFDrjM7x4zi4FHmOMCqVixmlfEVUU/ndVLHOcUgpKensyMHNLVQctRmopAe98Cm2HfkOF8kFhySrea8eMIp+/I3+5b2rc8DWOTtEBXgx5w88oDsPekXu6iVjRRBaOW+jO9v8xLYo
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);
	SRVR:DM3NAM03HT169; 
x-ms-traffictypediagnostic: DM3NAM03HT169:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:DM3NAM03HT169; BCL:0; PCL:0; RULEID:; SRVR:DM3NAM03HT169; 
x-forefront-prvs: 0655F9F006
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:DM3NAM03HT169;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: pSiRq9vNcSal44B5KtIqWo3MbIodkKMRL8yp9c7MFhOVecM9bgMgwWO3wEIc2ScS9rVYkaesPuaW6R1bpm7fGU3brsZIg25gFy6F1ivY0K65bg8dMqt40Fxe8wNQiU7cXdABfThdfb7ukbAwjVyOO9yPFSou8P1IqTvJBxUNECgO6jwamz7oOR6AFnuL/eNx
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: c74cfc61-8bf3-4c5d-9923-08d5abf967b1
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: c74cfc61-8bf3-4c5d-9923-08d5abf967b1
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2018 04:43:21.4779 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3NAM03HT169
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
X-List-Received-Date: Fri, 27 Apr 2018 05:17:19 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183DFBD3321D3E4ACE7AB7BC58D0MWHPR19MB1183namp_"

--_000_MWHPR19MB1183DFBD3321D3E4ACE7AB7BC58D0MWHPR19MB1183namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

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
From: Hussin, Mohamad Noor Alim <mohamad.noor.alim.hussin@intel.com>
Sent: Thursday, April 26, 2018 8:30 PM
To: Raymond Yeung; yocto@yoctoproject.org
Subject: RE: PXE Boot NFS not working


You are using PXE with legacy BIOS as you use pxelinux.0 . To configure PXE=
 with legacy BIOS follow these instruction

Note: PXE server IP =3D 192.168.1.2

Target IP =3D 192.168.1.1



On PXE server

1.       make sure DHCP, NFS & TFTP services are up and running.

2.       change the filename =93pxelinux.0=94; in /etc/dhcp/dhcpd.conf. The=
n restart your DHCP service.

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

2.       change the filename =93bootx64.efi=94; in /etc/dhcp/dhcpd.conf. Th=
en restart your DHCP service.

3.       Put your kernel to /path/to/tftpboot/image/ and extract your rootf=
s to /srv/rootfs/.

4.       If you want to get into GRUB,

a.       comment the commands from /path/to/tftpboot/grub/grub.cfg to avoid=
 grub automatically load the kernel from network.

b.      On GRUB, press =93TAB=94 key to list available command. Or you can =
try use this command

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

$ bitbake virtual/kernel =96c menuconfig

A menu will popup and search your kernel module using key =93/=94. Make sur=
e symbol module [*] indicate build-in.

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



Don=92t use initramfs/initrd as it not working.





Regards,

Alim Hussin





--_000_MWHPR19MB1183DFBD3321D3E4ACE7AB7BC58D0MWHPR19MB1183namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Thanks a lot Alim for the detail =
step-by-step, for both modes. &nbsp;I'd like to stay with legacy mode with =
pxelinux.0 for now. &nbsp;I'm doing pretty much the same as what you descri=
bed below, with exceptions -</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<ol style=3D"margin-bottom: 0px; margin-top: 0px;">
<li><span style=3D"font-size: 12pt;"></span><span style=3D"font-size: 12pt;=
"></span>I'm not using vesamenu.c32. &nbsp;Instead menu.32 is used, though =
I don't think that would be an issue.</li><li>I use &quot;kernel image/bzIm=
age&quot; instead of &quot;linux image/bzImage&quot;. &nbsp;Still this shou=
ldn't be an issue.</li><li>With the &quot;append&quot; line, I've a&nbsp;qu=
estion - what is the significance of the options &quot;hard, tcp, intr&quot=
;? &nbsp;I currently don't use them. &nbsp;</li></ol>
<br>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0">Since my last email this morning,=
 I'd made some progress -</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<ol style=3D"margin-bottom: 0px; margin-top: 0px;">
<li><span style=3D"font-size: 12pt;"></span><span style=3D"font-size: 12pt;=
"></span>I figured out how to reconfigure the kernel with bitbake menuconfi=
g to change my Ethernet driver from .ko to part of kernel.</li><li>I now ha=
ve a confusing situation, due to Avahi-daemon in the mix. &nbsp;PXEBoot wou=
ld request IP address via DHCP. &nbsp;Then when this NFS boot runs, it too =
uses DHCP, and allocates a different IP address. &nbsp;I suppose this is fi=
ne, so long as I've enough IP address
 to spare. &nbsp;However, Avahi-daemon also request IP address and get the =
board yet another IP address. &nbsp;I've yet to figure out how to turn off =
Avahi-daemon. &nbsp;And NFS boot still doesn't work (I don't see the mount =
point with &quot;df -h&quot;). &nbsp;</li><li>Client side uses NFS v4.1 whi=
le server side uses v3. &nbsp;Would this be a problem? &nbsp;I suppose ther=
e must be backward compatibility built into NFS.</li></ol>
<br>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0">Also, in the &quot;Append&quot; l=
ine of pxelinux.cfg/default, I add nfsrootdebug. &nbsp;What sort of NFS deb=
ugs should I see? &nbsp;I only see two NFS logs, and 4 RPC calls. &nbsp;Is =
there anyway to turn up the verbosity so I know how NFS client
 fails?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Until I get some more insights to=
 above, I'd proceed to investigate the other issue - why my kernel initiali=
zation would need to wait for any &quot;removable media&quot; indefinitely,=
 and see if I could fix/change this.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Thanks,</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Hussin, Mohamad Noor =
Alim &lt;mohamad.noor.alim.hussin@intel.com&gt;<br>
<b>Sent:</b> Thursday, April 26, 2018 8:30 PM<br>
<b>To:</b> Raymond Yeung; yocto@yoctoproject.org<br>
<b>Subject:</b> RE: PXE Boot NFS not working</font>
<div>&nbsp;</div>
</div>
<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal"><a name=3D"x__MailEndCompose" id=3D"LPlnk17459" pr=
eviewremoved=3D"true"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-=
family:&quot;Calibri&quot;,sans-serif; color:#1F497D">You are using PXE wit=
h legacy BIOS as you use pxelinux.0 . To configure PXE
 with legacy BIOS follow these instruction</span></a></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">Note: PXE server I=
P =3D 192.168.1.2</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">Target IP =3D 192.=
168.1.1</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">On PXE server</spa=
n></p>
<p class=3D"x_MsoListParagraph" style=3D"text-indent:-.25in"><span lang=3D"=
EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-seri=
f; color:#1F497D"><span style=3D"">1.<span style=3D"font:7.0pt &quot;Times =
New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-f=
amily:&quot;Calibri&quot;,sans-serif; color:#1F497D">make sure DHCP, NFS &a=
mp; TFTP services are up and running.
</span></p>
<p class=3D"x_MsoListParagraph" style=3D"text-indent:-.25in"><span lang=3D"=
EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-seri=
f; color:#1F497D"><span style=3D"">2.<span style=3D"font:7.0pt &quot;Times =
New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-f=
amily:&quot;Calibri&quot;,sans-serif; color:#1F497D">change the filename =
=93pxelinux.0=94; in /etc/dhcp/dhcpd.conf. Then restart your DHCP service.<=
/span></p>
<p class=3D"x_MsoListParagraph" style=3D"text-indent:-.25in"><span lang=3D"=
EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-seri=
f; color:#1F497D"><span style=3D"">3.<span style=3D"font:7.0pt &quot;Times =
New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-f=
amily:&quot;Calibri&quot;,sans-serif; color:#1F497D">Put your kernel to /pa=
th/to/tftpboot/image/ and extract your rootfs to /srv/rootfs/.</span></p>
<p class=3D"x_MsoListParagraph" style=3D"text-indent:-.25in"><span lang=3D"=
EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-seri=
f; color:#1F497D"><span style=3D"">4.<span style=3D"font:7.0pt &quot;Times =
New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-f=
amily:&quot;Calibri&quot;,sans-serif; color:#1F497D">Create a file in /path=
/to/tftpboot/pxelinux.cfg/default. The content should like this</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif=
; color:#1F497D">include menu.cfg</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif=
; color:#1F497D">default vesamenu.c32</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif=
; color:#1F497D">prompt 0</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif=
; color:#1F497D">timeout 5</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif=
; color:#1F497D">label Manual Netboot genericx86-64</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif=
; color:#1F497D">menu label Netboot genericx86-64</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif=
; color:#1F497D">linux image/bzImage</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif=
; color:#1F497D">append root=3D/dev/nfs rw nfsroot=3D192.168.1.2:/srv/rootf=
s,hard,tcp,intr ip=3Ddhcp</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">if you want to use=
 PXE with GRUB, bootx64.efi, you need to enable UEFI &nbsp;instead of legac=
y BIOS in BIOS configuration. Follow these instruction.
</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">on PXE server
</span></p>
<p class=3D"x_MsoListParagraph" style=3D"text-indent:-.25in"><span lang=3D"=
EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-seri=
f; color:#1F497D"><span style=3D"">1.<span style=3D"font:7.0pt &quot;Times =
New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-f=
amily:&quot;Calibri&quot;,sans-serif; color:#1F497D">make sure DHCP, NFS &a=
mp; TFTP services are up and running.
</span></p>
<p class=3D"x_MsoListParagraph" style=3D"text-indent:-.25in"><span lang=3D"=
EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-seri=
f; color:#1F497D"><span style=3D"">2.<span style=3D"font:7.0pt &quot;Times =
New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-f=
amily:&quot;Calibri&quot;,sans-serif; color:#1F497D">change the filename =
=93bootx64.efi=94; in /etc/dhcp/dhcpd.conf. Then restart your DHCP service.=
</span></p>
<p class=3D"x_MsoListParagraph" style=3D"text-indent:-.25in"><span lang=3D"=
EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-seri=
f; color:#1F497D"><span style=3D"">3.<span style=3D"font:7.0pt &quot;Times =
New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-f=
amily:&quot;Calibri&quot;,sans-serif; color:#1F497D">Put your kernel to /pa=
th/to/tftpboot/image/ and extract your rootfs to /srv/rootfs/.</span></p>
<p class=3D"x_MsoListParagraph" style=3D"text-indent:-.25in"><span lang=3D"=
EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-seri=
f; color:#1F497D"><span style=3D"">4.<span style=3D"font:7.0pt &quot;Times =
New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-f=
amily:&quot;Calibri&quot;,sans-serif; color:#1F497D">If you want to get int=
o GRUB,
</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.0in; text-indent:-.2=
5in"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Cali=
bri&quot;,sans-serif; color:#1F497D"><span style=3D"">a.<span style=3D"font=
:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-f=
amily:&quot;Calibri&quot;,sans-serif; color:#1F497D">comment the commands f=
rom /path/to/tftpboot/grub/grub.cfg to avoid grub automatically load the ke=
rnel from network.
</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.0in; text-indent:-.2=
5in"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Cali=
bri&quot;,sans-serif; color:#1F497D"><span style=3D"">b.<span style=3D"font=
:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-f=
amily:&quot;Calibri&quot;,sans-serif; color:#1F497D">On GRUB, press =93TAB=
=94 key to list available command. Or you can try use this command</span></=
p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.5in; text-indent:-1.=
5in"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Cali=
bri&quot;,sans-serif; color:#1F497D"><span style=3D""><span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>i.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=3D"EN-MY" style=3D"font=
-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">ne=
t_bootp</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.5in; text-indent:-1.=
5in"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Cali=
bri&quot;,sans-serif; color:#1F497D"><span style=3D""><span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;
</span>ii.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=3D"EN-MY" style=3D"fon=
t-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">l=
inux (tftp,pxeserverip)/image/bzImage root=3D/dev/nfs rw nfsroot=3D192.168.=
1.2:/srv/rootfs,hard,tcp,intr
 ip=3Ddhcp</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.5in; text-indent:-1.=
5in"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Cali=
bri&quot;,sans-serif; color:#1F497D"><span style=3D""><span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span>iii.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=3D"EN-MY" style=3D"fo=
nt-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">=
boot</span></p>
<p class=3D"x_MsoListParagraph" style=3D"text-indent:-.25in"><span lang=3D"=
EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-seri=
f; color:#1F497D"><span style=3D"">5.<span style=3D"font:7.0pt &quot;Times =
New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-f=
amily:&quot;Calibri&quot;,sans-serif; color:#1F497D">if you want boot autom=
atically to NFS, create a file called grub.cfg in /path/to/tftpboot/grub.cf=
g. your grub.cfg should look like this</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif=
; color:#1F497D">Set timeout 5</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif=
; color:#1F497D">menuentry &quot; genericx86-64&quot; {</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif=
; color:#1F497D">&nbsp;&nbsp;&nbsp; linux image/bzImage root=3D/dev/nfs rw =
nfsroot=3D192.168.1.2:/srv/rootfs,hard,tcp,intr ip=3Ddhcp</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif=
; color:#1F497D">&nbsp;&nbsp;&nbsp; initrd image/initrd</span></p>
<p class=3D"x_MsoListParagraph" style=3D"margin-left:1.0in"><span lang=3D"E=
N-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif=
; color:#1F497D">}</span></p>
<p class=3D"x_MsoListParagraph" style=3D"text-indent:-.25in"><code><span la=
ng=3D"EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,san=
s-serif; color:#1F497D"><span style=3D"">6.<span style=3D"font:7.0pt &quot;=
Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></code><span lang=3D"EN-MY" style=3D"font-size:11.0pt;=
 font-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">When your devic=
e boot, it will download bootx64.efi and the message something like this</s=
pan><span style=3D"font-size:9.5pt; font-family:Consolas; color:black; bord=
er:none windowtext 1.0pt; padding:0in; background:#DFF0D8"><br>
<code><span style=3D"font-family:Consolas">&gt;&gt;Start PXE over IPv4. </s=
pan></code></span><code><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fon=
t-family:&quot;Calibri&quot;,sans-serif; color:#1F497D"></span></code></p>
<p class=3D"x_MsoListParagraph"><code><span style=3D"font-size:9.5pt; font-=
family:Consolas; color:black; border:none windowtext 1.0pt; padding:0in; ba=
ckground:#DFF0D8">Station IP address is 192.168.1.1</span></code></p>
<p class=3D"x_MsoListParagraph"><code><span style=3D"font-size:9.5pt; font-=
family:Consolas; color:black; border:none windowtext 1.0pt; padding:0in; ba=
ckground:#DFF0D8">Server IP address is 192.168.1.2</span></code></p>
<p class=3D"x_MsoListParagraph"><code><span style=3D"font-size:9.5pt; font-=
family:Consolas; color:black; border:none windowtext 1.0pt; padding:0in; ba=
ckground:#DFF0D8">NBP filename is bootx64.efi
</span></code></p>
<p class=3D"x_MsoListParagraph"><code><span style=3D"font-size:9.5pt; font-=
family:Consolas; color:black; border:none windowtext 1.0pt; padding:0in; ba=
ckground:#DFF0D8">NBP filesize is 1137016 Bytes
</span></code></p>
<p class=3D"x_MsoListParagraph"><code><span style=3D"font-size:9.5pt; font-=
family:Consolas; color:black; border:none windowtext 1.0pt; padding:0in; ba=
ckground:#DFF0D8">Downloading NBP file...
</span></code></p>
<p class=3D"x_MsoListParagraph"><code><span style=3D"font-size:9.5pt; font-=
family:Consolas; color:black; border:none windowtext 1.0pt; padding:0in; ba=
ckground:#DFF0D8">NBP file downloaded successfully.</span></code><span lang=
=3D"EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-=
serif; color:#1F497D"></span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">Please note that I=
 did not use initramfs or initrd as my kernel already have network module b=
uild-in. To build your kernel with network module,
 you need to know which module need to build-in into your kernel. Simply bo=
ot your device using *.hhdimg from USB stick. Then check loaded kernel modu=
le from your device.</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">$ lsmod</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">Find the module so=
mething with network. Yes it is a little bit tricky.</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">Build your kernel =
in host machine.</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">$ bitbake virtual/=
kernel =96c menuconfig</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">A menu will popup =
and search your kernel module using key =93/=94. Make sure symbol module [*=
] indicate build-in.</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">$ bitbake virtual/=
kernel</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">You also can creat=
e a kernel bundle with initramfs. &nbsp;Read this
</span><a href=3D"https://www.yoctoproject.org/docs/2.5/mega-manual/mega-ma=
nual.html#building-an-initramfs-image" id=3D"LPlnk380214" previewremoved=3D=
"true"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Ca=
libri&quot;,sans-serif">https://www.yoctoproject.org/docs/2.5/mega-manual/m=
ega-manual.html#building-an-initramfs-image</span></a><span lang=3D"EN-MY" =
style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif; colo=
r:#1F497D">.</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">Maybe need to ask =
someone who are expert on kernel development on how to enable build-in kern=
el module.</span><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-famil=
y:&quot;Calibri&quot;,sans-serif"></span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot=
;Calibri&quot;,sans-serif; color:#1F497D">Regards,</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot=
;Calibri&quot;,sans-serif; color:#1F497D">Alim Hussin</span></p>
</div>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"x_MsoNormal"><a name=3D"x______replyseparator" id=3D"LPlnk45856=
9" previewremoved=3D"true"></a><b><span style=3D"font-size:11.0pt; font-fam=
ily:&quot;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-siz=
e:11.0pt; font-family:&quot;Calibri&quot;,sans-serif"> Raymond Yeung
 [mailto:rksyeung@hotmail.com] <br>
<b>Sent:</b> Friday, April 27, 2018 1:12 AM<br>
<b>To:</b> Hussin, Mohamad Noor Alim &lt;mohamad.noor.alim.hussin@intel.com=
&gt;; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: PXE Boot NFS not working</span></p>
</div>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
<div id=3D"x_divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Follow-up to my previous post, after seeing the reply below suggesting me n=
ot to use initramfs (but initrd is usable, right?). &nbsp;BTW, I don't use =
bootx64.efi. &nbsp;Instead, I use pxelinux.0 along with
 the other lib***.c32 files.</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span></p>
<ol start=3D"1" type=3D"1">
<li class=3D"x_MsoNormal" style=3D"color:black"><span style=3D"font-family:=
&quot;Calibri&quot;,sans-serif">Is there a way to verify if GRUB (that I'm =
using) supports networking or not? &nbsp;It seems to have very limited user=
 commands available.</span></li><li class=3D"x_MsoNormal" style=3D"color:bl=
ack"><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">How do I ge=
t into GRUB? &nbsp;I'd been into GRUB, more like accidentally. &nbsp;The re=
ply below&nbsp;refers to grub.cfg. &nbsp;Is this cfg file stored on target,=
 or on host (like pxelinux.cfg)?</span></li><li class=3D"x_MsoNormal" style=
=3D"color:black"><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"=
>How do I configure my build (and what yocto tool to use, if any) in order =
to get my network driver part of kernel, instead of being a LKM that isn't =
there when I need
 it for NFS boot?</span></li></ol>
<p class=3D"x_MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font=
-family:&quot;Calibri&quot;,sans-serif; color:black">&nbsp;</span></p>
<div>
<div class=3D"x_MsoNormal" align=3D"center" style=3D"text-align:center"><sp=
an style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"x_divRplyFwdMsg">
<p class=3D"x_MsoNormal"><b><span style=3D"font-size:11.0pt; font-family:&q=
uot;Calibri&quot;,sans-serif; color:black">From:</span></b><span style=3D"f=
ont-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif; color:black"> =
Hussin, Mohamad Noor Alim &lt;</span><a href=3D"mailto:mohamad.noor.alim.hu=
ssin@intel.com" id=3D"LPlnk299610" previewremoved=3D"true"><span style=3D"f=
ont-size:11.0pt; font-family:&quot;Calibri&quot;,sans-serif">mohamad.noor.a=
lim.hussin@intel.com</span></a><span style=3D"font-size:11.0pt; font-family=
:&quot;Calibri&quot;,sans-serif; color:black">&gt;<br>
<b>Sent:</b> Thursday, April 26, 2018 12:26 AM<br>
<b>To:</b> Raymond Yeung; </span><a href=3D"mailto:yocto@yoctoproject.org" =
id=3D"LPlnk754864" previewremoved=3D"true"><span style=3D"font-size:11.0pt;=
 font-family:&quot;Calibri&quot;,sans-serif">yocto@yoctoproject.org</span><=
/a><span style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-se=
rif; color:black"><br>
<b>Subject:</b> RE: PXE Boot NFS not working</span><span style=3D"font-fami=
ly:&quot;Calibri&quot;,sans-serif; color:black">
</span></p>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,san=
s-serif; color:black">&nbsp;</span></p>
</div>
</div>
<div>
<div>
<p class=3D"x_xmsonormal"><a name=3D"x_x__MailEndCompose" id=3D"LPlnk830709=
" previewremoved=3D"true"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; f=
ont-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">Refer to my post =
here
</span></a><a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2018-A=
pril/040860.html" id=3D"LPlnk128042" previewremoved=3D"true"><span lang=3D"=
EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-seri=
f">https://lists.yoctoproject.org/pipermail/yocto/2018-April/040860.html</s=
pan></a><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:bl=
ack"></span></p>
<p class=3D"x_xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; f=
ont-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span><spa=
n style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black"></span>=
</p>
<p class=3D"x_xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; f=
ont-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">Don=92t use initr=
amfs/initrd as it not working.
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:bla=
ck"></span></p>
<p class=3D"x_xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; f=
ont-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span><spa=
n style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black"></span>=
</p>
<p class=3D"x_xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; f=
ont-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span><spa=
n style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black"></span>=
</p>
<div>
<p class=3D"x_xmsonormal"><span style=3D"font-size:11.0pt; font-family:&quo=
t;Calibri&quot;,sans-serif; color:#1F497D">Regards,</span><span style=3D"fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:black"></span></p>
<p class=3D"x_xmsonormal"><span style=3D"font-size:11.0pt; font-family:&quo=
t;Calibri&quot;,sans-serif; color:#1F497D">Alim Hussin</span><span style=3D=
"font-family:&quot;Calibri&quot;,sans-serif; color:black"></span></p>
</div>
<p class=3D"x_xmsonormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; f=
ont-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span><spa=
n style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black"></span>=
</p>
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"x_xmsonormal"><span style=3D"font-family:&quot;Calibri&quot;,sa=
ns-serif; color:black">&nbsp;</span></p>
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

--_000_MWHPR19MB1183DFBD3321D3E4ACE7AB7BC58D0MWHPR19MB1183namp_--
