Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB884E82CA9
	for <webhook@archiver.kernel.org>; Wed, 27 Sep 2023 16:00:34 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web10.20976.1695830432638188180
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Sep 2023 09:00:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=UzGV5xRT;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=XW8dmx4R;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 0101018ad75ed749-5e2db305-e6df-4377-a252-c0a5c90026f3-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1695830431; h=To:Cc:Subject:Message-Id:Date:From;
	bh=koDUrCWbTAsWvMW5SjB2HP8PlkQUqhKO2pPBdvdB7qs=;
	b=UzGV5xRTQ0Dl6oqC/X8RXK9ixvOAIvw45d00GCaSJFCMlp01lxCSsrl3EJAHM7ZY
	GqKYTUtIBW6614yfyh589CUcSXKpoou9MCnVGpvaXUgL05sGeuExqNyXt/i0Hyaxo1C
	4aBk3TIkX6XXAMRReIX0TGAHHOH3cdhbcdfvaDFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1695830431;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=koDUrCWbTAsWvMW5SjB2HP8PlkQUqhKO2pPBdvdB7qs=;
	b=XW8dmx4RS6TH0cPYqNsW/rFlQ2y3FB22UR8KWeyVPt3YuaP4yzWJt93zGADs8aKu
	QoN72xPsxaJZiYYOtFqLr3+1VPnJ/o7w5Pmchf4wvWGuhvlJZiyTyksyI11s1uJgimI
	dtyuMYNBq69QRI1l9vgJgLmUxMFl3eGxm7iYAoKw=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.3_M3.rc9)
Message-ID: <0101018ad75ed749-5e2db305-e6df-4377-a252-c0a5c90026f3-000000@us-west-2.amazonses.com>
Date: Wed, 27 Sep 2023 16:00:31 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.09.27-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 16:00:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61144


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


     

