Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1568C4C80479
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2011 08:57:06 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5ODv50C021311
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2011 06:57:05 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 24 Jun 2011 06:57:05 -0700
Message-ID: <4E0497B0.4070102@windriver.com>
Date: Fri, 24 Jun 2011 09:57:04 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Jingdong Lu <jingdong.lu@windriver.com>
References: <cover.1308896947.git.jingdong.lu@windriver.com>
	<25bb8589b54c91ce817c904609e5d6326a483d8b.1308896947.git.jingdong.lu@windriver.com>
In-Reply-To: <25bb8589b54c91ce817c904609e5d6326a483d8b.1308896947.git.jingdong.lu@windriver.com>
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
X-List-Received-Date: Fri, 24 Jun 2011 13:57:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/24/11 02:34, Jingdong Lu wrote:
> From: Jingdong Lu<jingdong.lu@windriver.com>
>
> Add IPC config for routestationpro

I replied to what looked to be v2 of this change,
so am dropping this patch. If they were indeed
different, you'll need to point me at what I missed.

Also: I got direct email for all these, and a copy
separate to the list. If you are having trouble
with git send-email, feel free to send your workflow
and we can likely help!

Cheers,

Bruce

>
> Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
> ---
>   .../bsp/routerstationpro/routerstationpro.cfg      |    8 ++++++--
>   1 files changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
> index f58dfe8..d0f8f58 100644
> --- a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
> +++ b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
> @@ -215,8 +215,12 @@ CONFIG_INIT_ENV_ARG_LIMIT=32
>   CONFIG_LOCALVERSION=""
>   CONFIG_LOCALVERSION_AUTO=y
>   CONFIG_SWAP=y
> -# CONFIG_SYSVIPC is not set
> -# CONFIG_BSD_PROCESS_ACCT is not set
> +CONFIG_SYSVIPC=y
> +CONFIG_SYSVIPC_SYSCTL=y
> +CONFIG_POSIX_MQUEUE=y
> +CONFIG_POSIX_MQUEUE_SYSCTL=y
> +CONFIG_BSD_PROCESS_ACCT=y
> +CONFIG_BSD_PROCESS_ACCT_V3=y
>   # CONFIG_TASKSTATS is not set
>   # CONFIG_AUDIT is not set
>


