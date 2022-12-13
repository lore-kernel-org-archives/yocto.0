Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CD7C4332F
	for <webhook@archiver.kernel.org>; Tue, 13 Dec 2022 23:12:30 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web10.89082.1670973144993074980
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Dec 2022 15:12:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=HenKcrL2;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 010101850dc2bb84-1a5e1940-c1ed-4638-9517-f86ee55e6b5d-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1670973144; h=To:Cc:Subject:Message-Id:Date:From;
	bh=2vgKs5nn0MZ/JdGbVrkp2Q28LrXgYfhEW9d2FRDUnas=;
	b=HenKcrL2fKhqXKDSfTV7cToPsHBjq/A6To/8Ix7DNqsA9xe3k2aOE2BK+G+ka472
	B6myChBhAPKX9pjKvs1rMdfUSXsC2SH91mMecNeKHLlZ+CzuSdtLbHCc1T6I0Xea2Lk
	iY45hGZNBLpWXgAPpEQsD3n5IGwnnaZYQWQDsgtY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1670973144;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=2vgKs5nn0MZ/JdGbVrkp2Q28LrXgYfhEW9d2FRDUnas=;
	b=EadFVa85+DsXaIHBQn9zYxVan1aoVK22DlbbAVdT93zxFuHQ+GUXKLdsg9vYcZcV
	2lJFwNF5f2cC6HVMB0LbF4x6kLwguLG6/O019kXVcB45ZuJz0+ZDtptzFb6cX0I4wlr
	fMng4rOJxAHtdrH6pjioOHo/b/4Fru1WvJfYg83E=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.6.rc1)
Message-ID: <010101850dc2bb84-1a5e1940-c1ed-4638-9517-f86ee55e6b5d-000000@us-west-2.amazonses.com>
Date: Tue, 13 Dec 2022 23:12:24 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.12.13-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Dec 2022 23:12:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58789


A build flagged for QA (yocto-4.0.6.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.6.rc1


Build hash information: 

bitbake: 7e268c107bb0240d583d2c34e24a71e373382509
meta-agl: 5e3a4f5fa0e9adeae54a2a47d1daa80c64c7363a
meta-arm: 67578fcfcd8ee8efcaef67ed7db1dfd55105872e
meta-aws: 09db18354cfe358e38913754d24b71685f2a3ed3
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: f529e0594a784546926e89ce8e78385e00d0b0a9
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: 50d4a8d2a983a68383ef1ffec2c8e21adf0c1a79
meta-virtualization: a0d0f4ff48f874703d9e24a5d969d816b524c8b8
oecore: 45a8b4101b14453aa3020d3f2b8a76b4dc0ae3f2
poky: c4e08719a782fd4119eaf643907b80cebf57f88f



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

