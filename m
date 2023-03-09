Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C8CEC64EC4
	for <webhook@archiver.kernel.org>; Thu,  9 Mar 2023 07:11:39 +0000 (UTC)
Received: from 15.mo581.mail-out.ovh.net (15.mo581.mail-out.ovh.net [87.98.180.21])
 by mx.groups.io with SMTP id smtpd.web10.7720.1678345893678033129
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Mar 2023 23:11:35 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@faresoftware.it header.s=20210817 header.b=eLM6nvq0;
 spf=permerror, err=too many SPF records (domain: faresoftware.it, ip: 87.98.180.21, mailfrom: mauro@faresoftware.it)
Received: from director6.ghost.mail-out.ovh.net (unknown [10.108.16.216])
	by mo581.mail-out.ovh.net (Postfix) with ESMTP id 85C1C26A93
	for <yocto@lists.yoctoproject.org>; Thu,  9 Mar 2023 07:11:31 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-5r9ft (unknown [10.109.156.85])
	by director6.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 1ED311FD2B
	for <yocto@lists.yoctoproject.org>; Thu,  9 Mar 2023 07:11:30 +0000 (UTC)
Received: from faresoftware.it ([37.59.142.108])
	by ghost-submission-6684bf9d7b-5r9ft with ESMTPSA
	id ZTaXNKKGCWTAbwAAEEZu/g
	(envelope-from <mauro@faresoftware.it>)
	for <yocto@lists.yoctoproject.org>; Thu, 09 Mar 2023 07:11:30 +0000
Authentication-Results: garm.ovh; auth=pass (GARM-108S002a66687e4-b0b5-452e-8c42-0b18e6875a43,
                    0E53A497C57039DF61863BEBDD6AEA6D602B5260) smtp.auth=relay@faresoftware.it
X-OVh-ClientIp: 93.38.119.136
Message-ID: <206017df-f3ed-2806-7381-80e0c24ef140@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1678345885;
	bh=BIf5DMargCXRYJoNts9iWrlZCsXIoAjNF4jjBtzF1xA=;
	h=Date:To:From:Subject;
	b=eLM6nvq0WYe3FyVR6YLkqCDs4QGBb12JJ8tvfJRgAqrpejZnU3VoH6816G7ap+xoX
	 ckBLPjzq92i9VY7Z6MUynkkZ3YZo71QjlIvSO86PqF3p6I6wFWmaqIYUyDv2GYwYSh
	 79UW7jgReZNW/jizN7rybUa+sh2d7j4YL9pMAHxg=
Date: Thu, 9 Mar 2023 08:11:26 +0100
MIME-Version: 1.0
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Mauro Ziliani <mauro@faresoftware.it>
Subject: Skipping recipes depending on MACHINE
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
X-Synology-Spam-Status: score=-3.101, required 8, autolearn=ham, ARC_NA 0, BAYES_HAM -3, FROM_HAS_DN 0, TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1, TO_DN_NONE 0, RCPT_COUNT_ONE 0, RCVD_COUNT_ZERO 0, FROM_EQ_ENVFROM 0, MIME_TRACE 0, __NOT_SPOOFED 0, __BODY_URI_ONLY 0, MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001
X-Ovh-Tracer-Id: 9701598025548694569
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrvdduhedgtdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefkffggvffhufgtgfesthekredttddtjeenucfhrhhomhepofgruhhrohcukghilhhirghnihcuoehmrghurhhosehfrghrvghsohhfthifrghrvgdrihhtqeenucggtffrrghtthgvrhhnpeefiedvgfeuueeujeeiheeivdeltddtkedtudevgfeiteeufeetvdevteevteffteenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddruddtkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehmrghurhhosehfrghrvghsohhfthifrghrvgdrihhtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrghdpoffvtefjohhsthepmhhoheekuddpmhhouggvpehsmhhtphhouhht
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Mar 2023 07:11:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59371

Good morning.

I made a project for IMX6 platform.

Now I ported it to x86.

I made a layer for IMX6, but some recipe.bb cannot be compiled fo x86,=20
or some recipe.bbappend has not a mother, so the bibtake stops.

I to adapt the layer to x86 architecture I put some BBMASK +=3D "" in my=20
conf/bblayers.conf for x86 build environment and I excluded every=20
unneeeded file for x86.

Can I put the BBMASK in some conf file inside the layer to do the same,=20
dependig on MACHINE, using OVERRIDE?

The first idea was put BBMASK in layer.conf, like this

BBMASK_intel-corei7-64 =3D " \
.... \
"

I'd like to became my layer "auto-configurable" about MACHINE value


Any idea?


Best regards,

 =C2=A0 MZ


