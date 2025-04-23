Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0F6C369CB
	for <webhook@archiver.kernel.org>; Wed, 23 Apr 2025 22:28:09 +0000 (UTC)
Received: from a27-30.smtp-out.us-west-2.amazonses.com (a27-30.smtp-out.us-west-2.amazonses.com [54.240.27.30])
 by mx.groups.io with SMTP id smtpd.web11.2079.1745447284226999179
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Apr 2025 15:28:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=MXIWn/89;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=poQKHvYw;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.30, mailfrom: 0101019664c3ea31-a6e3bc5a-d6fb-4dc3-9815-29e1bb0591c8-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1745447283; h=To:Cc:Subject:Message-Id:Date:From;
	bh=q+PklNJNJ5zRSb+2pqeSBZHkSlIKkH2gV+1NlIQp2o4=;
	b=MXIWn/89NZeCPYsxlWFhmJNPOdPbMlMzkMpQ6RTbUtzr8Z5fhSHpNB9oL6GPRFxh
	CNNrI/UXSrkWkSUDqvNRNJV8y+Oj4BozvmMRJQnDCAd1u1KvLjQTmOx1FdpILNcTWRy
	ToZFRv3rsWiNgNoYweoYsg/P8RWciqONxvmxwkcE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1745447283;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=q+PklNJNJ5zRSb+2pqeSBZHkSlIKkH2gV+1NlIQp2o4=;
	b=poQKHvYwS3zmiXpwwJpZ1NHBdBT3s5WZrq8Q/uZK0lBgO2RQtEKfiFO4GtqsA6aV
	sUOlRGnwNPq/BTELrhToZH2WRnhupBil3hYLqAjvwWTGtNIh2RfxXLEntkyhMzuEJ4r
	Crw8oohCOYU2i0uXhw03E+qOhgIpj+ZJxTKJVdIw=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.2.rc2)
Message-ID: <0101019664c3ea31-a6e3bc5a-d6fb-4dc3-9815-29e1bb0591c8-000000@us-west-2.amazonses.com>
Date: Wed, 23 Apr 2025 22:28:03 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.04.23-54.240.27.30
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Apr 2025 22:28:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65238


    A build flagged for QA (yocto-5.2.rc2) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.2.rc2


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1451

    Build hash information: 

    bitbake: 5b4e20377eea8d428edf1aeb2187c18f82ca6757
meta-agl: 39eae92ac42a4ae6900ee012324614714750ce36
meta-arm: 42928dcc171629b495bbfcd8eda17ef6b8bdbfa3
meta-aws: 519cf7e251d7344014eeb7e979d2dee16fa9c748
meta-clang: 2c9678cce413fa6c6c84a8a631f4635a4f862f11
meta-intel: f1b9bf5f10a03b357fc9dc58c0fa0614baf6b855
meta-mingw: edce693e1b8fabd84651aa6c0888aafbcf238577
meta-openembedded: 0d2d2d193a1619b6dbebaf335f1ef785478049e3
meta-virtualization: 4fedb61ebf60745a367d857af255006bd3509a39
oecore: 6ec2c52b938302b894f119f701ffcf0a847eee85
poky: 9b96fdbb0cab02f4a6180e812b02bc9d4c41b1a5


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

