Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC4F3E011BC
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 08:00:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7BF0OvO023634
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 11 Aug 2011 08:00:24 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 11 Aug 2011 08:00:24 -0700
Message-ID: <4E43EE86.9020407@windriver.com>
Date: Thu, 11 Aug 2011 11:00:22 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4E438401.6010001@linux.intel.com>
In-Reply-To: <4E438401.6010001@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [linux-yocto][PATCH] MIPS: ARC: Fix build of firmware library on
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
X-List-Received-Date: Thu, 11 Aug 2011 15:00:18 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-11 03:25 AM, Darren Hart wrote:
> commit 4f55fd752fb4770a354dd2401d5043c98236cc29 upstream
>
> Signed-off-by: Ralf Baechle<ralf@linux-mips.org>
>
> [applied to linux-yocto standard/base]

Merged. Will be part of the pull request I'm preparing now.

Bruce

>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>
> ---
>   arch/mips/include/asm/smp-ops.h |    2 ++
>   1 files changed, 2 insertions(+), 0 deletions(-)
>
> diff --git a/arch/mips/include/asm/smp-ops.h
> b/arch/mips/include/asm/smp-ops.h
> index 48b03ff..ef2a804 100644
> --- a/arch/mips/include/asm/smp-ops.h
> +++ b/arch/mips/include/asm/smp-ops.h
> @@ -11,6 +11,8 @@
>   #ifndef __ASM_SMP_OPS_H
>   #define __ASM_SMP_OPS_H
>
> +#include<linux/errno.h>
> +
>   #ifdef CONFIG_SMP
>
>   #include<linux/cpumask.h>


