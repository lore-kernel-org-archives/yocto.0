Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70F6AC83F26
	for <webhook@archiver.kernel.org>; Thu, 24 Jul 2025 15:16:04 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web11.15271.1753370161574158213
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Jul 2025 08:16:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=azPU7P11;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=o0lk3NwN;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 010101983d016e02-c1eeaca6-a9ab-47c9-88ad-b4853991430e-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1753370160; h=To:Cc:Subject:Message-Id:Date:From;
	bh=aaMPtHUQTXoL081Mz46qKG/I5BJokKQWCiWdttoB4sQ=;
	b=azPU7P11HZESxgjXOcCyhZ51DlK9NKZ/D0ZUtUA3X5aHBU9cfn6+OGUzlxRmBQ/G
	ESceX68hUdNgnjgZkH1qtU8ky6waLL0+5V4+vXbpqkzUAzdsn98AY1+lFYcjEJxVAFD
	iPFwj4U4A/Xc61ot8ENiksGWMaGH+XHDctp/am9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1753370160;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=aaMPtHUQTXoL081Mz46qKG/I5BJokKQWCiWdttoB4sQ=;
	b=o0lk3NwNEBwFw/KRbQR/Mv0wIf2ELWY0m2iGxSixIg0pX0MIRMqi0Wk5PcI3+WjM
	aPHk0s271aqIjzsJFhkFlBmyaSp28AoES/ceCD4XWAV84LbUxgXHYEhM2bnPq0lJPUv
	jiipi5pOOxWi+tSo8nfWfsKTeTh/iSaEVwDaqORY=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.3_M2.rc2)
Message-ID: <010101983d016e02-c1eeaca6-a9ab-47c9-88ad-b4853991430e-000000@us-west-2.amazonses.com>
Date: Thu, 24 Jul 2025 15:16:00 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.07.24-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Jul 2025 15:16:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65708


    A build flagged for QA (yocto-5.3_M2.rc2) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.3_M2.rc2


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2081

    Build hash information: 

    bitbake: 5ba7c2f0797a72536a81f57276d4e5c75f23011c
meta-agl: 5df5ef43a26f441d8434ec25b2824ce1b8e9dfb9
meta-arm: 77ba0e68e3d6ffd380346c616a60bf0c7e35a08b
meta-aws: 7e2eabe1aa248cf3c6a69621cbba40343a2e0896
meta-clang: b2139ae4b027cb014d0137de0b46e9197a10a4db
meta-intel: 7fc52266ae25215e0d510a792fa3a688d173d1dc
meta-mingw: 3b92f104e024bcb1341b563f396291b41786cc38
meta-openembedded: 714b3adc3a92d42370a0ea57a9744ad2d031db7f
meta-virtualization: 9b034e3defd4aa1108d7a6b4dcca600d4352b132
oecore: fed2692c4e7b87fd2bf08a5abb4391b79bbfc982
poky: bd4625cd4db0f02162092d85aeab3023914f768a


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

