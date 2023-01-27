Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C918FC38142
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 23:09:11 +0000 (UTC)
Received: from a27-45.smtp-out.us-west-2.amazonses.com (a27-45.smtp-out.us-west-2.amazonses.com [54.240.27.45])
 by mx.groups.io with SMTP id smtpd.web11.1716.1674860941763737087
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 15:09:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=WPIEPtQY;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.45, mailfrom: 01010185f57dccf8-29734aad-b7ca-410f-9a47-21affbf045d6-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1674860940; h=To:Cc:Subject:Message-Id:Date:From;
	bh=yGFtl+AqcQZEPZxzrgiExyFG4z3jwDOveNsmCCo2RZU=;
	b=WPIEPtQYYqzKzJo62n6wqFXqr1yty1/0pG1egZEeEcTwDZce5VcyAw2Ly052tLCv
	8BaOrU2ahJ80fF8yVe3qvCBRonwuFFv8Y9D+1Ov6QsUZtWorIj5RmVkYsD4hysvDnpF
	yfaYtgWdSOCc/GlaQJhIgFtNv4fOD7AYxWKwZ0bA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1674860940;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=yGFtl+AqcQZEPZxzrgiExyFG4z3jwDOveNsmCCo2RZU=;
	b=Ykp43c9dJjeY8QVzrqH0SulTNyZRFv0ZcgSyIzffM3dpnCYuT7rrgy38QON2Xl8G
	4vuPMaH0i6w1yMPe7dNsKUxVuDBiqZ3pmb+rbmuCKmVp+mCH/52znKZ9FmNpL8+3YmH
	Z8Q4BXW8Zn+u1KlxfKHbLJElCkUWohOudBuBVt44=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.7.rc1)
Message-ID: <01010185f57dccf8-29734aad-b7ca-410f-9a47-21affbf045d6-000000@us-west-2.amazonses.com>
Date: Fri, 27 Jan 2023 23:09:00 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.01.27-54.240.27.45
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 23:09:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59088


A build flagged for QA (yocto-4.0.7.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.7.rc1


Build hash information: 

bitbake: 7e268c107bb0240d583d2c34e24a71e373382509
meta-agl: b9d4796f44a56c6a9c8233d82e46c251a82f6020
meta-arm: ce41be0a7fe7c6f5fd2155866980388d3c83389f
meta-aws: 9d9400b03c22839398756f505491718392907266
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: f529e0594a784546926e89ce8e78385e00d0b0a9
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: 1f31570d0795da90083d1dbf28127c90908e30ee
meta-virtualization: 9a94fa2ad76990b0eca40837a98aaf4cd83a7248
oecore: a8c82902384f7430519a31732a4bb631f21693ac
poky: 65dafea22018052fe7b2e17e6e4d7eb754224d38



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

