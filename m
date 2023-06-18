Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D40FEB64D7
	for <webhook@archiver.kernel.org>; Sun, 18 Jun 2023 21:27:12 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web11.13924.1687123625873554768
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jun 2023 14:27:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=gtI0+a3W;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 01010188d0678397-042d99a0-69a2-4f4d-9116-724649c71dfc-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1687123625; h=To:Cc:Subject:Message-Id:Date:From;
	bh=XYYARa2wija4Lc31pcfuGqHVLPoXS5EdGLi3Z0/L2kQ=;
	b=gtI0+a3WHNaXX66Puu7DE1p3Ye37CqSxOlbxyQaurwxVEbvradIxzBch19pC8p9h
	32+BVDA7heyPb7NYkkODbZDsdC6qAiwT8AgPNN0Xd48gW6oQlv093zZ1HYGuWJUhJXP
	OVs2hmwgCgP1YEC/d8+38Gk8njvFYH5t9WmER1j8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1687123625;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=XYYARa2wija4Lc31pcfuGqHVLPoXS5EdGLi3Z0/L2kQ=;
	b=HYOL1+CiyJXmk9cEdzp+b7NtvJmwEqaxZMWC0HOTeNsgo4S1bchQkJiODGNh/zf7
	zNae3OHS6vf72MqOj/MU8oL+Kd7/2Vu7Q+cjtSPQf9ysr9oLoXtpUN4R/1Brr6wKI/0
	mMDYXS9jDvxcvDBUjl2bYgpQjOypmhIMLlYAFSy0=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.26.rc2)
Message-ID: <01010188d0678397-042d99a0-69a2-4f4d-9116-724649c71dfc-000000@us-west-2.amazonses.com>
Date: Sun, 18 Jun 2023 21:27:04 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.06.18-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 18 Jun 2023 21:27:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60335


A build flagged for QA (yocto-3.1.26.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.26.rc2


Build hash information: 

bitbake: e16a9ca7e9286790ac37a067fdc8fde3a35a1c44
meta-agl: 009153010c138d1a5edd2e30bd3d76c95de636d9
meta-arm: b1fe8443a7a72c65fa0fc3371f607c6671b3a882
meta-aws: 6fea710d1b3c8a5ad93e7811e75d8f4cf5962bb2
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 488af577a3f21f038c551612bb0af077fa2b743d
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: 116bfe8d5e5851e7fc5424f40da8691a19c5b5ee
meta-virtualization: 521459bf588435e847d981657485bae8d6f003b5
oecore: 77f6fbfa18b4ad77c3756cfdc45d441a20210781
poky: bab87089ad998afc980adb45c11ae356bc35a460



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

