Received: from smtprelay.hostedemail.com (smtprelay.hostedemail.com [216.40.44.201])
 by mx.groups.io with SMTP id smtpd.web10.9732.1576672588468751490
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 04:36:28 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sdcsystems.com, ip: 216.40.44.201, mailfrom: andy.pont@sdcsystems.com)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 85709180397EA
	for <yocto@lists.yoctoproject.org>; Wed, 18 Dec 2019 12:36:27 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,andy.pont@sdcsystems.com,:,RULES_HIT:41:152:355:379:599:960:962:973:988:989:1189:1221:1260:1261:1313:1314:1345:1359:1381:1437:1516:1517:1518:1534:1542:1575:1588:1589:1594:1711:1730:1775:1792:2198:2199:2527:2559:2562:2693:2827:3138:3139:3140:3141:3142:3352:3865:3866:3867:3868:3870:3871:3872:3873:3874:4605:5007:6119:6657:6670:7652:7903:8603:8957:9010:10004:10216:10400:10848:11026:11232:11656:11658:11783:11914:12043:12296:12555:13061:13139:13161:13229:14181:14659:14721:21080:21324:21433:21451:21627:21740:30054,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: egg40_556a9ea225229
X-Filterd-Recvd-Size: 4800
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA
	for <yocto@lists.yoctoproject.org>; Wed, 18 Dec 2019 12:36:26 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Pull a single file using git lfs
Date: Wed, 18 Dec 2019 12:36:25 +0000
Message-Id: <em596548f0-266b-4b17-8bd3-93c65f2ba602@andys-imac.leeshillfarm.local>
In-Reply-To: <15E173620783C12F.3891@lists.yoctoproject.org>
References: <em3b7fa0e4-1cdc-424d-86c1-6d055dd9ee59@andys-imac.leeshillfarm.local>
 <20191218110333.mkx2h74chsbxuzco@qschulz>
 <15E173620783C12F.3891@lists.yoctoproject.org>
Reply-To: "Andy Pont" <andy.pont@sdcsystems.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------=_MB09F0C561-BB8C-45E7-B016-01A02355B58C"

--------=_MB09F0C561-BB8C-45E7-B016-01A02355B58C
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I wrote...=0A=0A>Unfortunately, there are other files in the same directory =
that can=E2=80=99t =0A>be checked out. Looking at that documentation, I ha=
ve added the =0A>=E2=80=9Cnocheckout=3D1=E2=80=9D option to the git definit=
ion in SRC_URI which is =0A>stopping the initial pull.=0A>=0A>When I try to =
add any git commands into a do_fetch_append() then it =0A>dumps a load of=
 Python looking stuff on the screen that ends with:=0A>=0A>   File "autogene=
rated", line 4=0A>     git lfs checkout build/filename=0A>                ^=
=0A>SyntaxError: invalid syntax=0ASo, do_fetch() is a Python function and y=
ou can=E2=80=99t run shell commands in =0Ait.  That is fine, I have let it=
 do its thing to initialise the git =0Arepository and moved my custom comman=
ds into a do_configure() to replace =0Athe standard one.=0A=0AIt will pull=
 a single file out of the repo using "git checkout master =0A<filename>=E2=
=80=9D but is having difficulties with =E2=80=9Cgit lfs =E2=80=A6=E2=80=9D=
 commands.  That =0Athough looks like an issue there not with the bitbake re=
cipe per-se.=0A=0A-Andy.=0A=0A

--------=_MB09F0C561-BB8C-45E7-B016-01A02355B58C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div><div>I wrote...</div>=0A</div><div><br /></div><di=
v id=3D"xb21bd0bb242d441"><blockquote type=3D"cite" class=3D"cite2"><div id=
=3D"x638363d7a09e432">Unfortunately, there are other files in the same dire=
ctory that can=E2=80=99t be checked out.  Looking at that documentation, I=
 have added the =E2=80=9Cnocheckout=3D1=E2=80=9D option to the git definitio=
n in SRC_URI which is stopping the initial pull.</div><div id=3D"x638363d7a=
09e432"><br /></div><div id=3D"x638363d7a09e432">When I try to add any git=
 commands into a do_fetch_append() then it dumps a load of Python looking st=
uff on the screen that=C2=A0ends with:</div><div id=3D"x638363d7a09e432"><b=
r /></div><div id=3D"x638363d7a09e432">=C2=A0 File "autogenerated", line 4<=
br />=C2=A0 =C2=A0 git lfs checkout build/filename<br />=C2=A0 =C2=A0=C2=A0 =
=C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0^<br />SyntaxError: invalid s=
yntax</div></blockquote>So, do_fetch() is a Python function and you can=E2=
=80=99t run shell commands in it. =C2=A0That is fine, I have let it do its=
 thing to initialise the git repository and moved my custom commands into a=
 do_configure() to replace the standard one.</div><div id=3D"xb21bd0bb242d44=
1"><br /></div><div id=3D"xb21bd0bb242d441">It will pull a single file out=
 of the repo using "git checkout master &lt;filename&gt;=E2=80=9D but is hav=
ing difficulties with =E2=80=9Cgit lfs =E2=80=A6=E2=80=9D commands. =C2=A0T=
hat though looks like an issue there not with the bitbake recipe per-se.</d=
iv><div id=3D"xb21bd0bb242d441"><br /></div><div id=3D"xb21bd0bb242d441">-A=
ndy.</div><div id=3D"xb21bd0bb242d441"><br /></div><div id=3D"xb21bd0bb242d=
441"><br /><blockquote type=3D"cite" class=3D"cite2">=0A=0A=0A</blockquote>=
</div>=0A=0A</body></html>

--------=_MB09F0C561-BB8C-45E7-B016-01A02355B58C--
