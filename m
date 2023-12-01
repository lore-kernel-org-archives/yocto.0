Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFAAC4167B
	for <webhook@archiver.kernel.org>; Fri,  1 Dec 2023 22:39:02 +0000 (UTC)
Received: from ciao.gmane.io (ciao.gmane.io [116.202.254.214])
 by mx.groups.io with SMTP id smtpd.web11.6406.1701470336386731326
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Dec 2023 14:38:56 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: m.gmane-mx.org, ip: 116.202.254.214, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1r9C9t-00045u-Jz
	for yocto@lists.yoctoproject.org; Fri, 01 Dec 2023 23:38:53 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: Ferry Toth <fntoth@gmail.com>
Subject: Re: how to intelligently avoid OOM build errors with
 BB_PRESSURE_MAX_MEMORY?
Date: Fri, 1 Dec 2023 23:38:41 +0100
Message-ID: <bd8bfc79-a990-4218-88c7-67061e63b96b@gmail.com>
References: <ef631e8e-8bbc-5a36-8282-405b10e872b@crashcourse.ca>
 <CA+chaQdgcDHAmUEeidWOYq_ENx6kj+FwRQ_yGzab7KgO7gCqzQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
User-Agent: Mozilla Thunderbird
Cc: Yocto discussion list
 <yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X@public.gmane.org>
Content-Language: en-US
In-Reply-To: <CA+chaQdgcDHAmUEeidWOYq_ENx6kj+FwRQ_yGzab7KgO7gCqzQ@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Dec 2023 22:39:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61790

Hi

Op 29-11-2023 om 10:45 schreef Martin Jansa:
> I was experimenting quite a bit with this in:
> https://github.com/shr-project/test-oe-build-time/commits/results 
> <https://github.com/shr-project/test-oe-build-time/commits/results> e.g.:
> https://github.com/shr-project/test-oe-build-time/commit/d5111f4472ac397c0f1197eb6366ac7d2e56453f <https://github.com/shr-project/test-oe-build-time/commit/d5111f4472ac397c0f1197eb6366ac7d2e56453f>
> https://github.com/shr-project/test-oe-build-time/commit/e97d8fe55fcf848416a8494a90da4ae6418b19fe <https://github.com/shr-project/test-oe-build-time/commit/e97d8fe55fcf848416a8494a90da4ae6418b19fe>
> 
> but be aware that reasonable BB_PRESSURE_MAX_ values are different for 
> kirkstone and master, see:
> https://lists.openembedded.org/g/bitbake-devel/message/15499 
> <https://lists.openembedded.org/g/bitbake-devel/message/15499>
> which wasn't merged yet.
> 
> And for my system and typical builds BB_PRESSURE_MAX_* isn't able to 
> prevent OOMK, because pressure is still fine when bitbake is starting 
> chromium.do_compile and nodejs.do_compile tasks at the same time and 
> OOMK gets triggered later even when only these 2 tasks are running in 
> parallel with other tasks not started thanks to BB_PRESSURE_MAX_*.
> 
> So I'm setting a bit lower PARALLEL_MAKE for chromium instead as in:
> BB_PRESSURE_MAX_CPU = "200000"
> BB_NUMBER_THREADS = "8"
> BB_NUMBER_PARSE_THREADS = "64"
> PARALLEL_MAKE = "-j 70 -l 140"
> PARALLEL_MAKE:pn-qtwebengine = "-j 40"
> PARALLEL_MAKE:pn-webruntime = "-j 40"
> 
> which works well for my system and my typical builds, YMMV for yours.
> 
> Regards,
> 
> On Wed, Nov 29, 2023 at 10:21 AM Robert P. J. Day 
> <rpjday@crashcourse.ca 
> <mailto:rpjday@crashcourse.ca>> wrote:
> 
> 
>        a colleague is using Wind River Linux and is getting occasional OOM
>     errors when taking advantage of maximum parallelism, so he took the
>     quick way out and dialed things back using BB_NUMBER_THREADS and
>     PARALLEL_MAKE.
> 
>        however, i am aware of the bitbake variables
>     BB_PRESSURE_MAX_{IO,CPU,MEMORY} and was wondering if there is a decent
>     writeup on how to use, perhaps, BB_PRESSURE_MAX_MEMORY, to dynamically
>     detect imminent OOM and adjust things. that is, how to calculate a
>     sane value for that as i haven't yet dug into the values under
>     /proc/pressure and how to interpret them?
> 
>        i've seen mentions of combining the above with the "memstat"
>     command, and other approaches. thoughts?
> 
>     rday
> 
>     p.s. is there a docs page that expands on this stuff?
> 
There was an older thread "bitbake controlling memory use", maybe that 
might help.

Myself, I found these pressure things don't help. And even though we can 
set the number of make threads we still can have a number of makes in 
parallel. I patched bitbake to have make and ninja use a jobserver to 
limit the total number of compile threads to the number of cores.
See https://github.com/htot/meta-intel-edison/tree/kirkstone

So, if you have 1GB ram x #cores you should be fine except for 1 thing:
nodejs is linking 5 executables that require 4GB ram simultaneously. So 
if you don't have 20GB you will start thrashing up to the point that you 
have no mouse movement. This I solved by modifying the recipe to 
serialize the linking.

> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61773): https://lists.yoctoproject.org/g/yocto/message/61773
> Mute This Topic: https://lists.yoctoproject.org/mt/102868689/4382963
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [gley-yocto@m.gmane-mx.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 



