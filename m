Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB174C3DA6E
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 02:03:21 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web10.33224.1702864995206704306
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Dec 2023 18:03:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=K7nt81Aw;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=qiQrWwhH;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 0101018c7aa9bfff-3d213d04-de48-4e71-84f8-3af5a9d3712b-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1702864994; h=To:Cc:Subject:Message-Id:Date:From;
	bh=xwrwzys9rS9lsPSC1NsfPrQ84pQzl+UCKtYlUsG7U5A=;
	b=K7nt81AwA4Mo5IQvHpP060ER2twNVeB29xAhw7I1IJGBOSD1yJNvmHMJ+9JRimJE
	pKVOGEn3X4xHxVKsGJ5EwmFGG+nqK/0X1ZIAZVHuqQVd+KGP4UBEofvTZf0ilFGGJcc
	HrGxvPKwfYGCdl0cwO1jb7fINSde3Y7mN139gKP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1702864994;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=xwrwzys9rS9lsPSC1NsfPrQ84pQzl+UCKtYlUsG7U5A=;
	b=qiQrWwhH4clLkludsr3rqx+/bkNT3qvOQQsZCHecdiININcPO1/bfh6+c3bkZCE7
	rztYdGZddMfPtglDB8+s+zp56/4Bszb5/domOo+H/3eJkw+rHqLlcasJbwo0K7OlAfb
	+CgUTt58MDy6GJ1EWF+7jYidx8/2LZ0Wyjy8C8eQ=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0_M2.rc2)
Message-ID: <0101018c7aa9bfff-3d213d04-de48-4e71-84f8-3af5a9d3712b-000000@us-west-2.amazonses.com>
Date: Mon, 18 Dec 2023 02:03:14 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.12.18-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 02:03:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61951


    A build flagged for QA (yocto-5.0_M2.rc2) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.0_M2.rc2


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6344

    Build hash information: 

    bitbake: 834e452243ff2eea6e8e2e7f4935b5233ffb4b00
meta-agl: 266ac5373b4458d7fcb78b1e8948eb2b33f18b5d
meta-arm: e6e7ac4d99f103d26a0ffefd6d0a5d2deef5b17c
meta-aws: 7915e6bafd876ab3d654a26629dbf501479caae0
meta-intel: 5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56f
meta-mingw: e01d47d183945caeaf3c5c086539af0a925ddc32
meta-openembedded: 0a0ea87b8dda01a2887a525cef78eb6c3f4c2c32
meta-virtualization: caa14c63f158fdd13382ccf1ff4e20a8ba6ad667
oecore: bb9f2a9c0ff5dcdeaf1a0beb6a614d0d022a2481
poky: a49de3ccc11faedf5a98963c39d67f8dd5bdf6e1


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

