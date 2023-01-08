Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30AA4C53210
	for <webhook@archiver.kernel.org>; Sun,  8 Jan 2023 08:27:50 +0000 (UTC)
Received: from 4.mo560.mail-out.ovh.net (4.mo560.mail-out.ovh.net [87.98.172.75])
 by mx.groups.io with SMTP id smtpd.web10.40783.1673166464450368451
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Jan 2023 00:27:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@faresoftware.it header.s=20210817 header.b=YORfc+0n;
 spf=permerror, err=too many SPF records (domain: faresoftware.it, ip: 87.98.172.75, mailfrom: mauro@faresoftware.it)
Received: from director2.ghost.mail-out.ovh.net (unknown [10.108.4.105])
	by mo560.mail-out.ovh.net (Postfix) with ESMTP id B405C23C18
	for <yocto@lists.yoctoproject.org>; Sun,  8 Jan 2023 08:27:41 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-95jhb (unknown [10.110.171.144])
	by director2.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 458BB1FEDB
	for <yocto@lists.yoctoproject.org>; Sun,  8 Jan 2023 08:27:41 +0000 (UTC)
Received: from faresoftware.it ([37.59.142.109])
	by ghost-submission-6684bf9d7b-95jhb with ESMTPSA
	id XgtbAn1+umMQCwwAZRaOqg
	(envelope-from <mauro@faresoftware.it>)
	for <yocto@lists.yoctoproject.org>; Sun, 08 Jan 2023 08:27:41 +0000
Authentication-Results: garm.ovh; auth=pass (GARM-109S003814206ad-6932-402d-af49-a162b66b016d,
                    EEE1D79FF44BD0FB4E4CDB00A962ABBDAD13FB52) smtp.auth=relay@faresoftware.it
X-OVh-ClientIp: 93.38.119.136
Message-ID: <d39c3f8d-de2c-c10c-0478-5e85a1459f1b@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1673166459;
	bh=JjCLmRm+t72vWbuezKv+QxGYpuv+oTmFIKE0D2HPMv0=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=YORfc+0n2S4ZMm1AfZkDyqtd9ltN0E5SZryD5OsBCNtu9NUsGE6KXVHE8hKUCEMS6
	 oDzq9vs4BciBQsaSxM5JNdodaoKEGMKP4Mw+GSQl8FXwnwX8Su80VfX8qw1LipxZgU
	 72mW/IymouCJS9pzTIcy2pl1I3mwHMhl1y1bbqOc=
Date: Sun, 8 Jan 2023 09:27:38 +0100
MIME-Version: 1.0
Subject: Re: [yocto] Strange behaviour with quilt and kernel
To: yocto@lists.yoctoproject.org
References: <0397ea4a-0e93-1fdd-1026-fbd7b706a290@faresoftware.it>
 <cde182bd7f879ba447e77048f0f4f77c37744fdf.camel@linuxfoundation.org>
Content-Language: en-US
From: Mauro Ziliani <mauro@faresoftware.it>
In-Reply-To: <cde182bd7f879ba447e77048f0f4f77c37744fdf.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Synology-Spam-Status: score=-0.101, required 6, __THREADED 0, TO_DN_NONE 0, RCVD_COUNT_ZERO 0, FROM_EQ_ENVFROM 0, MIME_TRACE 0, __NOT_SPOOFED 0, __BODY_URI_ONLY 0, MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001, ARC_NA 0, URIBL_BLOCKED 0, FROM_HAS_DN 0, TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1, RCPT_COUNT_ONE 0, __NOT_A_PERSON 0
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
X-Ovh-Tracer-Id: 9114441224718058537
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrkeefgdduvddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefkffgguffvfhfhjggtgfesthejredttddtjeenucfhrhhomhepofgruhhrohcukghilhhirghnihcuoehmrghurhhosehfrghrvghsohhfthifrghrvgdrihhtqeenucggtffrrghtthgvrhhnpefgtdevheefjedtueehgeehgeelleeivdehhfefgeffgfdukeelledtleeileefteenucffohhmrghinhephihotghtohhprhhojhgvtghtrdhorhhgnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeomhgruhhrohesfhgrrhgvshhofhhtfigrrhgvrdhitheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdfovfetjfhoshhtpehmohehiedtpdhmohguvgepshhmthhpohhuth
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 08 Jan 2023 08:27:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58935

I try to look for PATCHTOOL variable for virtual/kernel recipe and the 
variable is set to quilt.

But inside log.do_patch I see that task try to use 'git am'


I wa use to patch the kernel with

1. bitbake -c devshell virtual/kernel

2. quilt new patchfile.patch

3. quilt add source.c

4. edit source.c

5. quilt refresh

6. copy patchfile.patch inside the recipe FILEEXTRAPATHS folder


Now I'm trying with devtool


Il 31/12/22 18:16, Richard Purdie ha scritto:
> On Sat, 2022-12-31 at 16:02 +0100, Mauro Ziliani wrote:
>> Hi all.
>>
>> I'm working on a board with kirkstone.
>>
>> I update every layers with latest kirkstone branch available, poky layer
>> too.
>>
>>
>> I'm patching the kernel 6.0.8 for debug purpose: 0001-debug.patch
>>
>> I make a patch with quilt as I do in the past (before update of poky)
>>
>> The problem is this:
>>
>> - I do "bitbake -c devshell virtual/kernel" and I get the terminal
>> prompt on kernel-source folder: i check and the patch is applied
>>
>> - I do "quilt top" and quilt tell me "No series file found"
>>
>>
>> Where is my patch?
>>
> Is the kernel using git to handle patches instead of quilt?
>
> Cheers,
>
> Richard
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58891): https://lists.yoctoproject.org/g/yocto/message/58891
> Mute This Topic: https://lists.yoctoproject.org/mt/95972146/3617482
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mauro@faresoftware.it]
> -=-=-=-=-=-=-=-=-=-=-=-
>

