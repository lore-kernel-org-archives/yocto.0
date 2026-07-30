Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950E9C5516D
	for <webhook@archiver.kernel.org>; Thu, 30 Jul 2026 21:16:40 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.276.1785446199717301695
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jul 2026 14:16:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=lfWfn0aO;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=BihekrJk;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 0101019fb4e2edae-c507e5b0-0a70-4996-ade5-91f6aa853cfb-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1785446198; h=To:Cc:Subject:Message-Id:Date:From;
	bh=71tJL9A0i0W/1B8l049OjNGUMw85m5gYW1ysvEHry9o=;
	b=lfWfn0aOLMi1FI/jecP6+3PAqPHjLaD4y02cSQjNThamUbiafkWS4zAaGSUTTROP
	9qDnLxwhG8zdS4gi7RLjtvEoNGARVZ2ha+MAiPP9Buo1oOQcXvMugNQTUyFpHHIN0/Y
	cgvm52dcSOwG8TrYpHJ1h2hLoCANmuFPqEU1fj18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1785446198;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=71tJL9A0i0W/1B8l049OjNGUMw85m5gYW1ysvEHry9o=;
	b=BihekrJkFf+J5+4S1Kon5LVaoL4QgqDQorQcDTnL79hpCtc4/oZwLQYg9NUL+yjJ
	OfK+KoLV/RSJb1vYFI4mO6r47VqC2sFnZDBjSbLhvCELSxgFML3l1otdKXyOxNJ7Lwl
	LHIrH6xIiRuh8vJ8MZ4SsqVv3i/y46h6UYqPCKmY=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.0.3.rc2)
Message-ID: <0101019fb4e2edae-c507e5b0-0a70-4996-ade5-91f6aa853cfb-000000@us-west-2.amazonses.com>
Date: Thu, 30 Jul 2026 21:16:38 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.07.30-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jul 2026 21:16:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66672


    A build flagged for QA (yocto-6.0.3.rc2) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.0.3.rc2


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4341

    Build hash information: 

    bitbake: fae9db3168dbff1b8c76fe9c6726a9687ff97514
meta-agl: 3c55b45bf920bec93938af02f2452cd698d3bacc
meta-arm: 0979b80429099f1a42dc0026c8c466cee780bc74
meta-aws: 5e7cc95f7d55a0ba0ae6a7e6e43e6323811a140a
meta-clang: ef0d22f21910a0c30c967eeb17d8f209806e2d81
meta-intel: 79a9681ce83f6bf36aede3aeb8c1707d29bca329
meta-mingw: 5876c193da3ad86b5e23012374b5350e49b0c755
meta-openembedded: af8b6d6b2f0b11595b0a0d5b82efa3129d52a628
meta-qcom: 08c6fad437408d3f38afdd9b82dd6b1fc3a7f872
meta-virtualization: d7b0cd1e5f0f28aec111137f4490763d5db01fd6
meta-yocto: 1b132647002eea43a2c7a7f857f63f42dacbc26c
oecore: f09a0f28aeb54ddd90415dd458338e1565bb5a49
yocto-docs: c8431f833c8f663621793033bbc1b61ccfdf4d28


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

