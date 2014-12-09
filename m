Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE0E5E0090E; Tue,  9 Dec 2014 04:19:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,HEXHASH_WORD,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.156.172.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.9 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from mail96.atlas.de (mail96.atlas.de [194.156.172.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E468DE00874
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 04:19:35 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id 7599D10158
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 13:19:33 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t6SES9VJLrw9 for <yocto@yoctoproject.org>;
	Tue,  9 Dec 2014 13:19:19 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 13:19:19 +0100 (CET)
Received: from MSSRVS3.atlas.de (mssrvs3.atlas.de [10.200.101.73])
	by mgsrv01.atlas.de (Postfix) with ESMTP id E50582716A
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 13:19:18 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS3.atlas.de
	([10.200.101.73]) with mapi; Tue, 9 Dec 2014 13:17:30 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <yocto@yoctoproject.org>
Date: Tue, 9 Dec 2014 13:17:31 +0100
Thread-Topic: nfs-boot problem
Thread-Index: AdATnZVqh3rsXcZcTx6b9gDRaIckxg==
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02848F2A77@MSSRVS5.atlas.de>
Accept-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: de-DE
MIME-Version: 1.0
Subject: nfs-boot problem
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
X-List-Received-Date: Tue, 09 Dec 2014 12:19:41 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A77MSSRVS5atlasd_"

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A77MSSRVS5atlasd_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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


--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A77MSSRVS5atlasd_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
>Hello,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&=
nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I&#8217;m str=
uggling getting my wandboard booting via tftp/nfs. <o:p></o:p></span></p><p=
 class=3DMsoNormal><span lang=3DEN-US>The first part was easy I just set up=
 the tftp server and pointed it to the kernel image and *.dtb file, <o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>in the wandboard.h o=
f u-boot I set <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#4F81BD'>#define CONFIG_BOOTCOMMAND \<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; &quot;run netboot;&quot; <o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US>The kernel starts ok I think : <o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>U-Boot 2014.10+fslc=
+g5fd0b60 (Dec 09 2014 - 11:39:57)<o:p></o:p></span></p><p class=3DMsoNorma=
l><span lang=3DEN-US style=3D'color:#4F81BD'><o:p>&nbsp;</o:p></span></p><p=
 class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>CPU:&nbsp;&nb=
sp; Freescale i.MX6Q rev1.2 at 792 MHz<o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US style=3D'color:#4F81BD'>Reset cause: POR<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'=
>Board: Wandboard<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'color:#4F81BD'>I2C:&nbsp;&nbsp; ready<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#4F81BD'>DRAM:&nbsp; 2 GiB<o:p></o:p=
></span></p><p class=3DMsoNormal><span style=3D'color:#4F81BD'>MMC:&nbsp;&n=
bsp; FSL_SDHC: 0, FSL_SDHC: 1<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US style=3D'color:#4F81BD'>*** Warning - bad CRC, using defaul=
t environment<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#4F81BD'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US style=3D'color:#4F81BD'>auto-detected panel HDMI<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'=
>Display: HDMI (1024x768)<o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'color:#4F81BD'>In:&nbsp;&nbsp;&nbsp; serial<o:p></o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>=
Out:&nbsp;&nbsp; serial<o:p></o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US style=3D'color:#4F81BD'>Err:&nbsp;&nbsp; serial<o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Net:&nb=
sp;&nbsp; FEC [PRIME]<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:#4F81BD'>Hit any key to stop autoboot:&nbsp; 0 <o:p=
></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4=
F81BD'>Booting from net ...<o:p></o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US style=3D'color:#4F81BD'>BOOTP broadcast 1<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>DHCP clie=
nt bound to address 10.42.0.84 (3 ms)<o:p></o:p></span></p><p class=3DMsoNo=
rmal><span lang=3DEN-US style=3D'color:#4F81BD'>Using FEC device<o:p></o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>=
TFTP from server 10.42.0.1; our IP address is 10.42.0.84<o:p></o:p></span><=
/p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Filename=
 'zImage'.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US sty=
le=3D'color:#4F81BD'>Load address: 0x12000000<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Loading: ##########=
#######################################################<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ###################################=
##############################<o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ############################################################=
#####<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;##########=
#######################################################<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ###################################=
##############################<o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ############################################################=
#####<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ##########=
#######################################################<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ###################################=
##############################<o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ############################################################=
#####<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ##########=
#######################################################<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ###################################=
##############################<o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ############################################################=
#####<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ##########=
#######################################################<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ###################################=
##############################<o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ############################################################=
#####<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ##########=
#######################################################<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ########################<o:p></o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8.4 MiB/s<o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>done<o=
:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:=
#4F81BD'>Bytes transferred =3D 5442656 (530c60 hex)<o:p></o:p></span></p><p=
 class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>BOOTP broadca=
st 1<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'=
color:#4F81BD'>DHCP client bound to address 10.42.0.84 (2 ms)<o:p></o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Usi=
ng FEC device<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#4F81BD'>TFTP from server 10.42.0.1; our IP address is 10.42=
.0.84<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'color:#4F81BD'>Filename 'imx6q-wandboard.dtb'.<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Load address: 0x1=
8000000<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#4F81BD'>Loading: #########<o:p></o:p></span></p><p class=3DMsoNo=
rmal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 4.1 MiB/s<o:p></o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US style=3D'color:#4F81BD'>done<o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Bytes transferred =
=3D 43370 (a96a hex)<o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'color:#4F81BD'>Kernel image @ 0x12000000 [ 0x000000 - 0x530c60 ]<o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81=
BD'>## Flattened Device Tree blob at 18000000<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp; Bootin=
g using the fdt blob at 0x18000000<o:p></o:p></span></p><p class=3DMsoNorma=
l><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp; Using Device Tree=
 in place at 18000000, end 1800d969<o:p></o:p></span></p><p class=3DMsoNorm=
al><span lang=3DEN-US style=3D'color:#4F81BD'><o:p>&nbsp;</o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Starting ker=
nel ...<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#4F81BD'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'color:#4F81BD'>Booting Linux on physical CPU 0x0<o:p><=
/o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F8=
1BD'>Linux version 3.10.17-1.0.1-wandboard+ga6e7fc5 (theuser@debianDevHost)=
 (gcc version 4.9.1 (GCC) ) #1 SMP PREEMPT Fri Nov 28 15:51:4<o:p></o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>CPU=
: ARMv7 Processor [412fc09a] revision 10 (ARMv7), cr=3D10c53c7d<o:p></o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>C=
PU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache<o:p=
></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4=
F81BD'>Machine: Freescale i.MX6 Quad/DualLite (Device Tree), model: Wandboa=
rd Quad based on Freescale i.MX6 Quad<o:p></o:p></span></p><p class=3DMsoNo=
rmal><span lang=3DEN-US style=3D'color:#4F81BD'>Truncating RAM at 10000000-=
8fffffff to -7f7fffff (vmalloc region overlap).<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>cma: CMA: reserve=
d 256 MiB at 6e000000<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:#4F81BD'>Memory policy: ECC disabled, Data cache wr=
itealloc<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#4F81BD'>PERCPU: Embedded 8 pages/cpu @81b57000 s8832 r8192 d1574=
4 u32768<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#4F81BD'>Built 1 zonelists in Zone order, mobility grouping on.&n=
bsp; Total pages: 453136<o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US style=3D'color:#4F81BD'>Kernel command line: console=3Dttymxc0,1=
15200 root=3D/dev/nfs ip=3Ddhcp nfsroot=3D:,v3,tcp<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>PID hash table=
 entries: 4096 (order: 2, 16384 bytes)<o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US style=3D'color:#4F81BD'>Dentry cache hash table en=
tries: 262144 (order: 8, 1048576 bytes)<o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US style=3D'color:#4F81BD'>Inode-cache hash table en=
tries: 131072 (order: 7, 524288 bytes)<o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US style=3D'color:#4F81BD'>Memory: 1784MB =3D 1784MB =
total<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'color:#4F81BD'>Memory: 1534420k/1534420k available, 292396k reserved, 0K h=
ighmem<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#4F81BD'>Virtual kernel memory layout:<o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbs=
p; vector&nbsp; : 0xffff0000 - 0xffff1000&nbsp;&nbsp; (&nbsp;&nbsp; 4 kB)<o=
:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:=
#4F81BD'>&nbsp;&nbsp;&nbsp; fixmap&nbsp; : 0xfff00000 - 0xfffe0000&nbsp;&nb=
sp; ( 896 kB)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp; vmalloc : 0xf0000000 - 0xff00000=
0&nbsp;&nbsp; ( 240 MB)<o:p></o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp; lowmem&nbsp; : 0x80000=
000 - 0xef800000&nbsp;&nbsp; (1784 MB)<o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp; modules=
 : 0x7f000000 - 0x80000000&nbsp;&nbsp; (&nbsp; 16 MB)<o:p></o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; .text : 0x80008000 - 0x80c429c8&nbsp;&nbsp; (12523 kB)<=
o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color=
:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .init : 0x80c43000 - 0x80c87280&nb=
sp;&nbsp; ( 273 kB)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .data : 0x80c8=
8000 - 0x80cd9700&nbsp;&nbsp; ( 326 kB)<o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; .bss : 0x80cd9700 - 0x80d3e8b8&nbsp;&nbsp; ( 405 kB)<o:p></o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>=
SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, Nodes=3D1<o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81=
BD'>Preemptible hierarchical RCU implementation.<o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US>.....<o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>then it tries to get the rootfs which fails. On the host I set=
 up the nfs server and made some tests &#8211; it is accessible. <o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span=
></p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US>=
 <span style=3D'color:#4F81BD'>VFP support v0.3: implementor 41 architectur=
e 3 part 30 variant 9 rev 4<o:p></o:p></span></span></p><p class=3DMsoNorma=
l style=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>=
snvs_rtc 20cc034.snvs-rtc-lp: setting system clock to 1970-01-01 00:00:01 U=
TC (1)<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:no=
ne'><span lang=3DEN-US style=3D'color:#4F81BD'>fec 2188000.ethernet eth0: F=
reescale FEC PHY driver [Generic PHY] (mii_bus:phy_addr=3D2188000.ethernet:=
01, irq=3D-1)<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autos=
pace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>IPv6: ADDRCONF(NETDEV=
_UP): eth0: link is not ready<o:p></o:p></span></p><p class=3DMsoNormal sty=
le=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>libph=
y: 2188000.ethernet:01 - Link is Up - 1000/Full<o:p></o:p></span></p><p cla=
ss=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US style=3D'co=
lor:#4F81BD'>IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready<o:p></=
o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span lan=
g=3DEN-US style=3D'color:#4F81BD'>Sending DHCP requests ., OK<o:p></o:p></s=
pan></p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-=
US style=3D'color:#4F81BD'>IP-Config: Got DHCP answer from 10.42.0.1, my ad=
dress is 10.42.0.84<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text=
-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>IP-Config: Comp=
lete:<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:non=
e'><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp; devi=
ce=3Deth0, hwaddr=3D00:1f:7b:b4:12:00, ipaddr=3D10.42.0.84, mask=3D255.255.=
255.0, gw=3D10.42.0.1<o:p></o:p></span></p><p class=3DMsoNormal style=3D'te=
xt-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&=
nbsp;&nbsp; host=3D10.42.0.84, domain=3D, nis-domain=3D(none)<o:p></o:p></s=
pan></p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-=
US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp; bootserver=3D10.42.0.1,=
 rootserver=3D10.42.0.1, rootpath=3D<o:p></o:p></span></p><p class=3DMsoNor=
mal style=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD=
'>&nbsp;&nbsp;&nbsp;&nbsp; nameserver0=3D10.42.0.1<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US style=3D=
'color:#4F81BD'>ALSA device list:<o:p></o:p></span></p><p class=3DMsoNormal=
 style=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>&=
nbsp; #0: imx6-wandboard-sgtl5000<o:p></o:p></span></p><p class=3DMsoNormal=
 style=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>&=
nbsp; #1: imx-spdif<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text=
-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp; #2: imx-=
hdmi-soc<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:=
none'><span lang=3DEN-US style=3D'color:#4F81BD'>VFS: Unable to mount root =
fs via NFS, trying floppy.<o:p></o:p></span></p><p class=3DMsoNormal style=
=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>VFS: Ca=
nnot open root device &quot;nfs&quot; or unknown-block(2,0): error -6<o:p><=
/o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span la=
ng=3DEN-US style=3D'color:#4F81BD'>Please append a correct &quot;root=3D&qu=
ot; boot option; here are the available partitions:<o:p></o:p></span></p><p=
 class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US style=
=3D'color:#4F81BD'>b300&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 15558144 =
mmcblk0&nbsp; driver: mmcblk<o:p></o:p></span></p><p class=3DMsoNormal styl=
e=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;=
 b301&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 819=
2 mmcblk0p1 000c648f-01<o:p></o:p></span></p><p class=3DMsoNormal style=3D'=
text-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp; b302=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 28672 mmcblk0p=
2 000c648f-02<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autos=
pace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>Kernel panic - not sy=
ncing: VFS: Unable to mount root fs on unknown-block(2,0)<o:p></o:p></span>=
</p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US s=
tyle=3D'color:#4F81BD'>CPU2: stopping<o:p></o:p></span></p><p class=3DMsoNo=
rmal style=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F81B=
D'>CPU: 2 PID: 0 Comm: swapper/2 Not tainted 3.10.17-1.0.1-wandboard+ga6e7f=
c5</span><span lang=3DEN-US style=3D'font-family:"Courier New","serif";colo=
r:#4F81BD'> </span><span lang=3DEN-US style=3D'font-family:"Courier New","s=
erif"'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&=
nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>During the bo=
ot process I recognized two things in the log which I suspect to be not ok,=
 but wasn&#8217;t able to resolve them, these<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US>are the empty nfsroot : &nbsp;<span style=
=3D'color:#4F81BD'>Kernel command line: console=3Dttymxc0,115200 root=3D/de=
v/nfs ip=3Ddhcp nfsroot=3D:,v3,tcp<o:p></o:p></span></span></p><p class=3DM=
soNormal><span lang=3DEN-US>And the empty rootpath :<span style=3D'color:#4=
F81BD'> bootserver=3D10.42.0.1, rootserver=3D10.42.0.1, rootpath=3D<o:p></o=
:p></span></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I tried to set them a=
s CONFIG_EXTRA_ENV_SETTINGS &nbsp;but that didn&#8217;t succeed (was ignore=
d or didn&#8217;t have any effect).<o:p></o:p></span></p><p class=3DMsoNorm=
al><span lang=3DEN-US>Do you have a hint for me what could be wrong and how=
 to resolve this ?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US>Also (probably secondary problem) : I just set the folder </span><span=
 lang=3DEN-US style=3D'font-family:"Courier New","serif"'>fsl-community-bsp=
/build/tmp/work/wandboard_quad-poky-linux-gnueabi/core-image-minimal/1.0-r0=
/rootfs </span><span lang=3DEN-US>in my /etc/exports file for the nfs, is t=
hat ok ? or which rootfs should I use? <o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US>Thank you very much,<o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US>Regards,<o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US>Mat<o:p></o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>=

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A77MSSRVS5atlasd_--
