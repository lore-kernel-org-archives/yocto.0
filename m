Received: from smtprelay.hostedemail.com (smtprelay.hostedemail.com [216.40.44.239])
 by mx.groups.io with SMTP id smtpd.web12.1407.1576574100482125896
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 01:15:01 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sdcsystems.com, ip: 216.40.44.239, mailfrom: andy.pont@sdcsystems.com)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 62AB3182CED34
	for <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2019 09:14:59 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,andy.pont@sdcsystems.com,:,RULES_HIT:41:152:355:379:960:962:988:989:1189:1221:1260:1261:1313:1314:1345:1381:1437:1516:1517:1518:1534:1541:1575:1588:1589:1594:1711:1730:1774:1792:2198:2199:2527:2559:2562:2687:2827:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3871:3872:3874:4250:5007:6119:6670:7652:7903:8603:9010:9707:10004:10214:10848:11656:11658:11783:11914:12043:13015:13016:13139:14180:14181:14659:14721:21080:21325:21433:21451:21627:21740:30054,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: cave20_e6417adee706
X-Filterd-Recvd-Size: 3128
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf14.hostedemail.com (Postfix) with ESMTPA
	for <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2019 09:14:58 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Dynamic layer or recipe not working
Date: Tue, 17 Dec 2019 09:14:54 +0000
Message-Id: <em9bff856e-cbee-41f7-ad79-8d077357740d@andys-imac.leeshillfarm.local>
Reply-To: "Andy Pont" <andy.pont@sdcsystems.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------=_MB8474BF53-1B12-401A-A1B4-0928F6CA0A1B"

--------=_MB8474BF53-1B12-401A-A1B4-0928F6CA0A1B
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,=0A=0AI have created a new dynamic layer within my projects custom me=
ta-layer =0Aand have added a new recipe to it.  When I try to build the ima=
ge it =0Atells me that nothing RPROVIDES the recipe and if I try to build t=
he =0Arecipe on its own it says =E2=80=9CNothing PROVIDES=E2=80=A6=E2=80=9D=
.=0A=0AI have tried running:=0A=0A$ bitbake-layers show-recipes | grep <rec=
ipe_name>=0A=0A=E2=80=A6and nothing is returned.=0A=0AHow do I determine wh=
ether it is the dynamic layer that isn=E2=80=99t being =0Afound or the reci=
pe itself that isn=E2=80=99t correct.=0A=0A-Andy.=0A=0A=0A=0A=0A

--------=_MB8474BF53-1B12-401A-A1B4-0928F6CA0A1B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div>Hello,</div><div><br /></div><div>I have created a =
new dynamic layer within my projects custom meta-layer and have added a ne=
w recipe to it. =C2=A0When I try to build the image it tells me that nothin=
g RPROVIDES the recipe and if I try to build the recipe on its own it says =
=E2=80=9CNothing PROVIDES=E2=80=A6=E2=80=9D.</div><div><br /></div><div>I=
 have tried running:</div><div><br /></div><div>$ bitbake-layers show-recipe=
s | grep &lt;recipe_name&gt;</div><div><br /></div><div>=E2=80=A6and nothin=
g is returned.</div><div><br /></div><div>How do I determine whether it is=
 the dynamic layer that isn=E2=80=99t being found or the recipe itself that=
 isn=E2=80=99t correct.</div><div><br /></div><div>-Andy.</div><div><br /></=
div><div id=3D"signature_old"><div>=C2=A0</div><div>=C2=A0</div><div>=C2=A0=
</div></div><div><br /></div>=0A</body></html>

--------=_MB8474BF53-1B12-401A-A1B4-0928F6CA0A1B--
