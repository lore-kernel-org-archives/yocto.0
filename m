Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E238C4829B
	for <webhook@archiver.kernel.org>; Sat, 10 Feb 2024 02:07:18 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.web10.5843.1707530833362133151
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Feb 2024 18:07:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=VEOgVOte;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=oa0xU+JM;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31, mailfrom: 0101018d90c4ca55-6841b832-b832-45c0-9d4b-dc21e42261c5-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1707530832; h=To:Cc:Subject:Message-Id:Date:From;
	bh=z6sYPZyEdiBDcU9tJsQdGF0JtHBabC7SVleHKF4Y2kE=;
	b=VEOgVOtehx8bkB1LDvsWJuNlaMYQvAPrEoT9LyO/X+CegWm0zVicAZpwsEuouSY+
	/atW/d3hjllLdypdBJczTEhHHs+1KVzFMf+1wzU2OVOLhl7160lXM6TTrjJfWi+jJ7+
	m9xWnJdEbdKFHHen1VdMC6c/g/0baqzw7i5jO5KU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1707530832;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=z6sYPZyEdiBDcU9tJsQdGF0JtHBabC7SVleHKF4Y2kE=;
	b=oa0xU+JM4f2tSwxNEGlSNli2c5dQE/BLQL2bVs+IKqtB1mRI6B56guh5qBHhQAEW
	Cws4QrsNote+Nu2cvqUnDMoL4xEv/wmGhnvwB2Tr9O2sfT/lqWaUH8jFLNLRdwhUmhI
	vVhRWEvQIVAG54L3koLT03awQuqYvWjoRYQO7olI=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.3.3.rc1)
Message-ID: <0101018d90c4ca55-6841b832-b832-45c0-9d4b-dc21e42261c5-000000@us-west-2.amazonses.com>
Date: Sat, 10 Feb 2024 02:07:12 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.02.10-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Feb 2024 02:07:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62453


    A build flagged for QA (yocto-4.3.3.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.3.3.rc1


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6552

    Build hash information: 

    bitbake: 380a9ac97de5774378ded5e37d40b79b96761a0c
meta-agl: 54333533f293cae29cf00948862ae86c8c814197
meta-arm: 6bfd024269c3888dffef7540b0618b04ee3308ea
meta-aws: af73d3c35933988ce286c49696827ffe63e5785b
meta-intel: 8d633bd01e20e31c0dae58cf3cd41eddb2f712c7
meta-mingw: 49617a253e09baabbf0355bc736122e9549c8ab2
meta-openembedded: da9063bdfbe130f424ba487f167da68e0ce90e7d
meta-virtualization: ac125d881f34ff356390e19e02964f8980d4ec38
oecore: 0584d01f623e1f9b0fef4dfa95dd66de6cbfb7b3
poky: d3b27346c3a4a7ef7ec517e9d339d22bda74349d


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

