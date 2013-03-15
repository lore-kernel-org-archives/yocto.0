Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19893E01471;
	Thu, 14 Mar 2013 23:27:23 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id fq13so3313891lab.7
	for <multiple recipients>; Thu, 14 Mar 2013 23:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=DftORWqGGMf8t0IUXJA9fhZdCH562BSHXRInkJOBnHw=;
	b=WOpchYX0Nj3o31MU6ezVK6Lt9meO8fNoRaHF28QQu57kEL/FZYlP2UnEpkTB4dik/4
	fqxm5H65dgXGBugydg0y0Hq3EBXRn6J54SzNh20mhHXos6oZVQP2fM3IEdRQMWM3n9o/
	4YLw4Xfnxr1yP9XbFqe8T6weBGy/kcssyYTUZN0YbdsrR37/xcybusoYHGctVBmlK45N
	Y4cJM8YsgvdSCIpMkCXPADdwRnw/abe7igE6/1t3/4WwCCsKqhhyvO/FfXli56M6wagi
	Sb+VvyefiR4kU+d5XHrH8uKOrg56BNB7ssZyiv4/M4K38Xh7/jIn2u3DYas8ZK/hzqVM
	ng1g==
MIME-Version: 1.0
X-Received: by 10.112.40.228 with SMTP id a4mr2190406lbl.26.1363328842658;
	Thu, 14 Mar 2013 23:27:22 -0700 (PDT)
Received: by 10.112.61.3 with HTTP; Thu, 14 Mar 2013 23:27:22 -0700 (PDT)
In-Reply-To: <CACzyEJ8DDZqhSDWvTN9vBtpZ910eGtAC9GGtvNEqHpM0x1hxVg@mail.gmail.com>
References: <CACzyEJ8DDZqhSDWvTN9vBtpZ910eGtAC9GGtvNEqHpM0x1hxVg@mail.gmail.com>
Date: Thu, 14 Mar 2013 23:27:22 -0700
Message-ID: <CADkTA4M=wxdo1_iBB-RJQWLcJHUvemn+6ng1GbTZzhBJfwaZnw@mail.gmail.com>
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
X-List-Received-Date: Fri, 15 Mar 2013 06:27:24 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 14, 2013 at 10:09 PM, Insop Song <insop.song@gmail.com> wrote:
> Hi Bruce,
>
> I've added recipes-kernel to use edf branch and cfg.

I was just merging your changes, and realized that gmail may have dropped
your schedtool-dl recipe.

Can you resend it with your updated series ? I have another schedtool
recipe here, but it's against an older sched_dl release, so I'd like to
compare it to yours and merge the two of them together.

Cheers,

Bruce

>
> - tested on qemux86
> ===========================================
>
> root@qemux86:~# uname -a
> Linux qemux86 3.8.1-yocto-standard #1 SMP PREEMPT Thu Mar 14 21:57:12
> PDT 2013 i686 GNU/Linux
> root@qemux86:~# rt-app -t 100000:35000:d -D 2
> [rt-app] <notice> [0] Using SCHED_DEADLINE policy:
> [rt-app] <notice> [0] starting thread with period: 100000, exec:
> 35000,deadline: 100000, priority: 10
> [rt-app] <notice> [0] Locking pages in memory
> #idx    period  min_et  max_et  rel_st  start           end             deadline        dur.    slack   Budget  Used
> Budget
> 0       100000  35000   35000   65466   354577907       354612918       354677899       35011   64981
> 0       100000  35000   35000   165585  354678026       354713105       354777899       35079   64794
> ...
> 0       100000  35000   35000   1965672 356478113       356513126       356577899       35014   64772
> [rt-app] <notice> [0] Exiting.
> root@qemux86:~#
>
> ===========================================
>
> Let me know what you think.
>
> Regards,
>
> Insop
>
> ===========================================
>
>
> Subject: [meta-realtime][PATCH] add sched_deadline reckpies-kernel for 3.8
>  kernel
>
> ---
>  recipes-kernel/linux/linux-yocto/edf.cfg      |    4 ++++
>  recipes-kernel/linux/linux-yocto_3.8.bbappend |   14 ++++++++++++++
>  2 files changed, 18 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-yocto/edf.cfg
>  create mode 100644 recipes-kernel/linux/linux-yocto_3.8.bbappend
>
> diff --git a/recipes-kernel/linux/linux-yocto/edf.cfg
> b/recipes-kernel/linux/linux-yocto/edf.cfg
> new file mode 100644
> index 0000000..ccf004f
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto/edf.cfg
> @@ -0,0 +1,4 @@
> +CONFIG_CGROUPS=y
> +CONFIG_CGROUP_SCHED=y
> +CONFIG_DEADLINE_GROUP_SCHED=y
> +
> diff --git a/recipes-kernel/linux/linux-yocto_3.8.bbappend
> b/recipes-kernel/linux/linux-yocto_3.8.bbappend
> new file mode 100644
> index 0000000..c6a969f
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto_3.8.bbappend
> @@ -0,0 +1,14 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +COMPATIBLE_MACHINE_qemux86 = "qemux86"
> +COMPATIBLE_MACHINE_fri2 = "fri2"
> +
> +KBRANCH_qemux86 = "standard/edf"
> +KBRANCH_fri2 = "standard/edf"
> +
> +KMACHINE_qemux86 = "qemux86"
> +KMACHINE_fri2 = "fri2"
> +
> +SRCREV_machine_qemux86 = "62d98f6b12f91cc7419b88dfa2e0abe077c94f9f"
> +SRCREV_machine_fri2 = "62d98f6b12f91cc7419b88dfa2e0abe077c94f9f"
> +
> +KERNEL_FEATURES_append =" cfg/edf.scc"
> --
> 1.7.9.5
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

