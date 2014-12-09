Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EE85E0095D; Tue,  9 Dec 2014 08:27:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CC80E0083A
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 08:27:44 -0800 (PST)
From: Jim Rafert <jimr@spectralogic.com>
To: "Matthias.Heise@atlas-elektronik.com"
	<Matthias.Heise@atlas-elektronik.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] nfs-boot problem
Thread-Index: AQHQE6slOAsCEEQPeke18gw6ldjA95yHcYsj
Date: Tue, 9 Dec 2014 16:27:43 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0C0108E2916C@reactor.sldomain.com>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A77@MSSRVS5.atlas.de>
In-Reply-To: <4009F04F5925CD4C95FBD9BE756381FE02848F2A77@MSSRVS5.atlas.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.200.8]
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
X-List-Received-Date: Tue, 09 Dec 2014 16:27:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_86196249137E0843B2E0673D4F731E0C0108E2916Creactorsldoma_"

--_000_86196249137E0843B2E0673D4F731E0C0108E2916Creactorsldoma_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Matthias,

Sorry, I missed the kernel command line in all the other gobbledy-gook put =
out by the boot.
Kernel command line: console=3Dttymxc0,115200 root=3D/dev/nfs ip=3Ddhcp nfs=
root=3D:,v3,tcp
That doesn't look right to me.

-Jim-



________________________________
From: Matthias.Heise@atlas-elektronik.com [Matthias.Heise@atlas-elektronik.=
com]
Sent: Tuesday, December 09, 2014 5:17 AM
To: yocto@yoctoproject.org
Subject: [yocto] nfs-boot problem

Hello,

I=92m struggling getting my wandboard booting via tftp/nfs.
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
erver and made some tests =96 it is accessible.

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
to be not ok, but wasn=92t able to resolve them, these
are the empty nfsroot :  Kernel command line: console=3Dttymxc0,115200 root=
=3D/dev/nfs ip=3Ddhcp nfsroot=3D:,v3,tcp
And the empty rootpath : bootserver=3D10.42.0.1, rootserver=3D10.42.0.1, ro=
otpath=3D

I tried to set them as CONFIG_EXTRA_ENV_SETTINGS  but that didn=92t succeed=
 (was ignored or didn=92t have any effect).
Do you have a hint for me what could be wrong and how to resolve this ?
Also (probably secondary problem) : I just set the folder fsl-community-bsp=
/build/tmp/work/wandboard_quad-poky-linux-gnueabi/core-image-minimal/1.0-r0=
/rootfs in my /etc/exports file for the nfs, is that ok ? or which rootfs s=
hould I use?
Thank you very much,
Regards,
Mat


--_000_86196249137E0843B2E0673D4F731E0C0108E2916Creactorsldoma_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style>=0A=
<!--=0A=
@font-face=0A=
	{font-family:Calibri}=0A=
p.MsoNormal, li.MsoNormal, div.MsoNormal=0A=
	{margin:0cm;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:11.0pt;=0A=
	font-family:"Calibri","sans-serif"}=0A=
a:link, span.MsoHyperlink=0A=
	{color:blue;=0A=
	text-decoration:underline}=0A=
a:visited, span.MsoHyperlinkFollowed=0A=
	{color:purple;=0A=
	text-decoration:underline}=0A=
span.E-MailFormatvorlage17=0A=
	{font-family:"Calibri","sans-serif";=0A=
	color:windowtext}=0A=
.MsoChpDefault=0A=
	{font-family:"Calibri","sans-serif"}=0A=
@page WordSection1=0A=
	{margin:70.85pt 70.85pt 2.0cm 70.85pt}=0A=
-->=0A=
</style><style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin=
-bottom:0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1" lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hi Matthias,<br>
<br>
Sorry, I missed the kernel command line in all the other gobbledy-gook put =
out by the boot.<br>
<span style=3D"color:#4F81BD" lang=3D"EN-US">Kernel command line: console=
=3Dttymxc0,115200 root=3D/dev/nfs ip=3Ddhcp
<span style=3D"background-color: rgb(0, 255, 0);">nfsroot=3D:,v3,tcp</span>=
<br>
<font color=3D"000000">Th<font color=3D"000000">at doesn't look right to me=
.<br>
<br>
<font color=3D"000000">-Jim-</font><br>
</font></font></span><br>
<div><br>
<div style=3D"font-family:Tahoma; font-size:13px"><br>
</div>
</div>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div style=3D"direction: ltr;" id=3D"divRpF775631"><font color=3D"#000000" =
face=3D"Tahoma" size=3D"2"><b>From:</b> Matthias.Heise@atlas-elektronik.com=
 [Matthias.Heise@atlas-elektronik.com]<br>
<b>Sent:</b> Tuesday, December 09, 2014 5:17 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] nfs-boot problem<br>
</font><br>
</div>
<div></div>
<div>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello,</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=92m struggling getting my wan=
dboard booting via tftp/nfs.
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The first part was easy I just =
set up the tftp server and pointed it to the kernel image and *.dtb file,
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">in the wandboard.h of u-boot I =
set </span>
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">#define=
 CONFIG_BOOTCOMMAND \</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; &quot;run netboot;&quot;
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The kernel starts ok I think : =
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">U-Boot =
2014.10&#43;fslc&#43;g5fd0b60 (Dec 09 2014 - 11:39:57)</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;<=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">CPU:&nb=
sp;&nbsp; Freescale i.MX6Q rev1.2 at 792 MHz</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Reset c=
ause: POR</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Board: =
Wandboard</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">I2C:&nb=
sp;&nbsp; ready</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD">DRAM:&nbsp; 2 GiB</spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD">MMC:&nbsp;&nbsp; FSL_S=
DHC: 0, FSL_SDHC: 1</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">*** War=
ning - bad CRC, using default environment</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;<=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">auto-de=
tected panel HDMI</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Display=
: HDMI (1024x768)</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">In:&nbs=
p;&nbsp;&nbsp; serial</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Out:&nb=
sp;&nbsp; serial</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Err:&nb=
sp;&nbsp; serial</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Net:&nb=
sp;&nbsp; FEC [PRIME]</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Hit any=
 key to stop autoboot:&nbsp; 0
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Booting=
 from net ...</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">BOOTP b=
roadcast 1</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">DHCP cl=
ient bound to address 10.42.0.84 (3 ms)</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Using F=
EC device</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">TFTP fr=
om server 10.42.0.1; our IP address is 10.42.0.84</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Filenam=
e 'zImage'.</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Load ad=
dress: 0x12000000</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Loading=
: #################################################################</span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;#################################=
################################</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ########################</span></=
p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8.4 MiB/s</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">done</s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Bytes t=
ransferred =3D 5442656 (530c60 hex)</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">BOOTP b=
roadcast 1</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">DHCP cl=
ient bound to address 10.42.0.84 (2 ms)</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Using F=
EC device</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">TFTP fr=
om server 10.42.0.1; our IP address is 10.42.0.84</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Filenam=
e 'imx6q-wandboard.dtb'.</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Load ad=
dress: 0x18000000</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Loading=
: #########</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.1 MiB/s</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">done</s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Bytes t=
ransferred =3D 43370 (a96a hex)</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD">Kernel image @ 0x12000=
000 [ 0x000000 - 0x530c60 ]</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">## Flat=
tened Device Tree blob at 18000000</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp; Booting using the fdt blob at 0x18000000</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp; Using Device Tree in place at 18000000, end 1800d969</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;<=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Startin=
g kernel ...</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;<=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Booting=
 Linux on physical CPU 0x0</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Linux v=
ersion 3.10.17-1.0.1-wandboard&#43;ga6e7fc5 (theuser@debianDevHost) (gcc ve=
rsion 4.9.1 (GCC) ) #1 SMP PREEMPT Fri Nov 28 15:51:4</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">CPU: AR=
Mv7 Processor [412fc09a] revision 10 (ARMv7), cr=3D10c53c7d</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">CPU: PI=
PT / VIPT nonaliasing data cache, VIPT aliasing instruction cache</span></p=
>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Machine=
: Freescale i.MX6 Quad/DualLite (Device Tree), model: Wandboard Quad based =
on Freescale i.MX6 Quad</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Truncat=
ing RAM at 10000000-8fffffff to -7f7fffff (vmalloc region overlap).</span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">cma: CM=
A: reserved 256 MiB at 6e000000</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Memory =
policy: ECC disabled, Data cache writealloc</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">PERCPU:=
 Embedded 8 pages/cpu @81b57000 s8832 r8192 d15744 u32768</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Built 1=
 zonelists in Zone order, mobility grouping on.&nbsp; Total pages: 453136</=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Kernel =
command line: console=3Dttymxc0,115200 root=3D/dev/nfs ip=3Ddhcp nfsroot=3D=
:,v3,tcp</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">PID has=
h table entries: 4096 (order: 2, 16384 bytes)</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Dentry =
cache hash table entries: 262144 (order: 8, 1048576 bytes)</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Inode-c=
ache hash table entries: 131072 (order: 7, 524288 bytes)</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Memory:=
 1784MB =3D 1784MB total</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Memory:=
 1534420k/1534420k available, 292396k reserved, 0K highmem</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Virtual=
 kernel memory layout:</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp; vector&nbsp; : 0xffff0000 - 0xffff1000&nbsp;&nbsp; (&nbsp;&nbsp=
; 4 kB)</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp; fixmap&nbsp; : 0xfff00000 - 0xfffe0000&nbsp;&nbsp; ( 896 kB)</s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp; vmalloc : 0xf0000000 - 0xff000000&nbsp;&nbsp; ( 240 MB)</span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp; lowmem&nbsp; : 0x80000000 - 0xef800000&nbsp;&nbsp; (1784 MB)</s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp; modules : 0x7f000000 - 0x80000000&nbsp;&nbsp; (&nbsp; 16 MB)</s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; .text : 0x80008000 - 0x80c429c8&nbsp;&nbsp; (12523 =
kB)</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; .init : 0x80c43000 - 0x80c87280&nbsp;&nbsp; ( 273 k=
B)</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; .data : 0x80c88000 - 0x80cd9700&nbsp;&nbsp; ( 326 k=
B)</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .bss : 0x80cd9700 - 0x80d3e8b8&nbsp;&nbsp; ( =
405 kB)</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">SLUB: H=
Walign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, Nodes=3D1</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#4F81BD" lang=3D"EN-US">Preempt=
ible hierarchical RCU implementation.</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">.....</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">then it tries to get the rootfs=
 which fails. On the host I set up the nfs server and made some tests =96 i=
t is accessible.
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US"><=
span style=3D"color:#4F81BD">VFP support v0.3: implementor 41 architecture =
3 part 30 variant 9 rev 4</span></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">snvs_rtc 20cc034.snvs-rtc-lp: setting system clock t=
o 1970-01-01 00:00:01 UTC (1)</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">fec 2188000.ethernet eth0: Freescale FEC PHY driver =
[Generic PHY] (mii_bus:phy_addr=3D2188000.ethernet:01, irq=3D-1)</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready</=
span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">libphy: 2188000.ethernet:01 - Link is Up - 1000/Full=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes re=
ady</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">Sending DHCP requests ., OK</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">IP-Config: Got DHCP answer from 10.42.0.1, my addres=
s is 10.42.0.84</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">IP-Config: Complete:</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; device=3Deth0, hwaddr=3D00:=
1f:7b:b4:12:00, ipaddr=3D10.42.0.84, mask=3D255.255.255.0, gw=3D10.42.0.1</=
span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; host=3D10.42.0.84, domain=
=3D, nis-domain=3D(none)</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; bootserver=3D10.42.0.1, roo=
tserver=3D10.42.0.1, rootpath=3D</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; nameserver0=3D10.42.0.1</sp=
an></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">ALSA device list:</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">&nbsp; #0: imx6-wandboard-sgtl5000</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">&nbsp; #1: imx-spdif</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">&nbsp; #2: imx-hdmi-soc</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">VFS: Unable to mount root fs via NFS, trying floppy.=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">VFS: Cannot open root device &quot;nfs&quot; or unkn=
own-block(2,0): error -6</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">Please append a correct &quot;root=3D&quot; boot opt=
ion; here are the available partitions:</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">b300&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 15558=
144 mmcblk0&nbsp; driver: mmcblk</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">&nbsp; b301&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; 8192 mmcblk0p1 000c648f-01</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">&nbsp; b302&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; 28672 mmcblk0p2 000c648f-02</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">Kernel panic - not syncing: VFS: Unable to mount roo=
t fs on unknown-block(2,0)</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">CPU2: stopping</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
4F81BD" lang=3D"EN-US">CPU: 2 PID: 0 Comm: swapper/2 Not tainted 3.10.17-1.=
0.1-wandboard&#43;ga6e7fc5</span><span style=3D"font-family:&quot;Courier N=
ew&quot;,&quot;serif&quot;; color:#4F81BD" lang=3D"EN-US">
</span><span style=3D"font-family:&quot;Courier New&quot;,&quot;serif&quot;=
" lang=3D"EN-US"></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">During the boot process I recog=
nized two things in the log which I suspect to be not ok, but wasn=92t able=
 to resolve them, these</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">are the empty nfsroot : &nbsp;<=
span style=3D"color:#4F81BD">Kernel command line: console=3Dttymxc0,115200 =
root=3D/dev/nfs ip=3Ddhcp nfsroot=3D:,v3,tcp</span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">And the empty rootpath :<span s=
tyle=3D"color:#4F81BD"> bootserver=3D10.42.0.1, rootserver=3D10.42.0.1, roo=
tpath=3D</span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I tried to set them as CONFIG_E=
XTRA_ENV_SETTINGS &nbsp;but that didn=92t succeed (was ignored or didn=92t =
have any effect).</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Do you have a hint for me what =
could be wrong and how to resolve this ?</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Also (probably secondary proble=
m) : I just set the folder
</span><span style=3D"font-family:&quot;Courier New&quot;,&quot;serif&quot;=
" lang=3D"EN-US">fsl-community-bsp/build/tmp/work/wandboard_quad-poky-linux=
-gnueabi/core-image-minimal/1.0-r0/rootfs
</span><span lang=3D"EN-US">in my /etc/exports file for the nfs, is that ok=
 ? or which rootfs should I use?
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you very much,</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards,</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Mat</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_86196249137E0843B2E0673D4F731E0C0108E2916Creactorsldoma_--
