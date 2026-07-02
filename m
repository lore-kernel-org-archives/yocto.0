Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29B45C43602
	for <webhook@archiver.kernel.org>; Thu,  2 Jul 2026 18:13:41 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.76102.1783016017242568483
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jul 2026 11:13:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=BDvR9go0;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=nH5MEI/v;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31, mailfrom: 0101019f24094983-53d3f366-c7c4-4c6d-a05c-8c8377b42bac-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1783016016; h=To:Cc:Subject:Message-Id:Date:From;
	bh=UZyLPFMfJyqth7/p0ITC3Hd+9dw8k/mM+RO1bKEjGGQ=;
	b=BDvR9go0Wb7G2+WsXtncS06U5F0yganSPens0tBmSuVAX+nxt+qzRf5lb1z5RM7x
	9FX/qDBCN1dPE8A1WWy27D9Rjs7fLMKx1NhIOvEOWXtu3ipKN1lmtjCTOXwfU9EcKr5
	Ag5Mp7fCM5LjCb6CAAzFH0qw0XnkUzdrtFN1BzAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1783016016;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=UZyLPFMfJyqth7/p0ITC3Hd+9dw8k/mM+RO1bKEjGGQ=;
	b=nH5MEI/vj0rirtMOkyDtqhvLRBpc1+3eoqLurr9YkyLE5UD+24gku6WeN/eVjD7X
	1dHuCbgKZr5T8ocSdKUWmUL3Lx05k0+rgSlY36qJZk2++Sqr8yEommFRD3lb80t68KZ
	2e8JYSnoniASNRu8QN+0NcLNAQagRRcquQbARALI=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.19.rc2)
Message-ID: <0101019f24094983-53d3f366-c7c4-4c6d-a05c-8c8377b42bac-000000@us-west-2.amazonses.com>
Date: Thu, 2 Jul 2026 18:13:36 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.07.02-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2026 18:13:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66622


    A build flagged for QA (yocto-5.0.19.rc2) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.19.rc2


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4131

    Build hash information: 

    bitbake: 0880963fea4d91a034e4a6e007d23f98658ab986
meta-agl: 7738e51706642d062e945ddeab50d10d2c4a57b4
meta-arm: 23b572c40ea6709ab3f8bd7abbb5a795fc3631c2
meta-aws: 6cad2b1795cc76cc8e994d472926256485943fc6
meta-clang: 7cf54f70cebe897d844f649024322bb096d7cb50
meta-intel: 5d153e35b4e752505efeae368f188fac5e31cf33
meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
meta-openembedded: b0c2c648a1af89e7a8dd4c2ec841f3bc0ed0ccb9
meta-qcom: ec80a36bce11d8182b4bb2a6fa0359adfeccde0a
meta-virtualization: 9d0007a369deb4a6346f5ab7a9e6d432a8ed14fe
meta-yocto: 2f749ae477c3b94dce71038f025180d7f612dab0
oecore: 2814f0962f56c8d1afa4de76d2895ba9b5cb767d
poky: bb98354685781296e3b3737e7762412100f359c2
yocto-docs: 1b819d324780a699d9307a2d4e68c69b576ab748


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

