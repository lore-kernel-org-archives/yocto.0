Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8FF5CD1288
	for <webhook@archiver.kernel.org>; Sun, 31 Mar 2024 00:31:11 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web11.9029.1711845069750393249
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Mar 2024 17:31:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=SXxfzZpF;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=CA1ch4zX;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 0101018e91eacff0-19ec5ff7-4f94-46f3-b8a2-3614dca53175-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1711845068; h=To:Cc:Subject:Message-Id:Date:From;
	bh=I0SET34qTFuu+MKOGZrIlBHHVJ6+Ijx9/WjyIEjojMo=;
	b=SXxfzZpFcPF56AFq7VvTamNHjql0QSaAxIl9czKdX5t1hShmKCc9wzIx6BBj4FQk
	BkriHJNqW87++YuHPFzfewBSBM25aS+PozD6IayHLHuIaVdfbHkazB6/Dn6bphZLwlp
	8wW7gOHmd2gm//9/olYSRJvatVVaCIoH/I00CTJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1711845068;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=I0SET34qTFuu+MKOGZrIlBHHVJ6+Ijx9/WjyIEjojMo=;
	b=CA1ch4zXlqEF7IgJ0BnX1JQA5WfoQ4sakcqbQDTnZTXerdTRB1pxO1Ov3q2PjvfK
	CThjEtgQdochVplZlX+rtMYUALmZMxmpP7XDWI+Zx2CcfgHD43na5pwEiCq3W0EkJfF
	ILbDw7nBV2s8yTEC96lilbavdwOZnQ2JEuSd6kqc=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.3.4.rc2)
Message-ID: <0101018e91eacff0-19ec5ff7-4f94-46f3-b8a2-3614dca53175-000000@us-west-2.amazonses.com>
Date: Sun, 31 Mar 2024 00:31:08 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.03.31-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 31 Mar 2024 00:31:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62864


    A build flagged for QA (yocto-4.3.4.rc2) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.3.4.rc2


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6745

    Build hash information: 

    bitbake: 380a9ac97de5774378ded5e37d40b79b96761a0c
meta-agl: 5d487f3f281cd632d02b5aa16b2b1e0470f9afd8
meta-arm: 150169d01f2f57dcd65854a2a43aebef87ee8d98
meta-aws: 46ece2480cebc6be90a6056361f480d39976240e
meta-clang: 73c00a5a0bebc871854e43cc1f0fe5bd5e5ad1d7
meta-intel: e0c541c10f561b9c0087fd07ad5b79b0a534dab1
meta-mingw: 49617a253e09baabbf0355bc736122e9549c8ab2
meta-openembedded: da9063bdfbe130f424ba487f167da68e0ce90e7d
meta-virtualization: ac125d881f34ff356390e19e02964f8980d4ec38
oecore: d0e68072d138ccc1fb5957fdc46a91871eb6a3e1
poky: 7b8aa378d069ee31373f22caba3bd7fc7863f447


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

