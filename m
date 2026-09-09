Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E2D6C79FAD
	for <webhook@archiver.kernel.org>; Wed,  9 Sep 2026 13:22:18 +0000 (UTC)
Received: from a27-45.smtp-out.us-west-2.amazonses.com (a27-45.smtp-out.us-west-2.amazonses.com [54.240.27.45])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11978.1788960135271716255
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Sep 2026 06:22:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=MfsG2R+2;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=aA3fLJJ4;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.45, mailfrom: 010101a086555523-a038a5bc-9dfd-4244-be4d-20771adeff60-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1788960134; h=To:Cc:Subject:Message-Id:Date:From;
	bh=drsM0u+X6Mysctj6rNh4Jjlz+UgX3uTAUt6VUMXmNVs=;
	b=MfsG2R+26ursjFbNm81i63E0VZmN+uNSNQbr4z0qBX+aUeRecaGY5c49wkhChJg3
	GNUv/xNF/Bpeaty9AWDhjZ1CKuD28tP11/EqVltp00FFT04AQQfYdico4ByYY5mDnTo
	APBbwqeFmll9f1MnRVU80MXl5/NNHlqUaOz2iVBo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1788960134;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=drsM0u+X6Mysctj6rNh4Jjlz+UgX3uTAUt6VUMXmNVs=;
	b=aA3fLJJ4lWF1/bkiyZKNGXJQTevHUx7yYLRWR2Y8wgj97qMR4too8Ju5DEubtHCW
	9dp9nyrKhTUM6qUjLg3mE6H6KM2kQci8M9W/LzfNzJorcPLAVXP58usgNPRn4KCjugI
	PggrZrDPogHO9/6YLTVA+813Pi0sUrnHy+Yj86TE=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.1_M3.rc1)
Message-ID: <010101a086555523-a038a5bc-9dfd-4244-be4d-20771adeff60-000000@us-west-2.amazonses.com>
Date: Wed, 9 Sep 2026 13:22:14 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.09.09-54.240.27.45
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Sep 2026 13:22:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66711


    A build flagged for QA (yocto-6.1_M3.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.1_M3.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4701

    Build hash information: 

    bitbake: 046a90b0e9b7b914b7a95aec579cdc3fc9c7617a
meta-agl: 3c55b45bf920bec93938af02f2452cd698d3bacc
meta-arm: b0ff16aba48a197070daff28ef7ad67067fd3d88
meta-aws: 3ab2281500fbf683cfbf4fd43e449e0ef14c1164
meta-clang: 5e16f9749e210fe9d17f1302b089ee98f8b71a47
meta-intel: 8877caca6b1fe6efe33c756698ce6ecdcaea2238
meta-mingw: bab5f06f3f4ea50185a8ddbf5d61b46dad9aafed
meta-openembedded: cbec9a20d78add94235042c601e991574151e36e
meta-qcom: 2832e2bbabf9a71755e031d396f17652e95bbde1
meta-virtualization: fd4fa494c9878346e913ca9a7788bac0063a3ba6
meta-yocto: 7e41504cd63b099b214f10d92cfdaf358ab98c5f
oecore: 544846662cdac370497d7c13a125d8730c7ebd47
yocto-docs: e35e86e9aea4e4ae12e8e0ba8a6391f2b2555b63


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

