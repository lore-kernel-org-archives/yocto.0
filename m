Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04F0D13C17
	for <webhook@archiver.kernel.org>; Mon, 26 Jan 2026 14:09:57 +0000 (UTC)
Received: from a27-45.smtp-out.us-west-2.amazonses.com (a27-45.smtp-out.us-west-2.amazonses.com [54.240.27.45])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.20226.1769436593989278220
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jan 2026 06:09:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=h1Rs6NeK;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=hjf29+Y9;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.45, mailfrom: 0101019bfaa3bbbf-b34fba64-04ee-4934-a304-87e95efabd1f-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1769436593; h=To:Cc:Subject:Message-Id:Date:From;
	bh=K18+/bMyTDvQCBunnom+nTLeBC/R0L9Q+iluaEVF/q4=;
	b=h1Rs6NeKGv/YaZV7F6rMI2CHILUA/9k2n7sq0nlgL41PVqHMbYJJJKtBj7aTX3Ll
	ktNjZyuR3KApUTEwQ4ZrEwWI6v8P9FZkun3MWuuxLNpqZuyVpIbUaZl+blxyAvv6+hL
	jbUXKTwxNM+bEmOWc9ih15+YS2D3uZQMG8U+VyiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1769436593;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=K18+/bMyTDvQCBunnom+nTLeBC/R0L9Q+iluaEVF/q4=;
	b=hjf29+Y9fJMrzOtsRF4rPsHGsx/cLyCgHbkONAOKVVkISqUHsuoMi7+WvdHeJmzB
	Hg0aQGIombBHcUgraUg2V86hS2AgQsPMbBxJfC+LqMzlZ7Go2fYL9Lif6kKiGXnnIJE
	U8nY0pP6Zq23UwRuXUm70ygDw0WR7LClmwhntMbM=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.33.rc1)
Message-ID: <0101019bfaa3bbbf-b34fba64-04ee-4934-a304-87e95efabd1f-000000@us-west-2.amazonses.com>
Date: Mon, 26 Jan 2026 14:09:53 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.01.26-54.240.27.45
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Jan 2026 14:09:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66185


A build flagged for QA (yocto-4.0.33.rc1) was completed on the autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.0.33.rc1


Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3123

Build hash information: 

bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
meta-agl: 12daee6a859f48d3d65545d4fe79849fc312fa21
meta-arm: c3e9fb12aa31d25e33d8392c4a233ed1275a3278
meta-aws: 9d6d61dc9a3d6186be0e2819a83f0fbd7a316536
meta-clang: eafdaa3cda9000c6d9bd1819ffe1219c7b66e4b8
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
meta-openembedded: 8f5f5cf4b335a09313c48394c62bfb614868fc1e
meta-qcom: 8d273808334daef5922000c8e0548b7ff2b3d72c
meta-virtualization: c474ae21b11a816be607eb7b44d2cf77d1125bce
meta-yocto: 677379f21941363d50f9d946963542b4ccb7e27c
oecore: 036f76ea35c49a78d612093dcd8eb1fac7ded8d7
poky: 5abd143cb526a99c8ea181c6f76d64ed9607dae9
yocto-docs: 6799b1be5d48f4bf5dcd0b16c2dbc2e297d4ecd9



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

