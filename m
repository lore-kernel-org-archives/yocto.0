Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A667CC433FE
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 22:50:24 +0000 (UTC)
Received: from a27-45.smtp-out.us-west-2.amazonses.com
 (a27-45.smtp-out.us-west-2.amazonses.com [54.240.27.45])
 by mx.groups.io with SMTP id smtpd.web11.845.1664578218101880107
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 15:50:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=jTKRQKuE;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.45,
 mailfrom: 010101839097e13f-cbfc4c03-790c-4d17-8b84-dab254b2e413-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1664578216; h=To:Cc:Subject:Message-Id:Date:From;
	bh=A7N/AMdJGttd+EsSkb+lJI8xIO6aPRFmtFRRAx0F4Ds=;
	b=jTKRQKuE8I11Wu58WKZAqBQ3mmtRPSeJYLJLuq01zFSnHTagzP1bpMsU7obaaz62
	U1xWYpYPIX+SIkvbTlQnzqdwOM8Ph3QsvWDSCnwPdSxM81JE2SrydO7Lpxu9CyvAFfl
	p6iE3jhK9/i+ssTIMG8rbh+ur+NzDzg/nfqzA6l4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1664578216;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=A7N/AMdJGttd+EsSkb+lJI8xIO6aPRFmtFRRAx0F4Ds=;
	b=E0tjPILGcrvb79FhNdtPLzZZvzJBct506Izwte+2weuxVWbiN6axRQNG5j7bg3V1
	dMXGDb9Shw5fjsAAH9EJYiTo8NVhCDYnBqJRwqzxmLp5Kyq/3G3f8nxILRF3G9LBDmu
	nlO9W1wmJx4mEt95HuLU76FIw2HFyoT+U79l804E=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.1.rc2)
Message-ID: 
 <010101839097e13f-cbfc4c03-790c-4d17-8b84-dab254b2e413-000000@us-west-2.amazonses.com>
Date: Fri, 30 Sep 2022 22:50:16 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.09.30-54.240.27.45
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 22:50:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58245


A build flagged for QA (yocto-4.1.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.1.rc2


Build hash information: 

bitbake: 074da4c469d1f4177a1c5be72b9f3ccdfd379d67
meta-agl: e7e9216ccead73fdf6054301e68396ab04710c6f
meta-arm: aa89fe3f08cb8406f9f1082c683bd71cd04628fb
meta-aws: 729928fb7ce4a74546b68dd31390a3f6057ab92c
meta-intel: 940218bd438776026398617033e09f288dae0137
meta-mingw: b0067202db8573df3d23d199f82987cebe1bee2c
meta-openembedded: 0782ea454af5b88cd686ac572c397d92e5912de4
meta-virtualization: 3fe3e0971d7d14cbd06f54cad942fa2ed86c5048
oecore: 744a2277844ec9a384a9ca7dae2a634d5a0d3590
poky: 5200799866b92259e855051112520006e1aaaac0



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

