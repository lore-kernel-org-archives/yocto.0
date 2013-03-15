Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78292E01471;
	Thu, 14 Mar 2013 23:13:05 -0700 (PDT)
Received: by mail-lb0-f172.google.com with SMTP id n8so2528315lbj.3
	for <multiple recipients>; Thu, 14 Mar 2013 23:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=n7qic0f2AWytQq/Een99TZ/KY5qp4etfFqGN1AD9AxY=;
	b=NxDV20SXlKMQEuaVdGA/Pezlgel7j8A5kZwkqEV+5ANCAQPUzhqlZ2/C4Q6UY6Vffs
	9fP0uUCfztIj9Vyo/BU2TjLgelrMBvD0RxYAA6YnzEgzZgmqanVh1UU0GQmrSDJ8RL8r
	BgsDX5fmVTIPDMCl9ZFLLicu/p0VdobLwFvK8V6wVQX/mimFe80dJYnv6fdoUQXJITKa
	qPRM3S5KsW3xymP+u4+6lF+PZEd9MF2Rnx4wNqYaOQM6BU9q1+Dm+aijpObg0opAPRgb
	z5V+I9VqO4UV2ZxVKtLD6yVkx+1nLSsoYw6MQ0kYs1JmW7nEth+iHzRHkL+ZbjjMv0b9
	HcZw==
MIME-Version: 1.0
X-Received: by 10.112.5.6 with SMTP id o6mr2144360lbo.57.1363327984043; Thu,
	14 Mar 2013 23:13:04 -0700 (PDT)
Received: by 10.112.61.3 with HTTP; Thu, 14 Mar 2013 23:13:03 -0700 (PDT)
In-Reply-To: <CACzyEJ9VV89cDL3YB2ru-FAiAwjtOjs_An9gRjoUW5oHe93uaA@mail.gmail.com>
References: <CACzyEJ8DDZqhSDWvTN9vBtpZ910eGtAC9GGtvNEqHpM0x1hxVg@mail.gmail.com>
	<5142AE66.8010105@windriver.com>
	<CACzyEJ9VV89cDL3YB2ru-FAiAwjtOjs_An9gRjoUW5oHe93uaA@mail.gmail.com>
Date: Thu, 14 Mar 2013 23:13:03 -0700
Message-ID: <CADkTA4PJkFwNshUgcYTKKM+GDHTevMGPTj7t-M1eNeAL+XE_Zg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Insop Song <insop.song@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
Subject: Re: [meta-realtime][PATCH] add sched_deadline reckpies-kernel for 3.8 kernel
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Mar 2013 06:13:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 14, 2013 at 10:59 PM, Insop Song <insop.song@gmail.com> wrote:
> On Thu, Mar 14, 2013 at 10:15 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com> wrote:
>
>>
>> FYI: your email keeps bouncing from the linux-yocto mailing list,
>> check to be sure you signed up with your gmail account, I keep
>> approving them for now :)
>>
>
> I've signed up last time you suggested, I will try one more and send a
> separate email to the arbiter.

Hmm. One of the arbiters is me .. if it doesn't work this time, let me know
and I'll check the list membership.

> Thank you for reminding me.
>
>>
>>>
>>> - tested on qemux86
>>> ===========================================
>>>
>>> root@qemux86:~# uname -a
>>> Linux qemux86 3.8.1-yocto-standard #1 SMP PREEMPT Thu Mar 14 21:57:12
>>> PDT 2013 i686 GNU/Linux
>>> root@qemux86:~# rt-app -t 100000:35000:d -D 2
>>> [rt-app] <notice> [0] Using SCHED_DEADLINE policy:
>>> [rt-app] <notice> [0] starting thread with period: 100000, exec:
>>> 35000,deadline: 100000, priority: 10
>>> [rt-app] <notice> [0] Locking pages in memory
>>> #idx    period  min_et  max_et  rel_st  start           end
>>> deadline        dur.    slack   Budget  Used
>>> Budget
>>> 0       100000  35000   35000   65466   354577907       354612918
>>> 354677899       35011   64981
>>> 0       100000  35000   35000   165585  354678026       354713105
>>> 354777899       35079   64794
>>> ...
>>> 0       100000  35000   35000   1965672 356478113       356513126
>>> 356577899       35014   64772
>>> [rt-app] <notice> [0] Exiting.
>>> root@qemux86:~#
>>>
>>> ===========================================
>>>
>>> Let me know what you think.
>>>
>>> Regards,
>>>
>>> Insop
>>>
>>> ===========================================
>>>
>>>
>>> Subject: [meta-realtime][PATCH] add sched_deadline reckpies-kernel for 3.8
>>>   kernel
>>>
>>> ---
>>>   recipes-kernel/linux/linux-yocto/edf.cfg      |    4 ++++
>>>   recipes-kernel/linux/linux-yocto_3.8.bbappend |   14 ++++++++++++++
>>>   2 files changed, 18 insertions(+)
>>>   create mode 100644 recipes-kernel/linux/linux-yocto/edf.cfg
>>>   create mode 100644 recipes-kernel/linux/linux-yocto_3.8.bbappend
>>>
>>> diff --git a/recipes-kernel/linux/linux-yocto/edf.cfg
>>> b/recipes-kernel/linux/linux-yocto/edf.cfg
>>> new file mode 100644
>>> index 0000000..ccf004f
>>> --- /dev/null
>>> +++ b/recipes-kernel/linux/linux-yocto/edf.cfg
>>> @@ -0,0 +1,4 @@
>>> +CONFIG_CGROUPS=y
>>> +CONFIG_CGROUP_SCHED=y
>>> +CONFIG_DEADLINE_GROUP_SCHED=y
>>
>>
>> We don't need this fragment in recipe space, it's already in the
>> kernel tree itself.
>>
>> I've already sent the pull request for the meta SRCREVs to be updated,
>> so it's available for all builds now.
>>
>>
>
> removed.
>
>>> +
>>> diff --git a/recipes-kernel/linux/linux-yocto_3.8.bbappend
>>> b/recipes-kernel/linux/linux-yocto_3.8.bbappend
>>> new file mode 100644
>>> index 0000000..c6a969f
>>> --- /dev/null
>>> +++ b/recipes-kernel/linux/linux-yocto_3.8.bbappend
>>> @@ -0,0 +1,14 @@
>>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>> +COMPATIBLE_MACHINE_qemux86 = "qemux86"
>>> +COMPATIBLE_MACHINE_fri2 = "fri2"
>>
>>
>> These are already taken care of by meta-intel, we don't need to
>> duplicate them here.
>>
>>
>
> You meant two lines of "COMPATIBLE_MACHINE..."?
> removed.

Correct! and thanks!

>
>>> +
>>> +KBRANCH_qemux86 = "standard/edf"
>>> +KBRANCH_fri2 = "standard/edf"
>>> +
>>> +KMACHINE_qemux86 = "qemux86"
>>> +KMACHINE_fri2 = "fri2"
>>
>>
>> We don't need these two KMACHINE lines, this is the default.
>>
>
> removed.
>
> I was do some testing on "make localmodconfig", which will gets me the
> using module build .config.
> So let me me ask you this before I send out an updated patch.
>
> I ran "lsmod > /tmp/lsmod" on my qemux86
> On dev host, run "make LSMOD=/tmp/lsmod localmodconfig" to get this
> localmodconfig_qemux86.cfg file, which has less module configurations.
>
> Then I use this in bbappend file like below:
>
> ---
> SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.8.git;protocol=git;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta
> \
>         file://localmodconfig_qemux86.cfg \
>         "
> ----
>
> what do you think?

We want to track the modules and policies of the main qemu BSP,
not override them all here. Extra layers should be only changing board
functionality that is specific to their functionality, not the base board
configuration.

If you think there are modules that are enabled that shouldn't be, we
can address that by looking at the base policy and deciding if that
base policy is wrong.

Cheers,

Bruce

> let me know, I can either just fix the current patch and add new patch or
> just do the current patch fix.
>
> Thank you.
>
> Insop
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

