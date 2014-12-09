Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CD04E0090E; Tue,  9 Dec 2014 05:06:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9EA71E00874
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 05:06:50 -0800 (PST)
Received: from SESTOEX09.enea.se ([fe80::94d8:372f:210c:b4da]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0158.001; Tue, 9 Dec 2014 14:06:43 +0100
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: "Matthias.Heise@atlas-elektronik.com"
	<Matthias.Heise@atlas-elektronik.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: nfs-boot problem
Thread-Index: AdATnZVqh3rsXcZcTx6b9gDRaIckxgAEg7/Q
Date: Tue, 9 Dec 2014 13:06:42 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D73BBDA@sestoex09.enea.se>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A77@MSSRVS5.atlas.de>
In-Reply-To: <4009F04F5925CD4C95FBD9BE756381FE02848F2A77@MSSRVS5.atlas.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.189]
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
X-List-Received-Date: Tue, 09 Dec 2014 13:06:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DDB0C57E45663A458C5CACB7B5688BC21D73BBDAsestoex09enease_"

--_000_DDB0C57E45663A458C5CACB7B5688BC21D73BBDAsestoex09enease_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Inside <buildir>/tmp/deploy/image/<machine>/ you have a <image-name>*.tar.g=
z
You will have to have in place the NFS client server architecture. Untar th=
e archive in the client location available inside /etc/exports:
The line should look like this: /home *(rw,sync,no_subtree_check,no_root_sq=
uash), where /home is the nfs location where your decompressed rootfs shoul=
d reside.
$  sudo tar xd <image-name>*.tar.gz -C <nfs-location>
After that you need to set the u-boot bootargs to let it know that you actu=
ally want to get the sources over the NFS:
$  setenv bootargs root=3D/dev/nfs rw nfsroot=3D<nfs_server_ip>:< nfs_path>=
 ip=3Ddhcp console=3DttyS0,115200 ...
Boot the board and everything should work: bootm <kernel-address> - < dtb-a=
ddress >


Alex Vaduva

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Matthias.Heise@atlas-elektronik.com
Sent: Tuesday, December 09, 2014 2:18 PM
To: yocto@yoctoproject.org
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


--_000_DDB0C57E45663A458C5CACB7B5688BC21D73BBDAsestoex09enease_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"RO" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Inside &lt;buildir&gt;=
/tmp/deploy/image/&lt;machine&gt;/ you have a &lt;image-name&gt;*.tar.gz<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">You will have to have =
in place the NFS client server architecture. Untar the archive in the clien=
t location available inside /etc/exports:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">The line should look l=
ike this: /home *(rw,sync,no_subtree_check,no_root_squash), where /home is =
the nfs location where your decompressed rootfs should reside.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">$ &nbsp;sudo tar xd &l=
t;image-name&gt;*.tar.gz &#8211;C &lt;nfs-location&gt;<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">After that you need to=
 set the u-boot bootargs to let it know that you actually want to get the s=
ources over the NFS:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">$&nbsp; setenv bootarg=
s root=3D/dev/nfs rw nfsroot=3D&lt;nfs_server_ip&gt;:&lt; nfs_path&gt; ip=
=3Ddhcp console=3DttyS0,115200 &#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Boot the board and eve=
rything should work: bootm &lt;kernel-address&gt; - &lt; dtb-address &gt;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Alex Vaduva<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;mso-fareast-language:RO=
">From:</span></b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-famil=
y:&quot;Tahoma&quot;,&quot;sans-serif&quot;;mso-fareast-language:RO"> yocto=
-bounces@yoctoproject.org
 [mailto:yocto-bounces@yoctoproject.org] <b>On Behalf Of </b>Matthias.Heise=
@atlas-elektronik.com<br>
<b>Sent:</b> Tuesday, December 09, 2014 2:18 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] nfs-boot problem<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m struggling getting my=
 wandboard booting via tftp/nfs.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The first part was easy I just =
set up the tftp server and pointed it to the kernel image and *.dtb file,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">in the wandboard.h of u-boot I =
set <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">#define=
 CONFIG_BOOTCOMMAND \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; &quot;run netboot;&quot;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The kernel starts ok I think : =
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">U-Boot =
2014.10&#43;fslc&#43;g5fd0b60 (Dec 09 2014 - 11:39:57)<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">CPU:&nb=
sp;&nbsp; Freescale i.MX6Q rev1.2 at 792 MHz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Reset c=
ause: POR<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Board: =
Wandboard<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">I2C:&nb=
sp;&nbsp; ready<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"color:#4F81BD">DRAM:&nbsp=
; 2 GiB<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"color:#4F81BD">MMC:&nbsp;=
&nbsp; FSL_SDHC: 0, FSL_SDHC: 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">*** War=
ning - bad CRC, using default environment<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">auto-de=
tected panel HDMI<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Display=
: HDMI (1024x768)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">In:&nbs=
p;&nbsp;&nbsp; serial<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Out:&nb=
sp;&nbsp; serial<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Err:&nb=
sp;&nbsp; serial<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Net:&nb=
sp;&nbsp; FEC [PRIME]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Hit any=
 key to stop autoboot:&nbsp; 0
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Booting=
 from net ...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">BOOTP b=
roadcast 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">DHCP cl=
ient bound to address 10.42.0.84 (3 ms)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Using F=
EC device<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">TFTP fr=
om server 10.42.0.1; our IP address is 10.42.0.84<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Filenam=
e 'zImage'.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Load ad=
dress: 0x12000000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Loading=
: #################################################################<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;#################################=
################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #################################=
################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ########################<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8.4 MiB/s<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">done<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Bytes t=
ransferred =3D 5442656 (530c60 hex)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">BOOTP b=
roadcast 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">DHCP cl=
ient bound to address 10.42.0.84 (2 ms)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Using F=
EC device<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">TFTP fr=
om server 10.42.0.1; our IP address is 10.42.0.84<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Filenam=
e 'imx6q-wandboard.dtb'.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Load ad=
dress: 0x18000000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Loading=
: #########<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.1 MiB/s<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">done<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Bytes t=
ransferred =3D 43370 (a96a hex)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"color:#4F81BD">Kernel ima=
ge @ 0x12000000 [ 0x000000 - 0x530c60 ]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">## Flat=
tened Device Tree blob at 18000000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp; Booting using the fdt blob at 0x18000000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp; Using Device Tree in place at 18000000, end 1800d969<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Startin=
g kernel ...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Booting=
 Linux on physical CPU 0x0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Linux v=
ersion 3.10.17-1.0.1-wandboard&#43;ga6e7fc5 (theuser@debianDevHost) (gcc ve=
rsion 4.9.1 (GCC) ) #1 SMP PREEMPT Fri Nov 28 15:51:4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">CPU: AR=
Mv7 Processor [412fc09a] revision 10 (ARMv7), cr=3D10c53c7d<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">CPU: PI=
PT / VIPT nonaliasing data cache, VIPT aliasing instruction cache<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Machine=
: Freescale i.MX6 Quad/DualLite (Device Tree), model: Wandboard Quad based =
on Freescale i.MX6 Quad<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Truncat=
ing RAM at 10000000-8fffffff to -7f7fffff (vmalloc region overlap).<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">cma: CM=
A: reserved 256 MiB at 6e000000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Memory =
policy: ECC disabled, Data cache writealloc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">PERCPU:=
 Embedded 8 pages/cpu @81b57000 s8832 r8192 d15744 u32768<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Built 1=
 zonelists in Zone order, mobility grouping on.&nbsp; Total pages: 453136<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Kernel =
command line: console=3Dttymxc0,115200 root=3D/dev/nfs ip=3Ddhcp nfsroot=3D=
:,v3,tcp<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">PID has=
h table entries: 4096 (order: 2, 16384 bytes)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Dentry =
cache hash table entries: 262144 (order: 8, 1048576 bytes)<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Inode-c=
ache hash table entries: 131072 (order: 7, 524288 bytes)<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Memory:=
 1784MB =3D 1784MB total<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Memory:=
 1534420k/1534420k available, 292396k reserved, 0K highmem<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Virtual=
 kernel memory layout:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp; vector&nbsp; : 0xffff0000 - 0xffff1000&nbsp;&nbsp; (&nbsp;&nbsp=
; 4 kB)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp; fixmap&nbsp; : 0xfff00000 - 0xfffe0000&nbsp;&nbsp; ( 896 kB)<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp; vmalloc : 0xf0000000 - 0xff000000&nbsp;&nbsp; ( 240 MB)<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp; lowmem&nbsp; : 0x80000000 - 0xef800000&nbsp;&nbsp; (1784 MB)<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp; modules : 0x7f000000 - 0x80000000&nbsp;&nbsp; (&nbsp; 16 MB)<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; .text : 0x80008000 - 0x80c429c8&nbsp;&nbsp; (12523 =
kB)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; .init : 0x80c43000 - 0x80c87280&nbsp;&nbsp; ( 273 k=
B)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; .data : 0x80c88000 - 0x80cd9700&nbsp;&nbsp; ( 326 k=
B)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .bss : 0x80cd9700 - 0x80d3e8b8&nbsp;&nbsp; ( =
405 kB)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">SLUB: H=
Walign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, Nodes=3D1<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#4F81BD">Preempt=
ible hierarchical RCU implementation.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">.....<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">then it tries to get the rootfs=
 which fails. On the host I set up the nfs server and made some tests &#821=
1; it is accessible.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">VFP support v0.3: implementor 41 architecture 3 part=
 30 variant 9 rev 4<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">snvs_rtc 20cc034.snvs-rtc-lp: setting system clock t=
o 1970-01-01 00:00:01 UTC (1)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">fec 2188000.ethernet eth0: Freescale FEC PHY driver =
[Generic PHY] (mii_bus:phy_addr=3D2188000.ethernet:01, irq=3D-1)<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">libphy: 2188000.ethernet:01 - Link is Up - 1000/Full=
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes re=
ady<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">Sending DHCP requests ., OK<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">IP-Config: Got DHCP answer from 10.42.0.1, my addres=
s is 10.42.0.84<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">IP-Config: Complete:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">&nbsp;&nbsp;&nbsp;&nbsp; device=3Deth0, hwaddr=3D00:=
1f:7b:b4:12:00, ipaddr=3D10.42.0.84, mask=3D255.255.255.0, gw=3D10.42.0.1<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">&nbsp;&nbsp;&nbsp;&nbsp; host=3D10.42.0.84, domain=
=3D, nis-domain=3D(none)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">&nbsp;&nbsp;&nbsp;&nbsp; bootserver=3D10.42.0.1, roo=
tserver=3D10.42.0.1, rootpath=3D<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">&nbsp;&nbsp;&nbsp;&nbsp; nameserver0=3D10.42.0.1<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">ALSA device list:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">&nbsp; #0: imx6-wandboard-sgtl5000<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">&nbsp; #1: imx-spdif<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">&nbsp; #2: imx-hdmi-soc<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">VFS: Unable to mount root fs via NFS, trying floppy.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">VFS: Cannot open root device &quot;nfs&quot; or unkn=
own-block(2,0): error -6<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">Please append a correct &quot;root=3D&quot; boot opt=
ion; here are the available partitions:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">b300&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 15558=
144 mmcblk0&nbsp; driver: mmcblk<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">&nbsp; b301&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; 8192 mmcblk0p1 000c648f-01<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">&nbsp; b302&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; 28672 mmcblk0p2 000c648f-02<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">Kernel panic - not syncing: VFS: Unable to mount roo=
t fs on unknown-block(2,0)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">CPU2: stopping<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"color:#4F81BD">CPU: 2 PID: 0 Comm: swapper/2 Not tainted 3.10.17-1.=
0.1-wandboard&#43;ga6e7fc5</span><span lang=3D"EN-US" style=3D"font-family:=
&quot;Courier New&quot;;color:#4F81BD">
</span><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">During the boot process I recog=
nized two things in the log which I suspect to be not ok, but wasn&#8217;t =
able to resolve them, these<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">are the empty nfsroot : &nbsp;<=
span style=3D"color:#4F81BD">Kernel command line: console=3Dttymxc0,115200 =
root=3D/dev/nfs ip=3Ddhcp nfsroot=3D:,v3,tcp<o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">And the empty rootpath :<span s=
tyle=3D"color:#4F81BD"> bootserver=3D10.42.0.1, rootserver=3D10.42.0.1, roo=
tpath=3D<o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I tried to set them as CONFIG_E=
XTRA_ENV_SETTINGS &nbsp;but that didn&#8217;t succeed (was ignored or didn&=
#8217;t have any effect).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Do you have a hint for me what =
could be wrong and how to resolve this ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Also (probably secondary proble=
m) : I just set the folder
</span><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">f=
sl-community-bsp/build/tmp/work/wandboard_quad-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs
</span><span lang=3D"EN-US">in my /etc/exports file for the nfs, is that ok=
 ? or which rootfs should I use?
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you very much,<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Mat<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_DDB0C57E45663A458C5CACB7B5688BC21D73BBDAsestoex09enease_--
