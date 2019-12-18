Received: from smtprelay.hostedemail.com (smtprelay.hostedemail.com [216.40.44.240])
 by mx.groups.io with SMTP id smtpd.web10.9123.1576668208678865841
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 03:23:29 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sdcsystems.com, ip: 216.40.44.240, mailfrom: andy.pont@sdcsystems.com)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 863FA18224D7E;
	Wed, 18 Dec 2019 11:23:27 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,andy.pont@sdcsystems.com,:::,RULES_HIT:41:152:355:379:599:962:967:973:988:989:1189:1221:1260:1261:1313:1314:1345:1359:1437:1516:1517:1518:1534:1541:1575:1588:1589:1594:1711:1730:1775:1792:2198:2199:2525:2527:2557:2561:2564:2682:2685:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3865:3866:3867:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4605:5007:6119:6657:7652:7903:8603:8957:9010:9025:10004:10215:10400:10848:11026:11656:11658:11783:11914:12043:12296:12555:12663:12679:13061:13137:13139:13150:13161:13229:13230:13231:14039:14181:14659:14721:21080:21324:21433:21451:21627:21740:21795:30054,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: wren05_1e1b8f42c843a
X-Filterd-Recvd-Size: 4114
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf20.hostedemail.com (Postfix) with ESMTPA;
	Wed, 18 Dec 2019 11:23:26 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
Subject: Re: [yocto] Pull a single file using git lfs
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Date: Wed, 18 Dec 2019 11:23:25 +0000
Message-Id: <em871f293a-2818-44d7-8fbf-30770c4bef66@andys-imac.leeshillfarm.local>
In-Reply-To: <20191218110333.mkx2h74chsbxuzco@qschulz>
References: <em3b7fa0e4-1cdc-424d-86c1-6d055dd9ee59@andys-imac.leeshillfarm.local>
 <20191218110333.mkx2h74chsbxuzco@qschulz>
Reply-To: "Andy Pont" <andy.pont@sdcsystems.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------=_MB45AEF723-C4D3-4F23-A47E-397014878721"

--------=_MB45AEF723-C4D3-4F23-A47E-397014878721
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Quentin wrote...=0A=0A>I unfortunately don't have experience with git lfs.=
=0A>=0A>I'm thinking about the subpath argument to SRC_URI git fetcher.=0A>=
=0A>https://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-u=
ser-manual.html#git-fetcher=0AUnfortunately, there are other files in the s=
ame directory that can=E2=80=99t be =0Achecked out. Looking at that documen=
tation, I have added the =0A=E2=80=9Cnocheckout=3D1=E2=80=9D option to the=
 git definition in SRC_URI which is stopping =0Athe initial pull.=0A=0AWhen=
 I try to add any git commands into a do_fetch_append() then it =0Adumps a l=
oad of Python looking stuff on the screen that ends with:=0A=0A   File "aut=
ogenerated", line 4=0A     git lfs checkout build/filename=0A              =
  ^=0ASyntaxError: invalid syntax=0A=0A-Andy.

--------=_MB45AEF723-C4D3-4F23-A47E-397014878721
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div><div>Quentin wrote...</div>=0A</div><div><br /></d=
iv>=0A<div id=3D"x638363d7a09e432"><blockquote type=3D"cite" class=3D"cite2=
"><div class=3D"plain_line">I unfortunately don't have experience with git=
 lfs.</div>=0A<div class=3D"plain_line">=C2=A0</div>=0A<div class=3D"plain_l=
ine">I'm thinking about the subpath argument to SRC_URI git fetcher.</div>=
=0A<div class=3D"plain_line">=C2=A0</div>=0A<div class=3D"plain_line">https=
://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manua=
l.html#git-fetcher</div></blockquote>Unfortunately, there are other files i=
n the same directory that can=E2=80=99t be checked out.  Looking at that do=
cumentation, I have added the =E2=80=9Cnocheckout=3D1=E2=80=9D option to th=
e git definition in SRC_URI which is stopping the initial pull.</div><div i=
d=3D"x638363d7a09e432"><br /></div><div id=3D"x638363d7a09e432">When I try=
 to add any git commands into a do_fetch_append() then it dumps a load of Py=
thon looking stuff on the screen that=C2=A0ends with:</div><div id=3D"x6383=
63d7a09e432"><br /></div><div id=3D"x638363d7a09e432">=C2=A0 File "autogene=
rated", line 4<br />=C2=A0 =C2=A0 git lfs checkout build/filename<br />=C2=
=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0^<br />Syntax=
Error: invalid syntax</div><div id=3D"x638363d7a09e432"><br /></div><div id=
=3D"x638363d7a09e432">-Andy.</div>=0A=0A=0A</body></html>

--------=_MB45AEF723-C4D3-4F23-A47E-397014878721--
