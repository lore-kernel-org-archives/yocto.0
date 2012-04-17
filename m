Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 059C7E0030B
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 21:57:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3H4vPo9017048
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 16 Apr 2012 21:57:25 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.240) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 16 Apr 2012 21:57:25 -0700
Message-ID: <4F8CF834.3090101@windriver.com>
Date: Tue, 17 Apr 2012 00:57:24 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Denys Dmytriyenko <denis@denix.org>
References: <1334621899-3397-1-git-send-email-denis@denix.org>
In-Reply-To: <1334621899-3397-1-git-send-email-denis@denix.org>
Cc: yocto@yoctoproject.org, Denys Dmytriyenko <denys@ti.com>
Subject: Re: [PATCH] linux-yocto 3.0: fix beagleboard boot hang on mmc init due to preempt
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
X-List-Received-Date: Tue, 17 Apr 2012 04:57:29 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-04-16 8:18 PM, Denys Dmytriyenko wrote:
> From: Denys Dmytriyenko<denys@ti.com>
>
> The boot hangs with the message:
> mmc0: error -110 whilst initialising SD card
>
> The MMC driver has issues initializing when PREEMPT is enabled (either forced
> or voluntary). Unplugging and then plugging the card back will reset the
> driver and continue booting. Alternatively, disable preemption.

Looks good .. and as discussed perfectly reasonable for now. I'll
pull this into the repo tomorrow (this) morning and send it around for
merging.

Thanks for the fix,

Bruce

>
> Signed-off-by: Denys Dmytriyenko<denys@ti.com>
> ---
>   .../recipes-kernel/linux/files/no-preempt.cfg      |    1 +
>   .../recipes-kernel/linux/files/no-preempt.scc      |    1 +
>   .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    6 ++++++
>   3 files changed, 8 insertions(+), 0 deletions(-)
>   create mode 100644 meta-yocto/recipes-kernel/linux/files/no-preempt.cfg
>   create mode 100644 meta-yocto/recipes-kernel/linux/files/no-preempt.scc
>
> diff --git a/meta-yocto/recipes-kernel/linux/files/no-preempt.cfg b/meta-yocto/recipes-kernel/linux/files/no-preempt.cfg
> new file mode 100644
> index 0000000..0cbeb5a
> --- /dev/null
> +++ b/meta-yocto/recipes-kernel/linux/files/no-preempt.cfg
> @@ -0,0 +1 @@
> +CONFIG_PREEMPT_NONE=y
> diff --git a/meta-yocto/recipes-kernel/linux/files/no-preempt.scc b/meta-yocto/recipes-kernel/linux/files/no-preempt.scc
> new file mode 100644
> index 0000000..1e75e15
> --- /dev/null
> +++ b/meta-yocto/recipes-kernel/linux/files/no-preempt.scc
> @@ -0,0 +1 @@
> +kconf non-hardware no-preempt.cfg
> diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
> index 944f601..d5460fd 100644
> --- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
> +++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
> @@ -1,3 +1,5 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> +
>   KMACHINE_atom-pc  = "yocto/standard/common-pc/atom-pc"
>   KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
>   KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
> @@ -13,3 +15,7 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>   COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
>   COMPATIBLE_MACHINE_beagleboard = "beagleboard"
>   COMPATIBLE_MACHINE_atom-pc = "atom-pc"
> +
> +KERNEL_FEATURES_append_beagleboard = " no-preempt.scc"
> +
> +SRC_URI_append_beagleboard = " file://no-preempt.scc"


