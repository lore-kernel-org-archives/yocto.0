Return-Path: <maciej.pijanowski@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0B97C433FE
	for <webhook@archiver.kernel.org>; Wed,  6 Apr 2022 22:56:55 +0000 (UTC)
Received: from 6.mo584.mail-out.ovh.net (6.mo584.mail-out.ovh.net
 [188.165.36.253])
 by mx.groups.io with SMTP id smtpd.web08.2876.1649283753600821059
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Apr 2022 15:22:34 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=softfail (domain: 3mdeb.com, ip: 188.165.36.253, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player789.ha.ovh.net (unknown [10.111.208.23])
	by mo584.mail-out.ovh.net (Postfix) with ESMTP id 0779923716
	for <yocto@lists.yoctoproject.org>; Wed,  6 Apr 2022 22:22:30 +0000 (UTC)
Received: from 3mdeb.com (unknown [195.116.18.106])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player789.ha.ovh.net (Postfix) with ESMTPSA id 26C93293BEB27
	for <yocto@lists.yoctoproject.org>; Wed,  6 Apr 2022 22:22:29 +0000 (UTC)
Authentication-Results: garm.ovh;
 auth=pass (GARM-103G0051d20f853-3877-491c-b78f-0dbb60858424,
                    8679FBBBC189516ED936C02A08092A5BA439931C)
 smtp.auth=maciej.pijanowski@3mdeb.com
X-OVh-ClientIp: 195.116.18.106
Message-ID: <742687b6-8784-716e-cfe0-de9403378ac9@3mdeb.com>
Date: Thu, 7 Apr 2022 00:22:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [yocto] How to contribute to Yocto core ?
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <JSSE.1649283424271453509.yC3U@lists.yoctoproject.org>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
In-Reply-To: <JSSE.1649283424271453509.yC3U@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Ovh-Tracer-Id: 1343761540636682281
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrudejjedguddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefkffggfgfuvfhfhfgjtgfgsehtjeertddtfeejnecuhfhrohhmpeforggtihgvjhcurfhijhgrnhhofihskhhiuceomhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomheqnecuggftrfgrthhtvghrnhepleekvdfflefgteejjeeuueeugffgveelleekudefleeufeeiteeljeevleduvdfgnecuffhomhgrihhnpeihohgtthhophhrohhjvggtthdrohhrghdpohhpvghnvghmsggvugguvggurdhorhhgpdefmhguvggsrdgtohhmnecukfhppedtrddtrddtrddtpdduleehrdduudeirddukedruddtieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeekledrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhnsggprhgtphhtthhopedupdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Apr 2022 22:56:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56678


On 4/7/22 00:17, Bel Hadj Salem Talel wrote:
> Hello All,
Hello,
>
> I am an experienced Yocto engineer, and I want to contribute to Yocto 
> project (bitbake core, poky layers, etc) but I do not know what to 
> contribute or is there a TODO list that I can help with.
I think you can look through Bugzilla for unassigned tasks [1], for example.
>
> Besides, I have some classes that I can contribute to poky, but I do 
> not know where to commit it.
This one should help on commiting [2]. You should send patches to the
relevant mailing list [3]. For the core, it should be the 
openembedded-core list [4].
>
> Can anyone help me.
>
>
[1] https://wiki.yoctoproject.org/wiki/Bug_Triage
[2] https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
[3] https://www.yoctoproject.org/community/mailing-lists/
[4] https://lists.openembedded.org/g/openembedded-core

Thanks,
>
> Thanks in advance.
> Talel
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56677): https://lists.yoctoproject.org/g/yocto/message/56677
> Mute This Topic: https://lists.yoctoproject.org/mt/90301090/3616795
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [maciej.pijanowski@3mdeb.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
-- 
Maciej Pijanowski
Engineering Manager
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com


