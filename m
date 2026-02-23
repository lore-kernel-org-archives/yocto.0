Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E711BEA4FC8
	for <webhook@archiver.kernel.org>; Mon, 23 Feb 2026 14:25:35 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.36045.1771856729739119103
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Feb 2026 06:25:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=09IBDzv5;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=Q3k3JLZr;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 0101019c8ae412ff-845f6e40-3349-408d-bf21-31af2cb42d7b-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1771856729; h=To:Cc:Subject:Message-Id:Date:From;
	bh=9BccUEKMuwDwZsebCDv8HZqMzWm5aHL2LtXtO8Y/aqQ=;
	b=09IBDzv58thSh8efcdvzmk+cGurPzg+eOey5/l9sS3p841MMyNtyDyGOeAd0yVf7
	Zdqx4oV7hGKCx11UNy9UcJbNljYqb80QPTEJmCWuL+D4Zvts4Zj+ZF7Z3cY2z1fBA2R
	4iuJk5WmCKhtVtPlh0B+2BACv4v/G8d19krm7TZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1771856729;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=9BccUEKMuwDwZsebCDv8HZqMzWm5aHL2LtXtO8Y/aqQ=;
	b=Q3k3JLZr6g0+zpJh+qTgme74FkHumMp4RAkOKLBXdMwZY+sHtrQLQ4ULQzIYNIyc
	e22eq7m+kB8SKuZiSLXIZIH5V4pA3xiV0JKYtBhpE9gI3GG3fu2/5qfXk3JR00i6YMK
	aQGbl2yLpFVWNloZbkztEpbl4U+ga73pvXblIhsc=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.3.2.rc1)
Message-ID: <0101019c8ae412ff-845f6e40-3349-408d-bf21-31af2cb42d7b-000000@us-west-2.amazonses.com>
Date: Mon, 23 Feb 2026 14:25:28 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.02.23-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Feb 2026 14:25:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66272


    A build flagged for QA (yocto-5.3.2.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.3.2.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3262

    Build hash information: 

    bitbake: 7af7e04f3adc8ba144d9e2e6b37ed4ddb3b59df0
meta-agl: c1761e898d7fca3d8438e9b010eaf234f94fa407
meta-arm: 73460c53949658ab6c8b46269c3a69caccd3f745
meta-aws: 49ee51b051ffa9a0eb3325cb8fea351eaf8cb9d6
meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
meta-intel: 8ca2f37f456db6693e696174ada1f4317e3ebee2
meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
meta-openembedded: d28d0a23615f4d91d125fdcd247a71245087dab3
meta-qcom: 49bc2113adb0b86d463c311d32d4fb1007fe4845
meta-virtualization: 8f03a0cc8950ef5d5e4f11d9ae494946d1991e45
meta-yocto: 691ff0fbeab54eceb26d90140d7a8f672532235b
oecore: 21314665e198c1abe458d0bad5c4d14d4c3ad856
yocto-docs: 9c363d270ab45f3443391fb7275817db69d8a5d4


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

