Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C7CC021B2
	for <webhook@archiver.kernel.org>; Sat, 22 Feb 2025 07:40:41 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web11.42447.1740210033383086303
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2025 23:40:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=QTM9WYqg;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=eM7w+FEY;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 010101952c99ce92-b0b50af4-d5eb-415f-9891-b5887e1eef75-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1740210032; h=To:Cc:Subject:Message-Id:Date:From;
	bh=oCw9yY3JqMxeslNMYBK5j9eQ0cOotki4IBAQrim2edA=;
	b=QTM9WYqg4vGkJeOhOLkOVr0DQzHL9emq8sXMrOlau6/MGzXhyXCZjM/jSFUcCE8D
	jCDcj7wOhnnWPKgkSpLh3IeoTIDkN04I4DFOcWlpyHyuVuUYuDNqn9uDzz5hHMrfnu9
	wXV/467HEjcGTRAwuRuxF6T/Vk7Eu9P4rLd1e8Ro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1740210032;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=oCw9yY3JqMxeslNMYBK5j9eQ0cOotki4IBAQrim2edA=;
	b=eM7w+FEYSS7HTb6j/GS0WdtG55yb1EpkfchooDKMgMOi6E+MQ/OKJhbA2qNJRJ5/
	bGKADLxTa1UoxkPhKc5iqzZVnNDKlptFgQ/qlbhvulbXM1/mlNS0Mo2wsr5pYSTa00R
	9BSBjnOgUmUbPJ8PGj7IHzfmDggXp6023XuD3kXM=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.1.3.rc1)
Message-ID: <010101952c99ce92-b0b50af4-d5eb-415f-9891-b5887e1eef75-000000@us-west-2.amazonses.com>
Date: Sat, 22 Feb 2025 07:40:32 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.02.22-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Feb 2025 07:40:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64849


    A build flagged for QA (yocto-5.1.3.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.1.3.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1065

    Build hash information: 

    bitbake: 58e5c70a0572ff5994dc181694e05cd5d3ddaf66
meta-agl: 005d2b0a27ebdd21fb2aaa589c8672650474b055
meta-arm: e56a0cd6fe5e796aa59bd0d4bcbbb585ea626199
meta-aws: 9d8d77cda988ba59a00b723b0d78f49a206b5336
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


     

