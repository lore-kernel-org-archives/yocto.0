Return-Path: <liming.wang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6291E0122C
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 01:01:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7P819qG002673
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 25 Aug 2011 01:01:09 -0700 (PDT)
Received: from [128.224.162.246] (128.224.162.246) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 25 Aug 2011 01:01:09 -0700
Message-ID: <4E56015B.70300@windriver.com>
Date: Thu, 25 Aug 2011 16:01:31 +0800
From: Liming Wang <liming.wang@windriver.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN;
	rv:1.9.2.20) Gecko/20110804 Thunderbird/3.1.12
MIME-Version: 1.0
To: <Bruce.Ashfield@windriver.com>
References: <1314256289-22050-1-git-send-email-liming.wang@windriver.com>
	<1314256289-22050-2-git-send-email-liming.wang@windriver.com>
In-Reply-To: <1314256289-22050-2-git-send-email-liming.wang@windriver.com>
X-Originating-IP: [128.224.162.246]
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 1/1] mips/rt: convert timer interrupt handler to no	threaded
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
X-List-Received-Date: Thu, 25 Aug 2011 08:01:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-8-25 15:11, Liming Wang wrote:
> It's a known issue that preempt_rt kernel must convert the
> main timer interrupt handler to no threaded, otherwise kernel
> can't work well.
Sorry,  I'm wrong, irq2 is not the timer interrupt handler, it's 
described as:
"IRQ2 is cascade interrupt to second interrupt controller".
I will re-send the the mail.

Liming Wang
> Signed-off-by: Liming Wang<liming.wang@windriver.com>
> ---
>   arch/mips/kernel/i8259.c |    1 +
>   1 files changed, 1 insertions(+), 0 deletions(-)
>
> diff --git a/arch/mips/kernel/i8259.c b/arch/mips/kernel/i8259.c
> index 5c74eb7..fb338db 100644
> --- a/arch/mips/kernel/i8259.c
> +++ b/arch/mips/kernel/i8259.c
> @@ -295,6 +295,7 @@ static void init_8259A(int auto_eoi)
>   static struct irqaction irq2 = {
>   	.handler = no_action,
>   	.name = "cascade",
> +	.flags = IRQF_NO_THREAD,
>   };
>
>   static struct resource pic1_io_resource = {


