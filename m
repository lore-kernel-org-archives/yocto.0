Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69026E00771
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2011 20:27:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7L3R2WU021408
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 20 Aug 2011 20:27:02 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.19.102) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sat, 20 Aug 2011 20:27:02 -0700
Message-ID: <4E507B03.7090004@windriver.com>
Date: Sat, 20 Aug 2011 23:26:59 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.20) Gecko/20110804 Thunderbird/3.1.12
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1313853536.git.tom.zanussi@intel.com>
	<cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
In-Reply-To: <cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com, saul.wold@intel.com
Subject: Re: [PATCH 1/9] meta-crownbay: switch to linux-yocto 3.0 kernel
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
X-List-Received-Date: Sun, 21 Aug 2011 03:27:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-20 11:26 AM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> Switch crownbay and crownbay-noemgd to the 3.0 kernel, lock it down,
> and update kernel SRCREVs.
>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 ++
>   meta-crownbay/conf/machine/crownbay.conf           |    2 ++
>   .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   15 +++++++++++++++
>   3 files changed, 19 insertions(+), 0 deletions(-)
>   create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
>
> diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
> index 0219bd1..0a82b54 100644
> --- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
> +++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
> @@ -12,6 +12,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
>   KERNEL_IMAGETYPE = "bzImage"
>
>   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> +PREFERRED_VERSION_linux-yocto = "3.0+git%"

Did you want to make all these:

PREFERRED_VERSION_linux-yocto = "3.0%"

Since that will match 3.0.1, 3.0.2 ... etc. That's what I changed
the other machines to, and was the outcome of the version number
discussion on the oe-core list.

Cheers,

Bruce

> +
>   PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
>   PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
>   PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
> diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
> index 323c8c1..b4ea4b4 100644
> --- a/meta-crownbay/conf/machine/crownbay.conf
> +++ b/meta-crownbay/conf/machine/crownbay.conf
> @@ -12,6 +12,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
>   KERNEL_IMAGETYPE = "bzImage"
>
>   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> +PREFERRED_VERSION_linux-yocto = "3.0+git%"
> +
>   PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
>   PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
>   PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
> diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
> new file mode 100644
> index 0000000..c9aef72
> --- /dev/null
> +++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
> @@ -0,0 +1,15 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +COMPATIBLE_MACHINE_crownbay = "crownbay"
> +KMACHINE_crownbay  = "yocto/standard/crownbay"
> +KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
> +
> +COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
> +KMACHINE_crownbay-noemgd  = "yocto/standard/crownbay"
> +KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
> +
> +SRCREV_machine_pn-linux-yocto_crownbay ?= "9a259cf4f6d404db2820642df755a295bbfb7fe7"
> +SRCREV_meta_pn-linux-yocto_crownbay ?= "fe8eac15e144a35a716cd32c9d2b296ecd5202ac"
> +
> +SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "9a259cf4f6d404db2820642df755a295bbfb7fe7"
> +SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "fe8eac15e144a35a716cd32c9d2b296ecd5202ac"


