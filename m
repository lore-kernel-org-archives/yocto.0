Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07D9CA0ED1
	for <webhook@archiver.kernel.org>; Sat, 16 Aug 2025 01:08:19 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web11.26039.1755306491856482616
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Aug 2025 18:08:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=PRoa6iXF;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=IPZJE6Ez;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 01010198b06b7c42-51779eb9-71a7-412c-b303-16a3ba0a4eb1-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1755306491; h=To:Cc:Subject:Message-Id:Date:From;
	bh=dIgoxM79sCjEGajfKRQck8s8+qk9ad4Eu4pgIlj37TA=;
	b=PRoa6iXFJm2+Z2lCdrjkTbZ3hrjo9Zs2STf6y+vD2o5epH+l9vdIwAyECAh/fcOn
	00sQI1W5rfM4Hy/Nbv7vHWLSAUswdcVMWFCcm8PxycSdn6/omVtd4nwzz8kN/Kb+pjA
	rc+fm97HQa7khuPw3vGYrZwblj6+FFRgG4Dd8dm4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1755306491;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=dIgoxM79sCjEGajfKRQck8s8+qk9ad4Eu4pgIlj37TA=;
	b=IPZJE6EzK3F67c/wBiT9MVJaQ8CI+E2ZHXrE0iMUSq/zChv97wtvW0rQEja+8kJG
	LadQqDVNC0fyTGa1eCKvTnK12t3nbj44g7EmFR0Jqnn8FTiRPTb9flc2LuUW2VdUuDC
	f6XIjwCUjcWFYUwLE9GozKL4+aUOuVHSa9a60/NU=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.2.3.rc2)
Message-ID: <01010198b06b7c42-51779eb9-71a7-412c-b303-16a3ba0a4eb1-000000@us-west-2.amazonses.com>
Date: Sat, 16 Aug 2025 01:08:10 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.08.16-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Aug 2025 01:08:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65759


    A build flagged for QA (yocto-5.2.3.rc2) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.2.3.rc2


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2213

    Build hash information: 

    bitbake: 710f98844ae30416bdf6a01b655df398b49574ec
meta-agl: 435a9b13b8486cf7d51a86cebaa72ee382202a50
meta-arm: 2de04c3d31e119d4bedbea24b9c63a8c113a1ce3
meta-aws: 3cd3b809390120059d89cde45b21615bb8948be2
meta-clang: 003cba92e982bdd565a6889f28799f8bba14957e
meta-intel: 5640f6592c984f4832ff5f2ed1a35a607e5d21c5
meta-mingw: edce693e1b8fabd84651aa6c0888aafbcf238577
meta-openembedded: dca497d728792e3cb655c78455c2d649af312ce8
meta-virtualization: 898239e810acbb7db93299f20deec8afe434f11b
oecore: 347cb0861dde58613541ce692778f907943a60ea
poky: db04028d9070f05c3b5dee728473fb234bd24f05


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

