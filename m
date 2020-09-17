Received: from smtprelay.hostedemail.com (smtprelay.hostedemail.com [216.40.44.16])
 by mx.groups.io with SMTP id smtpd.web11.16101.1600351080814867482
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 06:58:01 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sdcsystems.com, ip: 216.40.44.16, mailfrom: andy.pont@sdcsystems.com)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 98F5A18224D86;
	Thu, 17 Sep 2020 13:57:59 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,andy.pont@sdcsystems.com,,RULES_HIT:41:152:355:379:599:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1513:1515:1516:1518:1521:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:3138:3139:3140:3141:3142:3352:3865:3867:3868:3870:3871:3872:3874:4250:4384:5007:6119:7652:9040:10004:10400:10848:11658:11914:12663:13069:13071:13311:13357:14096:14097:14180:14685:14721:21080:21325:21627:21740:30054,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: crib66_5116d9d27123
X-Filterd-Recvd-Size: 1933
Received: from [192.168.10.145] (leeshill.plus.com [81.174.243.117])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf15.hostedemail.com (Postfix) with ESMTPA;
	Thu, 17 Sep 2020 13:57:58 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "Amrun Nisha.R" <amrunnishar@gmail.com>
Subject: Re: [yocto] Emulator tool for imx8m #linux #devtool #yocto
Cc: yocto@lists.yoctoproject.org
Date: Thu, 17 Sep 2020 13:57:57 +0000
Message-Id: <emc7be590d-88c2-4a21-b564-50429ce9031a@andys-imac.leeshillfarm.local>
In-Reply-To: <b6LN.1600350210852554203.zvkv@lists.yoctoproject.org>
References: <b6LN.1600350210852554203.zvkv@lists.yoctoproject.org>
Reply-To: "Andy Pont" <andy.pont@sdcsystems.com>
User-Agent: eM_Client/8.0.2958.0
Mime-Version: 1.0
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello!=0A=0A>Actually I'm working on the DART-IMX8M board. I can able to bu=
ild the =0A>image in linux machine and run it on the board. But for every b=
uild, i =0A>have to run the image on board. I have checked on the qemu but=
 it is =0A>not supported for the machine imx8mq-var-dart.=0A>Is there any em=
ulator can be used for imx8mq-var-dart?=0AGenerally speaking, at the point=
 when we get to working with boards we =0Aare needing to interact with the o=
utside world so we have to run on the =0Atarget hardware.  Once U-Boot (or=
 equivalent) is up and running then we =0Aspeed the development process up u=
sing TFTP/NFS to boot the Linux kernel =0Aand mount the root file system.=
=0A=0AIt saves all the messing around programming on-board flash devices or =
SD =0Acards whilst the image is in flux.  It also means that all the =0Aap=
plication developers are using the same and the latest configuration =0Arat=
her than having flash devices with old versions potentially causing =0Aprob=
lems.=0A=0AIt might help a little!=0A=0A-Andy.

