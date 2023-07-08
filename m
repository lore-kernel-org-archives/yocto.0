Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBCBCEB64DC
	for <webhook@archiver.kernel.org>; Sat,  8 Jul 2023 23:47:19 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web11.8797.1688860035092326860
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Jul 2023 16:47:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=K5r0GCE6;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 0101018937e7039c-06f98c3d-58fd-45c2-9032-397dda013bea-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1688860034; h=To:Cc:Subject:Message-Id:Date:From;
	bh=C6gHpnKppE/PBFfF9IJbU5UsMVh+8zJWvFQcKhbOhMI=;
	b=K5r0GCE6n/M0iSU8XfyAajCWF1lqAQIpuLsqsEhc5z9NBwy9CaSFlxIk0O0M0tqo
	inB6stIlkDpYtaVusmuTq57dSHsrZEIL4tgztV82hheiIu12mK4pRGJZZA7qGqe/r8s
	xAs/uxJoDjTTca8Z+uSL+bbqIy18ZoJmNnZj1hvA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1688860034;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=C6gHpnKppE/PBFfF9IJbU5UsMVh+8zJWvFQcKhbOhMI=;
	b=K0lu1L2b9vidMDrDgkLU3+z/i5PorHRoYinCRZ+P3cFJpRbrZbtErzg/c+sTaURC
	jDAceZIAhIzXUHifogEAwQaVpQUrJNrLqrmQMJFalaK6BVNHLseCBLzPEP3B+4YfutR
	/JGWh+FB2aA8QNiMnhreJ+GcPYJFkG04Eh5VSiIU=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.2.2.rc1)
Message-ID: <0101018937e7039c-06f98c3d-58fd-45c2-9032-397dda013bea-000000@us-west-2.amazonses.com>
Date: Sat, 8 Jul 2023 23:47:13 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.07.08-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 08 Jul 2023 23:47:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60542


    A build flagged for QA (yocto-4.2.2.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.2.2.rc1


    Build hash information: 

    bitbake: 08033b63ae442c774bd3fce62844eac23e6882d7
meta-agl: f1bb0ee68b18a39917e06bfbb08d677bbf8bdf25
meta-arm: 1a15a5b052d488c9f02ab8279b24003666312c96
meta-aws: 8fb078b20eac38a7472f5e476114f4283fad3beb
meta-intel: e31edebd4166a7b58ec11c00f9364d9f5f50484f
meta-mingw: 4608d0bb7e47c52b8f6e9be259bfb1716fda9fd6
meta-openembedded: d71a08b3d8fc69d3213c10885af9cc693056a8bd
meta-virtualization: a19092ce81339a129edce745522eebf577efc744
oecore: 3ef283e02b0b91daf64c3a589e1f6bb68d4f5aa1
poky: 6e17b3e644ca15b8b4afd071ccaa6f172a0e681a


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

