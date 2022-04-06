Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 784D6C35295
	for <webhook@archiver.kernel.org>; Wed,  6 Apr 2022 16:33:19 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com
 (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web12.6023.1649232661718080859
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Apr 2022 01:11:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=onPV9rqY;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23,
 mailfrom: 0101017ffded4843-210c9da1-5b3f-4ed6-bcbc-1f63610acf6e-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1649232660; h=To:Cc:Subject:Message-Id:Date:From;
	bh=0wKHwFEMn9ZPbi65IGwYb7UKN/GML6IytDsOw4JO3iY=;
	b=onPV9rqYgdjWSgMt5xC35hqa6QWCQiYI0ckl+Eolr7nGjvB69pXi2EG4iPa2iqkZ
	nky45ZJLN8iNHskF4aylL/L3325Zm6oBXoGUIwZWm2g6BMYdcCdIAb+hnZC3Xev7gJc
	vSO3kR51dgZDJA2KCckXzQD5eLQdcxrG2VA8D4NU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649232660;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=0wKHwFEMn9ZPbi65IGwYb7UKN/GML6IytDsOw4JO3iY=;
	b=cfclc8gv4snP/XjDc1QPfSfoWnI/xS5ljuAXpkKmRrcQm99KGmVfLd5xAbCnIEJ6
	nOAawuPBsCf3aDrWGa17vLyB8kZi90w9a4not9jcrJ3Mj6ENp6ogwvbRulxLEjJJweh
	8/74mVpZbC0Wi/qhbN7O9sR49WskGxUe3oFwixd0=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.rc1)
Message-ID: 
 <0101017ffded4843-210c9da1-5b3f-4ed6-bcbc-1f63610acf6e-000000@us-west-2.amazonses.com>
Date: Wed, 6 Apr 2022 08:11:00 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Apr 2022 16:33:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56671


A build flagged for QA (yocto-4.0.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.rc1


Build hash information: 

bitbake: 41eeb4f34fb2306303f7688ec5e0ae965a573aa4
meta-agl: fa5152323ad2bd3d433aec72c4fec6614656f06d
meta-arm: 5c83fa83649c522137c96d3c5aab49d660f8807f
meta-aws: 214a5867b3b0d9ba54818aabb1711eadf4ba9eb3
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 68e00896f2c669044f6ad8cbbc9958332254a4e4
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: 173352732d17b3d1fa469b6eea43a2a3c8a670d3
oecore: 62851965fc180f33ed6feb62ff5ac14706e4732a
poky: ed98f1a1ae7e4e2c8e089003a619ae9260a852ad



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

