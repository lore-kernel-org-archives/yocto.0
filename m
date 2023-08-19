Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D855EE49A6
	for <webhook@archiver.kernel.org>; Sat, 19 Aug 2023 06:12:19 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.web11.4746.1692425538729448182
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Aug 2023 23:12:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=ZLOsRpp5;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=WWW7RiE2;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31, mailfrom: 0101018a0c6c4874-ba01cce9-59de-4612-864e-f96b74e5cf0e-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1692425537; h=To:Cc:Subject:Message-Id:Date:From;
	bh=iRHV0gx9p9EjEjD0V7XkU2nbqLbnxUoi0kZUvTZrLGs=;
	b=ZLOsRpp5CmBL9Sa2KmtFY6yDyk83awX7NkdWDSo/Jrkl3JzV/t1fgR6uKxbMO07+
	GbZR0j4ocfGdZdXwZ0QkFoGGFT1Xhvf4wl+wpmV6dmW/J0Tgizdvpu35jzcgRJnBb1S
	YDhn7/N4H1nLQjIhZ0J1xCC7X/IFdDDeonnqTYdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1692425537;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=iRHV0gx9p9EjEjD0V7XkU2nbqLbnxUoi0kZUvTZrLGs=;
	b=WWW7RiE2uQ8F6l+zjm7aXIOj7k38mEVknvE6ratTGcSsOszex8fX+7uyszMdc3Br
	ja9wuQTOGQP2N5oZ2WCHHdkqfkszY9EdklKnBgOF3pMfvXXU52lbWsfYpqsaWOqBMzm
	bXf/QHpckluVPqnjvpd/HTmZ6ZAG9fRarBkCJx7A=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.2.3.rc1)
Message-ID: <0101018a0c6c4874-ba01cce9-59de-4612-864e-f96b74e5cf0e-000000@us-west-2.amazonses.com>
Date: Sat, 19 Aug 2023 06:12:17 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.08.19-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Aug 2023 06:12:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60828


    A build flagged for QA (yocto-4.2.3.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.2.3.rc1


    Build hash information: 

    bitbake: 08033b63ae442c774bd3fce62844eac23e6882d7
meta-agl: 2b1679097d7b5df438481d7966377a6c0545c156
meta-arm: 85b0e80e7d6d58bb6aaae6edf88476b9e07d3313
meta-aws: 7cca28f6e03f3043663c2ad54527c63826a7cb9f
meta-intel: d24a6fae0229b6b4e79f6e796069c56d435c8ac3
meta-mingw: 92258028e1b5664a9f832541d5c4f6de0bd05e07
meta-openembedded: 75cf318cef3b4ee81fad2782cf063ecd69ba8842
meta-virtualization: b8a964fc30de6dfd5a04d3ac57428809526d29f4
oecore: 7e3489c0c5970389c8a239dc7b367bcadf554eb5
poky: aa63b25cbe25d89ab07ca11ee72c17cab68df8de


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

