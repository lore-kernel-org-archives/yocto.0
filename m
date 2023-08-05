Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D29B2C001DB
	for <webhook@archiver.kernel.org>; Sat,  5 Aug 2023 03:06:41 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web11.5534.1691204793755007111
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Aug 2023 20:06:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=VXm7HgZZ;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=A1XgfsUM;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 01010189c3a931b3-c5f1811c-d9e0-44fe-8866-ee1f73ac5306-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1691204792; h=To:Cc:Subject:Message-Id:Date:From;
	bh=tF9cg7pu0IcFXZ2N/Lmo+IK6MbX6ZkiOszWtN5gtgi4=;
	b=VXm7HgZZPHpw9D2ewPK3lbPdFiuobWsv2D6LAG4Bs0ABJD8Abqvmz6K1j1Vwb+nw
	GWWX+vKM9xrKakRuKDt4ZTp+v1qNb0TCj71HjrNd6Jy8qaz7/9oBATgnftqT+fN5PFG
	HNDWOtucvhdJ8pfuykkopPVhNzTHSqPcoiTw/pnk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1691204792;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=tF9cg7pu0IcFXZ2N/Lmo+IK6MbX6ZkiOszWtN5gtgi4=;
	b=A1XgfsUMyskSaBF9RlVp/e/ilbWHjhxAI0dF/krn74t9Zq9OC6emEgXb8lChd/Qx
	W1pNlVu66xV0nvTW3H71LEOngPMyKVWW9ng1N3+jrgSkGFmGq5fdUMotLFD3Zyr1u7n
	HLubtTpExABsh2YuDCbPKwTkO8xxN5VtOd1mGQ9I=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.27.rc2)
Message-ID: <01010189c3a931b3-c5f1811c-d9e0-44fe-8866-ee1f73ac5306-000000@us-west-2.amazonses.com>
Date: Sat, 5 Aug 2023 03:06:32 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.08.05-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Aug 2023 03:06:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60713


A build flagged for QA (yocto-3.1.27.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.27.rc2


Build hash information: 

bitbake: b60c7085ec370473bea9b3b4b65826a17638837f
meta-agl: 583f80f8e9d085a98f1cbab3a9d8082503ab739e
meta-arm: b1fe8443a7a72c65fa0fc3371f607c6671b3a882
meta-aws: d72bb6b38de88caab73047feba16092ca38959c1
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 488af577a3f21f038c551612bb0af077fa2b743d
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: b8b0b06821d4d4df0cce4f07fa31a8ca1dd38f46
meta-virtualization: 521459bf588435e847d981657485bae8d6f003b5
oecore: 6dd64ca2d726d0b222a7608c65eb0a20454c3f99
poky: 32da5ee9519119a16392acba29f9df4720a55c0f



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

