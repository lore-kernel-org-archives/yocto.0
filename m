Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A3CC77B7C
	for <webhook@archiver.kernel.org>; Fri, 12 May 2023 23:16:35 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.web11.38146.1683933390061539075
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 May 2023 16:16:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=JACplt6U;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 0101018812405f57-8bc29844-a56c-472f-ab1b-b82329fa2ff2-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1683933389; h=To:Cc:Subject:Message-Id:Date:From;
	bh=IfliTNsQk+3T+dwEIsQKwk5Edujw9foAy3Ynl/y7tRo=;
	b=JACplt6UnvESNsrQll94LJxykwkLkmwS8tBoQwwL3zSkfIY2N6q4mEy8sovDXxKV
	gWHsQTGs/UvPIucI3zXRnZ5z+MtOb3zZG/H6nC/UfwSsxBY0hNi8UM0zgmwjwDDG9yr
	brzJjZzoDz87SnlhvjqaY2Z5zQx9MBb0YkQfBQmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1683933389;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=IfliTNsQk+3T+dwEIsQKwk5Edujw9foAy3Ynl/y7tRo=;
	b=TTUDvpVLlmzfns7cjMOum5Cp5ZVPekgZ8yrB/x4MABQMBlh096izZjng6EnCZsEg
	7E8KpmeJd/Ub1oLzFweWJr9i6ueLr8lULaUAbTbYyDRkzDh4R/gxb0rYZo9iu8lbvYh
	g1R9xjq7a2XoGA8VaB3LYrM7IBPCU/xyK4uvfcjI=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.10.rc1)
Message-ID: <0101018812405f57-8bc29844-a56c-472f-ab1b-b82329fa2ff2-000000@us-west-2.amazonses.com>
Date: Fri, 12 May 2023 23:16:28 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.05.12-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 May 2023 23:16:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60006


A build flagged for QA (yocto-4.0.10.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.10.rc1


Build hash information: 

bitbake: 0c6f86b60cfba67c20733516957c0a654eb2b44c
meta-agl: 07c3fbfb7716c290bdcf3931f27bea1a36fb6520
meta-arm: 96aad3b29aa7a5ee4df5cf617a6336e5218fa9bd
meta-aws: 9eb2b598358cd0e1df29f6d347e3e62ff4161bb6
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: f709b3f2b05e2ac73c6734dc2a213382b5eaf579
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: df452d9d98659b49888fa8a5428a0a8bd3e3aaec
meta-virtualization: dde0ff9eaa301ec5bd3daf667c7966cf55404d26
oecore: d2713785f9cd2d58731df877bc8b7bcc71b6c8e6
poky: f53ab3a2ff206a130cdc843839dd0ea5ec4ad02f



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

