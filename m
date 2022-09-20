Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87735C54EE9
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 23:09:08 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com
 (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.web08.176.1663715339758523688
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 16:09:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=YfYG/C0P;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191,
 mailfrom: 010101835d2969ae-38f29d77-d301-465f-a510-8ba455d8ff88-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1663715338; h=To:Cc:Subject:Message-Id:Date:From;
	bh=AiTtwyyFUykOzK7uVvJu/3S/V42LDWILumr1oKQCeGo=;
	b=YfYG/C0Puwtfn4/qPLvPAxUCKQQpjAx/xCgma0ww0IKeTk+mLkzhl6OmBVNOQlNt
	EWpNA3UpgXxW0MMnhC/Mtu6+2EHoKSJRBE/JmeO1RqucDgedFRmnE7u00uMM2mUTRxr
	VpzUclaNHyPGfm3/AHiD9lC6gfLOdH+ra5OT1JvY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1663715338;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=AiTtwyyFUykOzK7uVvJu/3S/V42LDWILumr1oKQCeGo=;
	b=k9vE4OzY2Bt1yYCJqD0HpbOyWMxaNPREZbeUjJ5rgxSK3SL6pbWy4DKwmeRB4TSi
	aOjJg6UO/Et9lIf3Wx8u0P1ghZkQ0F3zfOzbtq97WG/H/ACvjGZIGYpZXAsy3TPVYOS
	MuYyHfyamuJ2K/9+rCXabK0FWJw9d4Nmncmbn0fQ=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.4.rc1)
Message-ID: 
 <010101835d2969ae-38f29d77-d301-465f-a510-8ba455d8ff88-000000@us-west-2.amazonses.com>
Date: Tue, 20 Sep 2022 23:08:58 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.09.20-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 23:09:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58108


A build flagged for QA (yocto-4.0.4.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.4.rc1


Build hash information: 

bitbake: ac576d6fad6bba0cfea931883f25264ea83747ca
meta-agl: 2e8dbab520652afa5e39e74793bdc917aa9ee86b
meta-arm: 0a5eba13d81f5c5722a13b816193ebf93c0fd198
meta-aws: 3b4ce1c62e3d6fb7d4695e9b0c04bf7f922f051e
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 01ad1a73aaab49d377d14bad8a7dec48f86cba83
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: 8f96c05f6d82fde052f2cb1652c13922814accb0
meta-virtualization: 8c5f038cb92fa4b02246d2d1479a003eecf5fe93
oecore: f7766da462905ec67bf549d46b8017be36cd5b2a
poky: d64bef1c7d713b92a51228e5ade945835e5a94a4



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

