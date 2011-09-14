Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F60DE006D1
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2011 21:46:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8E4k9Hw005597
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 13 Sep 2011 21:46:09 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.77) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 13 Sep 2011 21:46:07 -0700
Message-ID: <4E703188.3070509@windriver.com>
Date: Wed, 14 Sep 2011 00:46:00 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.22) Gecko/20110902 Thunderbird/3.1.14
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4E6FB00C.2070200@linux.intel.com>
In-Reply-To: <4E6FB00C.2070200@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH][linux-yocto] preempt-rt/base: correct 3.0.3->3.0.4 mismerge for, stop_machine.c
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
X-List-Received-Date: Thu, 15 Sep 2011 03:50:27 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-13 3:33 PM, Darren Hart wrote:
> Commit 0b805cce57f61a244eb3b8fce460b14f1be442b3 dropped a change making
> stop_cpus_mutex non-static, resulting in a build failure for 3.0.4-rt
> kernels.
>
> Restore the move to non-static from commit
> 6857336c7fddaf460a13adc0c395698fcf9423ff.

Acked. I'm doing a kernel merge tomorrow, so this will be part of
that update.

Bruce

>
> Reported-by: Kishore Bodke<kishore.k.bodke@intel.com>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> CC: Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>   kernel/stop_machine.c |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/kernel/stop_machine.c b/kernel/stop_machine.c
> index c54d0fa..d6b3ac2 100644
> --- a/kernel/stop_machine.c
> +++ b/kernel/stop_machine.c
> @@ -150,8 +150,8 @@ void stop_one_cpu_nowait(unsigned int cpu, cpu_stop_fn_t fn, void *arg,
>   	cpu_stop_queue_work(&per_cpu(cpu_stopper, cpu), work_buf);
>   }
>
> +DEFINE_MUTEX(stop_cpus_mutex);
>   /* static data for stop_cpus */
> -static DEFINE_MUTEX(stop_cpus_mutex);
>   static DEFINE_MUTEX(stopper_lock);
>   static DEFINE_PER_CPU(struct cpu_stop_work, stop_cpus_work);
>


