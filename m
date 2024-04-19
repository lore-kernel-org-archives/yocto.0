Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DA17C4345F
	for <webhook@archiver.kernel.org>; Fri, 19 Apr 2024 00:18:15 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.web10.9219.1713485889027821614
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Apr 2024 17:18:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=WPRpgTiD;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=tP6wSNFt;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31, mailfrom: 0101018ef3b7ba30-02874709-13d0-4a8b-ac90-e3eff3a6bd60-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1713485888; h=To:Cc:Subject:Message-Id:Date:From;
	bh=/lKhLSw2Ni3JZvq4w2dHpVNvVegmxvEs5vDppH87mgo=;
	b=WPRpgTiDJOb9dZ9K6ScvzA+pU31uzfN0qkOCRNxPiRrwLnN/sUxbIOHllNyOiMnz
	JD6FuYaJw/IEQ1hbn3fqfOfzaby0M1MxRBKcRtlMeSK1iMcNqGjWs7Aiqb53QqY0JeF
	/WTp/X1NmY9d6J1of9nx/E9A33aneDwYX58hH7Y4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1713485888;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=/lKhLSw2Ni3JZvq4w2dHpVNvVegmxvEs5vDppH87mgo=;
	b=tP6wSNFtdJb8Uu/jA+LeK6pdEezEqhm3E/kfY2rl58dkHPfBwpkiX9XHI+rwjnbe
	PjbFkGqyR0Qom1Omg3OqLQmuXR5nWfwh+5oCxA71VgYHGz5HtUfrFMLboorqe8uJHHZ
	IPZCdjLHIaDlGPHZFaGqqgyAl4a6x3n3MYal4TYs=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.rc4)
Message-ID: <0101018ef3b7ba30-02874709-13d0-4a8b-ac90-e3eff3a6bd60-000000@us-west-2.amazonses.com>
Date: Fri, 19 Apr 2024 00:18:08 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.04.19-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Apr 2024 00:18:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62965


    A build flagged for QA (yocto-5.0.rc4) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.0.rc4


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6823

    Build hash information: 

    bitbake: c86466d51e8ff14e57a734c1eec5bb651fdc73ef
meta-agl: d5420276a2d6bf1fbc4a948e4500744608c3a39d
meta-arm: 80f3b85bbd4c459a7c58afa754b40a89c2c9c102
meta-aws: 216c095de9d546c141a90017a91a3ccb226de754
meta-clang: 989ff6a4e7db59f01d511727135610006124ead2
meta-intel: 0093d9f2eaf97063c81bc73736ebe7c29a69200f
meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
meta-openembedded: 24044fd3a010dba91f22e3b6af7788529f622795
meta-virtualization: b7e77b69d309d8ee985720e88b19b6e9cf03fe63
oecore: b65b4e5a8e4473d8ca43835ba17bc8bd4bdca277
poky: fb91a49387cfb0c8d48303bb3354325ba2a05587


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

