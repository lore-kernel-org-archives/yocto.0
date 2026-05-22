Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D28CD5BAF
	for <webhook@archiver.kernel.org>; Fri, 22 May 2026 00:04:10 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.7153.1779408247660018891
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 May 2026 17:04:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=OJqucZh2;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=qb+C6mlc;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 0101019e4cff17e6-5c625f77-2121-4c24-ac64-423227cf3775-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1779408246; h=To:Cc:Subject:Message-Id:Date:From;
	bh=2mbunAg2bfI5g3eXVgr6cvT6lu0Dbk8ssgWHHpLc3W0=;
	b=OJqucZh2fYribjsIfB+gLBlyHgZYjGny3qNSGVyeUa4AmKA6dZJ0OOX3xbTTVpJy
	kddUbjsXquAcWDXqKR23JW5bSs29vJwVl08SoE/b9yLpp47Pz7TeRz0fBtl0xr//o9e
	Xs4qzi//TOSJ0WtuzlyoBo31bNtARub6WwHmptJ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1779408246;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=2mbunAg2bfI5g3eXVgr6cvT6lu0Dbk8ssgWHHpLc3W0=;
	b=qb+C6mlcrcLmoA4mz1Oc172bNjAGB31pptWt7we70CWucM+etFiWLweErUbqs/GT
	ixX2ZxkqF3jHWqpO4zzb6Q/6jMjt4xnhuS4y3h++vH6gO34KAu93pSgSQJZkCxy2JFK
	uQng/ira2QQqE4u22IlpytKYs46/rjLSJiitKxcU=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.0.1.rc4)
Message-ID: <0101019e4cff17e6-5c625f77-2121-4c24-ac64-423227cf3775-000000@us-west-2.amazonses.com>
Date: Fri, 22 May 2026 00:04:06 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.05.22-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 May 2026 00:04:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66577


    A build flagged for QA (yocto-6.0.1.rc4) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.0.1.rc4


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3859

    Build hash information: 

    bitbake: 22021758e66737bcf68dfd2b74adc6a0cb1d42d9
meta-agl: a0e79e40abd8a48e1e2256e447db56ffad21b463
meta-arm: 052c2cf333ecf16fc2ded4c5d09749ebaff8c0c5
meta-aws: 8bc16e7bb3fa0eee9a96f0d93fdac0b2fd978933
meta-clang: 78c5e12f08198f4f257a9348516d2103cd617c1d
meta-intel: 55e0ff278f7040dff5e453c509357820e8ce4c9b
meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
meta-openembedded: 9af4488d46cb4fd4c0d2d64820c86225ebd6ac71
meta-qcom: 531d7c4f5225aa88f23826c0746638efea24665c
meta-virtualization: e1bdfe90563487f0a3253cd4b0d5bb7fa5194d83
meta-yocto: 8251bdad5fda780a000fb41e6eda82eadf0fa39e
oecore: 06dd66e6220e5ce4ed4b9af4d8231ae5f0a8ce80
yocto-docs: 7ac955621b36a221126cd40f12c41fa98c213a24


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

