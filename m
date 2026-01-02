Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB373FA3758
	for <webhook@archiver.kernel.org>; Fri,  2 Jan 2026 23:08:01 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.15804.1767395277480923677
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Jan 2026 15:07:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=vr5nzTDO;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=jQHyiJO7;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 0101019b80f7b70d-d05b6299-1830-45e3-8485-4a9d8975e890-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1767395276; h=To:Cc:Subject:Message-Id:Date:From;
	bh=OcpeSN9lj4+BU/KgJlC2GoW6uTtvdhQB47vDawqC3h0=;
	b=vr5nzTDOer30qQ0kTVmgmBdgMaGA1l2J5Mfmzg0Xmzsa3N7INseEQN51vK04a/6R
	eTO9ue4v8E6H++Bj4a87igdIyklstlYYUUZwK7r6JScld87ynvEWEwl7RSjeEMYAYWZ
	9O4J3wTW3O1GNs1GyAhS+pVTv7VqWfmitbQBUGB0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1767395276;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=OcpeSN9lj4+BU/KgJlC2GoW6uTtvdhQB47vDawqC3h0=;
	b=jQHyiJO7tBNlJbEKn6eFvzv3Qx8PrnkBTuVXsL8RcfOfwv/VJw7ZcxbHHTkZ5/V3
	tN7p0KuUq+T7NA6zvsed+EYgv2UpI66HF5G2ZietdCRP19NCyWarBNemgvvKQWgknJG
	9B/mt/uLPA8Yp5ZMkxsfPAlI5kg5LnB5VNSt7YGY=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.15.rc3)
Message-ID: <0101019b80f7b70d-d05b6299-1830-45e3-8485-4a9d8975e890-000000@us-west-2.amazonses.com>
Date: Fri, 2 Jan 2026 23:07:56 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2026.01.02-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Jan 2026 23:08:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66129


    A build flagged for QA (yocto-5.0.15.rc3) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.15.rc3


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2972

    Build hash information: 

    bitbake: 8dcf084522b9c66a6639b5f117f554fde9b6b45a
meta-agl: f6e9692bd2974dc390400e8ded06a381b057fa4a
meta-arm: a81c19915b5b9e71ed394032e9a50fd06919e1cd
meta-aws: f23599da431e566ecae7535b3c8240f3419af8ed
meta-clang: 5c602337ea1a80fb7217eeda04e396cf90587dca
meta-intel: 6fc37057c7f0293a2345e303588901889df8b937
meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
meta-openembedded: 2b26d30fc7f478f5735d514f0c1bc28f6a4148b6
meta-virtualization: 17ac21e7d7f6f40a87618b22278b63bcfa14dbf2
meta-yocto: e1363aa3333cda3a4ae4706ce6577b987ba3a815
oecore: 6988157ad983978ffd6b12bcefedd4deaffdbbd1
poky: 72983ac391008ebceb45edc7a8f0f6d5f4fe715c
yocto-docs: d84d916d4fc505e8386693306b6a90b0064c0518


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

