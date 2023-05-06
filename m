Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D78C77B73
	for <webhook@archiver.kernel.org>; Sat,  6 May 2023 09:33:04 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web11.30828.1683365580491553224
 for <yocto@lists.yoctoproject.org>;
 Sat, 06 May 2023 02:33:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=Fwa/Z9bM;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 01010187f0684a61-a44a1bd4-eb39-4d58-87dc-002340211ee7-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1683365579; h=To:Cc:Subject:Message-Id:Date:From;
	bh=YQmD82w6i8/gNelJ1lAhgoad90PQ2Hc4XHmqh/97/3c=;
	b=Fwa/Z9bMWEH658XdvSv0id08MpddfpI0OnYZ91wxYhSxyqSm5r8Qbumq3bN8ZDGv
	msDB6J/fREr9BjfQrxx7qs+Xp1lXN3eoOlRZgTJIevZUwjzvPecd0Lm8dm8EO4CO/fI
	6P2Nb7KhHkpDg1qYA8UkMl0qlIfgaSNeIzS+NBzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1683365579;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=YQmD82w6i8/gNelJ1lAhgoad90PQ2Hc4XHmqh/97/3c=;
	b=YOfVCXh/BE1MlLXnq8ttAxrI1TmOzjQC/96HW5ClCQdbQNg56iBgNR8M5bSPs1A7
	4FpAauE0GNWY1hJrEQsMA09wTqF3Rj/9KWjo1BZ4kwkCDLhLVnS1df0gRCiKdfzooZK
	XkRlil6s4YvDcUr5KZUZrpcBj4t/D7BqkpOTziOs=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-3.1.25.rc1)
Message-ID: <01010187f0684a61-a44a1bd4-eb39-4d58-87dc-002340211ee7-000000@us-west-2.amazonses.com>
Date: Sat, 6 May 2023 09:32:59 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.05.06-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 06 May 2023 09:33:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59893


A build flagged for QA (yocto-3.1.25.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.25.rc1


Build hash information: 

bitbake: e16a9ca7e9286790ac37a067fdc8fde3a35a1c44
meta-agl: bb1af1fb2458c495e75400f9ef6e853f654418ca
meta-arm: b1fe8443a7a72c65fa0fc3371f607c6671b3a882
meta-aws: baa97b9aa3b9de36369b0ff1bb74e1596828b967
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 488af577a3f21f038c551612bb0af077fa2b743d
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: e39b002df9675776cc99dccdcac07607ce783b15
meta-virtualization: beea119eb529b4a11f266004aee8b548427aea39
oecore: fd4cc8d7b5156c43d162a1a5a809fae507457ef4
poky: a631bfc3a38f7d00b2c666661a89a758a0af9831



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

