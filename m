Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4076C6FA8E
	for <webhook@archiver.kernel.org>; Sun, 26 Feb 2023 17:02:16 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.web11.69580.1677430934209959606
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Feb 2023 09:02:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=XSFV08KS;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31, mailfrom: 010101868eacc66b-daeb66ac-dd84-4824-a627-e50e12406540-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1677430933; h=To:Cc:Subject:Message-Id:Date:From;
	bh=F1ixqtTAZvHuNQaYKQdBDxgCxaLsp42d8TzicL+AztI=;
	b=XSFV08KSiBQ3z/ePeoqT8j0Wrk3zK0eeLOxYwYWMc1MM9HqgaDvJXHw5HAxBLgXE
	q1CPBbv5o3As4aXKa445ekokCMnHHxrbpQnm9aN3jco6h1MsuaRwZB04fCnhdHlOrVL
	YXb+SveOI1MiLfCDkqLP4+TiibqXr7qKKyVsL6No=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1677430933;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=F1ixqtTAZvHuNQaYKQdBDxgCxaLsp42d8TzicL+AztI=;
	b=HkB+hSjgTYSUk/FI6UmMuuynzEciR6Ndg/Ok7lkaVBJtv9WB3xuoXpRmx31LZkPG
	qK0ZSz83lJ9RoUU/7wLBZcsTNXeKM5nPYGffYoGYfGXM2550XDBDIf/29IxqB73YcP5
	AKgyit3OXGkOARIAePvqWhb1xoVIGYhk4QnR3pDs=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.2_M3.rc1)
Message-ID: <010101868eacc66b-daeb66ac-dd84-4824-a627-e50e12406540-000000@us-west-2.amazonses.com>
Date: Sun, 26 Feb 2023 17:02:13 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.02.26-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 26 Feb 2023 17:02:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59302


    A build flagged for QA (yocto-4.2_M3.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.2_M3.rc1


    Build hash information: 

    bitbake: 6bc65e6402a74c9a65e29333a7e0f1f85dcbcf58
meta-agl: 09135164a21a216c6e3e75d7decce896b92962f0
meta-arm: d5c024f1f5326fb19de33928acea34df4b58e9ba
meta-aws: c0d336fa28dfb75b71e403802f532723a619d9cb
meta-intel: d5ddfa0354fc6025bd2d42f56b70943429c06dd3
meta-mingw: 250617ffa524c082b848487359b9d045703d59c2
meta-openembedded: 3f2aee1b080e2f9ab2d0a7326581dad2f07ca6ef
meta-virtualization: 369749ad2947921d7452a31e7a4ce6eb0f8e8ccb
oecore: f6ac666c99da115ab4a214d24282978a06c36efa
poky: c45d58f003e8d8b323169ca9d479dc49c43a9974


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

