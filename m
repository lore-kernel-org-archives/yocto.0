Received: from smtprelay.hostedemail.com (smtprelay.hostedemail.com [216.40.44.175])
 by mx.groups.io with SMTP id smtpd.web09.9273.1576232604330627806
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 02:23:24 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sdcsystems.com, ip: 216.40.44.175, mailfrom: andy.pont@sdcsystems.com)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 15FDE182CF666
	for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2019 10:23:23 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-Spam-Summary: 13,1.2,0,,d41d8cd98f00b204,andy.pont@sdcsystems.com,:,RULES_HIT:41:152:355:379:962:988:989:1189:1221:1260:1261:1313:1314:1345:1381:1437:1516:1517:1518:1534:1541:1575:1588:1589:1594:1711:1730:1775:1792:2198:2199:2527:2551:2559:2562:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:3872:3874:5007:6117:6670:7652:8603:9010:10008:10215:10400:10848:11026:11473:11656:11658:11914:12043:12050:12296:12438:13061:13071:13139:13161:13184:13229:13618:14180:14181:14659:14721:21080:21324:21433:21451:21627:21740:21990:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:1:0,LFtime:6,LUA_SUMMARY:none
X-HE-Tag: heart74_5787858cb2f24
X-Filterd-Recvd-Size: 3548
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf03.hostedemail.com (Postfix) with ESMTPA
	for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2019 10:23:21 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Write contents of recipe variable into a configuration file
Date: Fri, 13 Dec 2019 10:23:18 +0000
Message-Id: <em8cb12e6d-6bb4-4ea9-a205-cc8d621fe53e@andys-imac.leeshillfarm.local>
Reply-To: "Andy Pont" <andy.pont@sdcsystems.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------=_MB7680ED58-DA6B-4C0C-AD91-0DD3596507AD"

--------=_MB7680ED58-DA6B-4C0C-AD91-0DD3596507AD
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,=0A=0AI=E2=80=99m having a Friday, brain-fade moment.  I want to defi=
ne a variable =0Awithin the wpa_supplicant.bbappend file:=0A=0AWPA_GROUP_NA=
ME =3D value=0A=0AThis value needs to be propagated into the wpa_supplicant=
.conf =0Aconfiguration file for the =E2=80=9Cctrl_interface_group=E2=80=9D=
 setting before the =0Afile gets written into the target file system.=0A=0A  =
I once saw a recipe that defined something similar as an arbitrary =0Avalu=
e in the configuration file i.e. in this case we would use:=0A=0Actrl_inter=
face_group=3D$xxxx=0A=0A...and then used file and string manipulation to pu=
t the correct value =0Athere during the do_install() phase.=0A=0AI now can=
=E2=80=99t find that recipe to see how it was done nor can I work out =0Aho=
w it was done.=0A=0A-Andy.=0A=0A

--------=_MB7680ED58-DA6B-4C0C-AD91-0DD3596507AD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div>Hello,</div><div><br /></div><div>I=E2=80=99m havi=
ng a Friday, brain-fade moment. =C2=A0I want to define a variable within th=
e wpa_supplicant.bbappend file:</div><div><br /></div><div>WPA_GROUP_NAME =
=3D value</div><div><br /></div><div>This value needs to be propagated int=
o the wpa_supplicant.conf configuration file for the =E2=80=9Cctrl_interfac=
e_group=E2=80=9D setting before the file gets written into the target file=
 system.</div><div><br /></div><div>=C2=A0I once saw a recipe that defined s=
omething similar as an arbitrary value in the configuration file i.e. in th=
is case we would use:</div><div><br /></div><div>ctrl_interface_group=3D$xx=
xx</div><div><br /></div><div>...and then used file and string manipulation =
to put the correct value there during the do_install() phase.</div><div><b=
r /></div><div>I now can=E2=80=99t find that recipe to see how it was done=
 nor can I work out how it was done.</div><div><br /></div><div>-Andy.</div>=
<div id=3D"signature_old"><div>=C2=A0</div></div><div><br /></div>=0A</body=
></html>

--------=_MB7680ED58-DA6B-4C0C-AD91-0DD3596507AD--
