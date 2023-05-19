Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 410FAC77B7A
	for <webhook@archiver.kernel.org>; Fri, 19 May 2023 23:21:46 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.web10.927.1684538501412863117
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 May 2023 16:21:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=UZRLuzMr;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191, mailfrom: 010101883651a427-23e1e997-8226-40f6-918a-0e48838ecd82-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1684538500; h=To:Cc:Subject:Message-Id:Date:From;
	bh=ejIQFUJSpH81MaRWxaIpPVJX/EwCN56dUcw571BbFo0=;
	b=UZRLuzMrexW6TpQZsyVbb3fTB6cpAfB/G5UhOBQnR9cPPdF8BQdz+4eSKIVHOoRB
	F+8oyw1Pt2JDnVPstekeGzZ7lMwALD+x6G45sh7MVkIWvMMGzpedtI+flV01Ism8F7l
	tZYTynKhsL1j+bwhqV5zsJkqdJ3gQo4qbpDaU/JQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1684538500;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=ejIQFUJSpH81MaRWxaIpPVJX/EwCN56dUcw571BbFo0=;
	b=qi+PfUobcY0kBTogXhePmFWq7tn0F+kX7w1JD/kddYts/jrXYnv85QCGH92KFbu2
	q57bz0Wdj8ya8xrc9MtOxe5gO+LX0BJ/3+N6PI73Nsq6FgsJy1DYNi8o/xK41I6+jJY
	m37VpUbQ7FZJkbfwdJuhPhGB3qE2XHojroJBMNrw=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.2.1)
Message-ID: <010101883651a427-23e1e997-8226-40f6-918a-0e48838ecd82-000000@us-west-2.amazonses.com>
Date: Fri, 19 May 2023 23:21:40 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.05.19-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 May 2023 23:21:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60078


    A build flagged for QA (yocto-4.2.1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.2.1


    Build hash information: 

    bitbake: d97d62e2cbe4bae17f0886f3b4759e8f9ba6d38c
meta-agl: 09135164a21a216c6e3e75d7decce896b92962f0
meta-arm: 68509775774d9cf304e2b422927f2a9636525155
meta-aws: 98efcdaf375df31c53d0f8d28240a079dae7b4d9
meta-intel: a0ea4e5d395579e70f1057f1f1222c8a2b55bd96
meta-mingw: cc9fd0a988dc1041035a6a6cafb2d1237ef38d8e
meta-openembedded: 54b177f4acb3048d21a68f180fc183d0fdf47a94
meta-virtualization: 1e338cbfd80dc34f90f13f92fba2e810f6858ed6
oecore: 20cd64812d286c920bd766145ab1cd968e72667e
poky: c5c69f78fc7ce4ba361363c14352e4264ce7813f


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

