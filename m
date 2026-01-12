Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B917CCF45DA
	for <webhook@archiver.kernel.org>; Mon, 12 Jan 2026 23:07:37 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.46498.1768259252846680513
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jan 2026 15:07:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=prqcJ2JZ;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=eY9cYXcw;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 0101019bb476ef27-8b7fdc51-0e56-4f57-96dd-07d91ed02b9a-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1768259252; h=To:Cc:Subject:Message-Id:Date:From;
	bh=wNM3gXlQwjn2aaD87oq7GikPslX2z7tztchK6FB3AZc=;
	b=prqcJ2JZLdpCHjjPYJIYb7XSVg3st+H6eKHM8Di+PV9T/osOYZ+272vn7iGFXJCv
	10MEepUcCP2MsfwJ+kdmq5B0387GV+BtWRFn2hZbwfjKdU2gSNLzuVp0SA51yJPDSBe
	nSY8QcE91by80yopnkwKgPFFhgn2E0/sXEUY4/Tk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1768259252;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=wNM3gXlQwjn2aaD87oq7GikPslX2z7tztchK6FB3AZc=;
	b=eY9cYXcwsjf3cSwL/nLCoVEGgiuUMQNfT/cyI7KqRAzZ8A1d+2plpDtyYWbfotXt
	a5rUybZp0gsfBJwYlheVQieUsWDmyvc5cAiELw+V/J4/QIW4cFQR4+MFNBblT79M+xm
	ceWLgw2S5fEiAa4vnUk5STisOmFEPYh+WQooPWnY=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.3.1.rc2)
Message-ID: <0101019bb476ef27-8b7fdc51-0e56-4f57-96dd-07d91ed02b9a-000000@us-west-2.amazonses.com>
Date: Mon, 12 Jan 2026 23:07:32 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.01.12-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jan 2026 23:07:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66139


    A build flagged for QA (yocto-5.3.1.rc2) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.3.1.rc2


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3041

    Build hash information: 

    bitbake: 663021740bc086bd959a8457ad9ddb6da52a8278
meta-agl: fcc4176504cd4b5b9d27d20797b11be5330e9f10
meta-arm: 955b1d8e6921d8e03388c5013dfaebbb0cfc5099
meta-aws: dde608c015c80442356bd180202f955cc9b61267
meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
meta-intel: 9182026daca13f7efca0bb6ff1eacb039946c476
meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
meta-openembedded: a4e768dcfae181dd99e39c4286fa0729ca7f4e47
meta-qcom: dc5f692bff1032c40a19f4ab4cd7eb63afcfaab1
meta-virtualization: 28d26fd95397bf575e65fcca0cbb302b1e9bc7ff
meta-yocto: 6973ca663aaa9c3ab517ee960ab7985a5bf54c07
oecore: dd10706cfafb5574b7cf316fca2300d166ef71b0
yocto-docs: 102a33294e63a5581c413555040f790161fc80ff


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

