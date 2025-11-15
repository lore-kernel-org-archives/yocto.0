Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 396CACEB2C3
	for <webhook@archiver.kernel.org>; Sat, 15 Nov 2025 05:05:06 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3593.1763183097984914185
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Nov 2025 21:04:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=ySh/lN7Q;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=CpESGOPx;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 0101019a85e6f3ef-2ab3b559-d956-4d98-9a2e-b0c77eea5e48-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1763183096; h=To:Cc:Subject:Message-Id:Date:From;
	bh=AHKq9+xPPi0V2s1UZU9eYORzeUGqlMQX9Z50XdFEWvo=;
	b=ySh/lN7Q87rHVUVqtb4TcDVlvSQTNowtEVJpqJtajtjwuqcD3J5mAToorkYE3SWo
	H9qIJWYW1qvebh7lg6dz3zhXXnVvCWeNF53SKd1kRevJYg3J/QN0sMKHwLLDKrr8BJQ
	YgpHsqRfHvArKOyp4Hv8XPX35iwsKMLkqWXaF2O0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1763183096;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=AHKq9+xPPi0V2s1UZU9eYORzeUGqlMQX9Z50XdFEWvo=;
	b=CpESGOPxGtFu1z07IVCOANZawcxjfmZwZ0MG+VfcZsdUUuch7JenOzcOE9xKJ3XN
	nuIZREqMOoQVRkUfsas5Z7fNolKO6zi8GuAU/5lTarpgYOwOjUYIv7ACkNNkLYWg14d
	Ae1MUtYRIrRlQ8mICFgGZHQHJAoYq1CLtvsv+flA=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.14.rc1)
Message-ID: <0101019a85e6f3ef-2ab3b559-d956-4d98-9a2e-b0c77eea5e48-000000@us-west-2.amazonses.com>
Date: Sat, 15 Nov 2025 05:04:56 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.11.15-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 15 Nov 2025 05:05:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66022


    A build flagged for QA (yocto-5.0.14.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.14.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2723

    Build hash information: 

    bitbake: 8dcf084522b9c66a6639b5f117f554fde9b6b45a
meta-agl: 8a94f23d8d81c02c74268ea18c35469c47a94b5a
meta-arm: a81c19915b5b9e71ed394032e9a50fd06919e1cd
meta-aws: c9e2b6c23bf349cd7670d47872e36158d91665c9
meta-clang: 731488911f55ebfe746068512b426351192f82f2
meta-intel: 6fc37057c7f0293a2345e303588901889df8b937
meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
meta-openembedded: f1f248262d662315159ee96c604f97415d1dbe6a
meta-virtualization: af1db2042caf8021d767dce1b26c08b59b96f3d1
meta-yocto: bf6aea52c4009e08f26565c33ce432eec7cfb090
oecore: 5fa3fd112e69cca60577065145f5f8aaa41b5bd6
poky: c1bb6b3d12ed8f69daa76435ff8f8118f42d5116
yocto-docs: a8687e4bb2e822670b6ad110613a12fa02943d3d


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

