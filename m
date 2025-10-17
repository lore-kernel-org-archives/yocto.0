Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DE07CCD1A2
	for <webhook@archiver.kernel.org>; Fri, 17 Oct 2025 11:27:10 +0000 (UTC)
Received: from a27-33.smtp-out.us-west-2.amazonses.com (a27-33.smtp-out.us-west-2.amazonses.com [54.240.27.33])
 by mx.groups.io with SMTP id smtpd.web10.12986.1760700427580507114
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Oct 2025 04:27:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=dwV5uX2Z;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=Rn7FCKDa;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.33, mailfrom: 01010199f1ec695e-da41e756-c561-4a89-814f-693aef0cfc37-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1760700426; h=To:Cc:Subject:Message-Id:Date:From;
	bh=Em2QA3EDzjgyBaejEcH6iVKa5nnY8o+BchUgu368UXY=;
	b=dwV5uX2ZS3Bh+20jlcF/mgG0tO7Hdnoevsq3QJBqF8H4/Kn9CB3O1VroLOPuRptF
	riSIwdbH+zsfZQsleUHgejndv311Ly/2maiCeK8BtJR26wiQTYy+XJ6bnZ11+GkUQO3
	Oa/6Ze29vkwBjw0h1x1xva70ap1Q554xwucdfpKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1760700426;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=Em2QA3EDzjgyBaejEcH6iVKa5nnY8o+BchUgu368UXY=;
	b=Rn7FCKDa6LDz70tYN00Hh01o5LecyTlqIeuCBZXv99hv2TL8zMZsEHmAUVaV/G8+
	MpwZLEi20N/jIq/RAFu6tIRSu9UNHJqgjm/9lcdUvtle7SxrFOQSArTZonnkXcaQsdu
	L9e/gkqJVSgDX0Qxl4i27V4xaXfpdNhU4EDvTAqA=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.3_M3.rc1)
Message-ID: <01010199f1ec695e-da41e756-c561-4a89-814f-693aef0cfc37-000000@us-west-2.amazonses.com>
Date: Fri, 17 Oct 2025 11:27:06 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.10.17-54.240.27.33
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 11:27:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65949


    A build flagged for QA (yocto-5.3_M3.rc1) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.3_M3.rc1


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2605

    Build hash information: 

    bitbake: 8b582ef8dd0cef0192d4c0104bcd9b5d642d132c
meta-agl: f30cc1bec758954f7cc44f15b1df3c7a49ff2e1c
meta-arm: 40a5aac50c2540d32f79c30accd4bd5e891a87a4
meta-aws: 20cdd76c203b9b5b3331a145e9afcc9171a40b7d
meta-clang: 9c772c10f9001db62e4391b6617d03086a24beb1
meta-intel: c347d0be75958ca095d4ad320c6f2faf88b364a6
meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
meta-openembedded: b28f8caccfefa7c03ec193a67fa8b11deeafa558
meta-virtualization: 437efd9259c1786c130c724290cb1e46d50edcb2
meta-yocto: fe65e142d0d9ba0e51ff9175ffa82e902f982a20
oecore: 5298d01663f897e38380116edf23973d2a156cbc
yocto-docs: 8b85245490ae0b19a9c3880ec31e55b42e19d094


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

