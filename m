Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 373DCFB44CC
	for <webhook@archiver.kernel.org>; Fri, 24 Apr 2026 08:28:29 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.16356.1777019304292483717
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Apr 2026 01:28:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=ZOkhq+3o;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=hdhRxe7N;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191, mailfrom: 0101019dbe9ab5c7-d6cb6dd9-d52a-4c28-8ce2-236bee8e31ae-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1777019303; h=To:Cc:Subject:Message-Id:Date:From;
	bh=Ihq324IEmwq/vo5VkNXNdIndij3TqgKX/Qt/sIYFcsQ=;
	b=ZOkhq+3oWGsOQDyalZ+yApXrpVDJOlqoPOqGmCiIoS3yIOKGbtSG6oWMh+yFa/DJ
	qZ9N5LYjLAGH4uYq/NdzucBi1QN0smP5IGh478Ztz5e3pEOMnbHNYphXrGiQykOdK8T
	Jkpg3bC05QwjmnmFj8ewLHyzf/O7R51ad0kjHTfM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1777019303;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=Ihq324IEmwq/vo5VkNXNdIndij3TqgKX/Qt/sIYFcsQ=;
	b=hdhRxe7NBWmhXHmfiSLBiOJJqFvxV2/GQsElAUnrcJAUCZnyZCLuraQ/0gatF9AH
	rzAOC312Oq/Df3YTQDC7MlRS7y7L+tEMBREPx5G2tHyLPXniK6ITWNBdlj8wAB4e65K
	h/smSgVd/6EtMrHm44QwKM4NX+TrJV+awZd4TGBw=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.0.rc1)
Message-ID: <0101019dbe9ab5c7-d6cb6dd9-d52a-4c28-8ce2-236bee8e31ae-000000@us-west-2.amazonses.com>
Date: Fri, 24 Apr 2026 08:28:23 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.04.24-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Apr 2026 08:28:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66438


    A build flagged for QA (yocto-6.0.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.0.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3727

    Build hash information: 

    bitbake: 33581c84f3a85008239acbd940501a35de48dc91
meta-agl: 335bfb321925d37675d45f0f869c446ded8972ce
meta-arm: 8eb10af8092dc3fff86891339fd024d8583f457f
meta-aws: fefdcc67dc3a86752a98d19c96d64bcb31928002
meta-clang: 78c5e12f08198f4f257a9348516d2103cd617c1d
meta-intel: 511ddb7ea90499b2088248f59bab3e9d6f3c900c
meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
meta-openembedded: 76700b6eaf327bb30e2c47b78713e2e409cfab7c
meta-qcom: a9f20e62e569c232dc1aaf8a90a6343e504003ef
meta-virtualization: 2e0704ee9282e4e86c13180334cb7ce118e55dd9
meta-yocto: 904846ae078ee20de073040ebb77c86e19250f56
oecore: 42fa856a00ac16b2a7a83d7ecfa60a5be192b16c
yocto-docs: eb74fdfd9e5e579a65e8872d1a73b51e77b14f63


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

