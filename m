Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29BF8C54EAA
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 05:13:08 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web10.95970.1674796383159202412
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Jan 2023 21:13:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=TOryAXXG;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 01010185f1a4b508-6e5da1df-b525-4798-ad94-58ea11a96b76-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1674796382; h=To:Cc:Subject:Message-Id:Date:From;
	bh=4A0XrED7L1PyXbQJPqiho5bgFwn3XjhHniLx43H4r24=;
	b=TOryAXXGUKR3YiC74H6eLOoWWgS8eG6pYIJ596SqtRopePDA6zruz9u3QoHPeIBd
	iTY290A9d3czY6wLMJHANf20FZlsVZqXKrSjcnnKjREOP4Fm3FJmbk3wOKyiZMUhgsu
	XaXwsdUzYqLs7Slo4geqWE7w7ElMRqAH5rmolGfM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1674796382;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=4A0XrED7L1PyXbQJPqiho5bgFwn3XjhHniLx43H4r24=;
	b=E1LMOsAv6COawkXoA6TG7ru3NiuqhFbNwuqFztRSKt6ClTa//xlp7wcZ6W111MWq
	z+2Bxd0XW6OIJVpJRznl7MTDAawooiPjJJQQdi3Gu5l//UXhgJ/JvU63YzIdVL6jzy9
	2hJcFNoQJna0EAsQYy66FGkcHAUmuEi2fDdEYQgE=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.2_M2.rc2)
Message-ID: <01010185f1a4b508-6e5da1df-b525-4798-ad94-58ea11a96b76-000000@us-west-2.amazonses.com>
Date: Fri, 27 Jan 2023 05:13:01 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.01.27-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 05:13:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59069


    A build flagged for QA (yocto-4.2_M2.rc2) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.2_M2.rc2


    Build hash information: 

    bitbake: c19035e8e71c419c5688a86bfc9c946c96f638e8
meta-agl: 09135164a21a216c6e3e75d7decce896b92962f0
meta-arm: d8383c11f3f8220d2b989ec73604e5faff988299
meta-aws: 7b4f54b3e1f675e2033f6a589ac519e44e62b58b
meta-intel: b3c7d3ee44e4ab71df44b5be3c48d2f47d89d8a0
meta-mingw: 250617ffa524c082b848487359b9d045703d59c2
meta-openembedded: ceceffcb1e3ef4f9ba7708f77c27e30a7aea61e5
meta-virtualization: 31954471605ae3b41627a0ab7b0dcfe8c5851bd7
oecore: 493f2d163718d78560a2b3ad5d3c0fb34caae8c0
poky: 5e249ec855517765f4b99e8039cb888ffa09c211


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

