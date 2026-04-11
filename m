Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97681F3ED56
	for <webhook@archiver.kernel.org>; Sat, 11 Apr 2026 15:17:24 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.199619.1775920638545954244
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Apr 2026 08:17:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=1WmtjYjE;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=YNz1KsTM;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 0101019d7d1e66ed-2b939a78-45d0-4b89-9c9f-9b37efa1d8d6-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1775920637; h=To:Cc:Subject:Message-Id:Date:From;
	bh=AS/jciLYdibIuiWQcSDYrejKcApxkhGhqQ0IymBhjN8=;
	b=1WmtjYjENPsnAOAhDzNc5vXYGXgFUiiGo+H5rX13pc0scFw38AT5JTo5sjGsTdpX
	DIr8HqonjOGtzi7K7iXQGDUDYKpFd6PL+FETIJhSVu5FZbdVmJ+E+waLqv7fvpUuJaF
	v0h/9/oPdUoKleULykly5JCp86EzyNX+uiMHvn1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1775920637;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=AS/jciLYdibIuiWQcSDYrejKcApxkhGhqQ0IymBhjN8=;
	b=YNz1KsTMyrnfkrBi7I18hJTw7BclFRQQw1jGhpji2ud/0M8gVRgqt0LE9BVK9dXX
	UyS/X36JFUrK4BoeTc1fAxLyxOr4p5L9loaWr8iLTDQWBlm7CDNJ/OP2S8uomyKx+xJ
	uJGcwErUFpyEOyXabkGis9jaIGutj+6DKH6HMo3M=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-6.0_M3.rc3)
Message-ID: <0101019d7d1e66ed-2b939a78-45d0-4b89-9c9f-9b37efa1d8d6-000000@us-west-2.amazonses.com>
Date: Sat, 11 Apr 2026 15:17:17 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.04.11-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Apr 2026 15:17:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66399


    A build flagged for QA (yocto-6.0_M3.rc3) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-6.0_M3.rc3


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3643

    Build hash information: 

    bitbake: 5d722b5d65e4eef7befe6376983385421e993f86
meta-agl: f5590359796fc6453a17849904a281095257ee38
meta-arm: d987a5945802dcbbc06be91a0d34f00431ea840e
meta-aws: 172c1f12366c50f58c317a4ed58d6de79e7afa1c
meta-clang: 78c5e12f08198f4f257a9348516d2103cd617c1d
meta-intel: bf06e8360baf2c84257e82f4153e13e62708568a
meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
meta-openembedded: d793c367e067c49956d38caf6eb84cb112c9c9b7
meta-qcom: 5d1eabf99f52bc5ed4c629ba4a28f567ee69e564
meta-virtualization: b59fb87c0e991aa95f62627c3b2a606956ef6377
meta-yocto: 49cbb01d52521bfe557395c9ebfae6b1c162581e
oecore: f235ffc43c7783a84e1ac0dce8489fcba8354e12
yocto-docs: 560bc33c0c2ecd60d68ba06a2edff8c25b9a3f90


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

