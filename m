Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58CBDC001B0
	for <webhook@archiver.kernel.org>; Sun, 23 Jul 2023 21:55:07 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.web11.35449.1690149304340595176
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Jul 2023 14:55:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=PKqvWsEd;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=hU08lmcd;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191, mailfrom: 0101018984bfb447-6fef57b5-dfcc-4b0a-9cb8-11dd75284d77-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1690149303; h=To:Cc:Subject:Message-Id:Date:From;
	bh=DZTUzRNJQGQcQQdBrRMNHT2R65tHsHb9DknbIxbtpkY=;
	b=PKqvWsEdn3+BO90emI543dsSG8HyTQLmFHCLSuwWshe8+Y/tJBLZSAI4BsH6cCU/
	E9JYbCwAkOyv/trJAjmazbdCqKwlA6mZhW0DyN/23KNqazc6OkKshlJOPAK15oEOlea
	e4YRtPi6nuAbz/435sNxJEdk4vGogMWi2NovdHKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1690149303;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=DZTUzRNJQGQcQQdBrRMNHT2R65tHsHb9DknbIxbtpkY=;
	b=hU08lmcdtY26D5czNWiYPYqMP9yleFC1OmaV6kwF8w+BuQfxggR9yJXk68jTOM/P
	Gw2g+nNmEAqHkmXq0/CnYzTFuVU4nynYs80dv9aDlbVaIEeht2XBHw7V/17k+jCurh9
	Aq9zkXTNXfCpqhTXwWNBzTo7snQ4fqg45Ck1Wcjs=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.27.rc1)
Message-ID: <0101018984bfb447-6fef57b5-dfcc-4b0a-9cb8-11dd75284d77-000000@us-west-2.amazonses.com>
Date: Sun, 23 Jul 2023 21:55:03 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.07.23-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 23 Jul 2023 21:55:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60635


A build flagged for QA (yocto-3.1.27.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.27.rc1


Build hash information: 

bitbake: b60c7085ec370473bea9b3b4b65826a17638837f
meta-agl: 583f80f8e9d085a98f1cbab3a9d8082503ab739e
meta-arm: b1fe8443a7a72c65fa0fc3371f607c6671b3a882
meta-aws: 9d29db04581d732313a5b17a84d1df004056e002
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 488af577a3f21f038c551612bb0af077fa2b743d
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: b5282ece919f016d91a1043769676efb02b4f0fb
meta-virtualization: 521459bf588435e847d981657485bae8d6f003b5
oecore: ab6a0d053d910c3d50fcb06e9c2ca98430b673a4
poky: df86cc15d0a39d8d85747f7acc2c887cccfd9fa7



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

