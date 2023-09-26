Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D5FBE7F129
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 21:01:09 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.web11.2691.1695762066006971675
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 14:01:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=dhooYSgK;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=OCqqAv89;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 0101018ad34ba5d6-27fffea4-4223-4f49-9cd9-834c99ca18f0-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1695762065; h=To:Cc:Subject:Message-Id:Date:From;
	bh=koDUrCWbTAsWvMW5SjB2HP8PlkQUqhKO2pPBdvdB7qs=;
	b=dhooYSgKUaVmajMeQ3Ep+YrjkUuh+O1eZT+RSfoMo0Yoa4O0nJKxTmIWz8gX4heG
	u5KCqKYMZQbp6gOw9ecq/E6wdyh5NoYY9tN4IZj7ZWmkgh746FCPC12FORTKh6D0Suw
	+XMa74c+j3uQWijFjxHiji7EePR5Vp6R04erxrbk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1695762065;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=koDUrCWbTAsWvMW5SjB2HP8PlkQUqhKO2pPBdvdB7qs=;
	b=OCqqAv89mLuBXFtTodRI7iVKQ7n4lLUi4ZUwmDRNgi4r6EroseWOY8CPIhMwsN1O
	EoXAjUwwlDirgp84DMhFZsP3zYAaenPwyh6XM+4i+2DFxrRBaZLGdD7u6sm8PI69FZa
	rLWysk/uph8NHmhP2sIPRqIJGL2QXPTjgyJEpHwc=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.3_M3.rc9)
Message-ID: <0101018ad34ba5d6-27fffea4-4223-4f49-9cd9-834c99ca18f0-000000@us-west-2.amazonses.com>
Date: Tue, 26 Sep 2023 21:01:04 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.09.26-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 21:01:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61131


    A build flagged for QA (yocto-4.3_M3.rc9) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.3_M3.rc9


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/5949

    Build hash information: 

    bitbake: 612bdf09416ff96d08b22cf92b077516d23d0963
meta-agl: 4a14356a535dcd47f16f788ac830d0d03457c9da
meta-arm: be9bbaa16ed0d60490fb8f915fc48e40d14478a5
meta-aws: ba6a653f0b5a4fa55e71646f0fe1fd0673d2c947
meta-intel: cc04677a2717be485bf9cecf4a3d48f8a1e601cc
meta-mingw: 65ef95a74f6ae815f63f636ed53e140a26a014ce
meta-openembedded: c40aebd422e60126c3b18e35c20a1cb38a795a52
meta-virtualization: b65fe24b8cbcf8797f31d058a79f8a21985e955d
oecore: 1adf70729dafc9729e665986ad2e2250cbd25c5b
poky: 6cb490713ed30f1f13d25978aa0d377ce66b1861


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

