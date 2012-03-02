Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29460E003E4
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 08:36:01 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Mar 2012 08:36:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="113876603"
Received: from unknown (HELO envy.home) ([10.255.15.86])
	by azsmga001.ch.intel.com with ESMTP; 02 Mar 2012 08:36:00 -0800
Message-ID: <4F50F6C4.2050007@linux.intel.com>
Date: Fri, 02 Mar 2012 08:35:16 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1330663414.git.tom.zanussi@intel.com>
	<873e25e86273c9263e32c02c296d96d06230e70e.1330663414.git.tom.zanussi@intel.com>
In-Reply-To: <873e25e86273c9263e32c02c296d96d06230e70e.1330663414.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/8] yocto-bsp: add BSP template files
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
X-List-Received-Date: Fri, 02 Mar 2012 16:36:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/01/2012 11:01 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> BSP template files for all supported Yocto architectures, plus qemu
> versions of the same.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  .../target/arch/arm/conf/machine/{{=machine}}.conf |   87 +++++
>  .../{{ if xserver == \"y\": }} xorg.conf"          |   34 ++
>  ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |    3 +
>  .../linux/files/{{=machine}}-non_hardware.cfg      |   30 ++
>  .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
>  .../linux/files/{{=machine}}-standard.scc          |    8 +
>  .../recipes-kernel/linux/files/{{=machine}}.cfg    |  336 ++++++++++++++++++++
>  .../recipes-kernel/linux/files/{{=machine}}.scc    |    7 +
>  .../arm/recipes-kernel/linux/kernel-list.noinstall |    3 +
>  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   34 ++
>  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   34 ++
>  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   36 ++
>  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 ++
>  .../bsp/substrate/target/arch/common/COPYING.MIT   |   17 +
>  .../lib/bsp/substrate/target/arch/common/README    |  118 +++++++
>  .../substrate/target/arch/common/README.sources    |   17 +
>  .../substrate/target/arch/common/conf/layer.conf   |   10 +
>  .../formfactor/formfactor/{{=machine}}/machconfig  |    5 +
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
>  .../tasks/task-core-tools-profile.bbappend         |    2 +
>  .../arch/i386/conf/machine/{{=machine}}.conf       |   44 +++
>  ...erver_choice == \"xserver_emgd\": }} xorg.conf" |   48 +++
>  ...erver_choice == \"xserver_i915\": }} xorg.conf" |   26 ++
>  ...erver_choice == \"xserver_vesa\": }} xorg.conf" |   26 ++
>  ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |    3 +
>  .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
>  .../linux/files/{{=machine}}-standard.scc          |    8 +
>  .../recipes-kernel/linux/files/{{=machine}}.cfg    |   54 ++++
>  .../recipes-kernel/linux/files/{{=machine}}.scc    |   30 ++
>  .../recipes-kernel/linux/kernel-list.noinstall     |    3 +
>  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   34 ++
>  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   34 ++
>  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   36 ++
>  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 ++
>  .../arch/mips/conf/machine/{{=machine}}.conf       |   28 ++
>  .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
>  .../linux/files/{{=machine}}-standard.scc          |    8 +
>  .../recipes-kernel/linux/files/{{=machine}}.cfg    |    1 +
>  .../recipes-kernel/linux/files/{{=machine}}.scc    |    8 +
>  .../recipes-kernel/linux/kernel-list.noinstall     |    3 +
>  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   34 ++
>  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   34 ++
>  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   36 ++
>  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 ++
>  .../arch/powerpc/conf/machine/{{=machine}}.conf    |   53 +++
>  .../recipes-kernel/linux/files/user-config.cfg     |    4 +
>  .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
>  .../linux/files/{{=machine}}-standard.scc          |    8 +
>  .../recipes-kernel/linux/files/{{=machine}}.cfg    |  163 ++++++++++
>  .../recipes-kernel/linux/files/{{=machine}}.scc    |   11 +
>  .../recipes-kernel/linux/kernel-list.noinstall     |    3 +
>  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   34 ++
>  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   34 ++
>  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   36 ++
>  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 ++
>  .../arch/qemu/conf/machine/{{=machine}}.conf       |   59 ++++
>  .../xserver-xf86-config/{{=machine}}/xorg.conf     |   69 ++++
>  ..."x86_64\": }} xserver-xf86-config_0.1.bbappend" |    2 +
>  .../recipes-kernel/linux/files/user-config.cfg     |    4 +
>  .../linux/files/{{=machine}}-preempt-rt.scc        |   30 ++
>  .../linux/files/{{=machine}}-standard.scc          |   30 ++
>  .../recipes-kernel/linux/files/{{=machine}}.scc    |    6 +
>  .../recipes-kernel/linux/kernel-list.noinstall     |    3 +
>  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   32 ++
>  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   32 ++
>  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   34 ++
>  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 ++
>  .../arch/x86_64/conf/machine/{{=machine}}.conf     |   29 ++
>  ...erver_choice == \"xserver_i915\": }} xorg.conf" |   26 ++
>  ...erver_choice == \"xserver_vesa\": }} xorg.conf" |   26 ++
>  ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |    3 +
>  .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
>  .../linux/files/{{=machine}}-standard.scc          |    8 +
>  .../recipes-kernel/linux/files/{{=machine}}.cfg    |   47 +++
>  .../recipes-kernel/linux/files/{{=machine}}.scc    |   17 +
>  .../recipes-kernel/linux/kernel-list.noinstall     |    3 +
>  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   34 ++
>  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   34 ++
>  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   36 ++
>  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 ++
>  80 files changed, 2436 insertions(+), 0 deletions(-)


WOW! I suppose this is the initial patch, so a files are going in whole
- but WOW! Are all of these created by hand? I'm thinking about
supporting this going forward, will we have to create 10+ new files for
every kernel release manually?

A few comments inline below...

...

> diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg
> new file mode 100644
> index 0000000..361343b
> --- /dev/null
> +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg
> @@ -0,0 +1,30 @@
> +#
> +# Miscellaneous filesystems
> +#
> +CONFIG_NFS_DEF_FILE_IO_SIZE=1024
> +
> +#
> +# Multiple Device Support
> +#
> +# CONFIG_MD is not set
> +
> +# Kernel Features
> +#
> +CONFIG_NO_HZ=y
> +
> +#
> +# CPUIdle
> +#
> +CONFIG_CPU_IDLE=y
> +CONFIG_CPU_IDLE_GOV_LADDER=y
> +CONFIG_CPU_IDLE_GOV_MENU=y
> +
> +#
> +# Kernel hacking
> +#
> +CONFIG_DEBUG_FS=y
> +
> +#
> +# Power management options
> +#
> +CONFIG_PM_DEBUG=y


This seems odd to be defined in the bsp tool. This appears to be all
policy related, which should really be defined by the ktype scc file in
the linux-yocto meta branch.

> diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg
> new file mode 100644
> index 0000000..994e034
> --- /dev/null
> +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg
> @@ -0,0 +1,336 @@
> +#
> +# System Type
> +#
> +CONFIG_ARCH_OMAP=y
> +CONFIG_HAVE_PWM=y
> +CONFIG_ARM_L1_CACHE_SHIFT_6=y
> +

...

Again, default settings for an architecture the linux-yocto meta data
already supports. We should be able to specify this with scc inclusions
right?

My concern here is having to manage "policy" and "defaults" in both the
linux-yocto meta data AND in the yocto-bsp template files.


Comments would be basically the same from here on down...

<snip>

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

