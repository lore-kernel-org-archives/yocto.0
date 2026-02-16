Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48D92E81A48
	for <webhook@archiver.kernel.org>; Mon, 16 Feb 2026 16:47:44 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.23963.1771260462219058090
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Feb 2026 08:47:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=rtyf6Uy0;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=i4qX/nhf;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 0101019c6759c149-effcd63a-6c4d-496b-9059-b54370d7c341-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1771260461; h=To:Cc:Subject:Message-Id:Date:From;
	bh=KHaC62M2o7kmmpKE94/upLGjlNEguyRYYASsR+Cw6QA=;
	b=rtyf6Uy0GMMtAJjV1FAbmeGZaFNFiOzbGMKnVOxezW/8huTibllvTRC3t6Gqh98l
	bFoOx9ttT+cBuznwWLA+d+g5RNtgcFMpglWRwllP/iEnPMOLOp45RYTeZAaLYEiA/xI
	O+ugn4ok4mrJZuFfy9CVTUtJlVKcghIdXZweI2bA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1771260461;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=KHaC62M2o7kmmpKE94/upLGjlNEguyRYYASsR+Cw6QA=;
	b=i4qX/nhfudtWj/QXUHkdyh2OKxuhlf//TVnugRmHfp1dzEApmcab6itXUiFldZk8
	RIvaa6OrKpEpwr4Z/TPga8sqXxf39kmuVj98yyrRBselouI55Zvr65Xyz2Z1xUSvHIP
	ZLKYnO3YQrkEQSO9WAKRFDH0IyVwZ/+D42g6LEns=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.16.rc2)
Message-ID: <0101019c6759c149-effcd63a-6c4d-496b-9059-b54370d7c341-000000@us-west-2.amazonses.com>
Date: Mon, 16 Feb 2026 16:47:41 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.02.16-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Feb 2026 16:47:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66243


    A build flagged for QA (yocto-5.0.16.rc2) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.16.rc2


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3228

    Build hash information: 

    bitbake: 10118785e4a670bce4980e1044c0888a8b6e84af
meta-agl: 8611917335f6d1f5b29ea495c8f4c2c914183e8a
meta-arm: a81c19915b5b9e71ed394032e9a50fd06919e1cd
meta-aws: 1a9605b6c4787bf20fc90c8801c36822760b4bc9
meta-clang: 613362523f3bf85ff4862e2f1f00113b8d2028be
meta-intel: 5d153e35b4e752505efeae368f188fac5e31cf33
meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
meta-openembedded: 7a5075cef77b5f7af454e9868e1d0019f2fd1394
meta-qcom: ec80a36bce11d8182b4bb2a6fa0359adfeccde0a
meta-virtualization: 8b1543e121deda2445f80f74d85c10316d5b31f4
meta-yocto: 9bb6e6e8b016a0c9dfe290369a6ed91ef4020535
oecore: a1f4ae4e569bc0e36c27c1e4651e502e54d63b28
poky: 1d54d1c4736a114e1cecbe85a0306e3814d5ce70
yocto-docs: 369f3307368eaea605983e80047377fd19ebd6bf


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

