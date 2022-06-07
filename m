Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10F04C433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 16:58:24 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com
 (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.web12.15.1654621094612672388
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 09:58:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=Blh5ld6m;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31,
 mailfrom: 010101813f1a3efc-5d841b2d-60f1-47ed-84b3-78696706e23a-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1654621093; h=To:Cc:Subject:Message-Id:Date:From;
	bh=xF7Rdc9tTzj8grNtVSwykUaIg5bsdPtkt2OX/2yAW0k=;
	b=Blh5ld6mibeC5Nj/pXEQebmLNfmi2GWWLhye4cTu/JlCO/uUszvt4DbJAsHLE7iu
	EPSWkZSOlOUxxP/nJ7IomMTN18sLqPiyio3k+HlNieEu+lX7Ls3m3W0FR6J0/CP1oJT
	q5qathdblclDpZ1lmwkmpcuu5pIUUCB0yzjJJtG8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654621093;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=xF7Rdc9tTzj8grNtVSwykUaIg5bsdPtkt2OX/2yAW0k=;
	b=QlsRiGfiTQRra/htvy7f/O6TZA84wtsg3mu2GhRI63wM/TRaJOCStF3VsvxlFEqR
	tQ1kqLV3FwnHTTy4WUew3g2zV3QeIawFu1Ckag3ryVJNG3YJGzElzqiLrMizetSGq/W
	D/L5iofHzldWRZ2f16serHR40MKOrMtzaJCaqR/Q=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.17.rc2)
Message-ID: 
 <010101813f1a3efc-5d841b2d-60f1-47ed-84b3-78696706e23a-000000@us-west-2.amazonses.com>
Date: Tue, 7 Jun 2022 16:58:13 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 16:58:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57295


A build flagged for QA (yocto-3.1.17.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.17.rc2


Build hash information: 

bitbake: 0784db7dd0fef6f0621ad8d74372f44e87fef950
meta-agl: 34309bc1e6b092e3af5c5d559ad17cee77e99eca
meta-arm: 5c09684863be8e803e3e987a5ce4940721c3f39a
meta-aws: de60da566a16b1af8d585ff7d4d48290169d8f46
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: affda10724e5e3c7948200e888a91ffdb5d32a11
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: deee226017877d51188e0a46f9e6b93c10ffbb34
meta-virtualization: f6b88c1d2f515ffac90457c0d649d6c805fff736
oecore: 4051d1a3aa5f70da96c381f9dea5f52cd9306939
poky: 1e298a42223dd2628288b372caf66c52506a8081



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

