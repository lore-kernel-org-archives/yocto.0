Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15583C7EE30
	for <webhook@archiver.kernel.org>; Mon, 27 Feb 2023 17:58:23 +0000 (UTC)
Received: from 9.mo575.mail-out.ovh.net (9.mo575.mail-out.ovh.net [46.105.78.111])
 by mx.groups.io with SMTP id smtpd.web10.1196.1677520701341496310
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Feb 2023 09:58:22 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@faresoftware.it header.s=20210817 header.b=OuJndYkN;
 spf=permerror, err=too many SPF records (domain: faresoftware.it, ip: 46.105.78.111, mailfrom: mauro@faresoftware.it)
Received: from director8.ghost.mail-out.ovh.net (unknown [10.108.1.232])
	by mo575.mail-out.ovh.net (Postfix) with ESMTP id 16B4625A22
	for <yocto@lists.yoctoproject.org>; Mon, 27 Feb 2023 17:58:18 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-cspdz (unknown [10.110.103.167])
	by director8.ghost.mail-out.ovh.net (Postfix) with ESMTPS id A6A761FDBC
	for <yocto@lists.yoctoproject.org>; Mon, 27 Feb 2023 17:58:18 +0000 (UTC)
Received: from faresoftware.it ([37.59.142.102])
	by ghost-submission-6684bf9d7b-cspdz with ESMTPSA
	id 2KHCGTrv/GP3OgEA4D6kmQ
	(envelope-from <mauro@faresoftware.it>)
	for <yocto@lists.yoctoproject.org>; Mon, 27 Feb 2023 17:58:18 +0000
Authentication-Results: garm.ovh; auth=pass (GARM-102R004a0a3c894-e6dd-4ba2-bcc6-87a6858fcef6,
                    49042A800FA225196A9F591AB5A491AFBA9C30A3) smtp.auth=relay@faresoftware.it
X-OVh-ClientIp: 93.38.119.136
Message-ID: <29763cd2-a26d-ea2b-b0da-95ea3b8b86d7@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1677520692;
	bh=1afSRbc228xqjGUQGLf5ePhknZP519ue3BV8OSObE1s=;
	h=Date:To:From:Subject;
	b=OuJndYkN0P2YFIHEUkUWFVk1/pPNOhXIHDl93L5OwWZa0cOSB44xkCVyyc2G17AqE
	 jZyRrnK5zN9SUW8z2WX49AL0SAK5VN/8EnO6XYU2jasud5s5S1B5vsJlVJeH7/fKIv
	 HixRC91RVirSu+OuvW+XM9nKN0tSbj6V6OpLZu0M=
Date: Mon, 27 Feb 2023 18:58:15 +0100
MIME-Version: 1.0
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Mauro Ziliani <mauro@faresoftware.it>
Subject: recipe e licenses
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Synology-Spam-Status: score=-0.101, required 8, TO_DN_NONE 0, RCVD_COUNT_ZERO 0, FROM_EQ_ENVFROM 0, MIME_TRACE 0, __NOT_SPOOFED 0, MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001, ARC_NA 0, FROM_HAS_DN 0, TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1, RCPT_COUNT_ONE 0
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
X-Ovh-Tracer-Id: 17238090526005593129
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudeltddguddtfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepkfffggfvhffutgfgsehtkeertddttdejnecuhfhrohhmpeforghurhhoucgkihhlihgrnhhiuceomhgruhhrohesfhgrrhgvshhofhhtfigrrhgvrdhitheqnecuggftrfgrthhtvghrnhepfeeivdfgueeuueejieehiedvledttdektdduvefgieetueeftedvveetveetffetnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeomhgruhhrohesfhgrrhgvshhofhhtfigrrhgvrdhitheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdfovfetjfhoshhtpehmohehjeehpdhmohguvgepshhmthhpohhuth
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Feb 2023 17:58:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59312

Hi all.

I'd like to add a script to my recipes which collect all licenses for=20
all directly shared linked libraries.


My recipe build the main application of the system and I need to enum=20
every library used by my application and for each library get the license=
.


I try to look inside DEPENDS variable but there other references then=20
libraries


Any idea?


Best regards,

 =C2=A0 MZ


