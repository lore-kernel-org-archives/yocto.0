Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 11FAB4C804C5
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2011 08:55:17 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5ODtGpd020974
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2011 06:55:16 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 24 Jun 2011 06:55:16 -0700
Message-ID: <4E049740.1080102@windriver.com>
Date: Fri, 24 Jun 2011 09:55:12 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Jingdong Lu <jingdong.lu@windriver.com>
References: <cover.1308898789.git.jingdong.lu@windriver.com>
	<1e861537dffff5c5cd7f3f959e9b5e735e7747b2.1308898789.git.jingdong.lu@windriver.com>
In-Reply-To: <1e861537dffff5c5cd7f3f959e9b5e735e7747b2.1308898789.git.jingdong.lu@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] routerstationpro: IPC config
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
X-List-Received-Date: Fri, 24 Jun 2011 13:55:17 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/24/11 03:02, Jingdong Lu wrote:
> From: Jingdong Lu<jingdong.lu@windriver.com>
>
> Add IPC config for routestationpro
>
> Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
> ---
>   .../bsp/routerstationpro/routerstationpro.cfg      |   10 +++++++---
>   1 files changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
> index f58dfe8..88222ca 100644
> --- a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
> +++ b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
> @@ -209,14 +209,18 @@ CONFIG_CONSTRUCTORS=y
>   #
>   # General setup
>   #
> -# CONFIG_EXPERIMENTAL is not set
> +CONFIG_EXPERIMENTAL=y

We typically do not want to enable this. What options is
this triggering that are essential to the IPC config ?

>   CONFIG_BROKEN_ON_SMP=y
>   CONFIG_INIT_ENV_ARG_LIMIT=32
>   CONFIG_LOCALVERSION=""
>   CONFIG_LOCALVERSION_AUTO=y
>   CONFIG_SWAP=y
> -# CONFIG_SYSVIPC is not set
> -# CONFIG_BSD_PROCESS_ACCT is not set
> +CONFIG_SYSVIPC=y
> +CONFIG_SYSVIPC_SYSCTL=y
> +CONFIG_POSIX_MQUEUE=y

These options are already provided by the base configuration
and are supposed to be baseline options for any BSP. Can
you elaborate on why you needed these here ?

Bruce

> +CONFIG_POSIX_MQUEUE_SYSCTL=y
> +CONFIG_BSD_PROCESS_ACCT=y
> +CONFIG_BSD_PROCESS_ACCT_V3=y
>   # CONFIG_TASKSTATS is not set
>   # CONFIG_AUDIT is not set
>


