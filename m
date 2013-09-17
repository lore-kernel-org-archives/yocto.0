Return-Path: <giuseppe.bitonti@external.magnetimarelli.com>
Received: from mx2.ex2007.fiatgroup.com (mx1.ex2007.fiatgroup.com
	[129.35.118.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 304D6E013D6
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 05:32:39 -0700 (PDT)
Received: from cshu05.fgremc.it (151.92.204.178) by mx1.ex2007.fiatgroup.com
	(151.88.80.13) with Microsoft SMTP Server (TLS) id 8.3.279.5;
	Tue, 17 Sep 2013 14:32:36 +0200
Received: from MXCL21.fgremc.it ([151.92.205.90]) by cshu05.fgremc.it
	([151.92.204.178]) with mapi; Tue, 17 Sep 2013 14:32:36 +0200
From: "BITONTI Giuseppe (MM)" <giuseppe.bitonti@external.magnetimarelli.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 17 Sep 2013 14:32:34 +0200
Thread-Topic: [yocto] Kernel debugging over serial console?
Thread-Index: Ac6zoYgHqWrsbQ9UT2mK6QhqMHwvPg==
Message-ID: <9E1CA21291B3664A8E8F31523A10D6BE160CFB9AC3@MXCL21.fgremc.it>
Accept-Language: it-IT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: it-IT
MIME-Version: 1.0
Subject: Kernel debugging over serial console?
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
X-List-Received-Date: Tue, 17 Sep 2013 12:32:41 -0000
Content-Language: it-IT
Content-Type: multipart/alternative;
	boundary="_000_9E1CA21291B3664A8E8F31523A10D6BE160CFB9AC3MXCL21fgremci_"

--_000_9E1CA21291B3664A8E8F31523A10D6BE160CFB9AC3MXCL21fgremci_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am trying to debug the kernel through kgdb for an imx6 sabre lite board w=
ith the following kernel built from poky 1.4:

root@imx6qsabrelite:~# uname -a
Linux imx6qsabrelite 3.0.35-1.1.0+g2dc5560 #1 SMP PREEMPT Thu Aug 8 15:15:3=
9 CEST 2013 armv7l GNU/Linux

The system boot well but when I try to enter in debugging mode it returns:

root@imx6qsabrelite:~# echo g > /proc/sysrq-trigger
SysRq : HELP : loglevel(0-9) reBoot Crash terminate-all-tasks(E) memory-ful=
l-oom-kill(F) kill-all-tasks(I) thaw-filesystems(J) saK show-backtrace-all-=
active-cpus(L) show-memory-usage(M) nice-all-RT-tasks(N) powerOff show-regi=
sters(P) show-all-timers(Q) unRaw Sync show-task-states(T) Unmount ETM buff=
er dump show-blocked-tasks(W)
root@imx6qsabrelite:~#

I have configured the kernel with the command:

bitbake -c menuconfig linux-imx

enabling:

-*- Magic SysRq key
[*] Kernel debugging
[*] Compile the kernel with debug info
[*] KGDB: kernel debugger
<*> KGDB: use kgdb over the serial console

I have also edited defconfig file in fsl-community-bsp-dylan/sources/meta-f=
sl-arm/recipes-kernel/linux/linux-imx-3.0.35/mx6q/ adding:

CONFIG_FRAME_POINTER=3Dy
CONFIG_DEBUG_KERNEL=3Dy
CONFIG_KGDB=3Dy
CONFIG_DEBUG_INFO=3Dy
CONFIG_KGDB_SERIAL_CONSOLE=3Dy
CONFIG_MAGIC_SYSRQ=3Dy

and added kernel parameter to bootargs with:

MX6QSABRELITE U-Boot > editenv mmcargs
edit: setenv bootargs console=3D${console},${baudrate} root=3D${mmcroot} kg=
dboc=3Dttymxc1,115200
MX6QSABRELITE U-Boot > saveenv
Saving Environment to MMC...
Writing to MMC(0)... done
MX6QSABRELITE U-Boot > boot

but it still does not work.

Thank You.

Giuseppe



--_000_9E1CA21291B3664A8E8F31523A10D6BE160CFB9AC3MXCL21fgremci_
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
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.StileMessaggioDiPostaElettronica17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.hps
	{mso-style-name:hps;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>I am trying to d=
ebug the kernel through kgdb for an imx6 sabre lite board with the followin=
g kernel built from poky 1.4:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp=
;</o:p></p><p class=3DMsoNormal>root@imx6qsabrelite:~# uname -a<o:p></o:p><=
/p><p class=3DMsoNormal>Linux imx6qsabrelite 3.0.35-1.1.0+g2dc5560 #1 SMP P=
REEMPT Thu Aug 8 15:15:39 CEST 2013 armv7l GNU/Linux<o:p></o:p></p><p class=
=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>The system boot well=
 but when I try to enter in debugging mode it returns:<o:p></o:p></p><p cla=
ss=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>root@imx6qsabrelit=
e:~# echo g &gt; /proc/sysrq-trigger<o:p></o:p></p><p class=3DMsoNormal>Sys=
Rq : HELP : loglevel(0-9) reBoot Crash terminate-all-tasks(E) memory-full-o=
om-kill(F) kill-all-tasks(I) thaw-filesystems(J) saK show-backtrace-all-act=
ive-cpus(L) show-memory-usage(M) nice-all-RT-tasks(N) powerOff show-registe=
rs(P) show-all-timers(Q) unRaw Sync show-task-states(T) Unmount ETM buffer =
dump show-blocked-tasks(W) <o:p></o:p></p><p class=3DMsoNormal>root@imx6qsa=
brelite:~#<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=
=3DMsoNormal>I have configured the kernel with the command:<o:p></o:p></p><=
p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>bitbake -c me=
nuconfig linux-imx<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p>=
<p class=3DMsoNormal>enabling:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbs=
p;</o:p></p><p class=3DMsoNormal>-*- Magic SysRq key<o:p></o:p></p><p class=
=3DMsoNormal>[*] Kernel debugging<o:p></o:p></p><p class=3DMsoNormal>[*] Co=
mpile the kernel with debug info<o:p></o:p></p><p class=3DMsoNormal>[*] KGD=
B: kernel debugger<o:p></o:p></p><p class=3DMsoNormal>&lt;*&gt; KGDB: use k=
gdb over the serial console<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;<=
/o:p></p><p class=3DMsoNormal>I have also edited defconfig file in fsl-comm=
unity-bsp-dylan/sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/=
mx6q/ adding:<o:p></o:p></p><p>CONFIG_FRAME_POINTER=3Dy<br>CONFIG_DEBUG_KER=
NEL=3Dy<br>CONFIG_KGDB=3Dy<br>CONFIG_DEBUG_INFO=3Dy<br>CONFIG_KGDB_SERIAL_C=
ONSOLE=3Dy<br>CONFIG_MAGIC_SYSRQ=3Dy<o:p></o:p></p><p>and added kernel para=
meter to bootargs with:<o:p></o:p></p><p>MX6QSABRELITE U-Boot &gt; editenv =
mmcargs<br>edit: setenv bootargs console=3D${console},${baudrate} root=3D${=
mmcroot} kgdboc=3Dttymxc1,115200<br>MX6QSABRELITE U-Boot &gt; saveenv<br>Sa=
ving Environment to MMC...<br>Writing to MMC(0)... done<br>MX6QSABRELITE U-=
Boot &gt; boot<o:p></o:p></p><p>but it still <span class=3Dhps><span lang=
=3DEN>does not work.<o:p></o:p></span></span></p><p><span class=3Dhps><span=
 lang=3DEN>Thank You.<o:p></o:p></span></span></p><p><span class=3Dhps><spa=
n lang=3DEN>Giuseppe</span></span><o:p></o:p></p><p class=3DMsoNormal><o:p>=
&nbsp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></ht=
ml>=

--_000_9E1CA21291B3664A8E8F31523A10D6BE160CFB9AC3MXCL21fgremci_--
