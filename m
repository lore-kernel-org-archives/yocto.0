Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31879C25B74
	for <webhook@archiver.kernel.org>; Mon,  3 Jun 2024 00:17:23 +0000 (UTC)
Received: from a27-45.smtp-out.us-west-2.amazonses.com (a27-45.smtp-out.us-west-2.amazonses.com [54.240.27.45])
 by mx.groups.io with SMTP id smtpd.web11.71875.1717373841789311455
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jun 2024 17:17:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=aV/zdL9m;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=dr2DkwCF;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.45, mailfrom: 0101018fdb752dcc-d3076ef9-329f-4d77-b545-d13c54e3282c-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1717373841; h=To:Cc:Subject:Message-Id:Date:From;
	bh=9vtwJTx97peeab7ZVuiLIgyaGKTNRYnbW9CbUfPt+CY=;
	b=aV/zdL9mAnWJQDYVhC3hFOOpik6RbtV9TM2OnYVPuqok/xtQp6HhCVVfiZnu1JCq
	ocUAVfeGKfQGlTKQcNOu02RPTpAtSi52CM70jtjoXbTDDiXsMFhyRshsJfZMOUEtEF+
	ZoqHC8aNRyOA/dbQ0mMv7k+TJH2U0gl+KrQjFIfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1717373841;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=9vtwJTx97peeab7ZVuiLIgyaGKTNRYnbW9CbUfPt+CY=;
	b=dr2DkwCFOsVkKdOK9E0UqNUAcZqeTiBZqY6k0gDjTBojvJyD2yJdxXs2KeGzuJ+i
	EKdr5TWhxpipgoTggvik7w/o7dIaOKERauwGiToGQN5lWiuwMSommfh4wTJ5mHQ31+r
	owE1HLMUNV24xJfXCINe1Y+ZvVQN0iC4OmPiRBwA=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.19.rc1)
Message-ID: <0101018fdb752dcc-d3076ef9-329f-4d77-b545-d13c54e3282c-000000@us-west-2.amazonses.com>
Date: Mon, 3 Jun 2024 00:17:20 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.06.03-54.240.27.45
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jun 2024 00:17:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63255


A build flagged for QA (yocto-4.0.19.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.19.rc1


Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/7000

Build hash information: 

bitbake: 5a90927f31c4f9fccbe5d9d07d08e6e69485baa8
meta-agl: cf2cc9392b12466fb3bd72eb9171577c4b2d24e3
meta-arm: 260e3adc2bf322f52d81c0642c825088a88bb051
meta-aws: edb80a35af5e68a5ed6db31a61d9ad7a2350c39b
meta-clang: ce7d354da7a498f90ba260c006d29a4d23e3b4f7
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: bb7c7b0f448ab6541ab42a316dfeff1f7726252f
meta-mingw: f6b38ce3c90e1600d41c2ebb41e152936a0357d7
meta-openembedded: 0560b848996a0feb410a8cd8ca07c60fe2f3b5bc
meta-virtualization: 8b356b91ed0d4bcab72350a2ddcef880f4fa5c26
oecore: ab2649ef6c83f0ae7cac554a72e6bea4dcda0e99
poky: e139e9d0ce343ba77a09601a976c92acd562c9df



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

