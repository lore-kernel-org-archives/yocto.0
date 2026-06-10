Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 893D0CD98C5
	for <webhook@archiver.kernel.org>; Wed, 10 Jun 2026 22:58:51 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.33723.1781132330752572285
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jun 2026 15:58:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=meeb0vnF;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=uWPgSNEQ;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 0101019eb3c283d7-332c2687-00f5-49b4-84f6-7ea02f2b99eb-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1781132330; h=To:Cc:Subject:Message-Id:Date:From;
	bh=UZ79kIt0108P6BtSaTFnwBllgQCZM0JDVRbP9Tdv30s=;
	b=meeb0vnFtKuAoEEYRrwvamg3JrPnN+z0TQ9AhbCMiJuD1wHJm4fjWTYTRwA3AilV
	gx1+RL9S/V2XsUc8KNT4r+psLJQHD6LRicNKu4bfOV6CNsNK384RBSieSLIAB+DzIt5
	LPHbjwoQmlo4mgLjpAWPDsQKViA+wqjB4A8CW8pc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1781132330;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=UZ79kIt0108P6BtSaTFnwBllgQCZM0JDVRbP9Tdv30s=;
	b=uWPgSNEQgFy8mF9hpR/puN0Hr40AqbX4z32VjjVnGXme0XPVSC5M+X+Ao+IDF2sD
	pI+ujrJgc3foPoKbN1A+ho/AFX1WFDh9QT51UJMUlL645cNAXIfRYP6YIvD48+xpnVZ
	BKN7W2AUZXyvikUIkuU+cDKF69bNv+DUwDqm9vjE=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.1_M1.rc1)
Message-ID: <0101019eb3c283d7-332c2687-00f5-49b4-84f6-7ea02f2b99eb-000000@us-west-2.amazonses.com>
Date: Wed, 10 Jun 2026 22:58:49 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.06.10-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Jun 2026 22:58:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66592


    A build flagged for QA (yocto-6.1_M1.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.1_M1.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3961

    Build hash information: 

    bitbake: c687d42b81b17e7a2399099cab0f1a6aafcf6520
meta-agl: 3c55b45bf920bec93938af02f2452cd698d3bacc
meta-arm: 02d361b4359fde9b6646129980f1484f7aa5b09e
meta-aws: 5e7cc95f7d55a0ba0ae6a7e6e43e6323811a140a
meta-clang: 4b18f531a8d1047f49dd3097ddd00be870c0ed1e
meta-intel: 55e0ff278f7040dff5e453c509357820e8ce4c9b
meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
meta-openembedded: 53cbcaba3f09cb50b72b91c2b33bdbd479da5f19
meta-qcom: bc2df58da599d0ec0a6826736d2a7a2e1863ca5c
meta-virtualization: 022f4356d4a9b389f51472d40a9330aa59f6bb9a
meta-yocto: 59c41245ad231f5320defcb275477e3d25a2203e
oecore: b5c24e1491dcb9ab0f782df6be6582fbd2151724
yocto-docs: be424bf52cd3ac9c83a4617d0b06afe8cde055be


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

