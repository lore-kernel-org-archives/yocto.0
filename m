Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A181C531D0
	for <webhook@archiver.kernel.org>; Thu, 23 Jul 2026 23:41:05 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.8926.1784850060942217552
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jul 2026 16:41:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=S1U+bm7C;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=MQXDqMRH;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 0101019f915a92a8-79648cca-c930-4256-9147-708fad3e7515-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1784850060; h=To:Cc:Subject:Message-Id:Date:From;
	bh=kP4W+N45VauitZ5dYzFcaohPBuszT+O0t7IG2t6E0+k=;
	b=S1U+bm7ClbWSCy3xVcVhkWfe7Vt0iydsuQ7VxyqmtoLaO9q3K1AnGSo0nD/hPY97
	dWFwKPUGF5+0L66rzEyc9wjICYfGQxySYRkYkjc+9WsdP/H8UNKbpD6xvj+WyrBZHqs
	GoJqjVmGpwx1FOrow24K1Rj7PYYE2P+Cgn3VWXBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1784850060;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=kP4W+N45VauitZ5dYzFcaohPBuszT+O0t7IG2t6E0+k=;
	b=MQXDqMRHuzR+R8R7jXNiND8mnmmEALCHCshSaCubaC1WhtlVyAwSTl3UrevS8Pt4
	FniNKmaYz/S+KYAjEnZO8YGv6I5J8VS43uQQBaIMGJMe5bYero9RiteEzl7VBf2YtFu
	fxMj4NLF5Wi1ahVEzi2ikXHU2Iy2N2RaPcLTpZAM=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.1_M2.rc1)
Message-ID: <0101019f915a92a8-79648cca-c930-4256-9147-708fad3e7515-000000@us-west-2.amazonses.com>
Date: Thu, 23 Jul 2026 23:40:59 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.07.23-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jul 2026 23:41:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66659


    A build flagged for QA (yocto-6.1_M2.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.1_M2.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4274

    Build hash information: 

    bitbake: c251833d2062ef92fc7e77ab6456af928ad1d31a
meta-agl: 3c55b45bf920bec93938af02f2452cd698d3bacc
meta-arm: 167661762b7d3985751fff066b5e7355325f3ecc
meta-aws: 64aaf5c905b47bff49060e217ee96bdd8423707f
meta-clang: 0baedd06e78d26d3b927471cfd91960b7229a178
meta-intel: 8877caca6b1fe6efe33c756698ce6ecdcaea2238
meta-mingw: e2aac06ec74e46d08b7e68f61043047c761ae9f9
meta-openembedded: 2dc51e7171cc94b55ae8cd72cac183bc7293ea35
meta-qcom: 2eb6cef3b3c25cf80c57e8b76b1b573770465a2b
meta-virtualization: a4987f0af6f30883e1dcd52cec66311343241d6f
meta-yocto: e4690557fb0fffcb5e9a86d1c1ebc550bb0da090
oecore: c0508fbea8d26242e0c761d412d727943f9d6355
yocto-docs: 358519ca6406a89fee42c45dcaf63a37a374f33c


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

