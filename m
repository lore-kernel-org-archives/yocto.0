Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AEACA5FC1
	for <webhook@archiver.kernel.org>; Wed, 30 Sep 2026 08:37:13 +0000 (UTC)
Received: from a27-30.smtp-out.us-west-2.amazonses.com (a27-30.smtp-out.us-west-2.amazonses.com [54.240.27.30])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.9070.1790757424627844302
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2026 01:37:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=WB8Aus1A;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=InEZX/ni;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.30, mailfrom: 010101a0f175ca54-53721ace-bf65-423f-80a1-d3571be35508-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1790757423; h=To:Cc:Subject:Message-Id:Date:From;
	bh=MEaj2ikPHRxWFkN4vBw/df28FoaTJgGhG5FPRdZDmkA=;
	b=WB8Aus1ACtRoF7o3hl1hWUc4hdzBmrsIJAppi81tzLr4pSYas+qMoQOv1MriR0Ct
	JPoTnuwe/WNjIsLDWDk3AQCivJnKYZrc7luzVd7yEcDgpnWfimnrUeLliQdwtykfR1R
	X/39uXBOo+GjLibU2slljmdkoZ5uUm780Qb5k1Kw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1790757423;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=MEaj2ikPHRxWFkN4vBw/df28FoaTJgGhG5FPRdZDmkA=;
	b=InEZX/niK9wHgFPaddvE4T1qTSfcmLxxQfJJYauBiyaeyp/ax7c4MDhQ7pqmGmjD
	nQ1gxOPRxgygC4maRin5tfbSlE2ReO8qiDkC4aK+OJIe+XWhRFeQPciJHJ0Bu1qOTxF
	Z/TDu6weL+lqY6NLDZtl8U9TE/jMKOl4VmRCwOxU=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.1.rc2)
Message-ID: <010101a0f175ca54-53721ace-bf65-423f-80a1-d3571be35508-000000@us-west-2.amazonses.com>
Date: Wed, 30 Sep 2026 08:37:03 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.09.30-54.240.27.30
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2026 08:37:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66743


    A build flagged for QA (yocto-6.1.rc2) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.1.rc2


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4836

    Build hash information: 

    bitbake: 634f8dede6b9d71b5a6691499fd05a8678b46eae
meta-agl: c36f0e0bbed6000f28cfd10417c280c9fdca37cd
meta-arm: 02a2fa96623cf2559580d9695cdd57528503788d
meta-aws: 815c340ce256d0935281e07f0c4162d92fe5a6d6
meta-clang: a2c51ce7e4b582a358b707e5c144c05690d2cf71
meta-intel: 8877caca6b1fe6efe33c756698ce6ecdcaea2238
meta-mingw: 2697806adf824708e86d57ad68e0978a0af812fb
meta-openembedded: 4ec8afbfcf4ce50d8a5273065214c9a8d5eca27a
meta-qcom: d4cccd3c7729250d69cdb2318e2df26635d9c630
meta-virtualization: 847867aa6be383eb2fe745aa3b74a432b81ecec4
meta-yocto: 43946d08974e61361f6313ae348c5d87c12be934
mixin-wrynose-linux-firmware: 71dfb81bd98f59ca2127d39b100ecbb8ce1e0ba3
oecore: 419c1b0f1ed0e3ce22b1022061f763d007883121
yocto-docs: f26faba8568a3c8fc81d81d3650cc419847a4e17


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

