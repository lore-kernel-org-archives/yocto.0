Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00E9C47422
	for <webhook@archiver.kernel.org>; Fri, 26 Jan 2024 05:23:59 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web11.9243.1706246630983567732
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jan 2024 21:23:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=fiDIQzku;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=L5Xk9FVn;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 0101018d44396ab5-09abdfba-e02c-4f2e-bb9b-b00d2b98119f-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1706246630; h=To:Cc:Subject:Message-Id:Date:From;
	bh=jn7UzdlqHIdj/jN4v0DX6zbF/3dYYQ01T5F+DOoFIuA=;
	b=fiDIQzku5yMrT2YNL6zmJlHG//3hDRv1aXZUhD7knUc93k7Vq8yYY/O9aau9Wvdl
	ntE44eG/W0IlOOBLr9nUkxLnEGiUE8bIMv5HRiH4VksoYQEhn8J11fLYYaRe8Ef7xj1
	RgXRdz9dkuypK8BHncP+E7QZAdhTAWAJGW1j1Wvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1706246630;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=jn7UzdlqHIdj/jN4v0DX6zbF/3dYYQ01T5F+DOoFIuA=;
	b=L5Xk9FVnvP00/IYlK1FfnS6CjTQkXrApMmDYZkxY1CQ3qJxyWUgO3W9tA6SZ9Xw+
	URB7ONEDhAfqNicNqT7YrvMZU2gb1P8ab4exctAeUB4ufWv0BzjUuTv4lxbj97ARdfQ
	Vy4yb4LCS12gv/n/4kox9NFcgwzmkDY/gQoCz7L8=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.16.rc1)
Message-ID: <0101018d44396ab5-09abdfba-e02c-4f2e-bb9b-b00d2b98119f-000000@us-west-2.amazonses.com>
Date: Fri, 26 Jan 2024 05:23:50 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.01.26-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Jan 2024 05:23:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62297


A build flagged for QA (yocto-4.0.16.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.16.rc1


Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6498

Build hash information: 

bitbake: ee090484cc25d760b8c20f18add17b5eff485b40
meta-agl: 35adadd18a6a0fabbf57cfdb2f2d72c2807375e1
meta-arm: b187fb9232ca0a6b5f8f90b4715958546fc41d73
meta-aws: cab60ff0f84b2335e933d4eac326df9fab5b9bb6
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: f932ebb2544170f43edd22739f44307809bf8cfb
meta-mingw: f6b38ce3c90e1600d41c2ebb41e152936a0357d7
meta-openembedded: 730e44900a0a86265bad93a16b5a5ff344a07266
meta-virtualization: 88327090d26955a678c6f8bd2585aad4d802f6c4
oecore: a744a897f0ea7d34c31c024c13031221f9a85f24
poky: 54af8c5e80ebf63707ef4e51cc9d374f716da603



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

