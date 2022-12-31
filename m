Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDBFCC3DA7A
	for <webhook@archiver.kernel.org>; Sat, 31 Dec 2022 15:02:31 +0000 (UTC)
Received: from 10.mo561.mail-out.ovh.net (10.mo561.mail-out.ovh.net [87.98.165.232])
 by mx.groups.io with SMTP id smtpd.web11.43150.1672498945007591893
 for <yocto@lists.yoctoproject.org>;
 Sat, 31 Dec 2022 07:02:26 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@faresoftware.it header.s=20210817 header.b=fzVQ9tAw;
 spf=permerror, err=too many SPF records (domain: faresoftware.it, ip: 87.98.165.232, mailfrom: mauro@faresoftware.it)
Received: from director10.ghost.mail-out.ovh.net (unknown [10.109.138.143])
	by mo561.mail-out.ovh.net (Postfix) with ESMTP id 2578823847
	for <yocto@lists.yoctoproject.org>; Sat, 31 Dec 2022 15:02:22 +0000 (UTC)
Received: from ghost-submission-747dc469fd-l4b7r (unknown [10.110.103.36])
	by director10.ghost.mail-out.ovh.net (Postfix) with ESMTPS id C2EA31FE1E
	for <yocto@lists.yoctoproject.org>; Sat, 31 Dec 2022 15:02:22 +0000 (UTC)
Received: from faresoftware.it ([37.59.142.110])
	by ghost-submission-747dc469fd-l4b7r with ESMTPSA
	id C63OIP5OsGMgEQAACcUoTw
	(envelope-from <mauro@faresoftware.it>)
	for <yocto@lists.yoctoproject.org>; Sat, 31 Dec 2022 15:02:22 +0000
Authentication-Results: garm.ovh; auth=pass (GARM-110S004e8833c2d-eaa9-4223-ab62-362d3881822c,
                    B1441DB7FD4F25A2011DBEA7B91EC3809BAD78AC) smtp.auth=relay@faresoftware.it
X-OVh-ClientIp: 93.38.119.136
Message-ID: <0397ea4a-0e93-1fdd-1026-fbd7b706a290@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1672498937;
	bh=d7f9lm29pJAi+EXz80fVJqN1kT0lyniPm8bshtJjkeE=;
	h=Date:To:From:Subject;
	b=fzVQ9tAwtsjodI8RenNL0MggRiXQ5cLn8KBGdygEyGwR0eYUwkTHEZFFiW3jebQMc
	 fOnDm9YT4hJqaG+kMBhVjva5kZ4CqeKDMF6FPKJE8TIZ4CTN38yMckv/4sSz+UpaKB
	 eAouf9LYRdsL8B2uolTrpI2VTPpIN9rKHaUxOF5s=
Date: Sat, 31 Dec 2022 16:02:19 +0100
MIME-Version: 1.0
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Mauro Ziliani <mauro@faresoftware.it>
Subject: Strange behaviour with quilt and kernel
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Synology-Spam-Status: score=-0.101, required 5, TO_DN_NONE 0, RCVD_COUNT_ZERO 0, FROM_EQ_ENVFROM 0, MIME_TRACE 0, __NOT_SPOOFED 0, MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001, ARC_NA 0, FROM_HAS_DN 0, TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1, RCPT_COUNT_ONE 0
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
X-Ovh-Tracer-Id: 5691986983213007913
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrieekgdejudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepkfffggfvhffutgfgsehtkeertddttdejnecuhfhrohhmpeforghurhhoucgkihhlihgrnhhiuceomhgruhhrohesfhgrrhgvshhofhhtfigrrhgvrdhitheqnecuggftrfgrthhtvghrnhepfeeivdfgueeuueejieehiedvledttdektdduvefgieetueeftedvveetveetffetnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdduuddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeomhgruhhrohesfhgrrhgvshhofhhtfigrrhgvrdhitheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdfovfetjfhoshhtpehmohehiedupdhmohguvgepshhmthhpohhuth
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 31 Dec 2022 15:02:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58890

Hi all.

I'm working on a board with kirkstone.

I update every layers with latest kirkstone branch available, poky layer=20
too.


I'm patching the kernel 6.0.8 for debug purpose: 0001-debug.patch

I make a patch with quilt as I do in the past (before update of poky)

The problem is this:

- I do "bitbake -c devshell virtual/kernel" and I get the terminal=20
prompt on kernel-source folder: i check and the patch is applied

- I do "quilt top" and quilt tell me "No series file found"


Where is my patch?


Best regards,

 =C2=A0 MZ



