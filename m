Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 292B0C433FE
	for <webhook@archiver.kernel.org>; Mon, 10 Oct 2022 12:18:45 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com
 (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.web12.5571.1665404319224686828
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 05:18:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=WUXltRQB;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192,
 mailfrom: 01010183c1d53236-d20aa3af-b0ca-4f72-b153-1ece8a7e1c53-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1665404318; h=To:Cc:Subject:Message-Id:Date:From;
	bh=PbOnYVMrAm0ViAVDUF+T0lsvy0Q0KHkoC0ILObINuGM=;
	b=WUXltRQBzdXG0Z3YUGsGcNVG/pfBJrzMwdbvxSqE2zEWe8nIkBY9PQwjGJGAthZp
	qNP8PY8O80xkeL1T12jZZ0Y8R6UYuJ4ym0uxoWGhZFevU7zYwbw+RD2E8PDNm5TeJuV
	fbJkucZRtWULQF9eI9lk16CTtoYCDbwFGDVxM748=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1665404318;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=PbOnYVMrAm0ViAVDUF+T0lsvy0Q0KHkoC0ILObINuGM=;
	b=fpQZhbS1wdX7BoSvclUOfA+GEfxYcKVVDXeqfcTkbu5StqBDGUYKyVChHF4vdyrS
	tLBDYM0sO1GjTLZPz14tqvotRCP3b6YQgQ036n/8QDSrBZBgrWQ+grrvIpi2/8MYsS0
	ooseZUnzdClDZwJzoY0t/SW5FlJqxX/reYOzaF9A=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-.rc1)
Message-ID: 
 <01010183c1d53236-d20aa3af-b0ca-4f72-b153-1ece8a7e1c53-000000@us-west-2.amazonses.com>
Date: Mon, 10 Oct 2022 12:18:38 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.10.10-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Oct 2022 12:18:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58303


A build flagged for QA (yocto-.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-.rc1


Build hash information: 

bitbake: 048d682b031644fb9f0d41a489bacb873aa27bd7
meta-agl: da4775d226b2a231e27e8c8995c20fdd3c73f08a
meta-arm: 08c44df351ae1913f41de8388981b03e21235f09
meta-aws: 052c9a5f8532ed96487df37bae2f598c129d7d01
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: ed616c50ea329ba6fe68642cfc8bf8c6b8b61beb
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: 6792ebdd966aa0fb662989529193a0940fbfee00
meta-virtualization: beea119eb529b4a11f266004aee8b548427aea39
oecore: dbad46a0079843b380cf3dda6008b12ab9526688
poky: 7f9b7f912e13451a4cd03b10a8090a5def68dc39



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

