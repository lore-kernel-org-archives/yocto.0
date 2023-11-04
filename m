Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F15DCC4332F
	for <webhook@archiver.kernel.org>; Sat,  4 Nov 2023 05:49:39 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web11.4783.1699076977612231497
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 22:49:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=D82/1zVX;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=ohfaITl5;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 0101018b98e13019-57bc23d2-d205-47de-bd0b-d04b00fe895a-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1699076976; h=To:Cc:Subject:Message-Id:Date:From;
	bh=1+TJShjz+35qsAR6GPW8Pa5T7UUug5/UWNDhTsjVnCI=;
	b=D82/1zVXhG3SX8KLuXoQUfnnRm3Q9Ca43bknIl/KNOi2WVAfLkLiozdAYEWrpsMx
	8M8Hgd44Y+9F7mDRrg21ssXQwg87t+KNKN81x1nbEI/YrhNn/smumlNDHQ9oD7Atv2l
	WS4VjLz4QtSCTEttAAs11khit/nDBcvMi2NT0AqI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1699076976;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=1+TJShjz+35qsAR6GPW8Pa5T7UUug5/UWNDhTsjVnCI=;
	b=ohfaITl5U0ZqJkZkDFe7v18vGvEVcI9bwWa7rEmQzI9vFvfK3Ety4ZjDJJhmF9V1
	GgcWc947VvyFReLhScW5ut8YqFkBDKlNR0kxvsRCWsF9WTv2odfiQBAkRn26dL7RXl/
	DAgVpPSmWI0PoJytKLYA7lb1eyzX8T+RreszEtSI=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.14.rc1)
Message-ID: <0101018b98e13019-57bc23d2-d205-47de-bd0b-d04b00fe895a-000000@us-west-2.amazonses.com>
Date: Sat, 4 Nov 2023 05:49:36 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.11.04-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 Nov 2023 05:49:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61609


A build flagged for QA (yocto-4.0.14.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.14.rc1


Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6132

Build hash information: 

bitbake: 6c1ffa9091d0c53a100e8c8c15122d28642034bd
meta-agl: 09890bc1ce3d1836f0e35fbae7713f54d70a72ae
meta-arm: b187fb9232ca0a6b5f8f90b4715958546fc41d73
meta-aws: 408f9331156ec101014cf065314d3b90e79e6814
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 3f0115e9e59f94af54b74838f4f33339ea7584ae
meta-mingw: f6b38ce3c90e1600d41c2ebb41e152936a0357d7
meta-openembedded: 79a6f60dabad9e5b0e041efa91379447ef030482
meta-virtualization: 2d8b3cba8ff27c9ec2187a52b6a551fe1dcfaa07
oecore: 0eb8e67aa6833df0cde29833568a70e65c21d7e5
poky: d8d6d921fad14b82167d9f031d4fca06b5e01883



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

