Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C59B0E00924; Wed, 10 Dec 2014 02:14:11 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0107FE008D7
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 02:14:01 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id 3BA14108FE
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 11:14:00 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x_riVoSVAT-n for <yocto@yoctoproject.org>;
	Wed, 10 Dec 2014 11:13:42 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 11:13:42 +0100 (CET)
Received: from MSSRVS3.atlas.de (mssrvs3.atlas.de [10.200.101.73])
	by mgsrv01.atlas.de (Postfix) with ESMTP id 85FC827169
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 11:13:42 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS3.atlas.de
	([10.200.101.73]) with mapi; Wed, 10 Dec 2014 11:13:42 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <yocto@yoctoproject.org>
Date: Wed, 10 Dec 2014 11:13:42 +0100
Thread-Topic: [yocto] nfs-boot problem
Thread-Index: AQHQE6slOAsCEEQPeke18gw6ldjA95yHcYsjgAD5lZCAAC8toA==
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02848F2A79@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A77@MSSRVS5.atlas.de>
	<86196249137E0843B2E0673D4F731E0C0108E2916C@reactor.sldomain.com>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A78@MSSRVS5.atlas.de>
In-Reply-To: <4009F04F5925CD4C95FBD9BE756381FE02848F2A78@MSSRVS5.atlas.de>
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
X-List-Received-Date: Wed, 10 Dec 2014 10:14:11 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A79MSSRVS5atlasd_"

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A79MSSRVS5atlasd_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Update :

1.       I added a "rw" obviously at the right place as the nfs filesystem =
isn't marked as read-only anymore. Still there obviously is some write/righ=
ts issue as I get a lot of permission-related logs.  (see below)

2.       About the rootfs : I tried the unpacked filesystem from the *.tar.=
bz2  and it doesn't work...(process just stops after the ALSA device list) =
why wouldn't it ?

Do you have any ideas to that ?

Thank you

Regards,

Mat



IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready

IP-Config: Guessing netmask 255.255.255.0

IP-Config: Complete:

     device=3Deth0, hwaddr=3D00:1f:7b:b4:12:00, ipaddr=3D192.168.1.2, mask=
=3D255.255.255.0, gw=3D255.255.255.255

     host=3D192.168.1.2, domain=3D, nis-domain=3D(none)

     bootserver=3D255.255.255.255, rootserver=3D192.168.1.1, rootpath=3D

ALSA device list:

  #0: imx6-wandboard-sgtl5000

  #1: imx-spdif

  #2: imx-hdmi-soc

VFS: Mounted root (nfs filesystem) on device 0:11.

devtmpfs: mounted

Freeing unused kernel memory: 272K (80c43000 - 80c87000)

INIT: version 2.88 booting

Starting udev

udevd[171]: starting version 182

bootlogd: cannot allocate pseudo tty: No such file or directory

urandom start: failed.

Populating dev cache

/etc/rcS.d/S36udev-cache: line 33: /etc/udev-cache.tar.gz: Permission denie=
d

/etc/rcS.d/S37populate-volatile.sh: line 56: /etc/volatile.cache.build: Per=
mission denied

/etc/rcS.d/S37populate-volatile.sh: line 56: /etc/volatile.cache.build: Per=
mission denied

/etc/rcS.d/S37populate-volatile.sh: line 56: /etc/volatile.cache.build: Per=
mission denied

/etc/rcS.d/S37populate-volatile.sh: line 86: /etc/volatile.cache.build: Per=
mission denied

/etc/rcS.d/S37populate-volatile.sh: line 86: /etc/volatile.cache.build: Per=
mission denied

/etc/rcS.d/S37populate-volatile.sh: line 86: /etc/volatile.cache.build: Per=
mission denied

/etc/rcS.d/S37populate-volatile.sh: line 86: /etc/volatile.cache.build: Per=
mission denied

/etc/rcS.d/S37populate-volatile.sh: line 86: /etc/volatile.cache.build: Per=
mission denied

/etc/rcS.d/S37populate-volatile.sh: line 56: /etc/volatile.cache.build: Per=
mission denied

rm: can't remove '/tmp': Permission denied

ln: /tmp/tmp: Permission denied

/etc/rcS.d/S37populate-volatile.sh: line 33: /etc/volatile.cache.build: Per=
mission denied

/etc/rcS.d/S37populate-volatile.sh: line 33: /etc/volatile.cache.build: Per=
mission denied

/etc/rcS.d/S37populate-volatile.sh: line 86: /etc/volatile.cache.build: Per=
mission denied

ln: /etc/resolv.conf: Permission denied

/etc/rcS.d/S37populate-volatile.sh: line 33: /etc/volatile.cache.build: Per=
mission denied

/etc/rcS.d/S37populate-volatile.sh: line 33: /etc/volatile.cache.build: Per=
mission denied

/etc/rcS.d/S37populate-volatile.sh: line 56: /etc/volatile.cache.build: Per=
mission denied

/etc/rcS.d/S37populate-volatile.sh: line 33: /etc/volatile.cache.build: Per=
mission denied

Wed Dec 10 10:00:44 UTC 2014

INIT: Entering runlevel: 5

Configuring network interfaces... ifup skipped for nfsroot interface eth0

run-parts: /etc/network/if-pre-up.d/nfsroot exited with code 1

mkdir: can't create directory '/etc/ssh': Permission denied

Starting rpcbind daemon...done.

creating NFS state directory: mkdir: can't create directory '/var/lib/nfs':=
 Permission denied

mkdir: can't create directory 'rpc_pipefs': Permission denied

mkdir: can't create directory 'sm': Permission denied

mkdir: can't create directory 'sm.bak': Permission denied

mkdir: can't create directory 'statd': Permission denied

chown: sm: No such file or directory

chown: sm.bak: No such file or directory

chown: statd: Operation not permitted

rm: can't remove 'statd/state': Permission denied

/etc/rc5.d/S19nfscommon: line 42: statd/state: Permission denied

chown: /var/lib/nfs: Operation not permitted

done

starting statd: done

Starting syslogd/klogd: done



Poky (Yocto Project Reference Distro) 1.7 wandboard-quad /dev/ttymxc0



wandboard-quad login:



Von: Heise, Matthias
Gesendet: Mittwoch, 10. Dezember 2014 09:31
An: 'Jim Rafert'; yocto@yoctoproject.org
Betreff: AW: [yocto] nfs-boot problem

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
An: Heise, Matthias; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
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


--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A79MSSRVS5atlasd_
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.SprechblasentextZchn
	{mso-style-name:"Sprechblasentext Zchn";
	mso-style-priority:99;
	mso-style-link:Sprechblasentext;
	font-family:"Tahoma","sans-serif";}
p.msochpdefault, li.msochpdefault, div.msochpdefault
	{mso-style-name:msochpdefault;
	mso-style-priority:99;
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Calibri","sans-serif";}
span.e-mailformatvorlage17
	{mso-style-name:e-mailformatvorlage17;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.E-MailFormatvorlage22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.E-MailFormatvorlage23
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
/* List Definitions */
@list l0
	{mso-list-id:1600723234;
	mso-list-type:hybrid;
	mso-list-template-ids:986842702 67567631 67567641 67567643 67567631 675676=
41 67567643 67567631 67567641 67567643;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DDE link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-US=
>Update : <o:p></o:p></span></p><p class=3DMsoListParagraph style=3D'text-i=
ndent:-18.0pt;mso-list:l0 level1 lfo1'><![if !supportLists]><span lang=3DEN=
-US><span style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]=
><span lang=3DEN-US>I added a &#8222;rw&#8220; obviously at the right place=
 as the nfs filesystem isn&#8217;t marked as read-only anymore. Still there=
 obviously is some write/rights issue as I get a lot of permission-related =
logs. &nbsp;(see below) <o:p></o:p></span></p><p class=3DMsoListParagraph s=
tyle=3D'text-indent:-18.0pt;mso-list:l0 level1 lfo1'><![if !supportLists]><=
span lang=3DEN-US><span style=3D'mso-list:Ignore'>2.<span style=3D'font:7.0=
pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></=
span><![endif]><span lang=3DEN-US>About the rootfs : I tried the unpacked f=
ilesystem from the *.tar.bz2 &nbsp;and it doesn&#8217;t work&#8230;(process=
 just stops after the ALSA device list) why wouldn&#8217;t it ?<o:p></o:p><=
/span></p><p class=3DMsoListParagraph><span lang=3DEN-US>Do you have any id=
eas to that ?<o:p></o:p></span></p><p class=3DMsoListParagraph><span lang=
=3DEN-US>Thank you <o:p></o:p></span></p><p class=3DMsoListParagraph><span =
lang=3DEN-US>Regards,<o:p></o:p></span></p><p class=3DMsoListParagraph><spa=
n lang=3DEN-US>Mat<o:p></o:p></span></p><p class=3DMsoListParagraph><span l=
ang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3D=
MsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>IPv6: ADDRCONF(=
NETDEV_CHANGE): eth0: link becomes ready<o:p></o:p></span></p><p class=3DMs=
oListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>IP-Config: Guessi=
ng netmask 255.255.255.0<o:p></o:p></span></p><p class=3DMsoListParagraph><=
span lang=3DEN-US style=3D'color:#1F497D'>IP-Config: Complete:<o:p></o:p></=
span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F4=
97D'>&nbsp;&nbsp;&nbsp;&nbsp; device=3Deth0, hwaddr=3D00:1f:7b:b4:12:00, ip=
addr=3D192.168.1.2, mask=3D255.255.255.0, gw=3D255.255.255.255<o:p></o:p></=
span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F4=
97D'>&nbsp;&nbsp;&nbsp;&nbsp; host=3D192.168.1.2, domain=3D, nis-domain=3D(=
none)<o:p></o:p></span></p><p class=3DMsoListParagraph><span lang=3DEN-US s=
tyle=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp;&nbsp; bootserver=3D255.255.255.25=
5, rootserver=3D192.168.1.1, rootpath=3D<o:p></o:p></span></p><p class=3DMs=
oListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>ALSA device list:=
<o:p></o:p></span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=
=3D'color:#1F497D'>&nbsp; #0: imx6-wandboard-sgtl5000<o:p></o:p></span></p>=
<p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>&nbs=
p; #1: imx-spdif<o:p></o:p></span></p><p class=3DMsoListParagraph><span lan=
g=3DEN-US style=3D'color:#1F497D'>&nbsp; #2: imx-hdmi-soc<o:p></o:p></span>=
</p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>=
VFS: Mounted root (nfs filesystem) on device 0:11.<o:p></o:p></span></p><p =
class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>devtmpf=
s: mounted<o:p></o:p></span></p><p class=3DMsoListParagraph><span lang=3DEN=
-US style=3D'color:#1F497D'>Freeing unused kernel memory: 272K (80c43000 - =
80c87000)<o:p></o:p></span></p><p class=3DMsoListParagraph><span lang=3DEN-=
US style=3D'color:#1F497D'>INIT: version 2.88 booting<o:p></o:p></span></p>=
<p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>Star=
ting udev<o:p></o:p></span></p><p class=3DMsoListParagraph><span lang=3DEN-=
US style=3D'color:#1F497D'>udevd[171]: starting version 182<o:p></o:p></spa=
n></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D=
'>bootlogd: cannot allocate pseudo tty: No such file or directory<o:p></o:p=
></span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#=
1F497D'>urandom start: failed.<o:p></o:p></span></p><p class=3DMsoListParag=
raph><span lang=3DEN-US style=3D'color:#1F497D'>Populating dev cache<o:p></=
o:p></span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'colo=
r:#1F497D'>/etc/rcS.d/S36udev-cache: line 33: /etc/udev-cache.tar.gz: Permi=
ssion denied<o:p></o:p></span></p><p class=3DMsoListParagraph><span lang=3D=
EN-US style=3D'color:#1F497D'>/etc/rcS.d/S37populate-volatile.sh: line 56: =
/etc/volatile.cache.build: Permission denied<o:p></o:p></span></p><p class=
=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>/etc/rcS.d/S=
37populate-volatile.sh: line 56: /etc/volatile.cache.build: Permission deni=
ed<o:p></o:p></span></p><p class=3DMsoListParagraph><span lang=3DEN-US styl=
e=3D'color:#1F497D'>/etc/rcS.d/S37populate-volatile.sh: line 56: /etc/volat=
ile.cache.build: Permission denied<o:p></o:p></span></p><p class=3DMsoListP=
aragraph><span lang=3DEN-US style=3D'color:#1F497D'>/etc/rcS.d/S37populate-=
volatile.sh: line 86: /etc/volatile.cache.build: Permission denied<o:p></o:=
p></span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:=
#1F497D'>/etc/rcS.d/S37populate-volatile.sh: line 86: /etc/volatile.cache.b=
uild: Permission denied<o:p></o:p></span></p><p class=3DMsoListParagraph><s=
pan lang=3DEN-US style=3D'color:#1F497D'>/etc/rcS.d/S37populate-volatile.sh=
: line 86: /etc/volatile.cache.build: Permission denied<o:p></o:p></span></=
p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>/e=
tc/rcS.d/S37populate-volatile.sh: line 86: /etc/volatile.cache.build: Permi=
ssion denied<o:p></o:p></span></p><p class=3DMsoListParagraph><span lang=3D=
EN-US style=3D'color:#1F497D'>/etc/rcS.d/S37populate-volatile.sh: line 86: =
/etc/volatile.cache.build: Permission denied<o:p></o:p></span></p><p class=
=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>/etc/rcS.d/S=
37populate-volatile.sh: line 56: /etc/volatile.cache.build: Permission deni=
ed<o:p></o:p></span></p><p class=3DMsoListParagraph><span lang=3DEN-US styl=
e=3D'color:#1F497D'>rm: can't remove '/tmp': Permission denied<o:p></o:p></=
span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F4=
97D'>ln: /tmp/tmp: Permission denied<o:p></o:p></span></p><p class=3DMsoLis=
tParagraph><span lang=3DEN-US style=3D'color:#1F497D'>/etc/rcS.d/S37populat=
e-volatile.sh: line 33: /etc/volatile.cache.build: Permission denied<o:p></=
o:p></span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'colo=
r:#1F497D'>/etc/rcS.d/S37populate-volatile.sh: line 33: /etc/volatile.cache=
.build: Permission denied<o:p></o:p></span></p><p class=3DMsoListParagraph>=
<span lang=3DEN-US style=3D'color:#1F497D'>/etc/rcS.d/S37populate-volatile.=
sh: line 86: /etc/volatile.cache.build: Permission denied<o:p></o:p></span>=
</p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>=
ln: /etc/resolv.conf: Permission denied<o:p></o:p></span></p><p class=3DMso=
ListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>/etc/rcS.d/S37popu=
late-volatile.sh: line 33: /etc/volatile.cache.build: Permission denied<o:p=
></o:p></span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'c=
olor:#1F497D'>/etc/rcS.d/S37populate-volatile.sh: line 33: /etc/volatile.ca=
che.build: Permission denied<o:p></o:p></span></p><p class=3DMsoListParagra=
ph><span lang=3DEN-US style=3D'color:#1F497D'>/etc/rcS.d/S37populate-volati=
le.sh: line 56: /etc/volatile.cache.build: Permission denied<o:p></o:p></sp=
an></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497=
D'>/etc/rcS.d/S37populate-volatile.sh: line 33: /etc/volatile.cache.build: =
Permission denied<o:p></o:p></span></p><p class=3DMsoListParagraph><span la=
ng=3DEN-US style=3D'color:#1F497D'>Wed Dec 10 10:00:44 UTC 2014<o:p></o:p><=
/span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F=
497D'>INIT: Entering runlevel: 5<o:p></o:p></span></p><p class=3DMsoListPar=
agraph><span lang=3DEN-US style=3D'color:#1F497D'>Configuring network inter=
faces... ifup skipped for nfsroot interface eth0<o:p></o:p></span></p><p cl=
ass=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>run-parts=
: /etc/network/if-pre-up.d/nfsroot exited with code 1<o:p></o:p></span></p>=
<p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>mkdi=
r: can't create directory '/etc/ssh': Permission denied<o:p></o:p></span></=
p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>St=
arting rpcbind daemon...done.<o:p></o:p></span></p><p class=3DMsoListParagr=
aph><span lang=3DEN-US style=3D'color:#1F497D'>creating NFS state directory=
: mkdir: can't create directory '/var/lib/nfs': Permission denied<o:p></o:p=
></span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#=
1F497D'>mkdir: can't create directory 'rpc_pipefs': Permission denied<o:p><=
/o:p></span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'col=
or:#1F497D'>mkdir: can't create directory 'sm': Permission denied<o:p></o:p=
></span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#=
1F497D'>mkdir: can't create directory 'sm.bak': Permission denied<o:p></o:p=
></span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#=
1F497D'>mkdir: can't create directory 'statd': Permission denied<o:p></o:p>=
</span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1=
F497D'>chown: sm: No such file or directory<o:p></o:p></span></p><p class=
=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>chown: sm.ba=
k: No such file or directory<o:p></o:p></span></p><p class=3DMsoListParagra=
ph><span lang=3DEN-US style=3D'color:#1F497D'>chown: statd: Operation not p=
ermitted<o:p></o:p></span></p><p class=3DMsoListParagraph><span lang=3DEN-U=
S style=3D'color:#1F497D'>rm: can't remove 'statd/state': Permission denied=
<o:p></o:p></span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=
=3D'color:#1F497D'>/etc/rc5.d/S19nfscommon: line 42: statd/state: Permissio=
n denied<o:p></o:p></span></p><p class=3DMsoListParagraph><span lang=3DEN-U=
S style=3D'color:#1F497D'>chown: /var/lib/nfs: Operation not permitted<o:p>=
</o:p></span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'co=
lor:#1F497D'>done<o:p></o:p></span></p><p class=3DMsoListParagraph><span la=
ng=3DEN-US style=3D'color:#1F497D'>starting statd: done<o:p></o:p></span></=
p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>St=
arting syslogd/klogd: done<o:p></o:p></span></p><p class=3DMsoListParagraph=
><span lang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'>Poky (Y=
octo Project Reference Distro) 1.7 wandboard-quad /dev/ttymxc0<o:p></o:p></=
span></p><p class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F4=
97D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoListParagraph><span lang=3DE=
N-US style=3D'color:#1F497D'>wandboard-quad login: <o:p></o:p></span></p><p=
 class=3DMsoListParagraph><span lang=3DEN-US style=3D'color:#1F497D'><o:p>&=
nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</=
o:p></span></p><div style=3D'border:none;border-left:solid blue 1.5pt;paddi=
ng:0cm 0cm 0cm 4.0pt'><div><div style=3D'border:none;border-top:solid #B5C4=
DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal><b><span style=3D'=
font-size:10.0pt;font-family:"Tahoma","sans-serif"'>Von:</span></b><span st=
yle=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> Heise, Matthias=
 <br><b>Gesendet:</b> Mittwoch, 10. Dezember 2014 09:31<br><b>An:</b> 'Jim =
Rafert'; yocto@yoctoproject.org<br><b>Betreff:</b> AW: [yocto] nfs-boot pro=
blem<o:p></o:p></span></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p=
></p><p class=3DMsoNormal><span lang=3DEN-US>Hello Jim,<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US>thank you for your reply, yes in =
the meantime I found out why that nfsroot path isn&#8217;t set correctly, t=
here is a wrong line in the &#8220;wandboard.h&#8221; in u-boot. <o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US>Now the regarding line =
looks like this<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S style=3D'color:#1F497D'>Kernel command line: console=3Dttymxc0,115200 roo=
t=3D/dev/nfs ip=3Ddhcp nfsroot=3D192.168.1.1:/home/theuser/linktorootfs,v3,=
tcp<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Which seem=
s to be correct as the system starts now. The &#8220;rootpath&#8221; howeve=
r is still empty.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US>The remaining problem I have is a write problem, somewhere a &#8220;rw&=
#8221; setting seems to be missing, although the &#8220;mount&#8221; comman=
d tells that the filesystem is mounted &#8220;rw&#8221;.<o:p></o:p></span><=
/p><p class=3DMsoNormal><span lang=3DEN-US>As to the rootfs, this folder &n=
bsp;<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'=
font-family:"Courier New","serif";color:black'>fsl-community-bsp/build/tmp/=
work/wandboard_quad-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs<o:p=
></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>seems to be exact=
ly the structure that is packed into the image.tar.bz2 so I thought it is a=
 good idea to directly use it as nfs share. Is there some reason not to do =
so ?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Thank you=
 <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Regards,<o:p=
></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Mat<o:p></o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp=
;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p>=
</span></p><div style=3D'border:none;border-left:solid blue 1.5pt;padding:0=
cm 0cm 0cm 4.0pt'><div><div style=3D'border:none;border-top:solid #B5C4DF 1=
.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal><b><span style=3D'font=
-size:10.0pt;font-family:"Tahoma","sans-serif"'>Von:</span></b><span style=
=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> Jim Rafert [<a hre=
f=3D"mailto:jimr@spectralogic.com">mailto:jimr@spectralogic.com</a>] <br><b=
>Gesendet:</b> Dienstag, 9. Dezember 2014 17:28<br><b>An:</b> Heise, Matthi=
as; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
><b>Betreff:</b> RE: [yocto] nfs-boot problem<o:p></o:p></span></p></div></=
div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal sty=
le=3D'margin-bottom:12.0pt'><span style=3D'font-size:10.0pt;font-family:"Ta=
homa","sans-serif";color:black'>Hi Matthias,<br><br>Sorry, I missed the ker=
nel command line in all the other gobbledy-gook put out by the boot.<br></s=
pan><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","sans=
-serif";color:#4F81BD'>Kernel command line: console=3Dttymxc0,115200 root=
=3D/dev/nfs ip=3Ddhcp <span style=3D'background:lime'>nfsroot=3D:,v3,tcp</s=
pan><br></span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ta=
homa","sans-serif";color:black'>That doesn't look right to me.<br><br>-Jim-=
</span><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";co=
lor:black'><o:p></o:p></span></p><div><p class=3DMsoNormal><span style=3D'f=
ont-size:10.0pt;font-family:"Tahoma","sans-serif";color:black'><o:p>&nbsp;<=
/o:p></span></p><div><p class=3DMsoNormal><span style=3D'font-size:10.0pt;f=
ont-family:"Tahoma","sans-serif";color:black'><o:p>&nbsp;</o:p></span></p><=
/div></div><div><div class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><span style=3D'font-size:12.0pt;font-family:"Times New Roman","serif=
";color:black'><hr size=3D2 width=3D"100%" align=3Dcenter></span></div><div=
 id=3DdivRpF775631><p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><b><=
span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";color:blac=
k'>From:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sa=
ns-serif";color:black'> <a href=3D"mailto:Matthias.Heise@atlas-elektronik.c=
om">Matthias.Heise@atlas-elektronik.com</a> [Matthias.Heise@atlas-elektroni=
k.com]<br><b>Sent:</b> Tuesday, December 09, 2014 5:17 AM<br><b>To:</b> <a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><b>Sub=
ject:</b> [yocto] nfs-boot problem</span><span style=3D'font-size:12.0pt;fo=
nt-family:"Times New Roman","serif";color:black'><o:p></o:p></span></p></di=
v><div><div><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>H=
ello,</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'color:black'>&nbsp;</span><span style=
=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'color:black'>I&#8217;m struggling getting my wandboard booting=
 via tftp/nfs. </span><span style=3D'color:black'><o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>The first part w=
as easy I just set up the tftp server and pointed it to the kernel image an=
d *.dtb file, </span><span style=3D'color:black'><o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>in the wandboard.=
h of u-boot I set </span><span style=3D'color:black'><o:p></o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>&nbsp;</span>=
<span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><spa=
n lang=3DEN-US style=3D'color:#4F81BD'>#define CONFIG_BOOTCOMMAND \</span><=
span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;=
run netboot;&quot; </span><span style=3D'color:black'><o:p></o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>&nbsp;</span=
><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US style=3D'color:black'>The kernel starts ok I think : </span=
><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US style=3D'color:black'>&nbsp;</span><span style=3D'color:bla=
ck'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'=
color:#4F81BD'>U-Boot 2014.10+fslc+g5fd0b60 (Dec 09 2014 - 11:39:57)</span>=
<span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><spa=
n lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;</span><span style=3D'color:bl=
ack'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'color:#4F81BD'>CPU:&nbsp;&nbsp; Freescale i.MX6Q rev1.2 at 792 MHz</span><=
span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US style=3D'color:#4F81BD'>Reset cause: POR</span><span style=3D=
'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'color:#4F81BD'>Board: Wandboard</span><span style=3D'color:black'=
><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'col=
or:#4F81BD'>I2C:&nbsp;&nbsp; ready</span><span style=3D'color:black'><o:p><=
/o:p></span></p><p class=3DMsoNormal><span style=3D'color:#4F81BD'>DRAM:&nb=
sp; 2 GiB</span><span style=3D'color:black'><o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'color:#4F81BD'>MMC:&nbsp;&nbsp; FSL_SDHC: 0, FS=
L_SDHC: 1</span><span style=3D'color:black'><o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>*** Warning - bad C=
RC, using default environment</span><span style=3D'color:black'><o:p></o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>=
&nbsp;</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'color:#4F81BD'>auto-detected panel HDM=
I</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US style=3D'color:#4F81BD'>Display: HDMI (1024x768)</sp=
an><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US style=3D'color:#4F81BD'>In:&nbsp;&nbsp;&nbsp; serial</spa=
n><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US style=3D'color:#4F81BD'>Out:&nbsp;&nbsp; serial</span><spa=
n style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US style=3D'color:#4F81BD'>Err:&nbsp;&nbsp; serial</span><span styl=
e=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US style=3D'color:#4F81BD'>Net:&nbsp;&nbsp; FEC [PRIME]</span><span style=
=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'color:#4F81BD'>Hit any key to stop autoboot:&nbsp; 0 </span><s=
pan style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'color:#4F81BD'>Booting from net ...</span><span style=
=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'color:#4F81BD'>BOOTP broadcast 1</span><span style=3D'color:bl=
ack'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'color:#4F81BD'>DHCP client bound to address 10.42.0.84 (3 ms)</span><span =
style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:#4F81BD'>Using FEC device</span><span style=3D'colo=
r:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US styl=
e=3D'color:#4F81BD'>TFTP from server 10.42.0.1; our IP address is 10.42.0.8=
4</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US style=3D'color:#4F81BD'>Filename 'zImage'.</span><sp=
an style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'color:#4F81BD'>Load address: 0x12000000</span><span st=
yle=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:#4F81BD'>Loading: #################################=
################################</span><span style=3D'color:black'><o:p></o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81B=
D'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #######################=
##########################################</span><span style=3D'color:black=
'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'co=
lor:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #############=
####################################################</span><span style=3D'c=
olor:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US s=
tyle=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;###=
##############################################################</span><span =
style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; #################################################################</s=
pan><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; ##########################################################=
#######</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; ################################################=
#################</span><span style=3D'color:black'><o:p></o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ######################################=
###########################</span><span style=3D'color:black'><o:p></o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ############################=
#####################################</span><span style=3D'color:black'><o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#=
4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ##################=
###############################################</span><span style=3D'color:=
black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #######=
##########################################################</span><span styl=
e=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; #################################################################</span>=
<span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><spa=
n lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; ##############################################################=
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
##</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNo=
rmal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 8.4 MiB/s</span><span style=3D'color:black'><o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD=
'>done</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Bytes transferred =3D 5=
442656 (530c60 hex)</span><span style=3D'color:black'><o:p></o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>BOOTP broa=
dcast 1</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>DHCP client bound to a=
ddress 10.42.0.84 (2 ms)</span><span style=3D'color:black'><o:p></o:p></spa=
n></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Using=
 FEC device</span><span style=3D'color:black'><o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>TFTP from server 1=
0.42.0.1; our IP address is 10.42.0.84</span><span style=3D'color:black'><o=
:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:=
#4F81BD'>Filename 'imx6q-wandboard.dtb'.</span><span style=3D'color:black'>=
<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'colo=
r:#4F81BD'>Load address: 0x18000000</span><span style=3D'color:black'><o:p>=
</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F=
81BD'>Loading: #########</span><span style=3D'color:black'><o:p></o:p></spa=
n></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.1 MiB/s</span><span style=3D'=
color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#4F81BD'>done</span><span style=3D'color:black'><o:p></o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>B=
ytes transferred =3D 43370 (a96a hex)</span><span style=3D'color:black'><o:=
p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#4F81BD'>Kerne=
l image @ 0x12000000 [ 0x000000 - 0x530c60 ]</span><span style=3D'color:bla=
ck'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'=
color:#4F81BD'>## Flattened Device Tree blob at 18000000</span><span style=
=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'color:#4F81BD'>&nbsp;&nbsp; Booting using the fdt blob at 0x18=
000000</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp; Using Devi=
ce Tree in place at 18000000, end 1800d969</span><span style=3D'color:black=
'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'co=
lor:#4F81BD'>&nbsp;</span><span style=3D'color:black'><o:p></o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Starting k=
ernel ...</span><span style=3D'color:black'><o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;</span><span =
style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:#4F81BD'>Booting Linux on physical CPU 0x0</span><s=
pan style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'color:#4F81BD'>Linux version 3.10.17-1.0.1-wandboard+=
ga6e7fc5 (theuser@debianDevHost) (gcc version 4.9.1 (GCC) ) #1 SMP PREEMPT =
Fri Nov 28 15:51:4</span><span style=3D'color:black'><o:p></o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>CPU: ARMv7 =
Processor [412fc09a] revision 10 (ARMv7), cr=3D10c53c7d</span><span style=
=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'color:#4F81BD'>CPU: PIPT / VIPT nonaliasing data cache, VIPT a=
liasing instruction cache</span><span style=3D'color:black'><o:p></o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Mach=
ine: Freescale i.MX6 Quad/DualLite (Device Tree), model: Wandboard Quad bas=
ed on Freescale i.MX6 Quad</span><span style=3D'color:black'><o:p></o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Tru=
ncating RAM at 10000000-8fffffff to -7f7fffff (vmalloc region overlap).</sp=
an><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US style=3D'color:#4F81BD'>cma: CMA: reserved 256 MiB at 6e0=
00000</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Memory policy: ECC disab=
led, Data cache writealloc</span><span style=3D'color:black'><o:p></o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>PER=
CPU: Embedded 8 pages/cpu @81b57000 s8832 r8192 d15744 u32768</span><span s=
tyle=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:#4F81BD'>Built 1 zonelists in Zone order, mobility =
grouping on.&nbsp; Total pages: 453136</span><span style=3D'color:black'><o=
:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:=
#4F81BD'>Kernel command line: console=3Dttymxc0,115200 root=3D/dev/nfs ip=
=3Ddhcp nfsroot=3D:,v3,tcp</span><span style=3D'color:black'><o:p></o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>PID=
 hash table entries: 4096 (order: 2, 16384 bytes)</span><span style=3D'colo=
r:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US styl=
e=3D'color:#4F81BD'>Dentry cache hash table entries: 262144 (order: 8, 1048=
576 bytes)</span><span style=3D'color:black'><o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Inode-cache hash ta=
ble entries: 131072 (order: 7, 524288 bytes)</span><span style=3D'color:bla=
ck'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'=
color:#4F81BD'>Memory: 1784MB =3D 1784MB total</span><span style=3D'color:b=
lack'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#4F81BD'>Memory: 1534420k/1534420k available, 292396k reserved, 0=
K highmem</span><span style=3D'color:black'><o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Virtual kernel memo=
ry layout:</span><span style=3D'color:black'><o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp; =
vector&nbsp; : 0xffff0000 - 0xffff1000&nbsp;&nbsp; (&nbsp;&nbsp; 4 kB)</spa=
n><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp; fixmap&nbsp; : =
0xfff00000 - 0xfffe0000&nbsp;&nbsp; ( 896 kB)</span><span style=3D'color:bl=
ack'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'color:#4F81BD'>&nbsp;&nbsp;&nbsp; vmalloc : 0xf0000000 - 0xff000000&nbsp;&=
nbsp; ( 240 MB)</span><span style=3D'color:black'><o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&n=
bsp; lowmem&nbsp; : 0x80000000 - 0xef800000&nbsp;&nbsp; (1784 MB)</span><sp=
an style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp; modules : 0x7f000000=
 - 0x80000000&nbsp;&nbsp; (&nbsp; 16 MB)</span><span style=3D'color:black'>=
<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'colo=
r:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .text : 0x80008000 - 0x80c429c8&n=
bsp;&nbsp; (12523 kB)</span><span style=3D'color:black'><o:p></o:p></span><=
/p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; .init : 0x80c43000 - 0x80c87280&nbsp;&nbsp; ( 273 kB=
)</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; .data : 0x80c88000 - 0x80cd9700&nbsp;&nbsp; ( 326 kB)</span><span style=
=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .bss : 0x8=
0cd9700 - 0x80d3e8b8&nbsp;&nbsp; ( 405 kB)</span><span style=3D'color:black=
'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'co=
lor:#4F81BD'>SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, Nod=
es=3D1</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'color:#4F81BD'>Preemptible hierarchica=
l RCU implementation.</span><span style=3D'color:black'><o:p></o:p></span><=
/p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>&nbsp;</sp=
an><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US style=3D'color:black'>.....</span><span style=3D'color:bl=
ack'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'color:black'>&nbsp;</span><span style=3D'color:black'><o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>then it tri=
es to get the rootfs which fails. On the host I set up the nfs server and m=
ade some tests &#8211; it is accessible. </span><span style=3D'color:black'=
><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'col=
or:black'>&nbsp;</span><span style=3D'color:black'><o:p></o:p></span></p><p=
 class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US style=
=3D'color:#4F81BD'>VFP support v0.3: implementor 41 architecture 3 part 30 =
variant 9 rev 4</span><span style=3D'color:black'><o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US style=3D=
'color:#4F81BD'>snvs_rtc 20cc034.snvs-rtc-lp: setting system clock to 1970-=
01-01 00:00:01 UTC (1)</span><span style=3D'color:black'><o:p></o:p></span>=
</p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US s=
tyle=3D'color:#4F81BD'>fec 2188000.ethernet eth0: Freescale FEC PHY driver =
[Generic PHY] (mii_bus:phy_addr=3D2188000.ethernet:01, irq=3D-1)</span><spa=
n style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal style=3D=
'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>IPv6: ADDR=
CONF(NETDEV_UP): eth0: link is not ready</span><span style=3D'color:black'>=
<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><s=
pan lang=3DEN-US style=3D'color:#4F81BD'>libphy: 2188000.ethernet:01 - Link=
 is Up - 1000/Full</span><span style=3D'color:black'><o:p></o:p></span></p>=
<p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US style=
=3D'color:#4F81BD'>IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready<=
/span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNorma=
l style=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>=
Sending DHCP requests ., OK</span><span style=3D'color:black'><o:p></o:p></=
span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN=
-US style=3D'color:#4F81BD'>IP-Config: Got DHCP answer from 10.42.0.1, my a=
ddress is 10.42.0.84</span><span style=3D'color:black'><o:p></o:p></span></=
p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US sty=
le=3D'color:#4F81BD'>IP-Config: Complete:</span><span style=3D'color:black'=
><o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><=
span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp; device=
=3Deth0, hwaddr=3D00:1f:7b:b4:12:00, ipaddr=3D10.42.0.84, mask=3D255.255.25=
5.0, gw=3D10.42.0.1</span><span style=3D'color:black'><o:p></o:p></span></p=
><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US styl=
e=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp; host=3D10.42.0.84, domain=3D, =
nis-domain=3D(none)</span><span style=3D'color:black'><o:p></o:p></span></p=
><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US styl=
e=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp; bootserver=3D10.42.0.1, rootse=
rver=3D10.42.0.1, rootpath=3D</span><span style=3D'color:black'><o:p></o:p>=
</span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3D=
EN-US style=3D'color:#4F81BD'>&nbsp;&nbsp;&nbsp;&nbsp; nameserver0=3D10.42.=
0.1</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoN=
ormal style=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F81=
BD'>ALSA device list:</span><span style=3D'color:black'><o:p></o:p></span><=
/p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US st=
yle=3D'color:#4F81BD'>&nbsp; #0: imx6-wandboard-sgtl5000</span><span style=
=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-a=
utospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp; #1: imx-sp=
dif</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoN=
ormal style=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F81=
BD'>&nbsp; #2: imx-hdmi-soc</span><span style=3D'color:black'><o:p></o:p></=
span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN=
-US style=3D'color:#4F81BD'>VFS: Unable to mount root fs via NFS, trying fl=
oppy.</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMs=
oNormal style=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F=
81BD'>VFS: Cannot open root device &quot;nfs&quot; or unknown-block(2,0): e=
rror -6</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3D=
MsoNormal style=3D'text-autospace:none'><span lang=3DEN-US style=3D'color:#=
4F81BD'>Please append a correct &quot;root=3D&quot; boot option; here are t=
he available partitions:</span><span style=3D'color:black'><o:p></o:p></spa=
n></p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US=
 style=3D'color:#4F81BD'>b300&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 155=
58144 mmcblk0&nbsp; driver: mmcblk</span><span style=3D'color:black'><o:p><=
/o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span la=
ng=3DEN-US style=3D'color:#4F81BD'>&nbsp; b301&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8192 mmcblk0p1 000c648f-01</span><spa=
n style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal style=3D=
'text-autospace:none'><span lang=3DEN-US style=3D'color:#4F81BD'>&nbsp; b30=
2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 28672 mmcblk0=
p2 000c648f-02</span><span style=3D'color:black'><o:p></o:p></span></p><p c=
lass=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US style=3D'=
color:#4F81BD'>Kernel panic - not syncing: VFS: Unable to mount root fs on =
unknown-block(2,0)</span><span style=3D'color:black'><o:p></o:p></span></p>=
<p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US style=
=3D'color:#4F81BD'>CPU2: stopping</span><span style=3D'color:black'><o:p></=
o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span lan=
g=3DEN-US style=3D'color:#4F81BD'>CPU: 2 PID: 0 Comm: swapper/2 Not tainted=
 3.10.17-1.0.1-wandboard+ga6e7fc5</span><span lang=3DEN-US style=3D'font-fa=
mily:"Courier New","serif";color:#4F81BD'> </span><span style=3D'color:blac=
k'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'c=
olor:black'>&nbsp;</span><span style=3D'color:black'><o:p></o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>During the bo=
ot process I recognized two things in the log which I suspect to be not ok,=
 but wasn&#8217;t able to resolve them, these</span><span style=3D'color:bl=
ack'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'color:black'>are the empty nfsroot : &nbsp;</span><span lang=3DEN-US style=
=3D'color:#4F81BD'>Kernel command line: console=3Dttymxc0,115200 root=3D/de=
v/nfs ip=3Ddhcp nfsroot=3D:,v3,tcp</span><span style=3D'color:black'><o:p><=
/o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:blac=
k'>And the empty rootpath :</span><span lang=3DEN-US style=3D'color:#4F81BD=
'> bootserver=3D10.42.0.1, rootserver=3D10.42.0.1, rootpath=3D</span><span =
style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:black'>&nbsp;</span><span style=3D'color:black'><o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:b=
lack'>I tried to set them as CONFIG_EXTRA_ENV_SETTINGS &nbsp;but that didn&=
#8217;t succeed (was ignored or didn&#8217;t have any effect).</span><span =
style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'color:black'>Do you have a hint for me what could be wron=
g and how to resolve this ?</span><span style=3D'color:black'><o:p></o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>Also=
 (probably secondary problem) : I just set the folder </span><span lang=3DE=
N-US style=3D'font-family:"Courier New","serif";color:black'>fsl-community-=
bsp/build/tmp/work/wandboard_quad-poky-linux-gnueabi/core-image-minimal/1.0=
-r0/rootfs </span><span lang=3DEN-US style=3D'color:black'>in my /etc/expor=
ts file for the nfs, is that ok ? or which rootfs should I use? </span><spa=
n style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US style=3D'color:black'>Thank you very much,</span><span style=3D'=
color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:black'>Regards,</span><span style=3D'color:black'><o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:black'>M=
at</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNo=
rmal><span lang=3DEN-US style=3D'color:black'>&nbsp;</span><span style=3D'c=
olor:black'><o:p></o:p></span></p></div></div></div></div></div></div></div=
></body></html>=

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A79MSSRVS5atlasd_--
