Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12C7DE003E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 13:17:14 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q22LGooU005917
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 Mar 2012 13:16:50 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 2 Mar 2012 13:16:50 -0800
Message-ID: <4F5138AE.3030602@windriver.com>
Date: Fri, 2 Mar 2012 16:16:30 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <darren@dvhart.com>
References: <cover.1330644090.git.darren@dvhart.com>
	<9242bfa391c0591f520d2e906fe3440db045ba99.1330644090.git.darren@dvhart.com>
In-Reply-To: <9242bfa391c0591f520d2e906fe3440db045ba99.1330644090.git.darren@dvhart.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 5/6] fri2: Add SMP and EFI support
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
X-List-Received-Date: Fri, 02 Mar 2012 21:17:14 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-01 06:59 PM, Darren Hart wrote:
> From: Darren Hart<dvhart@linux.intel.com>
>
> Rather than add these as features in the linux-yocto recipe,
> include them in the BSP meta-data directly. Include only the core
> EFI bits in the fri2.scc, and add the extended EFI support to the
> fri2-standard.scc so that other ktypes don't pull in more than
> what's absolutely required from fri2.scc.

Ack'd. Looks good.

Bruce

>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> ---
>   meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc |    1 +
>   meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc   |    1 +
>   meta/cfg/kernel-cache/bsp/fri2/fri2.scc            |    2 ++
>   3 files changed, 4 insertions(+), 0 deletions(-)
>
> diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
> index 142d71a..9e9a84c 100644
> --- a/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
> +++ b/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
> @@ -5,3 +5,4 @@ define KARCH i386
>   # no new branch required, re-use the ktypes/preempt-rt branch
>   include ktypes/preempt-rt
>   include fri2.scc
> +include cfg/efi-ext.scc
> diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
> index bbb0ebc..b17eca5 100644
> --- a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
> +++ b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
> @@ -9,3 +9,4 @@ include features/emgd/emgd.scc
>   git merge emgd
>
>   include fri2.scc
> +include cfg/efi-ext.scc
> diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
> index 2dd3170..a89a6e2 100644
> --- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
> +++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
> @@ -11,6 +11,8 @@ include cfg/vesafb.scc
>   include cfg/usb-mass-storage.scc
>   include cfg/boot-live.scc
>   include features/power/intel.scc
> +include cfg/smp.scc
> +include cfg/efi.scc
>
>   include features/logbuf/size-normal.scc
>


