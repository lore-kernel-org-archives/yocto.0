Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7EB7C021A4
	for <webhook@archiver.kernel.org>; Mon, 24 Feb 2025 16:42:47 +0000 (UTC)
Received: from a27-45.smtp-out.us-west-2.amazonses.com (a27-45.smtp-out.us-west-2.amazonses.com [54.240.27.45])
 by mx.groups.io with SMTP id smtpd.web11.95021.1740415363406873940
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Feb 2025 08:42:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=d+FmhzZt;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=fm6IucT8;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.45, mailfrom: 0101019538d6e616-8b7e7ff9-d683-4a53-b124-ff4ebb179bf8-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1740415362; h=To:Cc:Subject:Message-Id:Date:From;
	bh=ihj2T1MDec3v3Just55elNyYmwgN/0F56ImSaO5zLF8=;
	b=d+FmhzZtIBSq6gJyt50PlP65P0JPnJ2y/3ed5xqV6dwx6lo3EDaLskt4LMdWsKC4
	yxsFaKXWfd6DLA1mcQRuaMWvxiCx1xV5G5X1x/408MtNsJSkJloi2ebvZsqzROvRkM3
	57votS62d+WzYnjwVllvKgpOt/mO4AvuGib0m7Bw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1740415362;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=ihj2T1MDec3v3Just55elNyYmwgN/0F56ImSaO5zLF8=;
	b=fm6IucT8GzPMEN57NoHKr7xrxUEdnD8sLIzNLb9CvbMBv9CA6QgwmNXbydb3dPS9
	APiSqgQxu14ozaItrcKQFAvvfKWMzQphtdr/PamRXcjk3FRNW0Ti44VkQFLyFkzit2s
	qnB+GupAhNdYC4xDKo+3uXJhRn4KomeakEDzqw28=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.1.3.rc3)
Message-ID: <0101019538d6e616-8b7e7ff9-d683-4a53-b124-ff4ebb179bf8-000000@us-west-2.amazonses.com>
Date: Mon, 24 Feb 2025 16:42:42 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.02.24-54.240.27.45
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Feb 2025 16:42:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64856


    A build flagged for QA (yocto-5.1.3.rc3) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.1.3.rc3


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1072

    Build hash information: 

    bitbake: 58e5c70a0572ff5994dc181694e05cd5d3ddaf66
meta-agl: 005d2b0a27ebdd21fb2aaa589c8672650474b055
meta-arm: e56a0cd6fe5e796aa59bd0d4bcbbb585ea626199
meta-aws: 9a8a5edc0ba8be96273966df0215fb921d8a6e16
meta-clang: c709a5196f1e8654425b43b478064395386c36d4
meta-intel: 0ee9e8454cd41dcb0f49df7dcf2182b4d5e7cc96
meta-mingw: 77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
meta-openembedded: 6851cbf026088a13b2b45f684838d3dc4d7ccfdd
meta-virtualization: 247ea9c3880a257003ce2cc566fcdbb307ea4374
oecore: 35ffa0ed523ba95f069dff5b7df3f819ef031015
poky: 11a8dec6e29ac0b2fd942c0fc00dd7fc30658841


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

