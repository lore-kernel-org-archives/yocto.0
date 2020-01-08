Received: from smtprelay.hostedemail.com (smtprelay.hostedemail.com [216.40.44.178])
 by mx.groups.io with SMTP id smtpd.web09.7838.1578491055843585685
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 05:44:16 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sdcsystems.com, ip: 216.40.44.178, mailfrom: andy.pont@sdcsystems.com)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id CB20118224D93;
	Wed,  8 Jan 2020 13:44:14 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,andy.pont@sdcsystems.com,:::,RULES_HIT:41:152:355:379:962:966:988:989:1189:1221:1260:1261:1313:1314:1345:1437:1516:1517:1518:1534:1541:1575:1588:1589:1594:1711:1730:1775:1792:2196:2198:2199:2200:2527:2559:2562:2693:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3874:4385:5007:6609:7652:7903:8603:8666:9010:9040:10004:10400:11026:11473:11656:11657:11658:11914:12043:12438:12663:12895:13061:13071:13139:13151:13228:13869:14180:14181:14659:14721:21080:21325:21433:21451:21627:21740:30005:30054,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: cub19_7e0c74068d1f
X-Filterd-Recvd-Size: 4425
Received: from [192.168.10.100] (leeshill.plus.com [81.174.243.117])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf17.hostedemail.com (Postfix) with ESMTPA;
	Wed,  8 Jan 2020 13:44:13 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "meta-freescale@lists.yoctoproject.org"
 <meta-freescale@lists.yoctoproject.org>
Subject: i.MX6 screen rotation
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Date: Wed, 08 Jan 2020 13:44:12 +0000
Message-Id: <em2f6fb73f-c8b6-4fa3-94c2-e530827f90ec@andys-imac.leeshillfarm.local>
Reply-To: "Andy Pont" <andy.pont@sdcsystems.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------=_MB01776124-C363-4312-873C-A78CFF8D0661"

--------=_MB01776124-C363-4312-873C-A78CFF8D0661
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,=0A=0AI=E2=80=99m not sure whether this is a hardware issue, Linux ke=
rnel issue or a =0AYocto issue but as some of the finest minds are on the m=
ailing lists I =0Afigured it was a good place to start! Enough flattery? :-=
)=0A=0AWe are using a Boundary Devices Nitrogen6X Lite (i.MX6S) board as a=
 demo =0Aplatform for a project using the linux-boundary 4.14.98 kernel.   T=
he =0ABoundary Devices kernel is more-or-less the same as the Freescale ker=
nel =0Aimx_4.14.x_2.0.0_ga.=0A=0AI am trying to get framebuffer rotation to =
work so that I can rotate the =0Aframebuffer console (on fb0) through 90 d=
egrees.  I have the kernel =0Aconfiguration option CONFIG_FRAMEBUFFER_CONSO=
LE_ROTATION enabled and am =0Atrying to run some tests by setting values th=
rough =0A/sys/class/graphics/fb0/rotate and /sys/class/graphics/fbcon/rotat=
e.=0A=0AI have used fb-test to display an image onto the screen and if I wr=
ite =0A=E2=80=9C1=E2=80=9D to /sys/class/graphics/fb0/rotate then the displ=
ay flips and looks =0Agreat when viewed in a mirror.  No amount of trying t=
o set other values =0Awill rotate the screen through 90 or 270 degrees.=0A=
=0AIs there an issue with rotation on the i.MX6 or is there a configuration =
=0Asetting that I am missing somewhere?=0A=0A-Andy.

--------=_MB01776124-C363-4312-873C-A78CFF8D0661
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div>Hello,</div><div><br /></div><div>I=E2=80=99m not=
 sure whether this is a hardware issue, Linux kernel issue or a Yocto issue=
 but as some of the finest minds are on the mailing lists I figured it was a =
good place to start! Enough flattery? :-)</div><div><br /></div><div>We ar=
e using a Boundary Devices Nitrogen6X Lite (i.MX6S) board as a demo platfor=
m for a project using the linux-boundary 4.14.98 kernel. =C2=A0 The Boundar=
y Devices kernel is more-or-less the same as the Freescale kernel imx_4.14.=
x_2.0.0_ga.</div><div><br /></div><div>I am trying to get framebuffer rotat=
ion to work so that I can rotate the framebuffer console (on fb0) through 9=
0 degrees. =C2=A0I have the kernel configuration option CONFIG_FRAMEBUFFER_=
CONSOLE_ROTATION enabled and am trying to run some tests by setting values=
 through /sys/class/graphics/fb0/rotate and /sys/class/graphics/fbcon/rotate=
.</div><div><br /></div><div>I have used fb-test to display an image onto t=
he screen and if I write =E2=80=9C1=E2=80=9D to /sys/class/graphics/fb0/rot=
ate then the display flips and looks great when viewed in a mirror. =C2=A0N=
o amount of trying to set other values will rotate the screen through 90 or =
270 degrees.</div><div><br /></div><div>Is there an issue with rotation on =
the i.MX6 or is there a configuration setting that I am missing somewhere?=
</div><div><br /></div><div>-Andy.</div>=0A</body></html>

--------=_MB01776124-C363-4312-873C-A78CFF8D0661--
