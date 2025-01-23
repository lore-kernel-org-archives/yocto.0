Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 738DCC0218B
	for <webhook@archiver.kernel.org>; Thu, 23 Jan 2025 23:58:38 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web11.172.1737676712726871121
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2025 15:58:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=LbaSL/kn;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=h76+ZUtS;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 01010194959a6748-40250453-a157-4f33-a155-893079bb12c0-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1737676711; h=To:Cc:Subject:Message-Id:Date:From;
	bh=/I1HyRSWHfCp4+dMu2+/O5hHmBmiGXRcvCPIwVtw/PU=;
	b=LbaSL/kn3IJHmr/EuDBWo2jR5kC4qiyosGu28mQBWrJ2sQIu5cola9Kv6Dfnf0YM
	n0NCGuYKG8dT8oIaJ0jzcM3cF6XJfJCARvO+Hn5M+HWyW07cUoTI+3O2WxPgc/8S9AY
	KXWcr5S3i9A+WojVmlqgARfZNgurq9H2KJE10SNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1737676711;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=/I1HyRSWHfCp4+dMu2+/O5hHmBmiGXRcvCPIwVtw/PU=;
	b=h76+ZUtSf3RkVaF4T0W37VMMX1QGUcemnn6zrt5fQ6RIkn5muA8flDs8pwodXdbd
	h8qDEwTdjTxA/xKoKjgCGzwapOmAJtsLbdq34o4ewwhIfpd5f0BtMUXlF2GisqDpUv7
	+Qihv7CYrpPbItFlrEBotYzFNqqLbfdWFa0QkMwI=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.2_M2.rc1)
Message-ID: <01010194959a6748-40250453-a157-4f33-a155-893079bb12c0-000000@us-west-2.amazonses.com>
Date: Thu, 23 Jan 2025 23:58:31 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.01.23-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2025 23:58:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64619


    A build flagged for QA (yocto-5.2_M2.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.2_M2.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/873

    Build hash information: 

    bitbake: c83444d1210740e27b1744d3aa7c5cad4e28db2f
meta-agl: 17fd501fae2361588f2af72c229d56612cdca40f
meta-arm: db933d55b46683f6349b027d6483a3b99e1fec3f
meta-aws: ecf4fc6000d0b21aa10c0fcf197001420be1a1bb
meta-clang: 0ea2df0462edc0c01e787b6ee6c0e20cd6a42fc7
meta-intel: c7c7dface32f187bb0ba724b8eb79152f7453f0c
meta-mingw: d609536003715f61564c41e81bd04ca9113d968d
meta-openembedded: 27ab1bbc95b27a72a6a8a750a7fd3e98526e2050
meta-virtualization: b57f8a25a35a93b95e3baa950c2d359fffc13051
oecore: 3ca9192cf16e15e95ba1c3db4ba28fc6130de8e0
poky: 59db27de565fb33f9e4326e76ebd6fa3935557b9


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

