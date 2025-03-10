Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4ECC282DE
	for <webhook@archiver.kernel.org>; Mon, 10 Mar 2025 22:32:13 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web11.664.1741645924156743957
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Mar 2025 15:32:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=HkEzRE+I;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=rNHH7SMA;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 01010195822fc491-f61abe47-1c61-47db-bd38-1063cc68c953-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1741645923; h=To:Cc:Subject:Message-Id:Date:From;
	bh=3BHbjr6Ze526e88zKToLWOMcwUGhChrWKW53My7nwtc=;
	b=HkEzRE+IYaVa9Ahz9PkRoWTBQfflPUpEHHUjaUuUYf8hGhcMOB/ke+jXq89fSmLJ
	0WB6lLr18vbewwJmphfx8Yla7WFGEaGVPUnoUyj0841d7ELnS4Ml7DJcXlIAW0+XDtE
	MNNoK+x1rhfkFYo599va3R4D5JT0FLz1c39CLuaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1741645923;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=3BHbjr6Ze526e88zKToLWOMcwUGhChrWKW53My7nwtc=;
	b=rNHH7SMAhC4klzJTpo/VxiXKb4Aby4hlbfkDd/37i6DgNTZWxCqowHLirlNXZlzn
	OKHMhzVBFxHr/Dj8xCpN2I/8wsSGzTdfUaBE8/zrRpEHkG17Ywt/wqfCEKergWwXAB3
	o4vV3oT/fXdW70ya73FtFAHV1nbZ+T8tUwUe0TnI=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.2_M3.rc1)
Message-ID: <01010195822fc491-f61abe47-1c61-47db-bd38-1063cc68c953-000000@us-west-2.amazonses.com>
Date: Mon, 10 Mar 2025 22:32:03 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.03.10-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Mar 2025 22:32:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64935


    A build flagged for QA (yocto-5.2_M3.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.2_M3.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1154

    Build hash information: 

    bitbake: d5562e007c7c64e8613a118ab9a6c73ed2063263
meta-agl: 17fd501fae2361588f2af72c229d56612cdca40f
meta-arm: b6227e29625c2509b083092e5e10975c3b2d037b
meta-aws: 886dea85a304b5db0346494b2e95e7c59cab14da
meta-clang: 3669c28e90ad710e38ad2381ef0292d706fa9ffd
meta-intel: 81b110e4fae3c47d65872ffc60bda6e92271b3f5
meta-mingw: edce693e1b8fabd84651aa6c0888aafbcf238577
meta-openembedded: 74110869a8c1c54270c3a919ef7e84bed896e166
meta-virtualization: 2b0e119d5ce4106e78c214babfc1c6fe02f636b2
oecore: 6027a6c6cf283bfb639bb6c3bc2f35b3da225352
poky: 046a92d351e2025e0dadead9f70f85eff8f5af70


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

