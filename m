Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57CC7C433F5
	for <webhook@archiver.kernel.org>; Mon, 14 Feb 2022 21:23:40 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com
 (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.web11.1529.1644873819168465456
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 13:23:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=jVJl5jkM;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31,
 mailfrom: 0101017efa1e9e74-74d88d22-b047-44df-8db0-cd1ec69cdd6a-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1644873818; h=To:Cc:Subject:Message-Id:Date:From;
	bh=2JvYcwyiDG1XRVUHfxBacuYkMmsXP60sAFo+dWTG0/s=;
	b=jVJl5jkM5fVcznHHYFcWSfg+ceCbTx662SP3p68ay3yC0tRTvHcn5wC3lYuQJ7Ge
	LYPpLtIIZzBXi0G9qXINpRPYv83cc5fZACZb9k89ZkCt/+3DnGv+B5B6cwC5phRBYjg
	lf1aXmb6NeWr2LpM8A1/bzPiQaVdZCIkKERvgsUs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644873818;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=2JvYcwyiDG1XRVUHfxBacuYkMmsXP60sAFo+dWTG0/s=;
	b=imnJVZAntd0gwua1cQh3bmRT58w10L5fCHXxqgX8Ie5ZnWwKQWy8Iy76mysH1BLF
	OhoKqJQ4Rw7Dcx12QQ/KH5W4T6MAS6n24oWymw0eAp01ZiN8jSUB9FWPqlxEb004uch
	Mo2gS0tBIpCVsQpPmB+z6hmDiryNC1VxeN88TzLY=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.4.2.rc2)
Message-ID: 
 <0101017efa1e9e74-74d88d22-b047-44df-8db0-cd1ec69cdd6a-000000@us-west-2.amazonses.com>
Date: Mon, 14 Feb 2022 21:23:37 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Feb 2022 21:23:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56192


A build flagged for QA (yocto-3.4.2.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.4.2.rc2


Build hash information: 

bitbake: c039182c79e2ccc54fff5d7f4f266340014ca6e0
meta-agl: 1a8abc70c4f2339200b612d96d81c4eec3ac0519
meta-arm: 51b728a52bde7c613d5855afeac0fa6a31771bd2
meta-aws: c92344938ab4d37de8bd8b799186dbbe3019a069
meta-gplv2: f04e4369bf9dd3385165281b9fa2ed1043b0e400
meta-intel: 5a30dcefa54040dd05099549a56156a83263554c
meta-mingw: f5d761cbd5c957e4405c5d40b0c236d263c916a8
meta-openembedded: c05ae80ba680887ac924c21536091be7a1173427
oecore: 418a9c4c31615a9e3e011fc2b21fb7154bc6c93a
poky: e0ab08bb6a32916b457d221021e7f402ffa36b1a



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org



