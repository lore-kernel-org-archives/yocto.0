Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51972E0093A; Wed, 10 Dec 2014 00:31:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.156.172.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail96.atlas.de (mail96.atlas.de [194.156.172.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46CE6E00924
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 00:31:21 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id 0CD05105FE;
	Wed, 10 Dec 2014 09:31:20 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wGRI5BEjstg7; Wed, 10 Dec 2014 09:31:04 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP;
	Wed, 10 Dec 2014 09:31:04 +0100 (CET)
Received: from MSSRVS1.atlas.de (mssrvs1.atlas.de [10.200.101.71])
	by mgsrv01.atlas.de (Postfix) with ESMTP id 4602127171;
	Wed, 10 Dec 2014 09:31:04 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS1.atlas.de
	([10.200.101.71]) with mapi; Wed, 10 Dec 2014 09:31:04 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <jimr@spectralogic.com>, <yocto@yoctoproject.org>
Date: Wed, 10 Dec 2014 09:31:04 +0100
Thread-Topic: [yocto] nfs-boot problem
Thread-Index: AQHQE6slOAsCEEQPeke18gw6ldjA95yHcYsjgAD5lZA=
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02848F2A78@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A77@MSSRVS5.atlas.de>
	<86196249137E0843B2E0673D4F731E0C0108E2916C@reactor.sldomain.com>
In-Reply-To: <86196249137E0843B2E0673D4F731E0C0108E2916C@reactor.sldomain.com>
Accept-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: de-DE
MIME-Version: 1.0
Subject: Re: nfs-boot problem
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
X-List-Received-Date: Wed, 10 Dec 2014 08:31:32 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A78MSSRVS5atlasd_"

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A78MSSRVS5atlasd_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Jim,
thank you for your reply, yes in the meantime I found out why that nfsroot =
path isn't set correctly, there is a wrong line in the "wandboard.h" in u-b=
oot.
Now the regarding line looks like this
Kernel command line: console=3Dttymxc0,115200 root=3D/dev/nfs ip=3Ddhcp nfs=
root=3D192.168.1.1:/home/theuser/linktorootfs,v3,tcp
Which seems to be correct as the system starts now. The "rootpath" however =
is still empty.
The remaining problem I have is a write problem, somewhere a "rw" setting s=
eems to be missing, although the "mount" command tells that the filesystem =
is mounted "rw".
As to the rootfs, this folder
fsl-community-bsp/build/tmp/work/wandboard_quad-poky-linux-gnueabi/core-ima=
ge-minimal/1.0-r0/rootfs
seems to be exactly the structure that is packed into the image.tar.bz2 so =
I thought it is a good idea to directly use it as nfs share. Is there some =
reason not to do so ?
Thank you
Regards,
Mat



Von: Jim Rafert [mailto:jimr@spectralogic.com]
Gesendet: Dienstag, 9. Dezember 2014 17:28
An: Heise, Matthias; yocto@yoctoproject.org
Betreff: RE: [yocto] nfs-boot problem

Hi Matthias,

Sorry, I missed the kernel command line in all the other gobbledy-gook put =
out by the boot.
Kernel command line: console=3Dttymxc0,115200 root=3D/dev/nfs ip=3Ddhcp nfs=
root=3D:,v3,tcp
That doesn't look right to me.

-Jim-


________________________________
From: Matthias.Heise@atlas-elektronik.com<mailto:Matthias.Heise@atlas-elekt=
ronik.com> [Matthias.Heise@atlas-elektronik.com]
Sent: Tuesday, December 09, 2014 5:17 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] nfs-boot problem
Hello,

I'm struggling getting my wandboard booting via tftp/nfs.
The first part was easy I just set up the tftp server and pointed it to the=
 kernel image and *.dtb file,
in the wandboard.h of u-boot I set

#define CONFIG_BOOTCOMMAND \
                               "run netboot;"

The kernel starts ok I think :

U-Boot 2014.10+fslc+g5fd0b60 (Dec 09 2014 - 11:39:57)

CPU:   Freescale i.MX6Q rev1.2 at 792 MHz
Reset cause: POR
Board: Wandboard
I2C:   ready
DRAM:  2 GiB
MMC:   FSL_SDHC: 0, FSL_SDHC: 1
*** Warning - bad CRC, using default environment

auto-detected panel HDMI
Display: HDMI (1024x768)
In:    serial
Out:   serial
Err:   serial
Net:   FEC [PRIME]
Hit any key to stop autoboot:  0
Booting from net ...
BOOTP broadcast 1
DHCP client bound to address 10.42.0.84 (3 ms)
Using FEC device
TFTP from server 10.42.0.1; our IP address is 10.42.0.84
Filename 'zImage'.
Load address: 0x12000000
Loading: #################################################################
         #################################################################
         #################################################################
         #################################################################
         #################################################################
         #################################################################
         #################################################################
         #################################################################
         #################################################################
         #################################################################
         #################################################################
         #################################################################
         #################################################################
         #################################################################
         #################################################################
         #################################################################
         ########################
         8.4 MiB/s
done
Bytes transferred =3D 5442656 (530c60 hex)
BOOTP broadcast 1
DHCP client bound to address 10.42.0.84 (2 ms)
Using FEC device
TFTP from server 10.42.0.1; our IP address is 10.42.0.84
Filename 'imx6q-wandboard.dtb'.
Load address: 0x18000000
Loading: #########
         4.1 MiB/s
done
Bytes transferred =3D 43370 (a96a hex)
Kernel image @ 0x12000000 [ 0x000000 - 0x530c60 ]
## Flattened Device Tree blob at 18000000
   Booting using the fdt blob at 0x18000000
   Using Device Tree in place at 18000000, end 1800d969

Starting kernel ...

Booting Linux on physical CPU 0x0
Linux version 3.10.17-1.0.1-wandboard+ga6e7fc5 (theuser@debianDevHost) (gcc=
 version 4.9.1 (GCC) ) #1 SMP PREEMPT Fri Nov 28 15:51:4
CPU: ARMv7 Processor [412fc09a] revision 10 (ARMv7), cr=3D10c53c7d
CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
Machine: Freescale i.MX6 Quad/DualLite (Device Tree), model: Wandboard Quad=
 based on Freescale i.MX6 Quad
Truncating RAM at 10000000-8fffffff to -7f7fffff (vmalloc region overlap).
cma: CMA: reserved 256 MiB at 6e000000
Memory policy: ECC disabled, Data cache writealloc
PERCPU: Embedded 8 pages/cpu @81b57000 s8832 r8192 d15744 u32768
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 453136
Kernel command line: console=3Dttymxc0,115200 root=3D/dev/nfs ip=3Ddhcp nfs=
root=3D:,v3,tcp
PID hash table entries: 4096 (order: 2, 16384 bytes)
Dentry cache hash table entries: 262144 (order: 8, 1048576 bytes)
Inode-cache hash table entries: 131072 (order: 7, 524288 bytes)
Memory: 1784MB =3D 1784MB total
Memory: 1534420k/1534420k available, 292396k reserved, 0K highmem
Virtual kernel memory layout:
    vector  : 0xffff0000 - 0xffff1000   (   4 kB)
    fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
    vmalloc : 0xf0000000 - 0xff000000   ( 240 MB)
    lowmem  : 0x80000000 - 0xef800000   (1784 MB)
    modules : 0x7f000000 - 0x80000000   (  16 MB)
      .text : 0x80008000 - 0x80c429c8   (12523 kB)
      .init : 0x80c43000 - 0x80c87280   ( 273 kB)
      .data : 0x80c88000 - 0x80cd9700   ( 326 kB)
       .bss : 0x80cd9700 - 0x80d3e8b8   ( 405 kB)
SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, Nodes=3D1
Preemptible hierarchical RCU implementation.

.....

then it tries to get the rootfs which fails. On the host I set up the nfs s=
erver and made some tests - it is accessible.

VFP support v0.3: implementor 41 architecture 3 part 30 variant 9 rev 4
snvs_rtc 20cc034.snvs-rtc-lp: setting system clock to 1970-01-01 00:00:01 U=
TC (1)
fec 2188000.ethernet eth0: Freescale FEC PHY driver [Generic PHY] (mii_bus:=
phy_addr=3D2188000.ethernet:01, irq=3D-1)
IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
libphy: 2188000.ethernet:01 - Link is Up - 1000/Full
IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
Sending DHCP requests ., OK
IP-Config: Got DHCP answer from 10.42.0.1, my address is 10.42.0.84
IP-Config: Complete:
     device=3Deth0, hwaddr=3D00:1f:7b:b4:12:00, ipaddr=3D10.42.0.84, mask=
=3D255.255.255.0, gw=3D10.42.0.1
     host=3D10.42.0.84, domain=3D, nis-domain=3D(none)
     bootserver=3D10.42.0.1, rootserver=3D10.42.0.1, rootpath=3D
     nameserver0=3D10.42.0.1
ALSA device list:
  #0: imx6-wandboard-sgtl5000
  #1: imx-spdif
  #2: imx-hdmi-soc
VFS: Unable to mount root fs via NFS, trying floppy.
VFS: Cannot open root device "nfs" or unknown-block(2,0): error -6
Please append a correct "root=3D" boot option; here are the available parti=
tions:
b300        15558144 mmcblk0  driver: mmcblk
  b301            8192 mmcblk0p1 000c648f-01
  b302           28672 mmcblk0p2 000c648f-02
Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(2=
,0)
CPU2: stopping
CPU: 2 PID: 0 Comm: swapper/2 Not tainted 3.10.17-1.0.1-wandboard+ga6e7fc5

During the boot process I recognized two things in the log which I suspect =
to be not ok, but wasn't able to resolve them, these
are the empty nfsroot :  Kernel command line: console=3Dttymxc0,115200 root=
=3D/dev/nfs ip=3Ddhcp nfsroot=3D:,v3,tcp
And the empty rootpath : bootserver=3D10.42.0.1, rootserver=3D10.42.0.1, ro=
otpath=3D

I tried to set them as CONFIG_EXTRA_ENV_SETTINGS  but that didn't succeed (=
was ignored or didn't have any effect).
Do you have a hint for me what could be wrong and how to resolve this ?
Also (probably secondary problem) : I just set the folder fsl-community-bsp=
/build/tmp/work/wandboard_quad-poky-linux-gnueabi/core-image-minimal/1.0-r0=
/rootfs in my /etc/exports file for the nfs, is that ok ? or which rootfs s=
hould I use?
Thank you very much,
Regards,
Mat


--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A78MSSRVS5atlasd_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><!--[if !mso]><style>v\:* {behavior:url(#def=
ault#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
p
	{mso-style-priority:99;
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Sprechblasentext Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
p.msochpdefault, li.msochpdefault, div.msochpdefault
	{mso-style-name:msochpdefault;
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Calibri","sans-serif";}
span.e-mailformatvorlage17
	{mso-style-name:e-mailformatvorlage17;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.E-MailFormatvorlage20
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.SprechblasentextZchn
	{mso-style-name:"Sprechblasentext Zchn";
	mso-style-priority:99;
	mso-style-link:Sprechblasentext;
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DDE link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-US=
>Hello Jim,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>th=
ank you for your reply, yes in the meantime I found out why that nfsroot pa=
th isn&#8217;t set correctly, there is a wrong line in the &#8220;wandboard=
.h&#8221; in u-boot. <o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>Now the regarding line looks like this<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Kernel command li=
ne: console=3Dttymxc0,115200 root=3D/dev/nfs ip=3Ddhcp nfsroot=3D192.168.1.=
1:/home/theuser/linktorootfs,v3,tcp<o:p></o:p></span></p><p class=3DMsoNorm=
al><span lang=3DEN-US>Which seems to be correct as the system starts now. T=
he &#8220;rootpath&#8221; however is still empty.<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US>The remaining problem I have is a write=
 problem, somewhere a &#8220;rw&#8221; setting seems to be missing, althoug=
h the &#8220;mount&#8221; command tells that the filesystem is mounted &#82=
20;rw&#8221;.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>=
As to the rootfs, this folder &nbsp;<o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US style=3D'font-family:"Courier New","serif";color:bla=
ck'>fsl-community-bsp/build/tmp/work/wandboard_quad-poky-linux-gnueabi/core=
-image-minimal/1.0-r0/rootfs<o:p></o:p></span></p><p class=3DMsoNormal><spa=
n lang=3DEN-US>seems to be exactly the structure that is packed into the im=
age.tar.bz2 so I thought it is a good idea to directly use it as nfs share.=
 Is there some reason not to do so ?<o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US>Thank you <o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US>Regards,<o:p></o:p></span></p><p class=3DMsoNormal><spa=
n lang=3DEN-US>Mat<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US st=
yle=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><spa=
n lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;border=
-left:solid blue 1.5pt;padding:0cm 0cm 0cm 4.0pt'><div><div style=3D'border=
:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3D=
MsoNormal><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-ser=
if"'>Von:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma","s=
ans-serif"'> Jim Rafert [mailto:jimr@spectralogic.com] <br><b>Gesendet:</b>=
 Dienstag, 9. Dezember 2014 17:28<br><b>An:</b> Heise, Matthias; yocto@yoct=
oproject.org<br><b>Betreff:</b> RE: [yocto] nfs-boot problem<o:p></o:p></sp=
an></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=
=3DMsoNormal style=3D'margin-bottom:12.0pt'><span style=3D'font-size:10.0pt=
;font-family:"Tahoma","sans-serif";color:black'>Hi Matthias,<br><br>Sorry, =
I missed the kernel command line in all the other gobbledy-gook put out by =
the boot.<br></span><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Tahoma","sans-serif";color:#4F81BD'>Kernel command line: console=3Dttymx=
c0,115200 root=3D/dev/nfs ip=3Ddhcp <span style=3D'background:lime'>nfsroot=
=3D:,v3,tcp</span><br></span><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Tahoma","sans-serif";color:black'>That doesn't look right to me=
.<br><br>-Jim-</span><span style=3D'font-size:10.0pt;font-family:"Tahoma","=
sans-serif";color:black'><o:p></o:p></span></p><div><p class=3DMsoNormal><s=
pan style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";color:black=
'><o:p>&nbsp;</o:p></span></p><div><p class=3DMsoNormal><span style=3D'font=
-size:10.0pt;font-family:"Tahoma","sans-serif";color:black'><o:p>&nbsp;</o:=
p></span></p></div></div><div><div class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span style=3D'font-size:12.0pt;font-family:"Times N=
ew Roman","serif";color:black'><hr size=3D2 width=3D"100%" align=3Dcenter><=
/span></div><div id=3DdivRpF775631><p class=3DMsoNormal style=3D'margin-bot=
tom:12.0pt'><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-s=
erif";color:black'>From:</span></b><span style=3D'font-size:10.0pt;font-fam=
ily:"Tahoma","sans-serif";color:black'> <a href=3D"mailto:Matthias.Heise@at=
las-elektronik.com">Matthias.Heise@atlas-elektronik.com</a> [Matthias.Heise=
@atlas-elektronik.com]<br><b>Sent:</b> Tuesday, December 09, 2014 5:17 AM<b=
r><b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.o=
rg</a><br><b>Subject:</b> [yocto] nfs-boot problem</span><span style=3D'fon=
t-size:12.0pt;font-family:"Times New Roman","serif";color:black'><o:p></o:p=
></span></p></div><div><div><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:black'>Hello,</span><span style=3D'color:black'><o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>&nbsp;</=
span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US style=3D'color:black'>I&#8217;m struggling getting my w=
andboard booting via tftp/nfs. </span><span style=3D'color:black'><o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>=
The first part was easy I just set up the tftp server and pointed it to the=
 kernel image and *.dtb file, </span><span style=3D'color:black'><o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>i=
n the wandboard.h of u-boot I set </span><span style=3D'color:black'><o:p><=
/o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:blac=
k'>&nbsp;</span><span style=3D'color:black'><o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>#define CONFIG_BOOT=
COMMAND \</span><span style=3D'color:black'><o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;run netboot;&quot; </span><span style=3D'color:black'><o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:b=
lack'>&nbsp;</span><span style=3D'color:black'><o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>The kernel starts o=
k I think : </span><span style=3D'color:black'><o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>&nbsp;</span><span =
style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:#4F81BD'>U-Boot 2014.10+fslc+g5fd0b60 (Dec 09 2014 =
- 11:39:57)</span><span style=3D'color:black'><o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;</span><span=
 style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US style=3D'color:#4F81BD'>CPU:&nbsp;&nbsp; Freescale i.MX6Q rev1.2 =
at 792 MHz</span><span style=3D'color:black'><o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Reset cause: POR</s=
pan><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US style=3D'color:#4F81BD'>Board: Wandboard</span><span sty=
le=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US style=3D'color:#4F81BD'>I2C:&nbsp;&nbsp; ready</span><span style=3D'c=
olor:black'><o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color=
:#4F81BD'>DRAM:&nbsp; 2 GiB</span><span style=3D'color:black'><o:p></o:p></=
span></p><p class=3DMsoNormal><span style=3D'color:#4F81BD'>MMC:&nbsp;&nbsp=
; FSL_SDHC: 0, FSL_SDHC: 1</span><span style=3D'color:black'><o:p></o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>***=
 Warning - bad CRC, using default environment</span><span style=3D'color:bl=
ack'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'color:#4F81BD'>&nbsp;</span><span style=3D'color:black'><o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>auto-de=
tected panel HDMI</span><span style=3D'color:black'><o:p></o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Display: HDM=
I (1024x768)</span><span style=3D'color:black'><o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>In:&nbsp;&nbsp;&n=
bsp; serial</span><span style=3D'color:black'><o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Out:&nbsp;&nbsp; s=
erial</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Err:&nbsp;&nbsp; serial<=
/span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNorma=
l><span lang=3DEN-US style=3D'color:#4F81BD'>Net:&nbsp;&nbsp; FEC [PRIME]</=
span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US style=3D'color:#4F81BD'>Hit any key to stop autoboot:&n=
bsp; 0 </span><span style=3D'color:black'><o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Booting from net ...</=
span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US style=3D'color:#4F81BD'>BOOTP broadcast 1</span><span s=
tyle=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:#4F81BD'>DHCP client bound to address 10.42.0.84 (3=
 ms)</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US style=3D'color:#4F81BD'>Using FEC device</span><s=
pan style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'color:#4F81BD'>TFTP from server 10.42.0.1; our IP add=
ress is 10.42.0.84</span><span style=3D'color:black'><o:p></o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Filename 'z=
Image'.</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Load address: 0x120000=
00</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNo=
rmal><span lang=3DEN-US style=3D'color:#4F81BD'>Loading: ##################=
###############################################</span><span style=3D'color:=
black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #######=
##########################################################</span><span styl=
e=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; #################################################################</span>=
<span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><spa=
n lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp=
;&nbsp;&nbsp;##############################################################=
###</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; ####################################################=
#############</span><span style=3D'color:black'><o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ##########################################=
#######################</span><span style=3D'color:black'><o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ################################=
#################################</span><span style=3D'color:black'><o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81=
BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ######################=
###########################################</span><span style=3D'color:blac=
k'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'c=
olor:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ############=
#####################################################</span><span style=3D'=
color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ##=
###############################################################</span><span=
 style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; #################################################################</=
span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; #########################################################=
########</span><span style=3D'color:black'><o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #############################################=
####################</span><span style=3D'color:black'><o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ###################################=
##############################</span><span style=3D'color:black'><o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #########################=
########################################</span><span style=3D'color:black'>=
<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'colo=
r:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ###############=
##################################################</span><span style=3D'col=
or:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US sty=
le=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #####=
###################</span><span style=3D'color:black'><o:p></o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8.4 MiB/s</span><span style=3D'color=
:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#4F81BD'>done</span><span style=3D'color:black'><o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Bytes =
transferred =3D 5442656 (530c60 hex)</span><span style=3D'color:black'><o:p=
></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4=
F81BD'>BOOTP broadcast 1</span><span style=3D'color:black'><o:p></o:p></spa=
n></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>DHCP =
client bound to address 10.42.0.84 (2 ms)</span><span style=3D'color:black'=
><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'col=
or:#4F81BD'>Using FEC device</span><span style=3D'color:black'><o:p></o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>T=
FTP from server 10.42.0.1; our IP address is 10.42.0.84</span><span style=
=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'color:#4F81BD'>Filename 'imx6q-wandboard.dtb'.</span><span sty=
le=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US style=3D'color:#4F81BD'>Load address: 0x18000000</span><span style=3D=
'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'color:#4F81BD'>Loading: #########</span><span style=3D'color:blac=
k'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'c=
olor:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.1 MiB/s</s=
pan><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US style=3D'color:#4F81BD'>done</span><span style=3D'color:=
black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#4F81BD'>Bytes transferred =3D 43370 (a96a hex)</span><span style=
=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'=
color:#4F81BD'>Kernel image @ 0x12000000 [ 0x000000 - 0x530c60 ]</span><spa=
n style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US style=3D'color:#4F81BD'>## Flattened Device Tree blob at 1800000=
0</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp; Booting using t=
he fdt blob at 0x18000000</span><span style=3D'color:black'><o:p></o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbs=
p;&nbsp; Using Device Tree in place at 18000000, end 1800d969</span><span s=
tyle=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:#4F81BD'>&nbsp;</span><span style=3D'color:black'><=
o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color=
:#4F81BD'>Starting kernel ...</span><span style=3D'color:black'><o:p></o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>=
&nbsp;</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Booting Linux on physic=
al CPU 0x0</span><span style=3D'color:black'><o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Linux version 3.10.=
17-1.0.1-wandboard+ga6e7fc5 (theuser@debianDevHost) (gcc version 4.9.1 (GCC=
) ) #1 SMP PREEMPT Fri Nov 28 15:51:4</span><span style=3D'color:black'><o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#=
4F81BD'>CPU: ARMv7 Processor [412fc09a] revision 10 (ARMv7), cr=3D10c53c7d<=
/span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNorma=
l><span lang=3DEN-US style=3D'color:#4F81BD'>CPU: PIPT / VIPT nonaliasing d=
ata cache, VIPT aliasing instruction cache</span><span style=3D'color:black=
'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'co=
lor:#4F81BD'>Machine: Freescale i.MX6 Quad/DualLite (Device Tree), model: W=
andboard Quad based on Freescale i.MX6 Quad</span><span style=3D'color:blac=
k'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'c=
olor:#4F81BD'>Truncating RAM at 10000000-8fffffff to -7f7fffff (vmalloc reg=
ion overlap).</span><span style=3D'color:black'><o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>cma: CMA: reserv=
ed 256 MiB at 6e000000</span><span style=3D'color:black'><o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Memory =
policy: ECC disabled, Data cache writealloc</span><span style=3D'color:blac=
k'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'c=
olor:#4F81BD'>PERCPU: Embedded 8 pages/cpu @81b57000 s8832 r8192 d15744 u32=
768</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US style=3D'color:#4F81BD'>Built 1 zonelists in Zone =
order, mobility grouping on.&nbsp; Total pages: 453136</span><span style=3D=
'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'color:#4F81BD'>Kernel command line: console=3Dttymxc0,115200 root=
=3D/dev/nfs ip=3Ddhcp nfsroot=3D:,v3,tcp</span><span style=3D'color:black'>=
<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'colo=
r:#4F81BD'>PID hash table entries: 4096 (order: 2, 16384 bytes)</span><span=
 style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US style=3D'color:#4F81BD'>Dentry cache hash table entries: 262144 (=
order: 8, 1048576 bytes)</span><span style=3D'color:black'><o:p></o:p></spa=
n></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Inode=
-cache hash table entries: 131072 (order: 7, 524288 bytes)</span><span styl=
e=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US style=3D'color:#4F81BD'>Memory: 1784MB =3D 1784MB total</span><span st=
yle=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:#4F81BD'>Memory: 1534420k/1534420k available, 29239=
6k reserved, 0K highmem</span><span style=3D'color:black'><o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Virtua=
l kernel memory layout:</span><span style=3D'color:black'><o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;=
&nbsp;&nbsp; vector&nbsp; : 0xffff0000 - 0xffff1000&nbsp;&nbsp; (&nbsp;&nbs=
p; 4 kB)</span><span style=3D'color:black'><o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp; =
fixmap&nbsp; : 0xfff00000 - 0xfffe0000&nbsp;&nbsp; ( 896 kB)</span><span st=
yle=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp; vmalloc : 0xf0000000 - =
0xff000000&nbsp;&nbsp; ( 240 MB)</span><span style=3D'color:black'><o:p></o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81B=
D'>&nbsp;&nbsp;&nbsp; lowmem&nbsp; : 0x80000000 - 0xef800000&nbsp;&nbsp; (1=
784 MB)</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp; mod=
ules : 0x7f000000 - 0x80000000&nbsp;&nbsp; (&nbsp; 16 MB)</span><span style=
=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .text : 0x800080=
00 - 0x80c429c8&nbsp;&nbsp; (12523 kB)</span><span style=3D'color:black'><o=
:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:=
#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .init : 0x80c43000 - 0x80c87280&nbs=
p;&nbsp; ( 273 kB)</span><span style=3D'color:black'><o:p></o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; .data : 0x80c88000 - 0x80cd9700&nbsp;&nbsp; ( 326 kB)</=
span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; .bss : 0x80cd9700 - 0x80d3e8b8&nbsp;&nbsp; ( 405 kB)</span><span styl=
e=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US style=3D'color:#4F81BD'>SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D=
0, CPUs=3D4, Nodes=3D1</span><span style=3D'color:black'><o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Preempt=
ible hierarchical RCU implementation.</span><span style=3D'color:black'><o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:b=
lack'>&nbsp;</span><span style=3D'color:black'><o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>.....</span><span s=
tyle=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:black'>&nbsp;</span><span style=3D'color:black'><o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:b=
lack'>then it tries to get the rootfs which fails. On the host I set up the=
 nfs server and made some tests &#8211; it is accessible. </span><span styl=
e=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US style=3D'color:black'>&nbsp;</span><span style=3D'color:black'><o:p></=
o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span lan=
g=3DEN-US style=3D'color:#4F81BD'>VFP support v0.3: implementor 41 architec=
ture 3 part 30 variant 9 rev 4</span><span style=3D'color:black'><o:p></o:p=
></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=
=3DEN-US style=3D'color:#4F81BD'>snvs_rtc 20cc034.snvs-rtc-lp: setting syst=
em clock to 1970-01-01 00:00:01 UTC (1)</span><span style=3D'color:black'><=
o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><sp=
an lang=3DEN-US style=3D'color:#4F81BD'>fec 2188000.ethernet eth0: Freescal=
e FEC PHY driver [Generic PHY] (mii_bus:phy_addr=3D2188000.ethernet:01, irq=
=3D-1)</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DM=
soNormal style=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#4=
F81BD'>IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready</span><span style=
=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-a=
utospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>libphy: 2188000.e=
thernet:01 - Link is Up - 1000/Full</span><span style=3D'color:black'><o:p>=
</o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span l=
ang=3DEN-US style=3D'color:#4F81BD'>IPv6: ADDRCONF(NETDEV_CHANGE): eth0: li=
nk becomes ready</span><span style=3D'color:black'><o:p></o:p></span></p><p=
 class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US style=
=3D'color:#4F81BD'>Sending DHCP requests ., OK</span><span style=3D'color:b=
lack'><o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:no=
ne'><span lang=3DEN-US style=3D'color:#4F81BD'>IP-Config: Got DHCP answer f=
rom 10.42.0.1, my address is 10.42.0.84</span><span style=3D'color:black'><=
o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><sp=
an lang=3DEN-US style=3D'color:#4F81BD'>IP-Config: Complete:</span><span st=
yle=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal style=3D'tex=
t-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&n=
bsp;&nbsp; device=3Deth0, hwaddr=3D00:1f:7b:b4:12:00, ipaddr=3D10.42.0.84, =
mask=3D255.255.255.0, gw=3D10.42.0.1</span><span style=3D'color:black'><o:p=
></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span =
lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp; host=3D10.42.=
0.84, domain=3D, nis-domain=3D(none)</span><span style=3D'color:black'><o:p=
></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span =
lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp; bootserver=3D=
10.42.0.1, rootserver=3D10.42.0.1, rootpath=3D</span><span style=3D'color:b=
lack'><o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:no=
ne'><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp; nam=
eserver0=3D10.42.0.1</span><span style=3D'color:black'><o:p></o:p></span></=
p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US sty=
le=3D'color:#4F81BD'>ALSA device list:</span><span style=3D'color:black'><o=
:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><spa=
n lang=3DEN-US style=3D'color:#4F81BD'>&nbsp; #0: imx6-wandboard-sgtl5000</=
span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal=
 style=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>&=
nbsp; #1: imx-spdif</span><span style=3D'color:black'><o:p></o:p></span></p=
><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US styl=
e=3D'color:#4F81BD'>&nbsp; #2: imx-hdmi-soc</span><span style=3D'color:blac=
k'><o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'=
><span lang=3DEN-US style=3D'color:#4F81BD'>VFS: Unable to mount root fs vi=
a NFS, trying floppy.</span><span style=3D'color:black'><o:p></o:p></span><=
/p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US st=
yle=3D'color:#4F81BD'>VFS: Cannot open root device &quot;nfs&quot; or unkno=
wn-block(2,0): error -6</span><span style=3D'color:black'><o:p></o:p></span=
></p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US =
style=3D'color:#4F81BD'>Please append a correct &quot;root=3D&quot; boot op=
tion; here are the available partitions:</span><span style=3D'color:black'>=
<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><s=
pan lang=3DEN-US style=3D'color:#4F81BD'>b300&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 15558144 mmcblk0&nbsp; driver: mmcblk</span><span style=3D'col=
or:black'><o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospac=
e:none'><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp; b301&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8192 mmcblk0p1 000c64=
8f-01</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMs=
oNormal style=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F=
81BD'>&nbsp; b302&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; 28672 mmcblk0p2 000c648f-02</span><span style=3D'color:black'><o:p></o:p=
></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=
=3DEN-US style=3D'color:#4F81BD'>Kernel panic - not syncing: VFS: Unable to=
 mount root fs on unknown-block(2,0)</span><span style=3D'color:black'><o:p=
></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span =
lang=3DEN-US style=3D'color:#4F81BD'>CPU2: stopping</span><span style=3D'co=
lor:black'><o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospa=
ce:none'><span lang=3DEN-US style=3D'color:#4F81BD'>CPU: 2 PID: 0 Comm: swa=
pper/2 Not tainted 3.10.17-1.0.1-wandboard+ga6e7fc5</span><span lang=3DEN-U=
S style=3D'font-family:"Courier New","serif";color:#4F81BD'> </span><span s=
tyle=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:black'>&nbsp;</span><span style=3D'color:black'><o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:b=
lack'>During the boot process I recognized two things in the log which I su=
spect to be not ok, but wasn&#8217;t able to resolve them, these</span><spa=
n style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US style=3D'color:black'>are the empty nfsroot : &nbsp;</span><span=
 lang=3DEN-US style=3D'color:#4F81BD'>Kernel command line: console=3Dttymxc=
0,115200 root=3D/dev/nfs ip=3Ddhcp nfsroot=3D:,v3,tcp</span><span style=3D'=
color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:black'>And the empty rootpath :</span><span lang=3DEN-US sty=
le=3D'color:#4F81BD'> bootserver=3D10.42.0.1, rootserver=3D10.42.0.1, rootp=
ath=3D</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'color:black'>&nbsp;</span><span style=
=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'color:black'>I tried to set them as CONFIG_EXTRA_ENV_SETTINGS =
&nbsp;but that didn&#8217;t succeed (was ignored or didn&#8217;t have any e=
ffect).</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US style=3D'color:black'>Do you have a hint for m=
e what could be wrong and how to resolve this ?</span><span style=3D'color:=
black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:black'>Also (probably secondary problem) : I just set the folder =
</span><span lang=3DEN-US style=3D'font-family:"Courier New","serif";color:=
black'>fsl-community-bsp/build/tmp/work/wandboard_quad-poky-linux-gnueabi/c=
ore-image-minimal/1.0-r0/rootfs </span><span lang=3DEN-US style=3D'color:bl=
ack'>in my /etc/exports file for the nfs, is that ok ? or which rootfs shou=
ld I use? </span><span style=3D'color:black'><o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>Thank you very much,<=
/span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNorma=
l><span lang=3DEN-US style=3D'color:black'>Regards,</span><span style=3D'co=
lor:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US st=
yle=3D'color:black'>Mat</span><span style=3D'color:black'><o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>&nbsp;</=
span><span style=3D'color:black'><o:p></o:p></span></p></div></div></div></=
div></div></div></body></html>=

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A78MSSRVS5atlasd_--
