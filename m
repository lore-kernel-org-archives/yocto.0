Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25FA7D116F1
	for <webhook@archiver.kernel.org>; Fri, 28 Nov 2025 13:13:30 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.15744.1764335606657175571
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Nov 2025 05:13:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=VuqFGsrz;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=S8N5XDe7;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191, mailfrom: 0101019aca98d702-1232ac58-8150-4171-beb4-d8721b8ea2b5-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1764335605; h=To:Cc:Subject:Message-Id:Date:From;
	bh=754jMlcxZ965VsmKB4I4pHd6TbtfWSm/hzh5l5lP35c=;
	b=VuqFGsrzcwMJr0msodK269neZ8Omxmx/CTfvgbyGVQCqozUzt/OZOHC3C77LtS1y
	7qGayFGLiVqrslwY38nmmPSHwFeuKF6QtLWJWOqmyUHNXsZsbWW7HXu1gKGDZpAeY1C
	+aw1PZMx+rS6roZwy5pH2XacmM6rkNO/NhMoAxnk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1764335605;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=754jMlcxZ965VsmKB4I4pHd6TbtfWSm/hzh5l5lP35c=;
	b=S8N5XDe7n454++P9PpCizpjVEvjqZ+7Ay0k6TZ3Jr/4W6lr3eVTheCz9jtQh8oPn
	eeUbLUDeBZ6N4QGHq1akqjb57ztUrg9dp/7vgQ06ppUZiVPx5uLj3V9Pd/LyEnNRYat
	jP3p1TIrXHbGH/EMuM2pjpL/64lSOR1LdEm2gTk8=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.3.rc4)
Message-ID: <0101019aca98d702-1232ac58-8150-4171-beb4-d8721b8ea2b5-000000@us-west-2.amazonses.com>
Date: Fri, 28 Nov 2025 13:13:25 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.11.28-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Nov 2025 13:13:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66079


    A build flagged for QA (yocto-5.3.rc4) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.3.rc4


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2800

    Build hash information: 

    bitbake: 720df1a53452983c1c832f624490e255cf389204
meta-agl: aa0d68572f54d2a4359d03c0e00446e91840c53e
meta-arm: aff67cb5d748aafcba1ee589a758d51191f061c2
meta-aws: 8e242eab3d44acab70f97a3c26fe9cfc4423920c
meta-clang: d0a67c76b7a3b585dbe2ba8ad509dc0fe0e58af2
meta-intel: af904290f574ee9b1f62aade9f55dacdd9fb6cdb
meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
meta-openembedded: 09c7f76c196876a4366f220b360f4bdb93ab95c0
meta-virtualization: c2185cd5ef225c6606341745ad9ffb02efe364d9
meta-yocto: d02d3faaf4d6075ea03e9eb47654ec7639f929a0
oecore: 8519978592483bb096ed5192fff7af6c887b799e
yocto-docs: 79cd33b06e87c04e4f873a5afd9d53714bc5047f


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

