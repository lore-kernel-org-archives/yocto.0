Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E3FCC61DB9
	for <webhook@archiver.kernel.org>; Tue, 25 Aug 2026 16:28:41 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.26570.1787675311602686555
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Aug 2026 09:28:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=E6oPxwJa;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=mIbba8E7;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31, mailfrom: 010101a039c0788a-1266317b-65ae-4f5a-be4e-1c4cb507bc5f-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1787675310; h=To:Cc:Subject:Message-Id:Date:From;
	bh=qg6tXVJOqFAlMJNfrbrjKDFgIwzD3fzKUljRHmRtsWM=;
	b=E6oPxwJaQmjzDsA1LFmFdEi4UyjKs23iIMws8QEzbSQRQVn/v1vqXZx+V8dvDLAX
	q7GsuKoivp5W78EaslnJNEaMViLRnIw282g68l9riKtxjYq/RklEccdYZtogueVVnfx
	oh9NHgIy/zihrWdVqThK25pY/g2HEASPFBwlVejs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1787675310;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=qg6tXVJOqFAlMJNfrbrjKDFgIwzD3fzKUljRHmRtsWM=;
	b=mIbba8E7n0SWKUQKzc0S6ifabiFBor+VqBTX2tMip6xR3Ww2V588ztI84DQ8SoKs
	xe/FFFJFIONQjLlrr8zsNyVh+0CJjAPQU9DLJwidcRldiiV8mcKR16ITMhZm+dFF9K8
	J/if/2BV/HHdF1JrD71cur+MUMyRN4eMBU6oSivs=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.20.rc3)
Message-ID: <010101a039c0788a-1266317b-65ae-4f5a-be4e-1c4cb507bc5f-000000@us-west-2.amazonses.com>
Date: Tue, 25 Aug 2026 16:28:30 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.08.25-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Aug 2026 16:28:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66695


    A build flagged for QA (yocto-5.0.20.rc3) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.20.rc3


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4572

    Build hash information: 

    bitbake: cff3be6f664f8f07a40727ff63eeeb24d6f5e00b
meta-agl: 97aaedbe2774c1deda43432b4bfbe725c55f9894
meta-arm: 045eb74bd9abe7d9ccf365a2417e440ce83bcbb0
meta-aws: cad59b89c00012ab67d8b4f105714c8aaa5c16a4
meta-clang: cc29beb210ab94eacc53bbd67e287e4e33ede342
meta-intel: 5d153e35b4e752505efeae368f188fac5e31cf33
meta-mingw: a2065f321a3dbca1e69f070502917c76653d9105
meta-openembedded: bec755063a8b5da65df626f5749496aadaa4f4bb
meta-qcom: ec80a36bce11d8182b4bb2a6fa0359adfeccde0a
meta-virtualization: f980aefbc8b3eeafb8d144e7fdac3c3b701a4fea
meta-yocto: 961c2399d06fbdb04ee27d06079e186d2c4a14ad
oecore: 70dc15941dd33270a92d1001174efb3093e79bdf
poky: 64e69ed23703f6358ec431d3f5f1f8483f974cae
yocto-docs: fe46d5de41930a2762a9ad2543d50e0f4e10463b


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

