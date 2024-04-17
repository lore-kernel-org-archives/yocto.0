Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B64C4345F
	for <webhook@archiver.kernel.org>; Wed, 17 Apr 2024 08:37:31 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web11.7982.1713343046463459518
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Apr 2024 01:37:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=YjHkxGJX;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=ZjdslmfE;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 0101018eeb341f1c-6cbd9227-adf8-4d80-b90e-d552b36e72cd-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1713343045; h=To:Cc:Subject:Message-Id:Date:From;
	bh=jItKge9lLH7kfS8O1zmf/Wu/iPbEcxRZ4iYI41KWOuI=;
	b=YjHkxGJXhBD7vg7yFKEhzDFhNIm26m5fGG9oAsXgGLSp9toRpXxhV3Ip8cDsxGji
	W3kBuDkviKbk9FqWwzXS+58tTt2OmsECf/u7XsSPrPpkwDxVvMMbeCfz4NT0YeWEpil
	gOJ3uGHSuhJFSOrf8atRCAR1dyyzswFLdtx7GfZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1713343045;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=jItKge9lLH7kfS8O1zmf/Wu/iPbEcxRZ4iYI41KWOuI=;
	b=ZjdslmfEHyp3K+AezALVlS6z6aXhBFt2Tk5oLzbNQtjtu94T1xo/UiBM2bgwy5rh
	GG5hU7Q01IT8BroTyx7KqhXtdAl3K7/kxEnxwkhT17mYKuyXnJcLEJuZ25GMjHquq2p
	m+FF8+3JaFI4eO5wu+b4hYFF7IR51vzITmkv7lrs=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.rc2)
Message-ID: <0101018eeb341f1c-6cbd9227-adf8-4d80-b90e-d552b36e72cd-000000@us-west-2.amazonses.com>
Date: Wed, 17 Apr 2024 08:37:25 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.04.17-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 08:37:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62943


    A build flagged for QA (yocto-5.0.rc2) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.0.rc2


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6813

    Build hash information: 

    bitbake: c86466d51e8ff14e57a734c1eec5bb651fdc73ef
meta-agl: 8c5e4a89bd4d9436e9ba929bd0faaf32744f6a64
meta-arm: 04187be11dc4bfc898d411c1a40c2a1e9f4ff925
meta-aws: 216c095de9d546c141a90017a91a3ccb226de754
meta-clang: 989ff6a4e7db59f01d511727135610006124ead2
meta-intel: 0e43ce8605006b941cdfdab1f2112c5afc8e4663
meta-mingw: d1df6908922a5357c408be77ff18f812e9e999af
meta-openembedded: a7c8ce7f674008db4d7013557ec375a35226f43f
meta-virtualization: b7e77b69d309d8ee985720e88b19b6e9cf03fe63
oecore: 09ccab7d0b4d815b812e49a5861a13a4ec0189b9
poky: 5b727a8fa1acfa9eeb441ac835ca7d24099284a9


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

