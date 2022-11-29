Return-Path: <philip@balister.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF9C9C4167B
	for <webhook@archiver.kernel.org>; Tue, 29 Nov 2022 15:52:58 +0000 (UTC)
Received: from smtp2.emailarray.com (smtp2.emailarray.com [69.28.212.198])
 by mx.groups.io with SMTP id smtpd.web11.153703.1669737176008557633
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Nov 2022 07:52:56 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: balister.org, ip: 69.28.212.198, mailfrom: philip@balister.org)
Received: (qmail 1574 invoked by uid 89); 29 Nov 2022 15:52:52 -0000
Received: from unknown (HELO ?192.168.11.139?) (cGhpbGlwQGJhbGlzdGVyLm9yZ0A3NS43NS45Ni4y) (POLARISLOCAL)  
  by smtp2.emailarray.com with SMTP; 29 Nov 2022 15:52:52 -0000
Message-ID: <9ba1914b-0a74-85ae-2b85-57c8a1087952@balister.org>
Date: Tue, 29 Nov 2022 10:52:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [yocto] Upgrading from sumo to more recent version
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Maik Vermeulen <maik.vermeulen@lightyear.one>, yocto@lists.yoctoproject.org
References: <CAKO9uzrfjAtjAL15pTb6F52UL5=OT1crYG_7bdBDU6kkwKNs-A@mail.gmail.com>
 <2bcc5965138170e205fd605fb0bc8e76b5236185.camel@linuxfoundation.org>
From: Philip Balister <philip@balister.org>
In-Reply-To: <2bcc5965138170e205fd605fb0bc8e76b5236185.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Nov 2022 15:52:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58655

On 11/29/22 08:00, Richard Purdie wrote:
> On Tue, 2022-11-29 at 13:51 +0100, Maik Vermeulen wrote:
>> After some questions on this mailing list, we got comments on our
>> usage of quite an old yocto poky version: sumo.
>>
>> What are the steps to upgrade to a newer version?
>> We have quite some of our own recipes, and also some
>> proprietary third party patches.
>>
>> Do we go version by version from sumo to the most recent one, or big
>> bang?
>> Are there tools to for example fix and replace the old notation by
>> the new one?
>> Any other tips?

Marta is giving a talk tomorrow at the Yocto Project Summit that might 
have some more ideas for you to consider:

https://summit.yoctoproject.org/yocto-project-summit-2022-11/talk/WUVDRE/

Philip

> 
> There is extensive documentation about moving between releases here
> with our migration guides between each version:
> 
> https://docs.yoctoproject.org/migration-guides/index.html
> 
> That will include information about the migration tools where
> available.
> 
> Personally, I'd probably try working with the last release or last LTS
> and then try and get everything you need working with that rather than
> doing it incrementally but a lot depends on your experience/needs and
> the kinds of changes you have.
> 
> Cheers,
> 
> Richard
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58652): https://lists.yoctoproject.org/g/yocto/message/58652
> Mute This Topic: https://lists.yoctoproject.org/mt/95333251/384425
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [philip@balister.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

