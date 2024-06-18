Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94647C2BA15
	for <webhook@archiver.kernel.org>; Tue, 18 Jun 2024 20:41:38 +0000 (UTC)
Received: from ciao.gmane.io (ciao.gmane.io [116.202.254.214])
 by mx.groups.io with SMTP id smtpd.web11.5075.1718743289668351990
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jun 2024 13:41:30 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: m.gmane-mx.org, ip: 116.202.254.214, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1sJfdu-0006e7-LP
	for yocto@lists.yoctoproject.org; Tue, 18 Jun 2024 22:41:26 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: Ferry Toth <fntoth@gmail.com>
Subject: Re: [docs] Workaround for uid_map error on Ubuntu 24.04
Date: Tue, 18 Jun 2024 22:41:20 +0200
Message-ID: <9e4edb3f-e927-4fdc-bb44-43a9f898f0bd@gmail.com>
References: <CAHUKmYbx81srtVGCh1iyts893T7d7Sf44fgq+MTaxDSwMsXzZg@mail.gmail.com>
 <c21a8c13-98e1-41fd-8c05-d6f25023ed45@cherry.de>
 <CAHUKmYbp8K0J0UkVToq=6Aiw-mB9hzotO1_Xd05V7QB=v2Ev8w@mail.gmail.com>
 <670bf859-e9ac-43c9-a566-482f26c1b27b@bootlin.com>
 <b927fe24-0d38-4fa6-869f-aae66036a5bb@cherry.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
User-Agent: Mozilla Thunderbird
Cc: docs-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X@public.gmane.org
Content-Language: en-US
In-Reply-To: <b927fe24-0d38-4fa6-869f-aae66036a5bb@cherry.de>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jun 2024 20:41:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63361

Hi,

Op 23-05-2024 om 16:08 schreef Quentin Schulz via lists.yoctoproject.org:
> Hi Michael,
> 
> On 5/23/24 10:45 AM, Michael Opdenacker wrote:
>>
>> On 5/21/24 at 16:31, Etienne Cordonnier via lists.yoctoproject.org wrote:
>>> The way I see to patch this at the moment is to print instructions 
>>> for the users to run this command manually when this specific error 
>>> happens (we can't run it automatically as part of bitbake since it 
>>> needs sudo, and also it decreases the security on the machine 
>>> so end-users should be aware of it). I can send a patch if you want, 
>>> but this isn't really a clean solution.
>>>
>>> Ubuntu 24.04 is not yet supported by yocto officially, and I hope the 
>>> Ubuntu bug will be fixed before yocto officially supports 24.04. What 
>>> people could do to help at this point is add themselves to the Ubuntu 
>>> launchpad bug as "affected user". This would raise the "Bug heat" 
>>> score and hopefully will increase the bug priority as well.
>>
>>
>> Right, I don't know how to document a workaround for a version that we 
>> don´t support yet.
> 
> True, I was being overly optimistic :) I assume we'll support 24.04 at 
> some point. The issue I foresee is that some people have a tendency of 
> not upgrading their systems, so... even if Canonical fixes their own 
> stuff in upgrades, we may still need to document it?

I think it's a Ubuntu bug, they have it on launchpad and discourse. And 
they should fix it quickly. I the mean time I found adding a file 
/etc/apparmor.d/bitbake with

abi <abi/4.0>,

include <tunables/global>

/home/**/bitbake/bin/bitbake flags=(unconfined) {
         userns,
}

fixes the issue permanently. Likely punches a security hole as any user 
can create a program "bitbake", but can't be worse than 'apparmor_parser 
-R /etc/apparmor.d/unprivileged_userns'.

>> What about a wiki page for work-arounds on not-supported-yet versions? 
>> That's something we could refer to in the documentation.
>>
> 
> I'd be very happy if we don't mention the wiki page, nobody maintains 
> that sadly (or let's say, not as much as yocto-docs :) ), and we 
> had/have heavily outdated information there. For the time being, we 
> could have it in the wiki yes, hopefully web search engine would return 
> it when looking up for the error message/keywords, but I would try not 
> to add a link to the docs. Once we support 24.04, then we could document 
> it somehow in a note/warning/info pane?
> 
> Cheers,
> Quentin
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63183): https://lists.yoctoproject.org/g/yocto/message/63183
> Mute This Topic: https://lists.yoctoproject.org/mt/106259056/4382963
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [gley-yocto@m.gmane-mx.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 



