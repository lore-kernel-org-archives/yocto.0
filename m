Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB615E00771
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2011 09:28:38 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7JGSWWB030337;
	Fri, 19 Aug 2011 17:28:32 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28745-06; Fri, 19 Aug 2011 17:28:28 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7JGSK0i030331
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 19 Aug 2011 17:28:22 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Liming Wang <liming.wang@windriver.com>
In-Reply-To: <1313748398-31102-1-git-send-email-liming.wang@windriver.com>
References: <1313748398-31102-1-git-send-email-liming.wang@windriver.com>
Date: Fri, 19 Aug 2011 09:28:18 -0700
Message-ID: <1313771298.13995.116.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
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
X-List-Received-Date: Fri, 19 Aug 2011 16:28:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-08-19 at 18:06 +0800, Liming Wang wrote:
> Because qemuppc has no graphic emulation, remove console=tty0
> and make it run into 3 run level. This can reduce boot time
> for qemuppc booting.
> 
> Signed-off-by: Liming Wang <liming.wang@windriver.com>
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

Can we not fix the X scripts so that if an fbdev X server is in use and
the framebuffer device node does not exist, it just exits cleanly with a
suitable message and doesn't timeout on boot?

Cheers,

Richard


