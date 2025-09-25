Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BD2CAC5B0
	for <webhook@archiver.kernel.org>; Thu, 25 Sep 2025 22:38:36 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.web11.4133.1758839909742153519
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Sep 2025 15:38:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=Rf9c0Asv;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=Ixhxn+GN;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 01010199830727cd-45a08af7-e323-4a81-99d2-eae1a97a1a6f-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1758839908; h=To:Cc:Subject:Message-Id:Date:From;
	bh=8fTYesAVDFmEwdetBczXAd37J3XxuFABECOnwlYATCA=;
	b=Rf9c0AsvZscmpFy+jzAQuCETYxwr9UDKoq1mLt9teB5Z3Q6WAeF6oFA/sWj0kWQh
	K0BCVlIT9ZbwBFCGNUOWu9g7wKXy4xLNBdQ3VPvs6nIpAvTdFvJ/FD5wDl59aZDqwvS
	aM18uCMAWoGeFc3X/mR406jNxApyaDKBDYsRqX0Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1758839908;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=8fTYesAVDFmEwdetBczXAd37J3XxuFABECOnwlYATCA=;
	b=Ixhxn+GNN0UxVIEertTeqwNa8JKbIg6sfxBGgzeW5CskFuLWNbgrcoAys90eQO7L
	6Hj8ukFImScYiWBknMQT+/z0liNF6CilUU+PB1gJr5rJFevLH8m/e8p1XJmDBEiY84L
	gBCM7fjE/wC6vAkz8TqBb1+CX13ABHFg2h3gB/uU=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.2.4.rc1)
Message-ID: <01010199830727cd-45a08af7-e323-4a81-99d2-eae1a97a1a6f-000000@us-west-2.amazonses.com>
Date: Thu, 25 Sep 2025 22:38:28 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.09.25-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Sep 2025 22:38:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65876


    A build flagged for QA (yocto-5.2.4.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.2.4.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2442

    Build hash information: 

    bitbake: ac097300921590ed6a814f2c3fa08a59f4ded92d
meta-agl: cc6c5d45fc4b637c3efe4b8d1c7c76935607cea9
meta-arm: 21894cc2ea3197e6bfc1a56d889f757a09dc8b31
meta-aws: 69902e35f283195a87a3746f91177f0a361f6746
meta-clang: 003cba92e982bdd565a6889f28799f8bba14957e
meta-intel: a75e59bdba66fa6dcab8f2208e73fbf2fc576457
meta-mingw: edce693e1b8fabd84651aa6c0888aafbcf238577
meta-openembedded: 80ab58cc404959ae2f0e8b2e68935b3bfd8e8cfe
meta-virtualization: 898239e810acbb7db93299f20deec8afe434f11b
oecore: ff1c54df4e7b15df2e2c9fced59d9ad3e92ed565
poky: d0b46a6624ec9c61c47270745dd0b2d5abbe6ac1


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

