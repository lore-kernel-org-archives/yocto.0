Received: from smtprelay.hostedemail.com (smtprelay.hostedemail.com [216.40.44.247])
 by mx.groups.io with SMTP id smtpd.web12.9939.1575892283084902844
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 03:51:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sdcsystems.com, ip: 216.40.44.247, mailfrom: andy.pont@sdcsystems.com)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 212614421;
	Mon,  9 Dec 2019 11:51:22 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,andy.pont@sdcsystems.com,:::,RULES_HIT:41:152:355:379:599:962:988:989:1189:1221:1260:1261:1313:1314:1345:1359:1437:1516:1517:1518:1534:1541:1575:1588:1589:1594:1711:1730:1774:1792:2198:2199:2527:2557:2559:2562:3138:3139:3140:3141:3142:3352:3865:3866:3867:3870:3872:3873:3874:4362:5007:6657:7652:7903:8603:9010:10004:10214:10848:11026:11656:11658:11914:12043:12438:13139:13161:13184:13229:14093:14181:14659:14721:21080:21095:21324:21433:21451:21627:21740:21939:30045:30054,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: badge28_28f27a4edc130
X-Filterd-Recvd-Size: 4073
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf15.hostedemail.com (Postfix) with ESMTPA;
	Mon,  9 Dec 2019 11:51:21 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
Subject: Re: [yocto] Issues with alsa-state
Cc: yocto@lists.yoctoproject.org
Date: Mon, 09 Dec 2019 11:51:19 +0000
Message-Id: <emb6f9ebf4-7201-4f14-b49e-feea7f5c6799@andys-imac.leeshillfarm.local>
In-Reply-To: <20191209104908.z3dowyjqv45rqw3q@qschulz>
References: <em1763c91f-0c32-4204-a356-e16cc8d266ad@andys-imac.leeshillfarm.local>
 <20191209104908.z3dowyjqv45rqw3q@qschulz>
Reply-To: "Andy Pont" <andy.pont@sdcsystems.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------=_MB8C0772DE-A3A7-43B0-9DAF-4A5F2EF2D2C9"

--------=_MB8C0772DE-A3A7-43B0-9DAF-4A5F2EF2D2C9
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Quentin wrote...=0A=0A>Have a look at the paths traversed by Yocto to find=
 your asound.state in=0A>log.do_fetch in the WORKDIR.=0A>=0A>You'll have the =
following:=0A>DEBUG: Searching for asound.state in paths:=0AThere are a lo=
t of paths that it searched in for the file. I=E2=80=99ve moved =0Athe file =
in the file system changed the value of =0AFILESEXTRAPATHS_prepend_mx6 fro=
m:=0A=0AFILESEXTRAPATHS_prepend_mx6 :=3D "${THISDIR}/${PN}/imx:=E2=80=9D=0A=
=0Ato:=0A=0AFILESEXTRAPATHS_prepend_mx6 :=3D "${THISDIR}/${PN}:=E2=80=9D=0A=
=0AThat has made the build process find my version of asound.state first.=
=0A=0AThanks,=0A=0A-Andy.

--------=_MB8C0772DE-A3A7-43B0-9DAF-4A5F2EF2D2C9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>=0A=0A<style id=3D"css_styles" type=3D"text/css">blockquote.cit=
e { margin-left: 5px; margin-right: 0px; padding-left: 10px; padding-right:=
0px; border-left: 1px solid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; =
margin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px =
solid #cccccc; margin-top: 3px; padding-top: 0px; }=0Aa img { border: 0px; =
}=0Ali[style=3D'text-align: center;'], li[style=3D'text-align: right;'] {  =
list-style-position: inside;}=0Abody { font-family: Verdana; font-size: 12=
px;   }</style></head><body class=3D"plain" style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;"><div><div>Quenti=
n wrote...</div>=0A</div><div><br /></div>=0A<div id=3D"x0d9ef5cdb1ac489"><=
blockquote type=3D"cite" class=3D"cite2"><div class=3D"plain_line">Have a l=
ook at the paths traversed by Yocto to find your asound.state in</div>=0A<d=
iv class=3D"plain_line">log.do_fetch in the WORKDIR.</div>=0A<div class=3D"=
plain_line">=C2=A0</div>=0A<div class=3D"plain_line">You'll have the follow=
ing:</div>=0A<div class=3D"plain_line">DEBUG: Searching for asound.state in =
paths:</div></blockquote>There are a lot of paths that it searched in for=
 the file.  I=E2=80=99ve moved the file in the file system changed the value =
of FILESEXTRAPATHS_prepend_mx6 from:=C2=A0</div><div id=3D"x0d9ef5cdb1ac48=
9"><br /></div><div id=3D"x0d9ef5cdb1ac489">FILESEXTRAPATHS_prepend_mx6 :=
=3D "${THISDIR}/${PN}/imx:=E2=80=9D</div><div id=3D"x0d9ef5cdb1ac489"><br /=
></div><div id=3D"x0d9ef5cdb1ac489">to:</div><div id=3D"x0d9ef5cdb1ac489"><=
br /></div><div id=3D"x0d9ef5cdb1ac489">FILESEXTRAPATHS_prepend_mx6 :=3D "$=
{THISDIR}/${PN}:=E2=80=9D</div><div id=3D"x0d9ef5cdb1ac489"><br /></div><di=
v id=3D"x0d9ef5cdb1ac489">That has made the build process find my version o=
f asound.state first.</div><div id=3D"x0d9ef5cdb1ac489"><br /></div><div id=
=3D"x0d9ef5cdb1ac489">Thanks,</div><div id=3D"x0d9ef5cdb1ac489"><br /></div=
><div id=3D"x0d9ef5cdb1ac489">-Andy.</div><div id=3D"x0d9ef5cdb1ac489"><blo=
ckquote type=3D"cite" class=3D"cite2">=0A</blockquote></div>=0A</body></htm=
l>

--------=_MB8C0772DE-A3A7-43B0-9DAF-4A5F2EF2D2C9--
