Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA932CDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 06:16:24 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web10.276095.1697609781612813199
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 23:16:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=hsI7Tb6/;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=DqH0Qgfx;
 spf=pass (domain: automation.yoctoproject.org, ip: 54.240.27.23, mailfrom: 0101018b416d8d29-59a72af7-335c-4677-b485-bc0ec3abd261-000000@automation.yoctoproject.org)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1697609780; h=To:Cc:Subject:Message-Id:Date:From;
	bh=CiTMdbKglBTHHw32GukQ6jdEaxWPxcFVb3K551VbDgc=;
	b=hsI7Tb6/KwI096Eu/Qj25WOp2r7zCv5mpBN2Zj58DyknapBX6c8J9L+oVo2sTaYo
	0wKUXnXEu81kkaf1Unve00ZYDSbRjWwLfDt+AEzOU/H4f7EceY5dbFJRVroKrt3vnLf
	Y8+IDWVKTEWcmwd6k0+T6/dbEAA0c1n7idQUikks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1697609780;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=CiTMdbKglBTHHw32GukQ6jdEaxWPxcFVb3K551VbDgc=;
	b=DqH0QgfxZygtDyM9vMA3tfmbMiwEjTtpLAHMBsco+4WeLKVfQUp4KvrAipQf6Sb9
	k2VbwoOTdXm9cCkVy8CF1Zz10QoJIOm9zcPYL/0VpbsNP15O1d9eMbSa4dSURmkEHK6
	4thwvGLe+7iLszcgvacQVONq1ivH/Hai4bT41rug=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.3.rc1)
Message-ID: <0101018b416d8d29-59a72af7-335c-4677-b485-bc0ec3abd261-000000@us-west-2.amazonses.com>
Date: Wed, 18 Oct 2023 06:16:20 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.10.18-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 06:16:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61385


    A build flagged for QA (yocto-4.3.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.3.rc1


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6062

    Build hash information: 

    bitbake: 5419a8473d6d4cd1d01537de68ad8d72cf5be0b2
meta-agl: 4063b4f9a712e32337c1d9678b2f2481dde2a346
meta-arm: 3ed13d25a065f29bd46ee725c708d12ebc3f175a
meta-aws: a30a2b66f1447dc5abdbca6c5de743e39c08b99b
meta-intel: 1bca60610c597571769edc4a057a04bfdbd2f994
meta-mingw: 65ef95a74f6ae815f63f636ed53e140a26a014ce
meta-openembedded: 35bcd8c6ddfb6bc8729d0006dab887afcc772ec9
meta-virtualization: 827092c2ec925ea3a024dcda9ccfd738e351e6ba
oecore: 4f84537670020a8d902248479efa9f062089c0d3
poky: f65f100bc5379c3153ee00b2aa62ea5c9a66ec79


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

