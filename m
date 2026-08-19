Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71A4DC5DF81
	for <webhook@archiver.kernel.org>; Wed, 19 Aug 2026 14:39:30 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8664.1787150365893172051
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Aug 2026 07:39:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=PQ9eV0yq;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=dA0WLSP0;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31, mailfrom: 010101a01a76718d-b9001e6c-d0ae-4cfa-b512-6be5ae427a5b-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1787150365; h=To:Cc:Subject:Message-Id:Date:From;
	bh=/aMkcAJEoTTJxklxdKOlVQAV9AENFa2ekP/LR3oqc6g=;
	b=PQ9eV0yqJa4BfgGT8dtthISRCmZzmb56N4myDGsV9t7n02ivzstM4F9Ygkrbmszk
	YsfZvot2kNpe6YGSwsruL3wQqWwraTB3nYacOO3FNIJDd4tqlkHQEUbpxYDOGBq7xne
	zRuIbhwzNFLdbLmLQcun+JcgxjaEtouuHGfw3rBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1787150365;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=/aMkcAJEoTTJxklxdKOlVQAV9AENFa2ekP/LR3oqc6g=;
	b=dA0WLSP0nDcSBikUPJeyqsOK9IfhiIhIN6CWctWCG9+DzxnbRsev3szoPaVAnyUw
	UsFsPp8kHqKh7IQ80AX6yYQqgmm+HnIwgI5Y95M8OSxyFx3prv9TAx9G8/jDWnrdF9h
	8rXxFrNmobb3kK8bPTTf3fiEYb920EsiKblLtG1w=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.0.3.rc5)
Message-ID: <010101a01a76718d-b9001e6c-d0ae-4cfa-b512-6be5ae427a5b-000000@us-west-2.amazonses.com>
Date: Wed, 19 Aug 2026 14:39:25 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.08.19-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Aug 2026 14:39:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66689


    A build flagged for QA (yocto-6.0.3.rc5) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.0.3.rc5


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4513

    Build hash information: 

    bitbake: fae9db3168dbff1b8c76fe9c6726a9687ff97514
meta-agl: 3c55b45bf920bec93938af02f2452cd698d3bacc
meta-arm: 0979b80429099f1a42dc0026c8c466cee780bc74
meta-aws: 5e7cc95f7d55a0ba0ae6a7e6e43e6323811a140a
meta-clang: ef0d22f21910a0c30c967eeb17d8f209806e2d81
meta-intel: 79a9681ce83f6bf36aede3aeb8c1707d29bca329
meta-mingw: 5876c193da3ad86b5e23012374b5350e49b0c755
meta-openembedded: 6bf0d8ad57b33950bab4c7f6c037e1ccb6f6e2eb
meta-qcom: bfa25fcfda87cb483aeb8259494b0a7ba65f7422
meta-virtualization: 30f1a9d7e5ef1b41c64ff4c3c40951133d548ed8
meta-yocto: 1b132647002eea43a2c7a7f857f63f42dacbc26c
oecore: ef022bf82d79015802309d14c28b13373ebe53f5
yocto-docs: 5b1ff88511d90634bb3077b878176de577464e12


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

