Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04C51C43334
	for <webhook@archiver.kernel.org>; Tue, 19 Jul 2022 19:23:31 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com
 (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.web11.44929.1658258603503474893
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jul 2022 12:23:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=lzaCJddJ;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31,
 mailfrom: 0101018217ea3768-11ff38ae-a6a9-44fa-a01f-495f642b5a1c-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1658258602; h=To:Cc:Subject:Message-Id:Date:From;
	bh=wqPi/Li8NEp2cEiKy4FrGXQjWclSeeHdRThyVjfztKw=;
	b=lzaCJddJxJrhlQeraAuZQ+1OOgWEmRISbcTGQS6veUcTfjcq8b5hCRCLKY+/I+wm
	lYlnZ9KYH9y2J/zClDBymNz/j54FvCtXxH5wyZenJLJaDMfaFl9MWXaeTx/AJAgapn3
	o5K14+rwDsF1AtRPs0qiEEl+QL6tF+dtSUUn6FaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658258602;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=wqPi/Li8NEp2cEiKy4FrGXQjWclSeeHdRThyVjfztKw=;
	b=ikfvqq/Qoni01sot08CIXoG8XYPy7znvcCMKckkKR4oukVwwqnO1NXwrqnTFpXKU
	BKRR7T3GA+Qz6G9OoDOPqvehxxNniPzkyr3Rc2BFREVVx6ThK316yh//xl3Pd/MGD3s
	lt/6E0I0ExutZc0pygwaMiWHJiYaXpyHuuw+QJkc=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.1_M2.rc1)
Message-ID: 
 <0101018217ea3768-11ff38ae-a6a9-44fa-a01f-495f642b5a1c-000000@us-west-2.amazonses.com>
Date: Tue, 19 Jul 2022 19:23:21 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Jul 2022 19:23:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57578


A build flagged for QA (yocto-4.1_M2.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.1_M2.rc1


Build hash information: 

bitbake: b171aa45fb8518dcfbba315b303a4fe9bf2180c6
meta-agl: b5044156fc318a4881e766513871611a560170be
meta-arm: 6481a473d84f84530e0c48d56acdc185919869b6
meta-aws: 2f5075673489ee2d3fc318f6626d45145f65d5ea
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: de5851890f9a268621515193d2ad84f8359fbe24
meta-mingw: 205e9d942bc8ea1643a8d27b79e773625d173c00
meta-openembedded: 0c2e416567351d55ae45e67513be6f20aa754d4b
meta-virtualization: 7ec4b4746d9d76062a868ea77818a150ddd53c54
oecore: b4f1b78aef77198f26a8ef9e105fa690cc12e836
poky: 899979696f68ff4414cebf7782b37d7bae27144b



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

