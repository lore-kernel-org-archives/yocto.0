Return-Path: <pw.marcus@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4DBEE00842; Wed, 30 Jul 2014 09:20:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pw.marcus[at]laposte.net)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [80.12.242.132 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.smtpout.orange.fr (smtp10.smtpout.orange.fr
	[80.12.242.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60FE4E006B7
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 09:20:15 -0700 (PDT)
Received: from [192.168.1.13] ([90.57.110.212]) by mwinf5d19 with ME
	id YgLC1o00E4azyAa03gLDbl; Wed, 30 Jul 2014 18:20:13 +0200
X-ME-Helo: [192.168.1.13]
X-ME-Auth: Z2lsZXQubWFyY0BvcmFuZ2UuZnI=
X-ME-Date: Wed, 30 Jul 2014 18:20:13 +0200
X-ME-IP: 90.57.110.212
Message-ID: <53D91CFA.7070900@laposte.net>
Date: Wed, 30 Jul 2014 18:27:38 +0200
From: Marc Gilet <pw.marcus@laposte.net>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:25.0) Gecko/20100101 Firefox/25.0 SeaMonkey/2.22.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>, yocto@yoctoproject.org
References: <53D7BA1E.2000301@laposte.net>
	<CAMKF1sqAj8WQWea8xJSkGTswN5uACafcDVfs+kvN2hckSKt+4Q@mail.gmail.com>
In-Reply-To: <CAMKF1sqAj8WQWea8xJSkGTswN5uACafcDVfs+kvN2hckSKt+4Q@mail.gmail.com>
Subject: Re: Waiting for removable media ...
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
X-List-Received-Date: Wed, 30 Jul 2014 16:20:19 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Le 30/07/2014 07:59, Khem Raj a écrit :
> On Tue, Jul 29, 2014 at 8:13 AM, Marc Gilet <pw.marcus@laposte.net> wrote:
>> Hello,
>> I'd like to use Yocto with a thinclient (Fujitsu siemens Futro B100)
>> I've created a BSP for this platform, and configured the kernel for this
>> machine.
>> I've built an initramfs and a kernel to boot the thinclient via a PXE
>> server, it boots, but the boot process
>> hangs with this massage:" Waiting for removable media ..."
>>
>> Here's what I did:
>>
>> $ git clone git://git.yoctoproject.org/poky
>> $ cd poky/
>> $ source oe-init-build-env
>> $ created the BSP with the "yocto-bsp" script
>> $ bitbake linux-yocto -c menuconfig (the kernel is configured with
>> "CONFIG_DEVTMPFS=y" and "CONFIG_DEVTMPFS_MOUNT=y")
>> $ bitbake -k core-image-minimal-initramfs
>>
>> Does anybody knows where it could come from ?
> This is in initramfs startup script see,
> recipes-core/initrdscripts/files/init-live.sh
> that script is meant for live boot from media. You have to retool it
> to fit your boot
> environment and method
>
>> Cheers
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto



I thought about modifying this file 
(/recipes-core/initrdscripts/files/init-live.sh/)
But how ?
The boot process is waiting for the rootfs on /dev/sdx...
How to change it ?

Here's the content of "init-live.sh":

-------------------------------------------------------------------------------------------------------------------------------------------------------

/#!/bin/sh

PATH=/sbin:/bin:/usr/sbin:/usr/bin

ROOT_MOUNT="/rootfs/"
ROOT_IMAGE="rootfs.img"
MOUNT="/bin/mount"
UMOUNT="/bin/umount"
ISOLINUX=""

ROOT_DISK=""

# Copied from initramfs-framework. The core of this script probably 
should be
# turned into initramfs-framework modules to reduce duplication.
udev_daemon() {
     OPTIONS="/sbin/udev/udevd /sbin/udevd /lib/udev/udevd 
/lib/systemd/systemd-udevd"

     for o in $OPTIONS; do
         if [ -x "$o" ]; then
             echo $o
             return 0
         fi
     done

     return 1
}

_UDEV_DAEMON=`udev_daemon`

early_setup() {
     mkdir -p /proc
     mkdir -p /sys
     mount -t proc proc /proc
     mount -t sysfs sysfs /sys
     mount -t devtmpfs none /dev

     # support modular kernel
     modprobe isofs 2> /dev/null

     mkdir -p /run
     mkdir -p /var/run

     $_UDEV_DAEMON --daemon
     udevadm trigger --action=add
}

read_args() {
     [ -z "$CMDLINE" ] && CMDLINE=`cat /proc/cmdline`
     for arg in $CMDLINE; do
         optarg=`expr "x$arg" : 'x[^=]*=\(.*\)'`
         case $arg in
             root=*)
                 ROOT_DEVICE=$optarg ;;
             rootimage=*)
                 ROOT_IMAGE=$optarg ;;
             rootfstype=*)
                 modprobe $optarg 2> /dev/null ;;
             LABEL=*)
                 label=$optarg ;;
             video=*)
                 video_mode=$arg ;;
             vga=*)
                 vga_mode=$arg ;;
             console=*)
                 if [ -z "${console_params}" ]; then
                     console_params=$arg
                 else
                     console_params="$console_params $arg"
                 fi ;;
             debugshell*)
                 if [ -z "$optarg" ]; then
                         shelltimeout=30
                 else
                         shelltimeout=$optarg
                 fi
         esac
     done
}

boot_live_root() {
     # Watches the udev event queue, and exits if all current events are 
handled
     udevadm settle --timeout=3 --quiet
     killall "${_UDEV_DAEMON##*/}" 2>/dev/null

     # Allow for identification of the real root even after boot
     mkdir -p  ${ROOT_MOUNT}/media/realroot
     mount -n --move "/run/media/${ROOT_DISK}" ${ROOT_MOUNT}/media/realroot

     # Move the mount points of some filesystems over to
     # the corresponding directories under the real root filesystem.
     for dir in `awk '/\/dev.* \/run\/media/{print $2}' /proc/mounts`; do
         mkdir -p  ${ROOT_MOUNT}/media/${dir##*/}
         mount -n --move $dir ${ROOT_MOUNT}/media/${dir##*/}
     done
     mount -n --move /proc ${ROOT_MOUNT}/proc
     mount -n --move /sys ${ROOT_MOUNT}/sys
     mount -n --move /dev ${ROOT_MOUNT}/dev

     cd $ROOT_MOUNT

     # busybox switch_root supports -c option
     exec switch_root -c /dev/console $ROOT_MOUNT /sbin/init $CMDLINE ||
         fatal "Couldn't switch_root, dropping to shell"
}

fatal() {
     echo $1 >$CONSOLE
     echo >$CONSOLE
     exec sh
}

early_setup

[ -z "$CONSOLE" ] && CONSOLE="/dev/console"

read_args

echo "Waiting for removable media..."
C=0
while true
do
   for i in `ls /run/media 2>/dev/null`; do
       if [ -f /run/media/$i/$ROOT_IMAGE ] ; then
         found="yes"
         ROOT_DISK="$i"
         break
       elif [ -f /run/media/$i/isolinux/$ROOT_IMAGE ]; then
         found="yes"
         ISOLINUX="isolinux"
         ROOT_DISK="$i"
         break
       fi
   done
   if [ "$found" = "yes" ]; then
       break;
   fi
   # don't wait for more than $shelltimeout seconds, if it's set
   if [ -n "$shelltimeout" ]; then
       echo -n " " $(( $shelltimeout - $C ))
       if [ $C -ge $shelltimeout ]; then
            echo "..."
        echo "Mounted filesystems"
            mount | grep media
            echo "Available block devices"
            cat /proc/partitions
            fatal "Cannot find $ROOT_IMAGE file in /run/media/* , 
dropping to a shell "
       fi
       C=$(( C + 1 ))
   fi
   sleep 1
done

# Try to mount the root image read-write and then boot it up.
# This function distinguishes between a read-only image and a read-write 
image.
# In the former case (typically an iso), it tries to make a union mount 
if possible.
# In the latter case, the root image could be mounted and then directly 
booted up.
mount_and_boot() {
     mkdir $ROOT_MOUNT
     mknod /dev/loop0 b 7 0 2>/dev/null

     if ! mount -o rw,loop,noatime,nodiratime 
/run/media/$ROOT_DISK/$ISOLINUX/$ROOT_IMAGE $ROOT_MOUNT ; then
     fatal "Could not mount rootfs image"
     fi

     if touch $ROOT_MOUNT/bin 2>/dev/null; then
     # The root image is read-write, directly boot it up.
     boot_live_root
     fi

     # determine which unification filesystem to use
     union_fs_type=""
     if grep -q -w "overlayfs" /proc/filesystems; then
     union_fs_type="overlayfs"
     elif grep -q -w "aufs" /proc/filesystems; then
     union_fs_type="aufs"
     else
     union_fs_type=""
     fi

     # make a union mount if possible
     case $union_fs_type in
     "overlayfs")
         mkdir -p /rootfs.ro /rootfs.rw
         if ! mount -n --move $ROOT_MOUNT /rootfs.ro; then
         rm -rf /rootfs.ro /rootfs.rw
         fatal "Could not move rootfs mount point"
         else
         mount -t tmpfs -o rw,noatime,mode=755 tmpfs /rootfs.rw
         mount -t overlayfs -o "lowerdir=/rootfs.ro,upperdir=/rootfs.rw" 
overlayfs $ROOT_MOUNT
         mkdir -p $ROOT_MOUNT/rootfs.ro $ROOT_MOUNT/rootfs.rw
         mount --move /rootfs.ro $ROOT_MOUNT/rootfs.ro
         mount --move /rootfs.rw $ROOT_MOUNT/rootfs.rw
         fi
         ;;
     "aufs")
         mkdir -p /rootfs.ro /rootfs.rw
         if ! mount -n --move $ROOT_MOUNT /rootfs.ro; then
         rm -rf /rootfs.ro /rootfs.rw
         fatal "Could not move rootfs mount point"
         else
         mount -t tmpfs -o rw,noatime,mode=755 tmpfs /rootfs.rw
         mount -t aufs -o "dirs=/rootfs.rw=rw:/rootfs.ro=ro" aufs 
$ROOT_MOUNT
         mkdir -p $ROOT_MOUNT/rootfs.ro $ROOT_MOUNT/rootfs.rw
         mount --move /rootfs.ro $ROOT_MOUNT/rootfs.ro
         mount --move /rootfs.rw $ROOT_MOUNT/rootfs.rw
         fi
         ;;
     "")
         mount -t tmpfs -o rw,noatime,mode=755 tmpfs $ROOT_MOUNT/media
         ;;
     esac

     # boot the image
     boot_live_root
}

case $label in
     boot)
     mount_and_boot
     ;;
     install|install-efi)
     if [ -f /run/media/$i/$ISOLINUX/$ROOT_IMAGE ] ; then
         ./$label.sh $i/$ISOLINUX $ROOT_IMAGE $video_mode $vga_mode 
$console_params
     else
         fatal "Could not find $label script"
     fi

     # If we're getting here, we failed...
     fatal "Installation image failed"
     ;;
     *)
     # Not sure what boot label is provided.  Try to boot to avoid 
locking up.
     mount_and_boot
     ;;
esac

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
/
/Thank's for help
Cheers

