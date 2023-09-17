Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF4CD37B3
	for <webhook@archiver.kernel.org>; Sun, 17 Sep 2023 07:02:44 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web10.26155.1694934156727240927
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Sep 2023 00:02:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=QIRLp9Td;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=p1FXQVt8;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 0101018aa1f2c11f-86d5f669-c1d2-4ef2-bd68-f03f877b24b6-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1694934155; h=To:Cc:Subject:Message-Id:Date:From;
	bh=C+fCp+Y8Hlo2wb5mZtO7i4VBjaZRzTPNvMEXak9BFwA=;
	b=QIRLp9TdYGeZMVo4nnT0h+NpVYF7k0K6mOGc37gDChH2tyjKwmG5BnhkbOQZ6+ER
	2I6dTGCS5UzKad0Zy0LYwlOiLFZQwuqir41LCAywx/f3CzyFTHQK3v7OIs4JqvDNCQz
	l4sX+6TXg3aJTgi8TLw5KLuNsoD9mboBMbbOyXHk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1694934155;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=C+fCp+Y8Hlo2wb5mZtO7i4VBjaZRzTPNvMEXak9BFwA=;
	b=p1FXQVt84fc6DyhCqI0oQgA9kBaswUBz5g3a+g2fF6kXH9OKG7quKS3vSC2X5t72
	a6a5mKFZsL2NG/nOKgV5pi5iyFh1MFPlTemzKrT2IdUd1iyaGjYkRF707WXlGfWAxvS
	uv2ERAkVWJv3ws6AUDMjxjxAxAaxCi/Df1ODU1vc=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.28.rc2)
Message-ID: <0101018aa1f2c11f-86d5f669-c1d2-4ef2-bd68-f03f877b24b6-000000@us-west-2.amazonses.com>
Date: Sun, 17 Sep 2023 07:02:35 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.09.17-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 07:02:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61022


A build flagged for QA (yocto-3.1.28.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.28.rc2


Build hash information: 

bitbake: b60c7085ec370473bea9b3b4b65826a17638837f
meta-agl: e0f6590189cb0a510bff0d4233667c552d964591
meta-arm: b1fe8443a7a72c65fa0fc3371f607c6671b3a882
meta-aws: 77e5438c27292ad5f8c7d3b100cb09b8dbf1c7f4
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: e482213f37828216c7a7df68ff353652cc865ec1
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: e42d1e758f9f08b98c0e8c6f0532316951bb276f
meta-virtualization: 0dbb8593fa38ac2a04fcac04ff3e35611e849824
oecore: 8b91c463fb3546836789e1890b3c68acf69c162a
poky: 926eb08fe325e2ea13098f99d920840b9354ceb9



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

