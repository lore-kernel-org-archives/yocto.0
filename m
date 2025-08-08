Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91740C87FCB
	for <webhook@archiver.kernel.org>; Fri,  8 Aug 2025 16:40:20 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web10.26983.1754671210898888905
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Aug 2025 09:40:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=g34jZQnP;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=XlR5X7py;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 010101988a8ddda1-4bcd7346-02cb-4e85-96fe-d5f0fb67d5d0-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1754671210; h=To:Cc:Subject:Message-Id:Date:From;
	bh=aXmBILZ8D4Gsnzkf8AhOmTot1715RjrPXnsAn6ISRYU=;
	b=g34jZQnPNk7eZbZBur1JzzzWB6Jy0fB9fAh4XZFw05EZpZcdo6gW7niIa2YjYUnw
	oF+frqWRjo3gGzsdqar2eti02U3vqzTzhzN/oMo5Y17Tfl/cWsdngRkFsgxmqCbjFnk
	fYDn9y9k3u2svc7mSk7Z9gVHtzvQEhiiWNVpoiiI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1754671210;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=aXmBILZ8D4Gsnzkf8AhOmTot1715RjrPXnsAn6ISRYU=;
	b=XlR5X7pyh50AlbwbxZYaYtgXgQL9SQCuGTHTlhmgWVk8YrZrTGg1I/cR2ejUvyri
	M/BtaukEhH2fddQzjsvQ2V2jv3zKr2elTpxAenlcZdh5LNxN/aQaHgzEKadX5HHB6yh
	3i8ZaZh0WJDr+/DdlNVInj3EBnbR2C5j0stvd/0k=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.29.rc1)
Message-ID: <010101988a8ddda1-4bcd7346-02cb-4e85-96fe-d5f0fb67d5d0-000000@us-west-2.amazonses.com>
Date: Fri, 8 Aug 2025 16:40:09 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.08.08-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Aug 2025 16:40:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65742


A build flagged for QA (yocto-4.0.29.rc1) was completed on the autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.0.29.rc1


Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2170

Build hash information: 

bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
meta-agl: a0cdd47872a252f9a9075ed5151bbd595fd6373c
meta-arm: 10c27f061b22af78e17a23cf540b69501afc7160
meta-aws: 876bd12dd82a5f9dd40a73288f0c2541c15a610f
meta-clang: 8a1d0a1993040ab9d2fb7259b71e4c9582f5cd17
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 95eb26cd3372439443acd1f4d4265989aadeca88
meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
meta-openembedded: 06fc0278f10d630838d703dde707bbf0e2999873
meta-virtualization: 3e4dba95e6b5f5f68d0b3a5899b106c89da59428
oecore: bd620eb14660075fd0f7476bbbb65d5da6293874
poky: 81ab000fa437ca04f584a3327b076f7a512dc6d0



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

