Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BCF9C4345F
	for <webhook@archiver.kernel.org>; Wed, 17 Apr 2024 23:54:59 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.web11.966.1713398091757010559
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Apr 2024 16:54:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=c//JA3Cg;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=B9Atq+eo;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31, mailfrom: 0101018eee7c0c50-f4c06ca0-8b15-4f96-a5da-269fbdf07dff-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1713398091; h=To:Cc:Subject:Message-Id:Date:From;
	bh=ZKdN6YzVuAyDT7qXJqWNcpAcS7Rgx2LdbR0TLlRiuv4=;
	b=c//JA3CglB22zLMlDBdXAcIZSp32wsPlXWM9MjELDGk+mRGthKErePwx/3znkqgq
	G1Arl14u7/zempfCl5ejj68up8qYkexaUfEQNNnIq8UksDYW9AOFpEyziTKgcTEbV7b
	/mG594kXtwVwoYtZA9qGMWpbivZr6idE0Rdkndl0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1713398091;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=ZKdN6YzVuAyDT7qXJqWNcpAcS7Rgx2LdbR0TLlRiuv4=;
	b=B9Atq+eoau4ZS0ykKYro/e2hOmjXQZ5xMwKlGA/B+7iZqT53nfz+vVHhU3ehroJp
	s9db6IQiWqNhmMoRFOcVjG5o3CD7MZIOJiCQD5bvNYcBSVXJ8u8guwUJILavsgbB6FG
	Ia136n2GXni/kbTQp09/Gp0SdlHngiVDs7/Vznb4=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.33.rc1)
Message-ID: <0101018eee7c0c50-f4c06ca0-8b15-4f96-a5da-269fbdf07dff-000000@us-west-2.amazonses.com>
Date: Wed, 17 Apr 2024 23:54:50 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.04.17-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 23:54:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62955


A build flagged for QA (yocto-3.1.33.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.33.rc1


Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6816

Build hash information: 

bitbake: 7ce4107bf824b3e115b40558336de25f99af31f8
meta-agl: 6febe63dbdc2655efeac2596f7a2d9cdbaa5bc6f
meta-arm: b75b8ce1ac10dc3521c0f710a4cf79bc7e985cfd
meta-aws: a83f0fe4cf41261cfbd22ad5c34c36d7a5106903
meta-clang: 989ff6a4e7db59f01d511727135610006124ead2
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: bab936cb4ae5671ceaccf50305a6c0515e6f0222
meta-mingw: 7bdc58e6c5d1054b1b6ad5c4e480a95e995ccbae
meta-openembedded: c74ebbddfd9dbe02d3f7422016324451eb218e1e
meta-virtualization: 35c723774ee06b3c1831f00a2cbf25cbeae132e1
oecore: c4fb7d1f0f157ffafd9f907f49ea74b93b2c1d40
poky: 63d05fc061006bf1a88630d6d91cdc76ea33fbf2



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

