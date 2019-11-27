Received: from smtprelay.hostedemail.com (smtprelay.hostedemail.com [216.40.44.38])
 by mx.groups.io with SMTP id smtpd.web09.7652.1574869257532455114
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 07:40:57 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sdcsystems.com, ip: 216.40.44.38, mailfrom: andy.pont@sdcsystems.com)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 7E891100E7B40;
	Wed, 27 Nov 2019 15:40:56 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,andy.pont@sdcsystems.com,:::,RULES_HIT:41:152:355:379:599:973:988:989:1256:1260:1261:1277:1311:1313:1314:1345:1359:1437:1513:1515:1516:1518:1521:1534:1537:1566:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2827:3138:3139:3140:3141:3142:3865:3867:4362:5007:7652:7903:9040:10004:10400:10848:11026:11473:11658:11914:12663:13069:13311:13357:14685:14721:21080:21627:21740:21796:30037:30054:30070,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: kitty71_25381b934913b
X-Filterd-Recvd-Size: 1562
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Wed, 27 Nov 2019 15:40:55 +0000 (UTC)
From: "andy.pont@sdcsystems.com" <andy.pont@sdcsystems.com>
To: "Mauro Salvini" <m.salvini@koansoftware.com>
Subject: Re: [yocto] Yocto build to add root password
Cc: yocto@lists.yoctoproject.org
Date: Wed, 27 Nov 2019 15:40:53 +0000
Message-Id: <em575b4e6f-8295-47a1-bd02-c69759b44e75@andys-imac.leeshillfarm.local>
In-Reply-To: <49c4847e-7bcc-b3b1-f6f5-8ab0a7b3fec1@koansoftware.com>
References: <CAA=hcWR3Vhfc9H3VRf-Q1m44rX_ox2J-LjuPWHsB1Rrq-yrVTg@mail.gmail.com>
 <bc70cb07-37c8-3078-7c02-d7be487035fd@ibeeto.com>
 <cb99f223-9a19-3c88-b1a3-e67d6b7a6654@koansoftware.com>
 <em055836fc-7045-483e-85dc-61bedfdb14e9@andys-imac.leeshillfarm.local>
 <49c4847e-7bcc-b3b1-f6f5-8ab0a7b3fec1@koansoftware.com>
Reply-To: "Andy Pont" <andy.pont@sdcsystems.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Mauro wrote...=0A=0A>Actually I'm using:=0A>=0A>EXTRA_USERS_PARAMS =3D " us=
ermod -p '$(openssl passwd -6 myrootpassword)' root;"=0A>=0A>...=0A>=0A>But =
at this point I'm not sure if ${ROOT_PASSWORD} works (I'm using the passwo=
rd wrote on the command, not passed by variable).=0ASwitching to the =E2=80=
=98$(openssl =E2=80=A6)=E2=80=99 form has worked, even using the =0A${ROOT_=
PASSWORD} variable.=0A=0AThanks for your help!=0A=0A-Andy.=0A

