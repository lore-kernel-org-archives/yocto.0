Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C611FEE4ED
	for <webhook@archiver.kernel.org>; Sat, 28 Feb 2026 15:09:30 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.120357.1772291364642508149
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Feb 2026 07:09:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=mLH3O7y3;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=HJScYlwJ;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 0101019ca4cc139a-4cfb220b-7fdd-4ba0-8591-32dfcd501502-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1772291363; h=To:Cc:Subject:Message-Id:Date:From;
	bh=ihALk4MwB13gieDOIlHHZUlsZhTnCDnCQN23pZ9fyKs=;
	b=mLH3O7y3oth1kCZ1DOt0aaEQaB8A8e76iA3k75wbiGRIR0KMR6tbgXuCRZHa3hA2
	sNvrhpqsGxn3eS0+2HgG9Ljj7BiO4WwwBRJUuug0BjhG9WKfZzTw5mwZjN9aM1SskmI
	60cmLBpDF6gQZ0U7GlKqVpc7XWxW25mB2xjcYL5k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1772291363;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=ihALk4MwB13gieDOIlHHZUlsZhTnCDnCQN23pZ9fyKs=;
	b=HJScYlwJ+fltfWJvbH1Pm+3CV5Dv7s+O4ualKu+AcwJ6+5SpacClo1G3grvsYdbo
	lx7SC1QITn1Al/hcuteSBB3VVLxQchl4hKfReAh3aq5URFkmrvaKxSBbRcHbdSJmHNx
	dNC4ZFcx69IbKbLgY9Y+Khc3y6l6vr0I6FqD8phE=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.34.rc2)
Message-ID: <0101019ca4cc139a-4cfb220b-7fdd-4ba0-8591-32dfcd501502-000000@us-west-2.amazonses.com>
Date: Sat, 28 Feb 2026 15:09:23 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.02.28-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Feb 2026 15:09:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66284


A build flagged for QA (yocto-4.0.34.rc2) was completed on the autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.0.34.rc2


Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3309

Build hash information: 

bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
meta-agl: 12daee6a859f48d3d65545d4fe79849fc312fa21
meta-arm: c3e9fb12aa31d25e33d8392c4a233ed1275a3278
meta-aws: 8f7bf66699789eee7afa907b9513b0709ef79a01
meta-clang: eafdaa3cda9000c6d9bd1819ffe1219c7b66e4b8
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
meta-openembedded: 8a598a2bc9199a4fbb9008a32ab143fb509a0933
meta-qcom: 8d273808334daef5922000c8e0548b7ff2b3d72c
meta-virtualization: c474ae21b11a816be607eb7b44d2cf77d1125bce
meta-yocto: 1d3874a383023a5e2433e0fcfd87ac5d1e6d341d
oecore: 7b6c9faa301a6d058ca34e230586f6a81ffa3ffb
poky: 8334e82e1d85e50557bd3da64054fc9e3eafc495
yocto-docs: 7c348dd67cfd169b1a56bf969606b03dccb76c56



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

