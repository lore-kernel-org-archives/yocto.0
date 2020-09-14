Received: from smtprelay.hostedemail.com (smtprelay.hostedemail.com [216.40.44.224])
 by mx.groups.io with SMTP id smtpd.web12.58010.1600081751332729980
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Sep 2020 04:09:11 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sdcsystems.com, ip: 216.40.44.224, mailfrom: andy.pont@sdcsystems.com)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 1FD6E3CC77
	for <yocto@lists.yoctoproject.org>; Mon, 14 Sep 2020 11:09:10 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,andy.pont@sdcsystems.com,,RULES_HIT:41:152:355:379:988:989:1260:1261:1277:1311:1313:1314:1345:1381:1437:1513:1515:1516:1518:1521:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2692:3138:3139:3140:3141:3142:3351:3622:3865:3867:3868:3870:3872:3874:4384:5007:6119:6670:7652:7903:10004:10400:10848:11026:11473:11658:11914:12043:12296:12438:12663:12679:13069:13071:13095:13311:13357:14180:14181:14685:14721:21080:21325:21433:21451:21627:21740:30054,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: pet54_2b03eed27108
X-Filterd-Recvd-Size: 1638
Received: from [192.168.10.145] (leeshill.plus.com [81.174.243.117])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA
	for <yocto@lists.yoctoproject.org>; Mon, 14 Sep 2020 11:09:09 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Tuning 'cortexa53-crypto' has no defined features, and cannot be used.
Date: Mon, 14 Sep 2020 11:09:06 +0000
Message-Id: <emac58a899-1ccd-408b-8b46-bb6d355c7619@andys-imac.leeshillfarm.local>
Reply-To: "Andy Pont" <andy.pont@sdcsystems.com>
User-Agent: eM_Client/8.0.2958.0
Mime-Version: 1.0
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,=0A=0AI am trying to get an older meta-layer (meta-maaxboard) that wa=
s =0Adeveloped for Sumo to work with Zeus.  When I try to build =E2=80=9Cbi=
tbake =0Acore-image-minimal=E2=80=9D then the sanity checker gives the foll=
owing error =0Abefore aborting:=0A=0AError, the PACKAGE_ARCHS variable (all =
any noarch =0A${PACKAGE_EXTRA_ARCHS_tune-cortexa53-crypto} maaxboard_ddr4_=
2g_sdcard) =0Afor DEFAULTTUNE (cortexa53-crypto) does not contain TUNE_PKGA=
RCH =0A(${@bb.utils.contains('TUNE_FEATURES', 'aarch64', 'aarch64', =0A'${A=
RMPKGARCH_tune-cortexa53-crypto}' ,d)}).Toolchain tunings invalid:=0ATuning =
'cortexa53-crypto' has no defined features, and cannot be used.=0A=0AI don=
=E2=80=99t understand what the error message actually means to know how to =
=0Ago about resolving it.  Can anyone point me in the right direction?=0A=
=0A-Andy.

