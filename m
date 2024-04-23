Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2861CC4345F
	for <webhook@archiver.kernel.org>; Tue, 23 Apr 2024 06:01:20 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web11.11946.1713852070114687857
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Apr 2024 23:01:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=A3qhI5Oj;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=QEYRNYup;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 0101018f098b350c-3212b9cb-2849-4dc2-9fc4-670ce7e4fd08-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1713852069; h=To:Cc:Subject:Message-Id:Date:From;
	bh=d2u5n1RJFbul6dFMac4QYFvVbTlwnIC24AdRbtGsiC8=;
	b=A3qhI5OjO9BnLcIzj4T1XuE6aLYek8se3FZMAVgrKWydvXVt7wQRtWaQAf9vZIWN
	fbpsso7ZLZu8Z4FcQZXayYDNhlTfVnEBrnHhj18zjTejt7Uk8V4viuGyzQOW2rR7DtT
	ZJV+VX+rUvRXaaDnk5ZNIr+F3JC8Uwns+zOrUPmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1713852069;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=d2u5n1RJFbul6dFMac4QYFvVbTlwnIC24AdRbtGsiC8=;
	b=QEYRNYupyoXElN9XeAzhnn2SMQoB2fytjz4paWTiMLXKAcONTOHK8rcA1HauTrVq
	F9pIeyo3qQ0nLLVmgZpkES9z0aSwyr+oORwnt+o62qxtFZ+LhVXgWY118FcwghckSDB
	+hUzlcH7nHSK1D/6Zz1dDgle435QLkx3qSTce3y8=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.18.rc1)
Message-ID: <0101018f098b350c-3212b9cb-2849-4dc2-9fc4-670ce7e4fd08-000000@us-west-2.amazonses.com>
Date: Tue, 23 Apr 2024 06:01:09 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.04.23-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Apr 2024 06:01:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62984


A build flagged for QA (yocto-4.0.18.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.18.rc1


Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6839

Build hash information: 

bitbake: 40fd5f4eef7460ca67f32cfce8e229e67e1ff607
meta-agl: 735f7aaf747129b0475bbb9d28404972ef2bb498
meta-arm: d7b7b6fb6c7c5545e718e44f38853d1718ce5446
meta-aws: fbf3b9a72b9178c305b4f73e5870f99d544c8051
meta-clang: 989ff6a4e7db59f01d511727135610006124ead2
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: c1eb7440d499ce1516f5f39c9684737072b15321
meta-mingw: f6b38ce3c90e1600d41c2ebb41e152936a0357d7
meta-openembedded: 8bb16533532b6abc2eded7d9961ab2a108fd7a5b
meta-virtualization: cb2bc17e96552cdfc141d27bd9f4dbd95a872846
oecore: b7182571242dc4e23e5250a449d90348e62a6abc
poky: 31751bba1c789f15f574773a659b8017d7bcf440



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

