Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34770E01402
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 05:55:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q42CtQhK002882
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 2 May 2012 05:55:26 -0700 (PDT)
Received: from [128.224.92.159] (128.224.92.159) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 2 May 2012 05:55:27 -0700
Message-ID: <4FA12EBD.5010306@windriver.com>
Date: Wed, 2 May 2012 08:55:25 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
	<d70b8e0f1ec6eade123a18194283b15e8aaa2bef.1335909082.git.dvhart@linux.intel.com>
In-Reply-To: <d70b8e0f1ec6eade123a18194283b15e8aaa2bef.1335909082.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 3/7] n450: Update to linux-yocto 3.2
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
X-List-Received-Date: Wed, 02 May 2012 12:55:28 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-01 06:12 PM, Darren Hart wrote:
> Update the PREFERRED_VERSION to 3.2.
> Drop cfg/smp.scc as this is now included in common-pc.

Just having a look at the series now. Can you confirm for me if there
are 3 or 7 patches for n450 ? I see the other syslinux series has 7
patches, but only 3 here. Just a number issue on the send ? Or did
I manage to lose 4 changes ?

Cheers,

Bruce

>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> ---
>   meta-n450/conf/machine/n450.conf                   |    3 +++
>   .../linux/linux-yocto-rt_3.2.bbappend              |   10 ++++++++++
>   .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    7 +++++++
>   3 files changed, 20 insertions(+), 0 deletions(-)
>   create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
>   create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend
>
> diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
> index dac63ed..7ce4cc7 100644
> --- a/meta-n450/conf/machine/n450.conf
> +++ b/meta-n450/conf/machine/n450.conf
> @@ -3,6 +3,9 @@
>
>   #@DESCRIPTION: Machine configuration for Intel 1-N450 based systems
>
> +PREFERRED_PROVIDER-virtual/kernel ?= "linux-yocto"
> +PREFERRED_VERSION_linux-yocto ?= "3.2%"
> +
>   require conf/machine/include/tune-atom.inc
>   require conf/machine/include/ia32-base.inc
>
> diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
> new file mode 100644
> index 0000000..1c7fef9
> --- /dev/null
> +++ b/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
> @@ -0,0 +1,10 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +COMPATIBLE_MACHINE_n450 = "n450"
> +KMACHINE_n450 = "atom-pc"
> +
> +KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
> +
> +# Update the following to use a different BSP branch or meta SRCREV
> +#KBRANCH_n450 = "yocto/standard/preempt-rt/base"
> +#SRCREV_machine_pn-linux-yocto-rt_n450 ?= XXXX
> +#SRCREV_meta_pn-linux-yocto-rt_n450 ?= XXXX
> diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend
> new file mode 100644
> index 0000000..f02c475
> --- /dev/null
> +++ b/meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend
> @@ -0,0 +1,7 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +COMPATIBLE_MACHINE_n450 = "n450"
> +KMACHINE_n450  = "atom-pc"
> +KBRANCH_n450 = "standard/default/common-pc/base"
> +
> +#SRCREV_machine_pn-linux-yocto_n450 = XXXX
> +#SRCREV_meta_pn-linux-yocto_n450 ?= XXXX


