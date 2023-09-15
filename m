Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F4A0CD37B0
	for <webhook@archiver.kernel.org>; Fri, 15 Sep 2023 23:08:56 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.web10.2273.1694819333391656695
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Sep 2023 16:08:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=RbrmBomd;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=Chnbcf1U;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 0101018a9b1ab101-c32e6992-2e4a-4e66-8cc4-8def114b89e3-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1694819332; h=To:Cc:Subject:Message-Id:Date:From;
	bh=s4kI1qhaXs8R0pMIXiSWy0TDg7wc1BlOLQsOlDurfgw=;
	b=RbrmBomdW+mF/OfmSBcXKr7iNcEeomNVC8NGY2TRioJ22LNPXKKNwelziGU6MIqw
	s4PAGeG5EXE1pJK/Ksm/8Nq0Tvr4bIeid+D+GgGuL5JGRievo49J60gtvaQxKl9HSda
	ZMghVy4weWYBa+4aF+7Jy0Xpj0KVFKPj+5dL02Pg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1694819332;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=s4kI1qhaXs8R0pMIXiSWy0TDg7wc1BlOLQsOlDurfgw=;
	b=Chnbcf1UKDrMg+znRIU3qQGOvoUip4fPXPRMbgX0ixT27ZCWEi3IZL9Y0Flbu1Qu
	Jq3XHLmAHTaNQ+xVMONAmqg/QyV1i3xnhgkSjp0BgmFuQy5SIsMfvehDCD+2/h8cIam
	z53M8dCBpBYd2rrA29g3ja/C7V5ve7cVApy7m/tc=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.28.rc1)
Message-ID: <0101018a9b1ab101-c32e6992-2e4a-4e66-8cc4-8def114b89e3-000000@us-west-2.amazonses.com>
Date: Fri, 15 Sep 2023 23:08:52 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.09.15-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Sep 2023 23:08:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61019


A build flagged for QA (yocto-3.1.28.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.28.rc1


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
oecore: a6dde75a3cbd99cb346a8ab8183e96752d005a6b
poky: 55b09cdc1c4795f4976867034567b012e39cad41



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

