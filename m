Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8FFCED26E
	for <webhook@archiver.kernel.org>; Tue, 18 Nov 2025 10:26:29 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.9290.1763461588416977068
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Nov 2025 02:26:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=GUgieKDx;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=SwHOUvcm;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 0101019a968062c8-61ef3fcd-751e-403d-a784-298837785707-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1763461587; h=To:Cc:Subject:Message-Id:Date:From;
	bh=UxTFxXmhTs7rqQa6NgbWjBSd5AK3Y8+tHqL1qLaAz/A=;
	b=GUgieKDxL4Xbz9f7TWS9UYcmgEpdvM6vi+oOtP5Z+l73IezgMjNUKNBxUFECp4LC
	Wn64K+M4Kqe4HxsOiUnO2SNNuD+fcrcueENP2Od4EhhhyZqsue68EFrZtKyD+wWkb59
	TGWBlIQpmNCgNbrxyUAGOVrRgI4tPxelh63ROZ8E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1763461587;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=UxTFxXmhTs7rqQa6NgbWjBSd5AK3Y8+tHqL1qLaAz/A=;
	b=SwHOUvcmRqE5E5KqYDpvp1q4Mzt1aP4mzY1tM9T4A1Fz49tRUDSmgBOJC+ELZFT9
	r4HDG8dgKuUeqg+RvIoBBqcIV8997kAeH/ba7SJmJTxVH5OtY2rnZr30RwYUrLfW2t3
	5j83Yx6LulE7qExdB2JcyLhg6bh/fNh0kRvLuJcY=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.14.rc3)
Message-ID: <0101019a968062c8-61ef3fcd-751e-403d-a784-298837785707-000000@us-west-2.amazonses.com>
Date: Tue, 18 Nov 2025 10:26:27 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.11.18-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Nov 2025 10:26:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66024


    A build flagged for QA (yocto-5.0.14.rc3) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.14.rc3


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2738

    Build hash information: 

    bitbake: 8dcf084522b9c66a6639b5f117f554fde9b6b45a
meta-agl: 8a94f23d8d81c02c74268ea18c35469c47a94b5a
meta-arm: a81c19915b5b9e71ed394032e9a50fd06919e1cd
meta-aws: fe840436ba483533afa9b34aa2d1a64e7e9a3a88
meta-clang: 731488911f55ebfe746068512b426351192f82f2
meta-intel: 6fc37057c7f0293a2345e303588901889df8b937
meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
meta-openembedded: f1f248262d662315159ee96c604f97415d1dbe6a
meta-virtualization: af1db2042caf8021d767dce1b26c08b59b96f3d1
meta-yocto: bf6aea52c4009e08f26565c33ce432eec7cfb090
oecore: 471adaa5f77fa3b974eab60a2ded48e360042828
poky: 7e8674996b0164b07e56bc066d0fba790e627061
yocto-docs: a8687e4bb2e822670b6ad110613a12fa02943d3d


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

