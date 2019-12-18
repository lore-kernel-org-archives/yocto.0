Received: from smtprelay.hostedemail.com (smtprelay.hostedemail.com [216.40.44.157])
 by mx.groups.io with SMTP id smtpd.web10.8860.1576665980818397165
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 02:46:21 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sdcsystems.com, ip: 216.40.44.157, mailfrom: andy.pont@sdcsystems.com)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id CBBC7182CED34
	for <yocto@lists.yoctoproject.org>; Wed, 18 Dec 2019 10:46:19 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,andy.pont@sdcsystems.com,:,RULES_HIT:41:152:355:379:973:988:989:1260:1261:1277:1311:1313:1314:1345:1381:1437:1513:1515:1516:1518:1521:1534:1538:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2743:3138:3139:3140:3141:3142:3351:3622:3865:3866:3867:3868:3870:3871:3872:3874:5007:6119:6670:7652:7903:8957:10004:10400:10848:11658:11914:13069:13071:13311:13357:14180:14685:21080:21627:30054,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: kick35_8e843d3f5335b
X-Filterd-Recvd-Size: 1327
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA
	for <yocto@lists.yoctoproject.org>; Wed, 18 Dec 2019 10:46:19 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Pull a single file using git lfs
Date: Wed, 18 Dec 2019 10:46:17 +0000
Message-Id: <em3b7fa0e4-1cdc-424d-86c1-6d055dd9ee59@andys-imac.leeshillfarm.local>
Reply-To: "Andy Pont" <andy.pont@sdcsystems.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,=0A=0AI have a private git repo on our GitLab server that contains a=
 bunch of =0Asource files that came as part of a commercial product and the=
 final =0Abinary executable is also stored there using =E2=80=9Cgit lfs=E2=
=80=9D.=0A=0AI=E2=80=99m trying to figure out how to create a bitbake recip=
e so that in the =0Ado_fetch() stage it just pulls the single binary file.  =
I think the file =0Acan be got using =E2=80=9Cgit lfs checkout path/to/fil=
e=E2=80=9D but I=E2=80=99m not sure how to =0Amake it connect to the repo a=
nd not do a regular =E2=80=9Cgit pull=E2=80=9D.=0A=0A-Andy.

