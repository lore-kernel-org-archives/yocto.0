Received: from smtprelay.hostedemail.com (smtprelay.hostedemail.com [216.40.44.59])
 by mx.groups.io with SMTP id smtpd.web10.8609.1576664178013680739
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 02:16:18 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sdcsystems.com, ip: 216.40.44.59, mailfrom: andy.pont@sdcsystems.com)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 1C383100E7B48;
	Wed, 18 Dec 2019 10:16:17 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,andy.pont@sdcsystems.com,:::,RULES_HIT:41:152:355:379:599:962:966:988:989:1189:1221:1260:1261:1313:1314:1345:1359:1437:1516:1517:1518:1534:1541:1575:1588:1589:1594:1711:1730:1775:1792:2196:2198:2199:2200:2527:2559:2562:3138:3139:3140:3141:3142:3352:3586:3865:3866:3867:3868:3870:3871:3872:3873:3874:4385:5007:6657:7652:7903:8603:9010:9707:10004:10214:10400:10848:11656:11658:11914:12043:12555:13061:13139:13161:13229:14181:14659:14721:21080:21433:21451:21627:21740:21790:21939:30054,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: line22_19abff5340c33
X-Filterd-Recvd-Size: 3605
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf17.hostedemail.com (Postfix) with ESMTPA;
	Wed, 18 Dec 2019 10:16:16 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: Dynamic layer or recipe not working
Cc: "Konrad Weihmann" <kweihmann@outlook.com>
Date: Wed, 18 Dec 2019 10:16:14 +0000
Message-Id: <em761d403c-94ca-4dda-8f99-ea67785c6246@andys-imac.leeshillfarm.local>
In-Reply-To: <AM4PR05MB338059F95752682309FBE09AA8500@am4pr05mb3380.eurprd05.prod.outlook.com>
References: <em9bff856e-cbee-41f7-ad79-8d077357740d@andys-imac.leeshillfarm.local>
 <AM4PR05MB338059F95752682309FBE09AA8500@am4pr05mb3380.eurprd05.prod.outlook.com>
Reply-To: "Andy Pont" <andy.pont@sdcsystems.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------=_MB7C66D443-1EC4-4E6E-B8D4-BCB22E6124F5"

--------=_MB7C66D443-1EC4-4E6E-B8D4-BCB22E6124F5
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Konrad wrote=E2=80=A6=0A=0A>I don=E2=80=99t fully get what you trying to ac=
hieve, but the from my point of =0A>view dynamic layers (BBFILES_DYNAMIC) a=
re mainly used for bbappends =0A>only.=0A>They prevent bitbake from parsing =
a bbappend in case the layer with the =0A>original bb file is absent.=0AI=
 was trying to follow the example of the meta-freescale layer which has =0Ab=
oth .bb and .bbappend files within dynamic layers.=0A=0AHaving thought abou=
t it some more I realise that it could just be in one =0Aof the regular rec=
ipe-xxxxx directories and didn=E2=80=99t need to be in a =0Adynamic layer a=
fter all.=0A=0A-Andy.=0A

--------=_MB7C66D443-1EC4-4E6E-B8D4-BCB22E6124F5
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div><div>Konrad wrote=E2=80=A6</div><div><br /></div><=
/div>=0A<div id=3D"xe1c43153c8af40a"><blockquote type=3D"cite" class=3D"cit=
e2"><div>I don=E2=80=99t fully get what you trying to achieve, but the from =
my point of view dynamic layers (BBFILES_DYNAMIC) are mainly used for bbap=
pends only.<br />=0AThey prevent bitbake from parsing a bbappend in case th=
e layer with the original bb file is absent.</div></blockquote>I was trying =
to follow the example of the meta-freescale layer which has both .bb and .=
bbappend files within dynamic layers. =C2=A0</div><div id=3D"xe1c43153c8af4=
0a"><br /></div><div id=3D"xe1c43153c8af40a">Having thought about it some m=
ore I realise that it could just be in one of the regular recipe-xxxxx dire=
ctories and didn=E2=80=99t need to be in a dynamic layer after all.</div><d=
iv id=3D"xe1c43153c8af40a"><br /></div><div id=3D"xe1c43153c8af40a">-Andy.<=
br /><br /><blockquote type=3D"cite" class=3D"cite2"><div><div>=0A</div>=0A=
</div>=0A</blockquote></div>=0A=0A=0A</body></html>

--------=_MB7C66D443-1EC4-4E6E-B8D4-BCB22E6124F5--
