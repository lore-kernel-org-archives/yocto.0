Received: from smtprelay.hostedemail.com (smtprelay.hostedemail.com [216.40.44.51])
 by mx.groups.io with SMTP id smtpd.web12.9376.1575888052442907349
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 02:40:52 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sdcsystems.com, ip: 216.40.44.51, mailfrom: andy.pont@sdcsystems.com)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 70E5F1802CCB8
	for <yocto@lists.yoctoproject.org>; Mon,  9 Dec 2019 10:40:51 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,andy.pont@sdcsystems.com,:,RULES_HIT:41:152:355:379:962:966:988:989:1189:1221:1260:1261:1313:1314:1345:1381:1437:1516:1517:1518:1534:1541:1575:1588:1589:1594:1711:1730:1775:1792:2196:2198:2199:2200:2527:2557:2559:2562:2897:3138:3139:3140:3141:3142:3352:3865:3867:3868:3870:3871:3874:4385:4605:5007:6119:6670:7652:7903:8603:9010:9040:10004:10216:10400:10848:11026:11656:11657:11658:11783:11914:12043:12438:12663:12679:13061:13071:13139:13161:13184:13229:13618:14180:14181:14659:14721:21080:21095:21325:21433:21451:21627:21740:30030:30045:30054,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: cloud13_7694d0c0e905
X-Filterd-Recvd-Size: 4053
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA
	for <yocto@lists.yoctoproject.org>; Mon,  9 Dec 2019 10:40:50 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: yocto@lists.yoctoproject.org
Subject: Issues with alsa-state
Date: Mon, 09 Dec 2019 10:40:49 +0000
Message-Id: <em1763c91f-0c32-4204-a356-e16cc8d266ad@andys-imac.leeshillfarm.local>
Reply-To: "Andy Pont" <andy.pont@sdcsystems.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------=_MBDBEA9EFB-2299-46B8-B0D5-CE8E04695E5E"

--------=_MBDBEA9EFB-2299-46B8-B0D5-CE8E04695E5E
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello!=0A=0AI am trying to add a custom asound.state file into my Zeus base=
d i.MX6 =0Aimage.  I have created a custom .bbappend file with the followin=
g =0Acontents:=0A=0AFILESEXTRAPATHS_prepend_mx6 :=3D "${THISDIR}/${PN}/imx:=
=E2=80=9D=0APACKAGE_ARCH_mx6 =3D "${MACHINE_ARCH}=E2=80=9D=0A=0AThe output=
 from:=0A=0A     $ bitbake-layers show-appends | grep alsa=0A=0Ais (some nam=
es changed to protect the guilty):=0A=0A     alsa-state.bb:=0A       =0A/ho=
me/.../sources/meta-freescale/recipes-bsp/alsa-state/alsa-state.bbappend=0A=
       =0A/home/.../sources/meta-boundary/recipes-bsp/alsa-state/alsa-state=
.bbappend=0A       =0A/home/.../sources/meta-project/recipes-bsp/alsa-state=
/alsa-state.bbappend=0A=0AThe file that is included in the image is the one =
from the meta-boundary =0Alayer and not the one from my =E2=80=9Cmeta-proj=
ect=E2=80=9D layer.  Is there some way =0Ato make my layer take priority or =
do I need to try to exclude the =0Aalsa-state recipes from the meta-freesc=
ale and meta-boundary layers =0Ausing BBMASK?=0A=0A-Andy.=0A=0A

--------=_MBDBEA9EFB-2299-46B8-B0D5-CE8E04695E5E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div>Hello!</div><div><br /></div>=0A<div>I am trying t=
o add a custom asound.state file into my Zeus based i.MX6 image. =C2=A0I ha=
ve created a custom .bbappend file with the following contents:</div><div><=
br /></div><div>FILESEXTRAPATHS_prepend_mx6 :=3D "${THISDIR}/${PN}/imx:=E2=
=80=9D</div><div>PACKAGE_ARCH_mx6 =3D "${MACHINE_ARCH}=E2=80=9D</div><div><=
br /></div><div>The output from:</div><div><br /></div><div>=C2=A0 =C2=A0 $ =
bitbake-layers show-appends | grep alsa</div><div><br /></div><div>is (som=
e names changed to protect the guilty):</div><div><br /></div><div>=C2=A0 =
=C2=A0 alsa-state.bb:<br />=C2=A0 =C2=A0 =C2=A0 /home/.../sources/meta-fre=
escale/recipes-bsp/alsa-state/alsa-state.bbappend<br />=C2=A0 =C2=A0 =C2=A0 =
/home/.../sources/meta-boundary/recipes-bsp/alsa-state/alsa-state.bbappend=
<br />=C2=A0 =C2=A0 =C2=A0 /home/.../sources/meta-project/recipes-bsp/alsa-=
state/alsa-state.bbappend</div><div><br /></div><div>The file that is inclu=
ded in the image is the one from the meta-boundary layer and not the one fr=
om my =E2=80=9Cmeta-project=E2=80=9D layer. =C2=A0Is there some way to make =
my layer take priority or do I need to try to exclude the alsa-state recip=
es from the meta-freescale and meta-boundary layers using BBMASK?</div><div=
><br /></div><div>-Andy.</div><div><br /></div><div><br /></div>=0A</body><=
/html>

--------=_MBDBEA9EFB-2299-46B8-B0D5-CE8E04695E5E--
