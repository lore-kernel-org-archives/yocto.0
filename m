Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 041FEC433FE
	for <webhook@archiver.kernel.org>; Wed, 23 Nov 2022 16:35:34 +0000 (UTC)
Received: from a27-30.smtp-out.us-west-2.amazonses.com (a27-30.smtp-out.us-west-2.amazonses.com [54.240.27.30])
 by mx.groups.io with SMTP id smtpd.web11.1189.1669221327807941075
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Nov 2022 08:35:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=k/HOLUGp;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.30, mailfrom: 01010184a5581bd5-3aac18e9-d345-4281-b60e-3721c03106f5-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1669221326; h=To:Cc:Subject:Message-Id:Date:From;
	bh=/CLBH6tkqiSjlP7YDTRtjTry5U+5G3lx1tNbE+wY/lU=;
	b=k/HOLUGpc0DPAZlXkO9MawLZxjYzEabGXTK6QqHnlYsJcbAlzOoO3zhUpwEi9PCo
	abUbjNG5SiZP+Ggvarr/s9yQdTzl11VBLQDHSl4yrBzCcpDKtxEnolB1hTi5Y/D1VCH
	eAZuHCtvbBG2cSgbMgRY20kH1C6B6UYx9uDF7o+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1669221326;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=/CLBH6tkqiSjlP7YDTRtjTry5U+5G3lx1tNbE+wY/lU=;
	b=Nlm2Xu9HSCT7RWM0P1qUQCQ3D4n3U7CSye5aNzxWQX3H3ryliGGLNPyXPVrlHkHp
	DzV1ds7cgfaYc9uk/i8KfzGkCc2RsrykZ8Vk5TYxbfa5RLY6HsVPbMpjsnPEhbeoFq+
	6EXdSV6OGQgqNui6HlLj2H2YrCDjCNlPVdwGiQVg=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.21.rc1)
Message-ID: <01010184a5581bd5-3aac18e9-d345-4281-b60e-3721c03106f5-000000@us-west-2.amazonses.com>
Date: Wed, 23 Nov 2022 16:35:25 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.11.23-54.240.27.30
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Nov 2022 16:35:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58629


A build flagged for QA (yocto-3.1.21.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.21.rc1


Build hash information: 

bitbake: e3db9c2e9eded3c5cb6040714a6054b44f6b3880
meta-agl: ac1c1371c3ccf48d458d2d2afb591cdc220c56b6
meta-arm: 08c44df351ae1913f41de8388981b03e21235f09
meta-aws: 49e7a5ffb8799b9eee638a6a5425a13b00c33215
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 6c202291925bb179d2d08b5bde80192f9b032b88
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: 7203130ed8b58c0df75cb72222ac2bcf546bce44
meta-virtualization: beea119eb529b4a11f266004aee8b548427aea39
oecore: 1ee082e979baaba871bbe1d91181bb04951faf3b
poky: aa0073041806c9f417a33b0b7f747d2a86289eda



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

