Return-Path: <scott.a.garman@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85596E00559
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 21:55:19 -0800 (PST)
Received: from mail-pb0-f69.google.com ([209.85.160.69])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 11 Dec 2012 21:55:10 -0800
Received: by mail-pb0-f69.google.com with SMTP id un15so338380pbc.4
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 21:55:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=ZsJPR/e+Mzp5JoRhQzUtfEyC5WJ4ONlMQGCwdzM/Kg0=;
	b=IOHsbLT5Ag4rZxC/ee4f8kfWqu4pWQaAyUicXfLkiepNE+MwamzR+0DnB0xNVnp2jH
	BuWaYo1OlQ+beO8h9yHgQHYYA4CtaoTIfzCxXBf9S1sUddzgNp8xrKHMvq2LnI9F7H40
	8ci2IVHjICy0LB2yJTozq7DnYrTpZJlx0PeXPmxYH4bj3OfhAthZpWG0rh8eL6ZbGslG
	ChmU+QN4mDUbLneROeV9tDQYvXeKrtFyqhrSoRZRHdt93FDC3Vm3OSpV/99ZYeSP4o5Z
	aJoHYDU9f5pWhwu7Lq5ykji/E6yP0zNgtWR2a0QtN0lCW8fUcHbiyam7ylHrDIapENWz
	V9Ig==
Received: by 10.68.213.6 with SMTP id no6mr2116794pbc.113.1355291710040;
	Tue, 11 Dec 2012 21:55:10 -0800 (PST)
Received: by 10.68.213.6 with SMTP id no6mr2116784pbc.113.1355291709931;
	Tue, 11 Dec 2012 21:55:09 -0800 (PST)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id ou3sm8241525pbb.46.2012.12.11.21.55.08
	(version=SSLv3 cipher=OTHER); Tue, 11 Dec 2012 21:55:09 -0800 (PST)
Message-ID: <50C81C46.1010802@intel.com>
Date: Tue, 11 Dec 2012 21:55:18 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1355190925-2727-1-git-send-email-twoerner@gmail.com>
In-Reply-To: <1355190925-2727-1-git-send-email-twoerner@gmail.com>
X-Gm-Message-State: ALoCoQnGSJKfb96tfw9xBZYiO8a8p7YEk6djUWaJ+MQA66EX6WfLk5BiErcZstC8KlYzSPPnNH0MUu10Cmo1FZP69rDmVYzs0MuUFYYvut5rbCPNYcsNY5LWz4CAb2eQoqlQVuEMRnW6Bewb4EJG3uAnIXHNLVX7HQ==
Cc: Saul Wold <saul.wold@intel.com>
Subject: Re: [PATCH runqemu] runqemu: add support for FSTYPE=vmdk
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
X-List-Received-Date: Wed, 12 Dec 2012 05:55:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/10/2012 05:55 PM, Trevor Woerner wrote:
> Allow vmdk images to be run through the 'runqemu' facility.

This looks ok without having tested it personally. Could you just add a 
signed-off-by line to the commit?

Thanks for this,

Scott

> ---
>   scripts/runqemu          | 39 +++++++++++++++++++++++++++++----------
>   scripts/runqemu-internal | 20 ++++++++++++++++----
>   2 files changed, 45 insertions(+), 14 deletions(-)
>
> diff --git a/scripts/runqemu b/scripts/runqemu
> index fb7ac56..190e3b4 100755
> --- a/scripts/runqemu
> +++ b/scripts/runqemu
> @@ -27,6 +27,7 @@ usage() {
>       echo "  ROOTFS - the rootfs image file or nfsroot directory to use"
>       echo "  MACHINE - the machine name (optional, autodetected from KERNEL filename if unspecified)"
>       echo "  RAMFS - boot a ramfs-based image"
> +    echo "  VM - boot a vmdk image"
>       echo "  Simplified QEMU command-line options can be passed with:"
>       echo "    nographic - disables video console"
>       echo "    serial - enables a serial console on /dev/ttyS0"
> @@ -41,6 +42,7 @@ usage() {
>       echo "  $MYNAME qemux86 ramfs"
>       echo "  $MYNAME qemux86 qemuparams=\"-m 256\""
>       echo "  $MYNAME qemux86 bootparams=\"psplash=false\""
> +    echo "  $MYNAME path/to/<image>-<machine>.vmdk"
>       exit 1
>   }
>
> @@ -56,6 +58,7 @@ error() {
>   MACHINE=${MACHINE:=""}
>   KERNEL=${KERNEL:=""}
>   ROOTFS=${ROOTFS:=""}
> +VM=${VM:=""}
>   FSTYPE=""
>   LAZY_ROOTFS=""
>   SCRIPT_QEMU_OPT=""
> @@ -84,6 +87,10 @@ process_filename() {
>   		    error "conflicting FSTYPE types [$FSTYPE] and [$EXT]"
>   		fi
>   		;;
> +	/vmdk/)
> +		FSTYPE=$EXT
> +		VM=$filename
> +		;;
>   	*)
>   		error "unknown file arg [$filename]"
>   		;;
> @@ -192,19 +199,27 @@ elif [ ! -w /dev/net/tun ] ; then
>   fi
>
>   # Report errors for missing combinations of options
> -if [ -z "$MACHINE" -a -z "$KERNEL" ]; then
> -    error "you must specify at least a MACHINE or KERNEL argument"
> +if [ -z "$MACHINE" -a -z "$KERNEL" -a -z "$VM" ]; then
> +    error "you must specify at least a MACHINE, VM, or KERNEL argument"
>   fi
>   if [ "$FSTYPE" = "nfs" -a -z "$ROOTFS" ]; then
>       error "NFS booting without an explicit ROOTFS path is not yet supported"
>   fi
>
>   if [ -z "$MACHINE" ]; then
> -    MACHINE=`basename $KERNEL | sed 's/.*\(qemux86-64\|qemux86\|qemuarm\|qemumips64\|qemumips\|qemuppc\|qemush4\).*/\1/'`
> -    if [ -z "$MACHINE" ]; then
> -        error "Unable to set MACHINE from kernel filename [$KERNEL]"
> +    if [ "x$FSTYPE" = "xvmdk" ]; then
> +        MACHINE=`basename $VM | sed 's/.*\(qemux86-64\|qemux86\|qemuarm\|qemumips64\|qemumips\|qemuppc\|qemush4\).*/\1/'`
> +        if [ -z "$MACHINE" ]; then
> +            error "Unable to set MACHINE from vmdk filename [$VM]"
> +        fi
> +        echo "Set MACHINE to [$MACHINE] based on vmdk [$VM]"
> +    else
> +        MACHINE=`basename $KERNEL | sed 's/.*\(qemux86-64\|qemux86\|qemuarm\|qemumips64\|qemumips\|qemuppc\|qemush4\).*/\1/'`
> +        if [ -z "$MACHINE" ]; then
> +            error "Unable to set MACHINE from kernel filename [$KERNEL]"
> +        fi
> +        echo "Set MACHINE to [$MACHINE] based on kernel [$KERNEL]"
>       fi
> -    echo "Set MACHINE to [$MACHINE] based on kernel [$KERNEL]"
>   fi
>
>   YOCTO_KVM_WIKI="https://wiki.yoctoproject.org/wiki/How_to_enable_KVM_for_Poky_qemu"
> @@ -366,7 +381,7 @@ if [ -e "$ROOTFS" -a -z "$FSTYPE" ]; then
>       fi
>   fi
>
> -if [ -z "$KERNEL" ]; then
> +if [ -z "$KERNEL" -a "x$FSTYPE" != "xvmdk" ]; then
>       setup_tmpdir
>       eval kernel_file=\$${machine2}_DEFAULT_KERNEL
>       KERNEL=$OE_TMPDIR/deploy/images/$kernel_file
> @@ -395,7 +410,7 @@ if [ "$LAZY_ROOTFS" = "true" ]; then
>       ROOTFS=$OE_TMPDIR/deploy/images/$ROOTFS-$MACHINE.$FSTYPE
>   fi
>
> -if [ -z "$ROOTFS" ]; then
> +if [ -z "$ROOTFS" -a "x$FSTYPE" != "xvmdk" ]; then
>       setup_tmpdir
>       T=$OE_TMPDIR/deploy/images
>       eval rootfs_list=\$${machine2}_DEFAULT_ROOTFS
> @@ -409,8 +424,12 @@ fi
>
>   echo ""
>   echo "Continuing with the following parameters:"
> -echo "KERNEL: [$KERNEL]"
> -echo "ROOTFS: [$ROOTFS]"
> +if [ "x$FSTYPE" != "xvmdk" ]; then
> +    echo "KERNEL: [$KERNEL]"
> +    echo "ROOTFS: [$ROOTFS]"
> +else
> +    echo "VMDK:   [$VM]"
> +fi
>   echo "FSTYPE: [$FSTYPE]"
>
>   setup_sysroot
> diff --git a/scripts/runqemu-internal b/scripts/runqemu-internal
> index 7ca00f8..fd1304e 100755
> --- a/scripts/runqemu-internal
> +++ b/scripts/runqemu-internal
> @@ -260,13 +260,13 @@ case "$MACHINE" in
>       ;;
>   esac
>
> -if [ ! -f "$KERNEL" ]; then
> +if [ ! -f "$KERNEL" -a "x$FSTYPE" != "xvmdk" ]; then
>       echo "Error: Kernel image file $KERNEL doesn't exist"
>       cleanup
>       return
>   fi
>
> -if [ "$FSTYPE" != "nfs" -a ! -f "$ROOTFS" ]; then
> +if [ "$FSTYPE" != "nfs" -a "$FSTYPE" != "vmdk" -a ! -f "$ROOTFS" ]; then
>       echo "Error: Image file $ROOTFS doesn't exist"
>       cleanup
>       return
> @@ -341,6 +341,9 @@ if [ "$MACHINE" = "qemux86" ]; then
>           KERNCMDLINE="root=/dev/nfs nfsroot=$NFS_SERVER:$NFS_DIR,$UNFS_OPTS rw $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
>           QEMUOPTIONS="$QEMU_NETWORK_CMD $QEMU_UI_OPTIONS"
>       fi
> +    if [ "$FSTYPE" = "vmdk" ]; then
> +        QEMUOPTIONS="$QEMU_NETWORK_CMD $QEMU_UI_OPTIONS"
> +    fi
>       # Currently oprofile's event based interrupt mode doesn't work(Bug #828) in
>       # qemux86 and qemux86-64. We can use timer interrupt mode for now.
>       KERNCMDLINE="$KERNCMDLINE oprofile.timer=1"
> @@ -365,6 +368,9 @@ if [ "$MACHINE" = "qemux86-64" ]; then
>           KERNCMDLINE="root=/dev/nfs nfsroot=$NFS_SERVER:$NFS_DIR,$UNFS_OPTS rw $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
>           QEMUOPTIONS="$QEMU_NETWORK_CMD $QEMU_UI_OPTIONS"
>       fi
> +    if [ "$FSTYPE" = "vmdk" ]; then
> +        QEMUOPTIONS="$QEMU_NETWORK_CMD $QEMU_UI_OPTIONS"
> +    fi
>       # Currently oprofile's event based interrupt mode doesn't work(Bug #828) in
>       # qemux86 and qemux86-64. We can use timer interrupt mode for now.
>       KERNCMDLINE="$KERNCMDLINE oprofile.timer=1"
> @@ -560,8 +566,14 @@ fi
>
>   echo "Running $QEMU..."
>   # -no-reboot is a mandatory option - see bug #100
> -echo $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append '"'$KERNCMDLINE $SCRIPT_KERNEL_OPT'"'
> -LD_PRELOAD="$GL_LD_PRELOAD" $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT"
> +if [ "$FSTYPE" = "vmdk" ]; then
> +    echo $QEMUBIN $VM $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT
> +    LD_PRELOAD="$GL_LD_PRELOAD" $QEMUBIN $VM $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT
> +else
> +    echo $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append '"'$KERNCMDLINE $SCRIPT_KERNEL_OPT'"'
> +    LD_PRELOAD="$GL_LD_PRELOAD" $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT"
> +fi
> +
>
>
>   cleanup
>


-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

