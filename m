Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0B08E0150F
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 17:58:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r340wRiM028652
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 3 Apr 2013 17:58:27 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.31) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Wed, 3 Apr 2013 17:58:28 -0700
Message-ID: <515CD033.2000807@windriver.com>
Date: Wed, 3 Apr 2013 20:58:27 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <9df95d49188bacbe180bfac67edfaa682d542ed3.1365027385.git.dvhart@linux.intel.com>
In-Reply-To: <9df95d49188bacbe180bfac67edfaa682d542ed3.1365027385.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH] [poky-extras] linux-yocto*3.8: Add bbappend for linux-yocto 3.8 recipes
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
X-List-Received-Date: Thu, 04 Apr 2013 00:58:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-03 6:16 PM, Darren Hart wrote:
> Enable meta-kernel-dev support for the 3.8 kernels.

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

I have something similar local to my machine that I hadn't gotten
around to pushing out.

Cheers,

Bruce

>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> ---
>   .../linux/linux-yocto-rt_3.8.bbappend              |   25 ++++++++++++++++++++
>   .../recipes-kernel/linux/linux-yocto_3.8.bbappend  |   25 ++++++++++++++++++++
>   2 files changed, 50 insertions(+), 0 deletions(-)
>   create mode 100644 meta-kernel-dev/recipes-kernel/linux/linux-yocto-rt_3.8.bbappend
>   create mode 100644 meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.8.bbappend
>
> diff --git a/meta-kernel-dev/recipes-kernel/linux/linux-yocto-rt_3.8.bbappend b/meta-kernel-dev/recipes-kernel/linux/linux-yocto-rt_3.8.bbappend
> new file mode 100644
> index 0000000..18eab0d
> --- /dev/null
> +++ b/meta-kernel-dev/recipes-kernel/linux/linux-yocto-rt_3.8.bbappend
> @@ -0,0 +1,25 @@
> +FILESEXTRAPATHS := "${THISDIR}/${PN}"
> +
> +COMPATIBLE_MACHINE = "${MACHINE}"
> +
> +# Note: put these in your local.conf to avoid multi-kernel build errors
> +# PREFERRED_VERSION_linux-yocto-rt_${MACHINE} = "3.8%"
> +
> +# KMACHINE is the branch to build
> +# KMACHINE_<MACHINE>  ?= "yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
> +
> +# KERNEL_FEATURES are features to be added to the kernel, and must
> +# point to configurations stored on the 'meta' branch of the kernel
> +# that is being built.
> +# KERNEL_FEATURES ?=<FOO>
> +
> +# It is often nice to have a local clone of the kernel repos, to
> +# allow patches to be staged, branches created, etc. Modify
> +
> +# KSRC_linux_yocto_3_8 to point to your local clone as appropriate.
> +# KSRC_linux_yocto_3_8 ?= "/path/to/local/linux-yocto-3.8.git/"
> +#SRC_URI = "git://${KSRC_linux_yocto_3_8};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
> +
> +SRCREV_machine_${MACHINE}="${AUTOREV}"
> +SRCREV_meta="${AUTOREV}"
> +LOCALCOUNT = "0"
> diff --git a/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.8.bbappend b/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.8.bbappend
> new file mode 100644
> index 0000000..9e61e33
> --- /dev/null
> +++ b/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.8.bbappend
> @@ -0,0 +1,25 @@
> +FILESEXTRAPATHS := "${THISDIR}/${PN}"
> +
> +COMPATIBLE_MACHINE = "${MACHINE}"
> +
> +# Note: put these in your local.conf to avoid multi-kernel build errors
> +# PREFERRED_VERSION_linux-yocto_${MACHINE} = "3.8%"
> +
> +# KMACHINE is the branch to build
> +# KMACHINE_<MACHINE>  ?= "yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
> +
> +# KERNEL_FEATURES are features to be added to the kernel, and must
> +# point to configurations stored on the 'meta' branch of the kernel
> +# that is being built.
> +# KERNEL_FEATURES ?=<FOO>
> +
> +# It is often nice to have a local clone of the kernel repos, to
> +# allow patches to be staged, branches created, etc. Modify
> +
> +# KSRC_linux_yocto_3_8 to point to your local clone as appropriate.
> +# KSRC_linux_yocto_3_8 ?= "/path/to/local/linux-yocto-3.8.git/"
> +# SRC_URI = "git://${KSRC_linux_yocto_3_8};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
> +
> +SRCREV_machine_${MACHINE}="${AUTOREV}"
> +SRCREV_meta="${AUTOREV}"
> +LOCALCOUNT = "0"


