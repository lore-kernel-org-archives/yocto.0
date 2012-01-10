Return-Path: <Zumeng.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3CB7E006E9
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2012 22:23:40 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0A6NWXl010839
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 Jan 2012 22:23:32 -0800 (PST)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 9 Jan 2012 22:23:32 -0800
Message-ID: <4F0BD952.6030503@windriver.com>
Date: Tue, 10 Jan 2012 14:23:14 +0800
From: Zumeng Chen <zumeng.chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Lightning/1.0b1 Thunderbird/3.0.6
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1326101075-9386-1-git-send-email-zumeng.chen@windriver.com>
	<4F0B2BC8.8080207@linux.intel.com>
In-Reply-To: <4F0B2BC8.8080207@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [V2][PATCH 0/4]lttng-2.0 new recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Jan 2012 06:23:41 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

于 2012年01月10日 02:02, Darren Hart 写道:
>
> On 01/09/2012 01:24 AM, Zumeng Chen wrote:
>    
>> This patchset adds support for lttng-2.0, including the folloing
>> four bb files:
>>    babeltrace_0.8.bb
>>    lttng-modules_v2.0.pre11.bb
>>    lttng-tools_2.0-pre16.bb
>>    lttng-ust_1.9.4.bb
>> And two patches for smoothly compiling:
>>    lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch
>>    lttng-tools-fix-compiling-error-for-powerpc-arm.patch
>>
>> V2 Changes vs V0:
>>    1) fixed all comments from Darren;
>>    2) A build test passed;
>>      
> Have you done any runtime testing using this series?
>    
Since build time is not short, so I'll do some runtime
testing. So patches will be sent out at night.
>    
>>    3) Highlight for the relationship between lttng-2.0 vs lttng
>>       It seems no objection from all.
>>
>> There is a clear description of the LTTng 2.0 architecture in the
>> followiing site:
>>    http://lttng.org/sites/lttng.org/files/LTTng2_0Architecture_pa3.pdf
>>
>> Currently lttng-2.0 is still in pre-release phrase, so I add this
>> into the patch header for reminder. And another goal of this RR
>> is intended to bring forward the following issues:
>>
>>    lttng-2.0 has been added into recipies-kernel, which coexisted
>>    with lttng(the previous version), because there are some mainly
>>    changes from lttng-control to lttng-tools, which both monitors
>>    tracepoints and dynamic probes from kernel and userspace. But
>>    I'm not sure if we should remove the previous version lttng.
>>    My suggestion is to preserve for 2.6.37 kernel :-)
>>
>>      
> Agreed, we need to keep lttng around for the time being.
>
>    
>> lttng-2.0 supports lttng-modules extra builds, which don't need
>> any patches on Linux kernel vs the previous version of lttng.
>> As described in README of lttng-modules-2.0, so far, it has been
>> tested in current 3.0 kernel on x86 32/64-bit, and powerpc 32-bit,
>> , build tested on ARM. So the related tests on qemux86 and qemuppc
>> has been validated and a build test on qemuarm passed too with
>> this patcheset.
>>
>> Babeltrace provides as a trace converter, which used to convert
>> LTTng 2.0 traces into human-readable log(see below example for
>> qemuppc)
>>      
> This sort of information would be useful in the patch commit messages.
> This all gets lost once the patches are committed.
>
> --
> Darren
>
>    
>> lttng-ust_1.9.4 is Linux Trace Toolkit 2.0 Userspace Tracer.
>>
>> I'm still keep an eye on the development of lttng for updates.
>>
>> Regard,
>> Zumeng
>>
>> root@qemuppc:/# lttng list  -k
>> Kernel events:
>> -------------
>>        sched_kthread_stop (type: tracepoint)
>>        sched_kthread_stop_ret (type: tracepoint)
>>        sched_wakeup (type: tracepoint)
>>        sched_wakeup_new (type: tracepoint)
>>        sched_switch (type: tracepoint)
>>        sched_migrate_task (type: tracepoint)
>>        sched_process_free (type: tracepoint)
>>        sched_process_exit (type: tracepoint)
>>        sched_wait_task (type: tracepoint)
>>        sched_process_wait (type: tracepoint)
>>        sched_process_fork (type: tracepoint)
>>        sched_stat_wait (type: tracepoint)
>>        sched_stat_sleep (type: tracepoint)
>>        sched_stat_iowait (type: tracepoint)
>>        sched_stat_runtime (type: tracepoint)
>>        sched_pi_setprio (type: tracepoint)
>>        irq_handler_entry (type: tracepoint)
>>        irq_handler_exit (type: tracepoint)
>>        softirq_entry (type: tracepoint)
>>        softirq_exit (type: tracepoint)
>>        softirq_raise (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>         (type: tracepoint) [disabled]
>>
>> root@qemuppc:/# lttng create mysession
>> Session mysession created.
>> Traces will be written in /home/root/lttng-traces/mysession-20111230-152610
>> root@qemuppc:/#  lttng enable-event -a -k
>> All kernel events are enabled in channel channel0
>> root@qemuppc:/# lttng enable-event sched_switch,sched_wakeup -k
>> kernel event sched_switch created in channel channel0
>> kernel event sched_wakeup created in channel channel0
>> root@qemuppc:/# lttng enable-event -a -k --tracepoint
>> All kernel tracepoints are enabled in channel channel0
>> root@qemuppc:/# lttng add-context -k -e sched_switch -t pid
>> kernel context pid added to sched_switch event in all channels
>> root@qemuppc:/# lttng start
>> Tracing started for session mysession
>> root@qemuppc:/#  lttng list -u
>> UST events:
>> -------------
>> None
>>
>> root@qemuppc:/# lttng stop
>> Tracing stopped for session mysession
>> root@qemuppc:/# lttng list -u
>> UST events:
>> -------------
>> None
>>
>> root@qemuppc:/# uname -a
>> Linux qemuppc 3.0.12-yocto-standard+ #1 PREEMPT Thu Dec 29 22:23:52 CST 2011 ppc GNU/Linux
>> root@qemuppc:/#
>> root@qemuppc:/# babeltrace /home/root/lttng-traces/mysession-20111230-152610 | less
>> [2078772597067] softirq_raise: { 0 }, { vec = 1 }
>> [2078773657367] softirq_raise: { 0 }, { vec = 9 }
>> [2078773943557] sched_stat_runtime: { 0 }, { comm = "lttng-sessiond", tid = 404, runtime = 5104592, vruntime = 61173667721 }
>> [2078774051587] softirq_entry: { 0 }, { vec = 1 }
>> [2078774081797] softirq_exit: { 0 }, { vec = 1 }
>> [2078774086557] softirq_entry: { 0 }, { vec = 9 }
>> [2078774094247] softirq_exit: { 0 }, { vec = 9 }
>> [2078774105437] sched_stat_runtime: { 0 }, { comm = "lttng-sessiond", tid = 404, runtime = 230192, vruntime = 61173897913 }
>> [2078774185387] sched_stat_wait: { 0 }, { comm = "lttng-consumerd", tid = 418, delay = 5334784 }
>> [2078774328677] sched_switch: { 0 }, 385, { prev_comm = "lttng-sessiond", prev_tid = 404, prev_prio = 20, prev_state = 0, next_comm = "lttng-consumerd", next_tid = 418, next_prio = 20 }
>> [2078774802747] exit_syscall: { 0 }, { ret = 1 }
>> [2078774968937] sys_unknown: { 0 }, { id = 102, args = [ [0] = 17, [1] = 1218120660, [2] = 0, [3] = 268526120, [4] = 32, [5] = 4294967232 ] }
>> [2078775075597] exit_syscall: { 0 }, { ret = 4136 }
>> [2078775109747] sys_unknown: { 0 }, { id = 167, args = [ [0] = 1218124968, [1] = 2, [2] = 4294967295, [3] = 268526120, [4] = 32, [5] = 4294967232 ] }
>> [2078775130867] exit_syscall: { 0 }, { ret = 1 }
>> [2078775339007] sys_unknown: { 0 }, { id = 102, args = [ [0] = 17, [1] = 1218120612, [2] = 0, [3] = 268526120, [4] = 32, [5] = 4294967232 ] }
>> [2078776095757] exit_syscall: { 0 }, { ret = 1 }
>> [2078776238357] softirq_raise: { 0 }, { vec = 1 }
>> [2078776245827] softirq_raise: { 0 }, { vec = 9 }
>> [2078776265487] sched_stat_runtime: { 0 }, { comm = "lttng-consumerd", tid = 418, runtime = 2149408, vruntime = 61169846169 }
>> [2078776291187] softirq_entry: { 0 }, { vec = 1 }
>> [2078776306217] softirq_exit: { 0 }, { vec = 1 }
>> [2078776310607] softirq_entry: { 0 }, { vec = 9 }
>> [2078776317337] softirq_exit: { 0 }, { vec = 9 }
>> ....snip..........................
>>
>> The following changes since commit 5797feac5f06f5cc363869cd440b82b3eaafd456:
>>
>>    image-mklibs/package_ipk: Remove bashisms (2012-01-05 22:26:25 +0000)
>>
>> are available in the git repository at:
>>    git://git.pokylinux.org/poky-contrib zumeng/lttng-2.0
>>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zumeng/lttng-2.0
>>
>> Zumeng Chen (4):
>>    lttng-ust: Integrate into yocto linux
>>    lttng-tools: Integrated from git repo.
>>    lttng-modules: from lttng-modules 2.0 git repo.
>>    babeltrace: Integrated from version 0.8
>>
>>   meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb    |   30 ++++++++++++++
>>   ...modules-replace-KERNELDIR-with-KERNEL_SRC.patch |   41 ++++++++++++++++++++
>>   .../lttng-2.0/lttng-modules_v2.0.pre11.bb          |   23 +++++++++++
>>   ...-compiling-error-for-powerpc-arm-and-mips.patch |   23 +++++++++++
>>   .../lttng-2.0/lttng-tools_2.0-pre16.bb             |   24 +++++++++++
>>   meta/recipes-kernel/lttng-2.0/lttng-ust_1.9.4.bb   |   23 +++++++++++
>>   6 files changed, 164 insertions(+), 0 deletions(-)
>>   create mode 100644 meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb
>>   create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch
>>   create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-modules_v2.0.pre11.bb
>>   create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-tools-fix-compiling-error-for-powerpc-arm-and-mips.patch
>>   create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-tools_2.0-pre16.bb
>>   create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-ust_1.9.4.bb
>>
>>
>>      
>    


