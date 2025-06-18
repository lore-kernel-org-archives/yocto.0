Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82268C71157
	for <webhook@archiver.kernel.org>; Wed, 18 Jun 2025 18:03:17 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web10.2554.1750269794630245795
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Jun 2025 11:03:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=OL0Uy384;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=WZ3w4b4z;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 01010197843595d1-42660a2a-9d1c-4a84-a93a-9937b791152b-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1750269793; h=To:Cc:Subject:Message-Id:Date:From;
	bh=QR+dmY3o0y76h59Uyl4cMwl8ZERuE4JzoZf7qxAa9Tg=;
	b=OL0Uy384SzQoISCvuf6CfPPTXECBDgXaSH0xo1tvDqql31ZQKxXgLCNwaDuYPwmM
	g+uML16MAKo7BGAIF0ZuB9hRTHQNoZjVhn+KiiWOB4WTCtsC4hIBS8SnPZPco7fMQJm
	B1q+iFP8lBRg9sMAIUrR6YOH7itf8LFk/WXVmvP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1750269793;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=QR+dmY3o0y76h59Uyl4cMwl8ZERuE4JzoZf7qxAa9Tg=;
	b=WZ3w4b4zHBVs6yRXHb817KvViSKjR90PRimXDugXNr3g2qJjBhLhIkoWpEfLCOAX
	me4RrIMOXRLN6CHw11AyPS09zm8lh72XEKWV+xXjXU7vv99QAFd2M9NFydbc1GiDGQ3
	WRPAz74m7r5sCzII8wmU96e5EShqAQBqjy252yyw=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.3_M1.rc1)
Message-ID: <01010197843595d1-42660a2a-9d1c-4a84-a93a-9937b791152b-000000@us-west-2.amazonses.com>
Date: Wed, 18 Jun 2025 18:03:13 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.06.18-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Jun 2025 18:03:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65520


    A build flagged for QA (yocto-5.3_M1.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.3_M1.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1833

    Build hash information: 

    bitbake: c2f29c9475c4b9cdd12af1f8610f2675f8fdd964
meta-agl: 40f98a677f182e7e7779407fdd651ccaf416a65e
meta-arm: f4438fdf7126b7e1045cb43ce541ffc7876b2c0a
meta-aws: 3e91782318cfa7858639a577da2729432d586f5f
meta-clang: 02e254ba1fb4937530d94a154b4c713c904c2d06
meta-intel: 5640f6592c984f4832ff5f2ed1a35a607e5d21c5
meta-mingw: 8ad732e5aa174e2b5e80f7f276104cc09bb7212f
meta-openembedded: 3f77bb395c332b12135889bb6b57caee0801b43e
meta-virtualization: 0115e61cdd5fe8c705bb0350a0d75ebebcf84c79
oecore: 826ab8dde34882c3ef705f715d8808e46bbedcde
poky: 7733ddf733b883d6fe75768d5f9b6d3519d47dc3


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

