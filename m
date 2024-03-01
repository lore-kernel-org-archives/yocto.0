Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F566C5475B
	for <webhook@archiver.kernel.org>; Fri,  1 Mar 2024 22:16:52 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web10.36975.1709331402297569141
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Mar 2024 14:16:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=ENHTmLAR;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=Vha9m2Qr;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 0101018dfc174a49-a1f49584-e024-4894-9905-cc8c0c222f15-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1709331401; h=To:Cc:Subject:Message-Id:Date:From;
	bh=2i5RusssOY0DiSA5+MG6SuiyFtn7n+lsEeKTAmJMXpQ=;
	b=ENHTmLARfJq77qkSvLd2yogRDZjjqlLVcVVYkM/YjA00kKT7C3jpbjupH7Iw4Fiw
	08ieXqoo338BJwa0qOn6zjpjvaHWUNrujpS1+4aQXeyBW5IdjarOwYI0+xDOJAFbprH
	3Ud49fp31lKxqhSjr5iUQ79/6Dgg3AxQ7M8L9HZ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1709331401;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=2i5RusssOY0DiSA5+MG6SuiyFtn7n+lsEeKTAmJMXpQ=;
	b=Vha9m2QrDv5wgIlaNl3IX2cDkpBoy6cNzniHJHh5RXA5BxJf+YijXlQ/Ie421QEm
	JzLr6OODoTuOMM5zA/T2ozHOA7f+8Fe+Lwo48dNP92ZbMUHQkNkm83kKtV9eVOeJMZA
	MACP1CbkrPw9D0rm9E4fGECKTGvC/uT3fHfyqAGk=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.32.rc1)
Message-ID: <0101018dfc174a49-a1f49584-e024-4894-9905-cc8c0c222f15-000000@us-west-2.amazonses.com>
Date: Fri, 1 Mar 2024 22:16:41 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.03.01-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Mar 2024 22:16:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62650


A build flagged for QA (yocto-3.1.32.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.32.rc1


Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6633

Build hash information: 

bitbake: 7ce4107bf824b3e115b40558336de25f99af31f8
meta-agl: 6779dc072af75f1f606b0aecafff80fca8bc8419
meta-arm: b75b8ce1ac10dc3521c0f710a4cf79bc7e985cfd
meta-aws: 6304ff33b112512b31919a7aaf145ab2ceed67a1
meta-clang: fc56d6c8014f75fbc5a3f272c62ae201888e65d5
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: e482213f37828216c7a7df68ff353652cc865ec1
meta-mingw: 7bdc58e6c5d1054b1b6ad5c4e480a95e995ccbae
meta-openembedded: daa4619fe3fbf8c28f342c4a7163a84a330f7653
meta-virtualization: 35c723774ee06b3c1831f00a2cbf25cbeae132e1
oecore: b49b0a3dd74c24f3a011c9c0b5cf8f6530956cfa
poky: 54d8a1f631543ce01ba513e7cdae756e2a8e1968



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

