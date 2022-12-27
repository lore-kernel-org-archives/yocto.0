Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A62C4167B
	for <webhook@archiver.kernel.org>; Tue, 27 Dec 2022 16:56:48 +0000 (UTC)
Received: from ciao.gmane.io (ciao.gmane.io [116.202.254.214])
 by mx.groups.io with SMTP id smtpd.web11.162256.1672160200402836540
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Dec 2022 08:56:40 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 116.202.254.214, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1pADFl-0003qZ-PY
	for yocto@lists.yoctoproject.org; Tue, 27 Dec 2022 17:56:37 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: Ferry Toth <fntoth@gmail.com>
Subject: Re: bitbake controlling memory use
Date: Tue, 27 Dec 2022 17:56:30 +0100
Message-ID: <85813877-465b-f476-1bd6-3fa427d7a567@gmail.com>
References: <s4v495$bak$1@ciao.gmane.io>
 <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
 <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com>
 <CANNYZj_K-zpP-iTQMh5YA58dhBV88wLP-PouXS5KrHjybfsy-g@mail.gmail.com>
 <14207c27-7f5e-9a13-d8e8-28dbb0e7ea7b@gmail.com>
 <CANNYZj8MtLM5KdUqMsqhiVMHTnmj4VMoSf3XnCLvSns8grpmmA@mail.gmail.com>
 <0c8c0d85-c3e0-41d5-1a0b-2d121302439a@windriver.com>
 <2f23e846365f9736f925351e8d553c54a9d2782c.camel@linuxfoundation.org>
 <34dccddb-c5c2-16e0-d571-f86f2c6f004b@gmail.com>
 <c26ff0ee8f9cc81d0c52cda17381226fc11166c8.camel@linuxfoundation.org>
 <16770AD5E94DEAE5.1089@lists.yoctoproject.org>
 <dc01104b-ac65-8a50-b876-b6dd13fcf238@gmail.com>
 <2b6d999b-303a-569d-5d5f-d247adef59ad@windriver.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Cc: contrib-wZ7dTMvimpPk1uMJSBkQmQ@public.gmane.org,
 yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X-XMD5yJDbdMReXY1tMh2IBg-XMD5yJDbdMReXY1tMh2IBg-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org
Content-Language: en-US
In-Reply-To: <2b6d999b-303a-569d-5d5f-d247adef59ad@windriver.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Dec 2022 16:56:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58876

Hi,
Op 26-12-2022 om 03:11 schreef Randy MacLeod:
> On 2022-12-24 13:58, Ferry Toth via lists.yoctoproject.org wrote:
>> Op 18-04-2021 om 21:34 schreef Gmane Admin:
>>> Hi,
>>> Op 18-04-2021 om 11:59 schreef Richard Purdie:
>>>> On Sun, 2021-04-18 at 00:17 +0200, Gmane Admin wrote:
>>>>> Hi,
>>>>> Op 14-04-2021 om 06:59 schreef Richard Purdie:
>>>>>> On Tue, 2021-04-13 at 21:14 -0400, Randy MacLeod wrote:
>>>>>>> On 2021-04-11 12:19 p.m., Alexander Kanavin wrote:
>>>>>>>> make already has -l option for limiting new instances if load 
>>>>>>>> average is
>>>>>>>> too high, so it's only natural to add a RAM limiter too.
>>>>>>>>
>>>>>>>>      -l [N], --load-average[=N], --max-load[=N]
>>>>>>>>                                  Don't start multiple jobs 
>>>>>>>> unless load is
>>>>>>>> below N.
>>>>>>>>
>>>>>>>> In any case, patches welcome :)
>>>>>>>
>>>>>>> During today's Yocto technical call (1),
>>>>>>> we talked about approaches to limiting the system load and avoiding
>>>>>>> swap and/or OOM events. Here's what (little!) i recall from the
>>>>>>> discussion, 9 busy hours later.
>>>>>>>
>>>>>>> In the short run, instead of independently maintaining changes to
>>>>>>> configurations to limit parallelism or xz memory usage, etc, we
>>>>>>> could develop an optional common include file where such limits
>>>>>>> are shared across the community.
>>>>>
>>>>> I tried PARALLEL_MAKE_nodejs = "-j 1" from local.conf but that 
>>>>> didn't work.
>>>>
>>>> It would need to be:
>>>>
>>>> PARALLEL_MAKE_pn-nodejs = "-j 1"
>>>>
>>>>> So I watched it run for a while. It compiles with g++ and as at about
>>>>> 0.5GB per thread, which is OK. In the end it does ld taking 4GB and it
>>>>> tries to do 4 in parallel. And then swapping becomes so heavy the
>>>>> desktop becomes unresponsive. Like I mentioned before ssh from another
>>>>> machine allows me to STOP one of them, allowing the remaining to
>>>>> complete. And then CONT the last one.
>>>>>
>>>>> I worked around it now, by creating a bbappend for nodejs with only
>>>>> PARALLEL_MAKE = "-j 2"
>>>>>>
>>>>
>>>> If that works, the override above should also work. You do need the 
>>>> "pn-"
>>>> prefix to the recipe name though.
>>>
>>> And indeed it does, thanks so much for the tip.
>>
>> This discussion is very old, but I just wanted to share an update. 
>> With my image (meta-intel-edison) building nodejs is the dominant time 
>> consumer. With "-j 2" the nodejs build takes multiple hours (I have 8 
>> core + HT), all the rest is then long completed. Without "-j 2" 
>> building  nodejs_16.14.2 linking in the final stage 5 processes are 
>> started, each 4 - 5GB RAM. With my meager 16GB disk thrashing starts 
>> and it still would take hours to complete.
>>
>> While I still believe we need bitbake to SIGSTOP processes that 
>> trigger thrashing, for nodejs I found a solution at the recipe level:
>>
>> The yocto recipe already has:
>>
>> EXTRA_OEMAKE = "\
>>     CC.host='${CC}' \
>>     CFLAGS.host='${CPPFLAGS} ${CFLAGS}' \
>>     CXX.host='${CXX}' \
>>     CXXFLAGS.host='${CPPFLAGS} ${CXXFLAGS}' \
>>     LDFLAGS.host='${LDFLAGS}' \
>>     AR.host='${AR}' \
>>     \
>>     builddir_name=./ \
>> "
>>
>> I inserted `    LINK.host='flock /tmp ${CXX}' \` as that seemed most 
>> logical, but that didn't help a bit (the 4 calls in my log to flock 
>> were never simultaneous). However after changing it to ` LINK='flock 
>> /tmp ${CXX}' \` the linker is serialized.
>>
>> This makes an enormous difference in my Yocto image build time (nodejs 
>> was the dominant factor). Now compile stage ~25min + 5min for link.
> 
> Terry,
> 
> It's nice to hear that you have an approach to make building nodejs 
> feasible for you on your hardware.
> 
> I have been wondering if we should be trying to serialize linking across 
> recipes (nodejs, webkitgtk, llvm, and other larger packages)
> but I hadn't noticed that nodejs itself was in need of umm, *guidance*.  
> ;-)
> 
> Are you aware of the recently added: BB_PRESSURE_MAX_[CPU|IO|MEMORY] 
> variables?
> 
> https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-user-manual-ref-variables.html#term-BB_PRESSURE_MAX_CPU
> 
> That might help you a bit as well.

Nope I hadn't seen that. I immediately tried it, but of course it didn't 
work.

Reason is, it regulates starting tasks. But the problem with nodejs is 
(if I don't intervene) the task do_compile takes so long, there are not 
other tasks running.

Also looking at the documentation: "At this point in time, experiments 
show that IO pressure tends to be short-lived and regulating just the 
CPU can help to reduce it."

This is not true. I have just taken some measurements with htop for my 
case 16 threads + 16GB RAM:
- the do_compile task roughly falls appart into 2 phases, compiling 
(many files) and linking (1 + 5 + 5 files).

During compiling I measure PSI CPU=4%, IO = 0%, MEM = 0%, memory use 
10G, swap 1.5G
During linking PSI CPU=0.1%, IO = 90%, MEM = 66%, memory use 14G, swap 8G

You can easily see CPU pressure is not the issue, all CPU time is spend 
on swapping (IO pressure).

This is also the reason I can get my system responding again by SIGSTOP 
on some of the ld processes, once they are stopped (not killed) they are 
swapped out, and stay out.

Basically this is proof that when I manually schedule processes I do a 
better job then the kernel.

> Zheng and I also have a brand new, unpolished patch, to 'make' to limit 
> builds based on PSI (the *some* line from /proc/pressure/cpu ).
> If you're interested, you could give that a try by either applying a 
> patch to the make recipe and having nodejs depend on make-native
> or if you just want to try it out on a private system, build make from:

I am, but I already know this will not work, see above. CPU pressure is 
not the issue.

If you would be limiting IO pressure it might help, although I expect 
once you get an IO over-pressure it's already too late, the processes 
have already been started. The only way I know to resolve, is to stop 
them temporarily.

>     https://github.com/ZhengQ2/make/tree/cpu-pressure-to-commit
> 
> save your old version of make and install the new one in in /usr/bin
> 
> and set:
> 
> PARALLEL_MAKE = " -j -z 5"
> 
> This will prevent make from starting new tasks when the CPU pressure,
> based on our very simple calculation, is > 5%
> 
> We've seen that it can speed up the openssl build on a 24 core system from:
> 
> 89.030 s ±  0.485 s <-- -j 24
> 
> 81.727 s ±  1.139 s <-- -j -z 11
> 
> for native builds of openssl outside of bitbake.
> Early times but it's an interesting data point.
> 
> Builds of the kernel didn't show any speed-up and were in fact a bit 
> slower:
> 
> $ hyperfine --runs 10 --prepare 'make clean; make defconfig' 'make -j 
> 24' --export-json make-j-24--linux-kernel.json
> Benchmark 1: make -j 24
>    Time (mean ± σ):     181.770 s ±  0.290 s    [User: 3416.715 s, 
> System: 354.282 s]
>    Range (min … max):   181.266 s … 182.231 s    10 runs
> 
> 
> # Try -j -z 11
> 
>   hyperfine --runs 10 --prepare 'make clean; make defconfig' 'make -j -z 
> 11 ' --export-json make-j-z-11--linux-kernel.json
> Benchmark 1: make -j -z 11
>    Time (mean ± σ):     185.915 s ±  1.988 s    [User: 3447.606 s, 
> System: 343.528 s]
>    Range (min … max):   184.046 s … 189.901 s    10 runs
> 
> but presumably not needing to specify the number of cores to use, could 
> be a benefit.
> 
> PSI also has /proc/pressure/memory but we've found that for bitbake at 
> least,
> if you limit CPU usage, you can limit overall memory usage. Package 
> builds and linking
> may be a different kettle of fish and your explicit serialization would 
> always be better
> at preventing the system from swapping than PSI memory, which only 
> provides a signal
> when things have gotten out of hand already.
> 
> ../Randy
> 
> 
>>
>>> Ferry
>>>
>>>> Cheers,
>>>>
>>>> Richard
>>>>
>>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>
>>
>>
>>
>>
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58863): https://lists.yoctoproject.org/g/yocto/message/58863
> Mute This Topic: https://lists.yoctoproject.org/mt/82015730/4382963
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [gley-yocto@m.gmane-mx.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 



