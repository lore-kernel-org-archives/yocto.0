Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1ECE5C6FD18
	for <webhook@archiver.kernel.org>; Sat, 22 Apr 2023 17:26:00 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web11.12167.1682184352532034130
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Apr 2023 10:25:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=LcPS2x0w;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 01010187aa002f65-f0534f17-03ad-4a95-8eaf-8222db417800-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1682184351; h=To:Cc:Subject:Message-Id:Date:From;
	bh=cJ1oge8x66hUJjoG2Sh6Dy9C19FRqfIOPNI75o9s7TQ=;
	b=LcPS2x0wZZEauC+jGFo6TbMI5FoVWnCDEwnY8gcKVlFxZx449ODeJVBx6MWtcUvk
	mGWxJ6TGO8pB/yZQKPlfnkBMWqssGsjvPabJigum9gIMvfl1pvHPGqjSYcK4IXhMgm/
	eD0rnYmWClgKjhJ/bLNZJiiPilAJ5u4+Ks/uIpJo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1682184351;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=cJ1oge8x66hUJjoG2Sh6Dy9C19FRqfIOPNI75o9s7TQ=;
	b=CCXjPApp1TNBf3pyrd1nOnoKU2T6lYUyxALiRkOaQvS0VyWOOxRAnXJQMnmppkJH
	ckYFcbhaDYLF5IdlAi40JLJjkw0p5hSX05Gp7GeaJol3Sxu/dw/kX6G1HNlgZHsEs8W
	yfIdbQwMeKKutI+NSu8GIzUdCx5c8AAwhv2ZXQaU=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.2.rc3)
Message-ID: <01010187aa002f65-f0534f17-03ad-4a95-8eaf-8222db417800-000000@us-west-2.amazonses.com>
Date: Sat, 22 Apr 2023 17:25:51 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.04.22-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Apr 2023 17:26:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59761


    A build flagged for QA (yocto-4.2.rc3) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.2.rc3


    Build hash information: 

    bitbake: d97d62e2cbe4bae17f0886f3b4759e8f9ba6d38c
meta-agl: 09135164a21a216c6e3e75d7decce896b92962f0
meta-arm: ea407ce849f7f181f5b43a2495436a720a32cbef
meta-aws: cad4b8aabc9d2cde9fb3009ae902faa32bc8f1db
meta-intel: 48ddf2b0e6fa5450e63878e1fc31dfc91cf3fd94
meta-mingw: 250617ffa524c082b848487359b9d045703d59c2
meta-openembedded: afbc2234898088311c38d78997f63992e38aa08a
meta-virtualization: 50ceb5ad53ac721a25bbbce22eb1d881cc947764
oecore: c57d1a561db563ed2f521bbac5fc12d4ac8e11a7
poky: 21790e71d55f417f27cd51fae9dd47549758d4a0


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

