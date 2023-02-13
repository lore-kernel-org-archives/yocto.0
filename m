Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A073C636CC
	for <webhook@archiver.kernel.org>; Mon, 13 Feb 2023 13:22:18 +0000 (UTC)
Received: from a27-33.smtp-out.us-west-2.amazonses.com (a27-33.smtp-out.us-west-2.amazonses.com [54.240.27.33])
 by mx.groups.io with SMTP id smtpd.web10.13944.1676294537459283780
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Feb 2023 05:22:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=iKxFl4P+;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.33, mailfrom: 010101864af0bcbf-5f7d4559-c8d1-491b-84b2-2bf6028c59b6-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1676294536; h=To:Cc:Subject:Message-Id:Date:From;
	bh=YYCxhL3CsdCwiJtCpo2Z0PEl5/WFdJ4wpHVHIlEoZ0g=;
	b=iKxFl4P+TF1YEMeMKcrkGEc1kPxRso+KmPLMZ36lM0bkYOEERU2TRghVc2o2qcN0
	ICtIq6IqByVCGAWd1IigGB8fM6QpjUm2yA+fSdyZZZM0rDs+5feAvXOgQLeCyQ+Ersl
	odUCuVHYn8c1X2HQTAH+xBR1A5O7pFfaV1aq3tWI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1676294536;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=YYCxhL3CsdCwiJtCpo2Z0PEl5/WFdJ4wpHVHIlEoZ0g=;
	b=LLjonyj39rYmS5MKrehjNYEzZnq5mZZ/z5bDQ5SMyJBjm4io61FvYqsi1mDERral
	GQnel0OtXYgq4WS0smzxfDfX9KqaHPNWzyQHPDg1BjNVdjZwTKgoiO7ScR47I6r9sJi
	JN2Y0cyCGJTsigZn3EY3EUr4BPv31rS/13UgV2VU=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.23.rc1)
Message-ID: <010101864af0bcbf-5f7d4559-c8d1-491b-84b2-2bf6028c59b6-000000@us-west-2.amazonses.com>
Date: Mon, 13 Feb 2023 13:22:16 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.02.13-54.240.27.33
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Feb 2023 13:22:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59214


A build flagged for QA (yocto-3.1.23.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.23.rc1


Build hash information: 

bitbake: c16d364dbf68d2a500fecaf8d6e6d62b11475d9f
meta-agl: ae982d798a979ee5690bee00ca90a2855bab4802
meta-arm: b1fe8443a7a72c65fa0fc3371f607c6671b3a882
meta-aws: 99e30a393f980694bf46284521b137eddd6a753a
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 6c202291925bb179d2d08b5bde80192f9b032b88
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: e707e9b7cf5c62bff4fee029965a87b22dd4ccba
meta-virtualization: beea119eb529b4a11f266004aee8b548427aea39
oecore: daaee6fcb0d201f041678af433d8e1cd6f924d09
poky: aec83663aadc871354b441eef0a3a41eb3780b13



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

