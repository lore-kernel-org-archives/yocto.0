Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CECD6AAF3
	for <webhook@archiver.kernel.org>; Thu,  2 Apr 2026 16:41:40 +0000 (UTC)
Received: from a27-30.smtp-out.us-west-2.amazonses.com (a27-30.smtp-out.us-west-2.amazonses.com [54.240.27.30])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.849.1775148094966941482
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Apr 2026 09:41:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=P8LYetJJ;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=utrBdeG6;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.30, mailfrom: 0101019d4f125330-7e1f1d56-809f-4925-a977-4c36436ac0d5-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1775148094; h=To:Cc:Subject:Message-Id:Date:From;
	bh=aZd3ZmRIfhjm8XzCf2r3Nnsyx/vN7uTjpIWPOmnooSo=;
	b=P8LYetJJdOigLWMLMuuDotgNFRf3GPNRDPSyMgsUxirFyBaj0MVwtRHkq1/46ZaS
	MXszOoiazqgUX6l1ynwPswecSBRivcM0dGIQFxyGmLQZAbRt+akayHAOrwE9ejiOAhL
	EkjIcx3k4pjNkS8IFi+jDNjVAEzW4WkDAJrLUzc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1775148094;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=aZd3ZmRIfhjm8XzCf2r3Nnsyx/vN7uTjpIWPOmnooSo=;
	b=utrBdeG6/LA6m54fasBu/AKU7WB/RQ2RuIgMGegixO8L6bEwy9OinL0ksf+o3ciw
	lZOdnX8hAfmw4IBft+9ggsxm3xCUwx/xUMy++PM0gQkL1e2BMz4KzZQxnh1f5V7p9SF
	OZxgTqcOh7sfuhuHHOgr6fmyT2bmBYMTqpeE6iGw=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.17.rc1)
Message-ID: <0101019d4f125330-7e1f1d56-809f-4925-a977-4c36436ac0d5-000000@us-west-2.amazonses.com>
Date: Thu, 2 Apr 2026 16:41:34 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.04.02-54.240.27.30
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Apr 2026 16:41:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66380


    A build flagged for QA (yocto-5.0.17.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.17.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3577

    Build hash information: 

    bitbake: d3b4c352dd33fca90cd31649eda054b884478739
meta-agl: 6937866399dfbf3f37764522545426fde3f9f97a
meta-arm: a81c19915b5b9e71ed394032e9a50fd06919e1cd
meta-aws: 78fc3cf6eb3c8f7501d1ddf05d1787c43526b11b
meta-clang: 5bce7e26a38a58bb52242494e54ab2af40009574
meta-intel: 5d153e35b4e752505efeae368f188fac5e31cf33
meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
meta-openembedded: 06f846a325fde423bb0a6d49d771d8c1e144d7eb
meta-qcom: ec80a36bce11d8182b4bb2a6fa0359adfeccde0a
meta-virtualization: 3dd635f613f7299d986a8ab6bc9f584370f8ed1d
meta-yocto: c7c38663a1cafb1fa8593c0b246811e51d3bbe20
oecore: 52380df998b3a8fe6a091f8547434a3231320a8e
poky: 1e8099846661571ede077f533eb1b6c86818ddce
yocto-docs: aa7226705451e6c1ef964d49963bbed29b267c27


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

