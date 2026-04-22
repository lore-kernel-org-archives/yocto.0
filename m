Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5378F9EDEC
	for <webhook@archiver.kernel.org>; Wed, 22 Apr 2026 15:05:52 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.84816.1776870345962574772
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2026 08:05:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=pD0cOJYU;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=xang0bLA;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191, mailfrom: 0101019db5b9c9c6-54bc1bde-c822-4bd3-97ef-cb495b537099-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1776870345; h=To:Cc:Subject:Message-Id:Date:From;
	bh=A6UTuh4tslIXfwcCI7rrfnnmJk+Kr1QaGApZfjDYhPg=;
	b=pD0cOJYUJDR0pC5xPhpV2wRtkqvc5tsYnQ3eb3tku08gBiWJ7FiM6qEMyXBoSCWY
	WRDvKo1tAw8i5Yd2MHbhNzWIWerFTrKWD37SAz0mALXSqBMwi492LBnmT34JzPBb1hd
	7dW2jGThyNkmarQb9wyYo4pbvdJTab/HrftvXtRg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1776870345;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=A6UTuh4tslIXfwcCI7rrfnnmJk+Kr1QaGApZfjDYhPg=;
	b=xang0bLABLH51lyuju2f+pF5LB1mgmf1yZnP6tJYUoPSCx5ruFKNb4QS5FF9uuDN
	Dtan4ArQU/HjM5MhFZnpeoa1GS3kBySO3ndRUcjQcO+fTBDoI9Qic3vUGEmPYSZUxGS
	sz2jGuri4hLMeOKCb2dFwe1zVFedvXVAq1bnqRPg=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.3.4.rc2)
Message-ID: <0101019db5b9c9c6-54bc1bde-c822-4bd3-97ef-cb495b537099-000000@us-west-2.amazonses.com>
Date: Wed, 22 Apr 2026 15:05:45 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.04.22-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Apr 2026 15:05:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66431


    A build flagged for QA (yocto-5.3.4.rc2) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.3.4.rc2


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3711

    Build hash information: 

    bitbake: 713fbbdb9ecc195ceb2216a2345e0d79dbee2135
meta-agl: 335bfb321925d37675d45f0f869c446ded8972ce
meta-arm: 4dc2a7bf29c1853b95dda53d9527f0a23049295f
meta-aws: c570c7c325a60e4da29a28db014769be0f7f621e
meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
meta-intel: fc9bc44c9da5e7e7bae38313615aaff5873b843f
meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
meta-openembedded: 8bcdb0cc1dab116253b409e78fb868ced7d8397c
meta-qcom: 96edf508b3f2b83c10cc2f80cee5396af360cff4
meta-virtualization: 8f03a0cc8950ef5d5e4f11d9ae494946d1991e45
meta-yocto: 3f2e6b6fadfa542f0fe3738375a2f9fcbd4c1f6e
oecore: 8751ec83421192fc0f8495fb95798f9eb7be77a0
yocto-docs: 10818445a22c524de0934901547cf676256c2b9d


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

