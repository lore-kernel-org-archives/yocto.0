Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500A1C83F03
	for <webhook@archiver.kernel.org>; Fri,  4 Jul 2025 20:14:49 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web11.4539.1751660084711573536
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Jul 2025 13:14:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=KaPzjejS;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=tUGj0FaW;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 01010197d713ba6f-e2642c15-ef64-4874-b369-deb0cd1af702-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1751660083; h=To:Cc:Subject:Message-Id:Date:From;
	bh=AOyaqz87dpExhhjqtr/hMEykbciDurPgUGhDe2pCe9U=;
	b=KaPzjejS/FIqBpU0Wj2HJrA75QLp7g9WXlbDD5sVMe8tWvmvqGoLEKgGZzH/LxdS
	lwnFRSHEJbeU7Kuhyi/DWjyJfpD8b8MuWuwPHNyYcEqpO2cwfkqUw9dItJ6B3zNvXdE
	jEQqzcy5hwXie1ocZWP9vbKzPLlggbhC0tC7I6vw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1751660083;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=AOyaqz87dpExhhjqtr/hMEykbciDurPgUGhDe2pCe9U=;
	b=tUGj0FaWd1HHOtMPiXJtCMVLaqcI2oc14eYRm3fhmhFKAGDJZQfxZYXVYYjKjGdS
	pjmQxvJY18ueJ2A4D2mfmDtSfHNUgO5hF43vjhorQMsPZv+Pqm5X51Kd6Xqu2xsziiW
	rkRmqmulxvA2NM2djPZ7fFZT7V/rhCkPmd/OMnPY=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.2.2.rc2)
Message-ID: <01010197d713ba6f-e2642c15-ef64-4874-b369-deb0cd1af702-000000@us-west-2.amazonses.com>
Date: Fri, 4 Jul 2025 20:14:43 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.07.04-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Jul 2025 20:14:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65608


    A build flagged for QA (yocto-5.2.2.rc2) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.2.2.rc2


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1955

    Build hash information: 

    bitbake: 74c28e14a9b5e2ff908a03f93c189efa6f56b0ca
meta-agl: a6202084bbc77708ff599060a0e2f6afb3c15498
meta-arm: c63ce2117ed9ad720c61a1e2df5d381ca1ac54a2
meta-aws: 77bbf7b16d5982d711b3188ada49deea391352c4
meta-clang: b3e5449f0156884d18c17efff99654cde8251411
meta-intel: 5640f6592c984f4832ff5f2ed1a35a607e5d21c5
meta-mingw: edce693e1b8fabd84651aa6c0888aafbcf238577
meta-openembedded: 3c6844219a69d9ca8cb0f1579114efe9a9e2a646
meta-virtualization: d20e589758ac40a846a8cd22f3b646ef48d02647
oecore: c855be07828c9cff3aa7ddfa04eb0c4df28658e4
poky: 41038342a471b4a8884548568ad147a1704253a3


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

