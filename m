Received: from smtprelay.hostedemail.com (smtprelay.hostedemail.com [216.40.44.128])
 by mx.groups.io with SMTP id smtpd.web12.8908.1578578338961783142
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 05:58:59 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sdcsystems.com, ip: 216.40.44.128, mailfrom: andy.pont@sdcsystems.com)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id E73B4181D341E;
	Thu,  9 Jan 2020 13:58:57 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,andy.pont@sdcsystems.com,:::,RULES_HIT:41:72:152:355:379:599:857:962:966:967:973:983:988:989:1189:1208:1212:1221:1260:1261:1313:1314:1345:1359:1431:1437:1516:1517:1518:1534:1542:1575:1588:1589:1594:1711:1730:1775:1792:2068:2069:2196:2198:2199:2200:2525:2527:2553:2561:2564:2682:2685:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:4385:5007:6119:6657:7652:7903:8603:8829:8957:9010:9025:10004:10400:10848:11656:11658:11914:12043:12555:12714:12737:12986:13061:13139:13161:13229:14181:14659:14721:21080:21347:21433:21451:21622:21740:21773:21811:21939:30054:30070:30090,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: tank17_3111de8743a1f
X-Filterd-Recvd-Size: 4693
Received: from [192.168.10.100] (leeshill.plus.com [81.174.243.117])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Thu,  9 Jan 2020 13:58:57 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: Bert <bert.boehne@systec.de>
Subject: Re: [yocto] i.MX6 screen rotation
Cc: yocto@lists.yoctoproject.org
Date: Thu, 09 Jan 2020 13:58:55 +0000
Message-Id: <em60232559-bd97-45ea-b714-cc36670cdc42@andys-imac.leeshillfarm.local>
In-Reply-To: <11981.1578561954374527180@lists.yoctoproject.org>
References: <em2f6fb73f-c8b6-4fa3-94c2-e530827f90ec@andys-imac.leeshillfarm.local>
 <11981.1578561954374527180@lists.yoctoproject.org>
Reply-To: "Andy Pont" <andy.pont@sdcsystems.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------=_MB3C733863-B8A6-4C79-85E4-30198ED42361"

--------=_MB3C733863-B8A6-4C79-85E4-30198ED42361
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Bert wrote...=0A=0A>this sounds like you have to check your hardware and yo=
ur framebuffer =0A>driver. How is the display connected to the display cont=
roller? This is =0A>may not set correctly in your framebuffer driver.=0AThe =
LCD is a 640x480 pixel TFT which has the NewVision NV3052C =0Acontroller e=
mbedded within it into which we drive the 24bits of RGB =0Acolour data alon=
g with VSYNC, HSYNC, PIXCLK from the DISP0_DAT pins of =0Athe i.MX6.=0A=0AT=
he framebuffer device is provided by what look like Freescale additions =0A=
to the kernel in drivers/video/fbdev/mxc on top of which we are using =0Ath=
e Vivante drivers to provide OpenGL/EGL support.=0A=0AThe target applicatio=
n uses the i.MX6 Framebuffer API[1] and OpenGL ES =0Ato render on the scree=
n.  If it isn=E2=80=99t possible to rotate the framebuffer =0Aitself but ca=
n get the Vivante drivers and the GPU to rotate everything =0Athen I think=
 that may work.=0A=0A-Andy.=0A=0A[1] - =0Ahttps://nxpcommunity.force.com/sfc=
/servlet.shepherd/document/download/06957000004mGPSAA2?operationContext=3DS=
1=0A=0A

--------=_MB3C733863-B8A6-4C79-85E4-30198ED42361
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div><div>Bert wrote...</div>=0A</div><div><br /></div>=
=0A<div id=3D"x949b37ee91fc48c"><blockquote type=3D"cite" class=3D"cite2">t=
his sounds like you have to check your hardware and your framebuffer driver=
. How is the display connected to the display controller? This is may not s=
et correctly in your framebuffer driver.</blockquote><blockquote type=3D"ci=
te" class=3D"cite2"></blockquote>The LCD is a 640x480 pixel TFT which has t=
he NewVision NV3052C controller embedded within it into which we drive the=
 24bits of RGB colour data along with VSYNC, HSYNC, PIXCLK from the DISP0_DA=
T pins of the i.MX6.</div><div id=3D"x949b37ee91fc48c"><br /></div><div id=
=3D"x949b37ee91fc48c">The framebuffer device is provided by what look like=
 Freescale additions to the kernel in drivers/video/fbdev/mxc on top of whic=
h we are using the Vivante drivers to provide OpenGL/EGL support.</div><div =
id=3D"x949b37ee91fc48c"><br /></div><div id=3D"x949b37ee91fc48c">The targe=
t application uses the i.MX6 Framebuffer API[1] and OpenGL ES to render on=
 the screen. =C2=A0If it isn=E2=80=99t possible to rotate the framebuffer it=
self but can get the Vivante drivers and the GPU to rotate everything then=
 I think that may work.</div><div id=3D"x949b37ee91fc48c"><br /></div><div i=
d=3D"x949b37ee91fc48c">-Andy.</div><div id=3D"x949b37ee91fc48c"><br /></div=
><div id=3D"x949b37ee91fc48c">[1] -=C2=A0<a href=3D"https://nxpcommunity.fo=
rce.com/sfc/servlet.shepherd/document/download/06957000004mGPSAA2?operation=
Context=3DS1">https://nxpcommunity.force.com/sfc/servlet.shepherd/document/=
download/06957000004mGPSAA2?operationContext=3DS1</a></div><div id=3D"x949b=
37ee91fc48c"><br /></div><div id=3D"x949b37ee91fc48c"><br /></div>=0A</body=
></html>

--------=_MB3C733863-B8A6-4C79-85E4-30198ED42361--
