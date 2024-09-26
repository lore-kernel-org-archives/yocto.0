Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E856DCDE03F
	for <webhook@archiver.kernel.org>; Thu, 26 Sep 2024 22:31:09 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.web11.56832.1727389860842449605
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Sep 2024 15:31:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=hGIYMhTB;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=ugCMFmzv;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 0101019230758073-d0f599c5-884b-48cd-bed3-7ed67d2ec5b0-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1727389860; h=To:Cc:Subject:Message-Id:Date:From;
	bh=qYPqNsk9cmYnJ8yC3rRGUKJ1q3aDPLMvqRRsjgKSdeE=;
	b=hGIYMhTB0izaRQ9OjzFYfkfcXSQiCfpOsciT5gQJQWCyeoBQd5XAIFGusr5kI0oV
	tTUw21cRYDWNxq9BBkrFG77WdMK/8vDU/mH39O/43GN0+CqC8NbxBS2D2xNXkMEK+5E
	0F1rNE90GDPGkCtTe5dE7+IoLH5iTraVi+sdNUh8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1727389860;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=qYPqNsk9cmYnJ8yC3rRGUKJ1q3aDPLMvqRRsjgKSdeE=;
	b=ugCMFmzvIUoCAaLDRkbDNiyWid3ajDCuVUpFnClk6iFMMzVN6NE0QeEXptb8UvXA
	fqT6o9zJlZFKiaCysVPEQcyg2huyHFr+sGtNCGG80aqKsyJlNB7AQujcZcZtPiUCdQQ
	x/lgotDpuF5hqqKlNg7WjEKXmMezfDXs0bXV3y5A=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.4.rc3)
Message-ID: <0101019230758073-d0f599c5-884b-48cd-bed3-7ed67d2ec5b0-000000@us-west-2.amazonses.com>
Date: Thu, 26 Sep 2024 22:30:59 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.09.26-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Sep 2024 22:31:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63896


    A build flagged for QA (yocto-5.0.4.rc3) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.0.4.rc3


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/7360

    Build hash information: 

    bitbake: d251668d9a7a8dd25bd8767efb30d6d9ff8b1ad3
meta-agl: 6debcd5420b798dd8c0b3052620cc5d8f3bcbff7
meta-arm: 1947c000299c0330e8a866996505221a14c0e1ea
meta-aws: 1bc413ef26efe835d7c2f68859cc36ebd4233903
meta-clang: 2b7433611d80f6d0ee1b04156fa91fc73d3c2665
meta-intel: c2bc8e27e9cc83654a23e8d89525fd9b1e781eb6
meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
meta-openembedded: 735ae0310870ffce07ce0c55c4f87c20ac161ff9
meta-virtualization: 66ee8d268db25a9f2848bda6858c284c745f549f
oecore: f888dd911529a828820799a7a1b75dfd3a44847c
poky: 2034fc38eb4e63984d9bd6b260aa1bf95ce562e4


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

