Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23BC9C25B76
	for <webhook@archiver.kernel.org>; Wed,  5 Jun 2024 08:26:26 +0000 (UTC)
Received: from a27-45.smtp-out.us-west-2.amazonses.com (a27-45.smtp-out.us-west-2.amazonses.com [54.240.27.45])
 by mx.groups.io with SMTP id smtpd.web11.10099.1717575983201588731
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jun 2024 01:26:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=N5QdLvrn;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=KK/5UX5j;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.45, mailfrom: 0101018fe7819c42-92849e6f-1a80-409e-9100-713586c8ea4a-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1717575982; h=To:Cc:Subject:Message-Id:Date:From;
	bh=EdT20orNVx6SbwuGkKuPtfZ6eeIloPgcfu/ELGiGYHs=;
	b=N5QdLvrnUL93t47YLlSlYYEbSMxQsuJ4/eEtShjQaOGjPQUVZfiZ7YlqrXIjYH83
	N9r+mCXk3vWGuLS35BTsbQq+b+dEqOHeFqCJBaIVIU0whZX1YoYNma08Y33xI9KCjdw
	KG/EwXu437VFACqhJIqUSaOk/qPnJy4wtKhT+ztU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1717575982;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=EdT20orNVx6SbwuGkKuPtfZ6eeIloPgcfu/ELGiGYHs=;
	b=KK/5UX5j98z23laOxlw0qO5UHgSkPuE8lE19HA6oPz9AH6I0xILwMbkOlsuZosK3
	WTKuFRV/mfu0a/Akt0CrZPeOJuYR2Aj2ITWNk5zae2owPhk+awETqacm0AU4bX0QLE4
	cGE44c+eGxiz0QHBvG1ndr1fiaFGpshHs9hClR7s=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.1_M1.rc2)
Message-ID: <0101018fe7819c42-92849e6f-1a80-409e-9100-713586c8ea4a-000000@us-west-2.amazonses.com>
Date: Wed, 5 Jun 2024 08:26:22 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.06.05-54.240.27.45
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jun 2024 08:26:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63281


    A build flagged for QA (yocto-5.1_M1.rc2) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.1_M1.rc2


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/7008

    Build hash information: 

    bitbake: 23681775e5941e54ebead469addf708fca1e6beb
meta-agl: f65060f370e8834de0229c6074c6e4326bdd04a6
meta-arm: f5ebb36c59b6eb847f45713a1f9b08a88f9978e1
meta-aws: 15bb71aff6bcdcbeeaa21a0e7ec915e0e90fae39
meta-clang: ce7d354da7a498f90ba260c006d29a4d23e3b4f7
meta-intel: 4f4e6d763cf2e7d04eaa8db65c0bd3e8c3b689a4
meta-mingw: e4d377d5ddb62b265536bd33dbccfbb0904f8701
meta-openembedded: 446560ab41de5e29ef5dfb556de1149e76a80367
meta-virtualization: e96da98e4038f5388596b4294ac3d8425b2dacb2
oecore: e068ba7d6b91237f9dabc2050c9473bed311690c
poky: 5fc59beaec099cd4a78b38fb0686f377bbe7dadd


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

