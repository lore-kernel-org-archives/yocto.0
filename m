Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68C1CE011B8
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2011 06:51:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Aug 2011 06:51:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="40048742"
Received: from unknown (HELO envy.home) ([10.255.13.233])
	by orsmga001.jf.intel.com with ESMTP; 19 Aug 2011 06:50:55 -0700
Message-ID: <4E4E6A3F.8060106@linux.intel.com>
Date: Fri, 19 Aug 2011 06:50:55 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Liming Wang <liming.wang@windriver.com>
References: <1313748398-31102-1-git-send-email-liming.wang@windriver.com>
In-Reply-To: <1313748398-31102-1-git-send-email-liming.wang@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] script/runqemu: change boot command line for qemuppc
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
X-List-Received-Date: Fri, 19 Aug 2011 13:51:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/19/2011 03:06 AM, Liming Wang wrote:
> Because qemuppc has no graphic emulation, remove console=tty0
> and make it run into 3 run level. This can reduce boot time
> for qemuppc booting.
> 
> Signed-off-by: Liming Wang <liming.wang@windriver.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  scripts/runqemu-internal |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/runqemu-internal b/scripts/runqemu-internal
> index c15632d..883fa5b 100755
> --- a/scripts/runqemu-internal
> +++ b/scripts/runqemu-internal
> @@ -384,7 +384,7 @@ if [ "$MACHINE" = "qemuppc" ]; then
>      BIOS=powerpc_rom.bin
>      QEMU_UI_OPTIONS="$QEMU_UI_OPTIONS -nographic"
>      if [ "$FSTYPE" = "ext3" -o "$FSTYPE" = "btrfs" ]; then
> -        KERNCMDLINE="root=/dev/hda rw console=ttyS0 console=tty0 $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
> +        KERNCMDLINE="root=/dev/hda rw console=ttyS0 3 $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
>          QEMUOPTIONS="$QEMU_NETWORK_CMD -cpu $CPU_SUBTYPE -M $MACHINE_SUBTYPE -bios $BIOS -hda $ROOTFS -no-reboot $QEMU_UI_OPTIONS"
>      fi
>      if [ "$FSTYPE" = "nfs" ]; then
> @@ -393,7 +393,7 @@ if [ "$MACHINE" = "qemuppc" ]; then
>              cleanup
>              return
>          fi
> -        KERNCMDLINE="root=/dev/nfs console=ttyS0 console=tty0 nfsroot=$NFS_SERVER:$NFS_DIR,$UNFS_OPTS rw $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
> +        KERNCMDLINE="root=/dev/nfs console=ttyS0 3 nfsroot=$NFS_SERVER:$NFS_DIR,$UNFS_OPTS rw $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
>          QEMUOPTIONS="$QEMU_NETWORK_CMD -cpu $CPU_SUBTYPE -M $MACHINE_SUBTYPE -bios $BIOS -no-reboot $QEMU_UI_OPTIONS"
>      fi
>  fi

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

