Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84C72C25B10
	for <webhook@archiver.kernel.org>; Fri, 10 May 2024 05:45:31 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web11.5985.1715319928358619089
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 May 2024 22:45:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=ElOXCYD0;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=r0WPC60E;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 0101018f6108f259-da34e71e-edda-4ce5-ae8f-f9a0bfda30fc-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1715319927; h=To:Cc:Subject:Message-Id:Date:From;
	bh=QG5W7sEUs0wLU41nmNfjO8fQpuqqCCZMjS4HeFWpkPY=;
	b=ElOXCYD0+CY+VoBTRKIHOzmD2ydGTyPSf/5jkXh1NLo6Wt8bk/19EHu8OLoE+ItK
	1D3gKaId/FtaO/hTyItXEB8y1E/ffWobx8xqsrHYCqafucbe7srye06Q9gSAG13OXPL
	vtmg/YKj4b20GZRjDa78qyimoiO1gc4YAkPwr9jQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1715319927;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=QG5W7sEUs0wLU41nmNfjO8fQpuqqCCZMjS4HeFWpkPY=;
	b=r0WPC60EQGVELOTunE1gAHLVjoGHbifIIb7ZASSMeBwWZqTve0VEmHGHU+rgjHB/
	dFt8GLYsB0qFeZiSIZas9L1IO1x0IKE1+WBXDm9Qh8mioaUB24DZOm5c8y8gmiGvb9M
	PYliIwPsiZ/8eeshn3jt1TjebZ/FtYxf6s+rPZn8=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.1.rc2)
Message-ID: <0101018f6108f259-da34e71e-edda-4ce5-ae8f-f9a0bfda30fc-000000@us-west-2.amazonses.com>
Date: Fri, 10 May 2024 05:45:27 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.05.10-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 May 2024 05:45:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63070


    A build flagged for QA (yocto-5.0.1.rc2) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.0.1.rc2


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6892

    Build hash information: 

    bitbake: 8f90d10f9efc9a32e13f6bd031992aece79fe7cc
meta-agl: 73b088ccfa385f91b8aa56c1d2fbf78d97447dfa
meta-arm: 6d6fa14744b4e453eedb2c37891259b55557dcbf
meta-aws: 3265343c2f2b22bd0a2a9a688fd20e6540d0d746
meta-clang: e7dceb1c92caf7f21ef1d7b49c85328c30cffd90
meta-intel: 52f5037453e797eca8784a410f7a2a55f40aef57
meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
meta-openembedded: 5778e32eae201072c5dc37c9db67dc1848ffb9de
meta-virtualization: e9bb0a338fdf637f7929e19b21857d4c1d532ce6
oecore: 294a7dbe44f6b7c8d3a1de8c2cc182af37c4f916
poky: 4b07a5316ed4b858863dfdb7cab63859d46d1810


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

