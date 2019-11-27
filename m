Received: from smtprelay.hostedemail.com (smtprelay.hostedemail.com [216.40.44.196])
 by mx.groups.io with SMTP id smtpd.web11.4583.1574852799900300115
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 03:06:40 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sdcsystems.com, ip: 216.40.44.196, mailfrom: andy.pont@sdcsystems.com)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id C2557180275AF;
	Wed, 27 Nov 2019 11:06:38 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,andy.pont@sdcsystems.com,:::,RULES_HIT:41:152:355:379:421:599:962:968:973:988:989:1189:1221:1256:1260:1261:1313:1314:1345:1359:1437:1516:1517:1518:1535:1542:1575:1588:1589:1594:1711:1730:1775:1792:2198:2199:2527:2557:2559:2562:2693:2731:2893:3138:3139:3140:3141:3142:3352:3865:3866:3867:3868:3870:3871:3872:3873:3874:5007:6119:6657:7652:7903:8603:9010:10004:10400:11026:11232:11473:11656:11658:11914:12043:12296:12663:12679:13061:13139:13618:14181:14659:14721:21080:21325:21433:21451:21627:21740:21795:21796:30037:30051:30054:30069,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:5,LUA_SUMMARY:none
X-HE-Tag: girls23_741d35d372831
X-Filterd-Recvd-Size: 5098
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Wed, 27 Nov 2019 11:06:37 +0000 (UTC)
From: "andy.pont@sdcsystems.com" <andy.pont@sdcsystems.com>
To: Mauro <m.salvini@koansoftware.com>
Subject: Re: [yocto] Yocto build to add root password
Cc: yocto@lists.yoctoproject.org
Date: Wed, 27 Nov 2019 11:06:36 +0000
Message-Id: <em055836fc-7045-483e-85dc-61bedfdb14e9@andys-imac.leeshillfarm.local>
In-Reply-To: <cb99f223-9a19-3c88-b1a3-e67d6b7a6654@koansoftware.com>
References: <CAA=hcWR3Vhfc9H3VRf-Q1m44rX_ox2J-LjuPWHsB1Rrq-yrVTg@mail.gmail.com>
 <bc70cb07-37c8-3078-7c02-d7be487035fd@ibeeto.com>
 <cb99f223-9a19-3c88-b1a3-e67d6b7a6654@koansoftware.com>
Reply-To: "Andy Pont" <andy.pont@sdcsystems.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------=_MB05529711-CD9D-4DBE-98B3-1A6107150FA2"

--------=_MB05529711-CD9D-4DBE-98B3-1A6107150FA2
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Mauro wrote...=0A=0A>pay attention that "openssl passwd ${ROOT_PASSWORD}" c=
ommand handles only passwords up to 8 characters (the extra characters will =
be truncated and the generated hash is for the first eight).=0A>=0A>If you =
want to use more than 8 characters in the password, use another password a=
lgorithm instead of the default one. You can see other supported algorithms =
typing "openssl help passwd".=0A>=0A>For example, command could become=0A>=
=0A>     openssl passwd -6 ${ROOT_PASSWORD}=0A>=0AI tried this out on a bui=
ld that I am working on for which I needed to =0Aadd a root password and to =
create a non-root user with a password.=0A=0AIf I use:=0A=0AEXTRA_USERS_PA=
RAMS +=3D "usermod -p `openssl passwd -6 ${ROOT_PASSWORD}` =0Aroot;=E2=80=
=9D=0A=0AWhen I try to login to the device it rejects the password that was =
=0Adefined as ROOT_PASSWORD.  If I remove the =E2=80=9C-6=E2=80=9D from th=
e openssl command =0Aand rebuild/deploy the image then I can login to the t=
arget as expected. =0A  Is there something else that needs to be defined/in=
cluded in the Yocto =0Aconfiguration in order for the =E2=80=9C-6=E2=80=9D=
 option to work?=0A=0A-Andy.=0A

--------=_MB05529711-CD9D-4DBE-98B3-1A6107150FA2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div><div>Mauro wrote...</div>=0A</div><div><br /></div=
>=0A<div id=3D"x153ab6d1c27d495"><blockquote type=3D"cite" class=3D"cite2">=
<div class=3D"plain_line">pay attention that "openssl passwd ${ROOT_PASSWOR=
D}" command handles only passwords up to 8 characters (the extra characters =
will be truncated and the generated hash is for the first eight).</div>=0A=
<div class=3D"plain_line">=C2=A0</div>=0A<div class=3D"plain_line">If you w=
ant to use more than 8 characters in the password, use another password alg=
orithm instead of the default one. You can see other supported algorithms t=
yping "openssl help passwd".</div>=0A<div class=3D"plain_line">=C2=A0</div>=
=0A<div class=3D"plain_line">For example, command could become</div>=0A<div =
class=3D"plain_line">=C2=A0</div>=0A<div class=3D"plain_line">    openssl=
 passwd -6 ${ROOT_PASSWORD}</div>=0A<div class=3D"plain_line">=C2=A0</div></=
blockquote>I tried this out on a build that I=C2=A0am working on for which=
 I needed to add a root password and to create a non-root user with a passwo=
rd.</div><div id=3D"x153ab6d1c27d495"><br /></div><div id=3D"x153ab6d1c27d4=
95">If I use:</div><div id=3D"x153ab6d1c27d495"><br /></div><div id=3D"x153=
ab6d1c27d495">EXTRA_USERS_PARAMS +=3D "usermod -p `openssl passwd -6 ${ROOT=
_PASSWORD}` root;=E2=80=9D</div><div id=3D"x153ab6d1c27d495"><br /></div><d=
iv id=3D"x153ab6d1c27d495">When I try to login to the device it rejects the =
password that was defined as ROOT_PASSWORD. =C2=A0If I remove the =E2=80=
=9C-6=E2=80=9D from the openssl command and rebuild/deploy the image then I =
can login to the target as expected. =C2=A0Is there something else that ne=
eds to be defined/included in the Yocto configuration in order for the =E2=
=80=9C-6=E2=80=9D option to work?</div><div id=3D"x153ab6d1c27d495"><br /><=
/div><div id=3D"x153ab6d1c27d495">-Andy.</div><div id=3D"x153ab6d1c27d495">=
<br /><blockquote type=3D"cite" class=3D"cite2">=0A</blockquote></div>=0A=
=0A=0A</body></html>

--------=_MB05529711-CD9D-4DBE-98B3-1A6107150FA2--
