Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BFB4C04FFE
	for <webhook@archiver.kernel.org>; Wed,  8 May 2024 14:07:03 +0000 (UTC)
Received: from a27-192.smtp-out.us-west-2.amazonses.com (a27-192.smtp-out.us-west-2.amazonses.com [54.240.27.192])
 by mx.groups.io with SMTP id smtpd.web11.13481.1715177220504737111
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 May 2024 07:07:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=D3UOGDgB;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=WJv2XuMP;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.192, mailfrom: 0101018f588765c1-a41d2a62-bd93-4b59-ade3-86684525d648-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1715177219; h=To:Cc:Subject:Message-Id:Date:From;
	bh=DHlANQuXXTcxjNPyay86JZrXaGObTvjtp3WYWFg6t5c=;
	b=D3UOGDgB5Oppiq91VitLmCCqKJRC55IYOqMsGaSDTcpW9+B2UhzNsD4fZufkIBYE
	MapKCkt106Qsn93RdMAaas/SFM2GxgY8leBHPgglsirsYOmL8kSI/48r8FqOFuzlDzk
	N1cbGWV3moGZ9LeGkObsWrnRx5g/du6XXLmxgeH8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1715177219;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=DHlANQuXXTcxjNPyay86JZrXaGObTvjtp3WYWFg6t5c=;
	b=WJv2XuMP/++DppRdGEqDPwmcns5YB7d6CNvFRYtjs+UPokW7Rb0Cokkfpq0CBFH7
	6p7yUZO+Jn1LAtQQc3ZduaMtlc461mGnPEgoxQitImNaVBC9xxAk6QrXM7OTwjOpFIi
	xStA/CRAUP1MEo5Zobzc49sBD+GeNNq9odtSMjqs=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.1.rc1)
Message-ID: <0101018f588765c1-a41d2a62-bd93-4b59-ade3-86684525d648-000000@us-west-2.amazonses.com>
Date: Wed, 8 May 2024 14:06:59 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.05.08-54.240.27.192
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 May 2024 14:07:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63055


    A build flagged for QA (yocto-5.0.1.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.0.1.rc1


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6885

    Build hash information: 

    bitbake: 8f90d10f9efc9a32e13f6bd031992aece79fe7cc
meta-agl: 73b088ccfa385f91b8aa56c1d2fbf78d97447dfa
meta-arm: c9c93da0dd647c9e2bfea238bdead1e0efb526ce
meta-aws: 3265343c2f2b22bd0a2a9a688fd20e6540d0d746
meta-clang: ad26539222d8d6e07cd0bcda196c9cf3433430ae
meta-intel: 11c41c9a46305e7b57832de92735e53558356a25
meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
meta-openembedded: 5778e32eae201072c5dc37c9db67dc1848ffb9de
meta-virtualization: e9bb0a338fdf637f7929e19b21857d4c1d532ce6
oecore: 704d3695092148cfbf5d67c81af81665949847b5
poky: f450ddee3e1299dc80e1641c38bbd1699764ac87


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

