Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A1E3E01460;
	Thu, 14 Mar 2013 22:15:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2F5FLll006713
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 14 Mar 2013 22:15:21 -0700 (PDT)
Received: from [128.224.22.84] (128.224.22.84) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Thu, 14 Mar 2013 22:15:20 -0700
Message-ID: <5142AE66.8010105@windriver.com>
Date: Thu, 14 Mar 2013 22:15:18 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130221 Thunderbird/17.0.3
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <CACzyEJ8DDZqhSDWvTN9vBtpZ910eGtAC9GGtvNEqHpM0x1hxVg@mail.gmail.com>
In-Reply-To: <CACzyEJ8DDZqhSDWvTN9vBtpZ910eGtAC9GGtvNEqHpM0x1hxVg@mail.gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>,
	"Development list for the linux-yocto*.git Linux
	kernel repositories" <linux-yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 15 Mar 2013 05:15:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-14 10:09 PM, Insop Song wrote:
> Hi Bruce,
>
> I've added recipes-kernel to use edf branch and cfg.

FYI: your email keeps bouncing from the linux-yocto mailing list,
check to be sure you signed up with your gmail account, I keep
approving them for now :)

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
> #idx	period	min_et	max_et	rel_st	start		end		deadline	dur.	slack	Budget	Used
> Budget
> 0	100000	35000	35000	65466	354577907	354612918	354677899	35011	64981
> 0	100000	35000	35000	165585	354678026	354713105	354777899	35079	64794
> ...
> 0	100000	35000	35000	1965672	356478113	356513126	356577899	35014	64772
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
>   kernel
>
> ---
>   recipes-kernel/linux/linux-yocto/edf.cfg      |    4 ++++
>   recipes-kernel/linux/linux-yocto_3.8.bbappend |   14 ++++++++++++++
>   2 files changed, 18 insertions(+)
>   create mode 100644 recipes-kernel/linux/linux-yocto/edf.cfg
>   create mode 100644 recipes-kernel/linux/linux-yocto_3.8.bbappend
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

We don't need this fragment in recipe space, it's already in the
kernel tree itself.

I've already sent the pull request for the meta SRCREVs to be updated,
so it's available for all builds now.

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

These are already taken care of by meta-intel, we don't need to
duplicate them here.

> +
> +KBRANCH_qemux86 = "standard/edf"
> +KBRANCH_fri2 = "standard/edf"
> +
> +KMACHINE_qemux86 = "qemux86"
> +KMACHINE_fri2 = "fri2"

We don't need these two KMACHINE lines, this is the default.

Cheers,

Bruce

> +
> +SRCREV_machine_qemux86 = "62d98f6b12f91cc7419b88dfa2e0abe077c94f9f"
> +SRCREV_machine_fri2 = "62d98f6b12f91cc7419b88dfa2e0abe077c94f9f"
> +
> +KERNEL_FEATURES_append =" cfg/edf.scc"
>


