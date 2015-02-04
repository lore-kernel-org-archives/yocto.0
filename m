Return-Path: <pcjegan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08A1AE00827; Wed,  4 Feb 2015 06:43:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pcjegan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF8EDE00753
	for <yocto@yoctoproject.org>; Wed,  4 Feb 2015 06:43:49 -0800 (PST)
Received: by mail-wg0-f42.google.com with SMTP id x13so2162706wgg.1
	for <yocto@yoctoproject.org>; Wed, 04 Feb 2015 06:43:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=ZIlQwb+cjY+cHYvSbo9JmnFXc41GSdNZlUJjZAnx2iE=;
	b=pR4dXH/wuqlRFBa9YGhgiVJAU3iZJSp5ff66ytQb6aBNMHM7WjPm5LEeGSIbJ+CfGr
	QELOL7lBQeU/Oy7HLXnbH+oHHlMnvxBbPnKxg2JMtWVfpXfk/dyeVjIe/XzEOxyvZGnP
	HisBLO+1ESxVtBVPnJBn+kKdUCvnpQRwiXNkzdJB2RDheny8cbMIKsMW5Ky7X6c+JOA8
	GhPrf1CMOop7qrxJ0BLHz2MMemScxZ5FrjIwGb3Nn2XEas/x7TyoyUM1d0/xWNHGbXRc
	0erJqAv4aWhdlAjmeuKVRVndU4TgaIvr9ATkJ3+wnpTUxSQS0K4LZwjRjgtwqGRHXeys
	3xdQ==
X-Received: by 10.194.63.206 with SMTP id i14mr67357279wjs.107.1423061028713; 
	Wed, 04 Feb 2015 06:43:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.180.70.193 with HTTP; Wed, 4 Feb 2015 06:43:28 -0800 (PST)
In-Reply-To: <CAM8Mu=VsWjEem1ZJNkZEu45zmchhF_agbpsg1ufVSRUiv4KkUQ@mail.gmail.com>
References: <CAM8Mu=VKpfu9jHkgNn+5O7LntEhzKu+vKL6mB73VC92Aywo9mg@mail.gmail.com>
	<CAAA4K6LMn7wPCrzBvLwJHryh9wze6RD7EN6zZ0Wx7mCuZmDRnw@mail.gmail.com>
	<CAM8Mu=VsWjEem1ZJNkZEu45zmchhF_agbpsg1ufVSRUiv4KkUQ@mail.gmail.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Wed, 4 Feb 2015 20:13:28 +0530
Message-ID: <CAAA4K6LznRUcYfQvhKSECLbotPkSzoUiELhHoxgk_UPrzDfmMw@mail.gmail.com>
To: Pavan Kumar B <u2bpavankumar@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: patch_do_patch error for local kernel rep..,
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
X-List-Received-Date: Wed, 04 Feb 2015 14:43:53 -0000
Content-Type: multipart/alternative; boundary=047d7b86d6ca1c3e41050e443726

--047d7b86d6ca1c3e41050e443726
Content-Type: text/plain; charset=UTF-8

I think you should refer or ask here for better replies,

https://lists.yoctoproject.org/listinfo/meta-freescale

which is for freescale specific ML.

Also for the error, I guess it needs to be patched, I just googled it and
found this,

https://github.com/ralix-dev/PKGBUILDs/tree/master/core/linux-utilite-fsl

Hope it helps,

JC

On Wed, Feb 4, 2015 at 7:38 PM, Pavan Kumar B <u2bpavankumar@gmail.com>
wrote:

> Hi,
>
> Now I am getting the following error
>
> Any idea like "PAD_CTL_DSE_40ohm" undeclared corresponds to ??
>
> Please do guide me
>
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 4 uImage CC=arm-poky-linux-gnueabi-gcc
> -mno-thumb-interwork -marm LD=arm-poky-linux-gnueabi-ld.bfd
> LOADADDR=0x10008000
> |   CHK     include/linux/version.h
> |   CHK     include/generated/utsrelease.h
> | make[1]: `include/generated/mach-types.h' is up to date.
> |   CALL    scripts/checksyscalls.sh
> |   CHK     include/generated/compile.h
> |   CC      arch/arm/mach-mx6/usb_h2.o
> |   CC      arch/arm/plat-mxc/devices/platform-imx-dma.o
> | In file included from arch/arm/plat-mxc/include/mach/iomux-mx6q.h:25:0,
> |                  from arch/arm/mach-mx6/usb_h2.c:32:
> | arch/arm/mach-mx6/usb_h2.c: In function 'hsic_start':
> | arch/arm/plat-mxc/include/mach/iomux-mx6q.h:83:5: error:
> 'PAD_CTL_DSE_40ohm' undeclared (first use in this function)
> |      PAD_CTL_DSE_40ohm)
> |      ^
> | arch/arm/plat-mxc/include/mach/iomux-v3.h:74:44: note: in definition of
> macro 'MUX_PAD_CTRL'
> |  #define MUX_PAD_CTRL(x)  ((iomux_v3_cfg_t)(x) << MUX_PAD_CTRL_SHIFT)
> |                                             ^
> | arch/arm/plat-mxc/include/mach/iomux-mx6q.h:3828:17: note: in expansion
> of macro 'MX6Q_USB_HSIC_PAD_CTRL'
> |     MUX_PAD_CTRL(MX6Q_USB_HSIC_PAD_CTRL | PAD_CTL_PUS_47K_UP)\
> |                  ^
> | arch/arm/mach-mx6/usb_h2.c:180:5: note: in expansion of macro
> 'MX6Q_PAD_RGMII_TX_CTL__USBOH3_H2_STROBE_START'
> |      MX6Q_PAD_RGMII_TX_CTL__USBOH3_H2_STROBE_START);
> |      ^
> | arch/arm/plat-mxc/include/mach/iomux-mx6q.h:83:5: note: each undeclared
> identifier is reported only once for each function it appears in
> |      PAD_CTL_DSE_40ohm)
> |      ^
> | arch/arm/plat-mxc/include/mach/iomux-v3.h:74:44: note: in definition of
> macro 'MUX_PAD_CTRL'
> |  #define MUX_PAD_CTRL(x)  ((iomux_v3_cfg_t)(x) << MUX_PAD_CTRL_SHIFT)
> |                                             ^
> | arch/arm/plat-mxc/include/mach/iomux-mx6q.h:3828:17: note: in expansion
> of macro 'MX6Q_USB_HSIC_PAD_CTRL'
> |     MUX_PAD_CTRL(MX6Q_USB_HSIC_PAD_CTRL | PAD_CTL_PUS_47K_UP)\
> |                  ^
> | arch/arm/mach-mx6/usb_h2.c:180:5: note: in expansion of macro
> 'MX6Q_PAD_RGMII_TX_CTL__USBOH3_H2_STROBE_START'
> |      MX6Q_PAD_RGMII_TX_CTL__USBOH3_H2_STROBE_START);
> |      ^
> | make[1]: *** [arch/arm/mach-mx6/usb_h2.o] Error 1
> | make: *** [arch/arm/mach-mx6] Error 2
> | make: *** Waiting for unfinished jobs....
> |   CC      fs/open.o
> | arch/arm/plat-mxc/devices/platform-imx-dma.c: In function
> 'imxXX_add_imx_dma':
> | arch/arm/plat-mxc/devices/platform-imx-dma.c:265:2: error:
> 'imx6q_imx_sdma_data' undeclared (first use in this function)
> |   imx6q_imx_sdma_data.pdata.to_version = to_version;
> |   ^
> | arch/arm/plat-mxc/devices/platform-imx-dma.c:265:2: note: each
> undeclared identifier is reported only once for each function it appears in
> | arch/arm/plat-mxc/devices/platform-imx-dma.c:268:8: error:
> 'addr_imx6q_to1' undeclared (first use in this function)
> |        &addr_imx6q_to1;
> |         ^
> |   CC      fs/read_write.o
> | make[2]: *** [arch/arm/plat-mxc/devices/platform-imx-dma.o] Error 1
> | make[1]: *** [arch/arm/plat-mxc/devices] Error 2
> | make: *** [arch/arm/plat-mxc] Error 2
> |   CC      fs/file_table.o
> |   CC      fs/super.o
> |   CC      fs/char_dev.o
> |   CC      fs/stat.o
> |   CC      fs/exec.o
> |   CC      fs/pipe.o
> |   CC      fs/namei.o
> |   CC      fs/fcntl.o
> |   CC      fs/ioctl.o
> |   CC      fs/readdir.o
> |   CC      fs/select.o
> |   CC      fs/fifo.o
> |   CC      fs/dcache.o
> |   CC      fs/inode.o
> |   CC      fs/attr.o
> |   CC      fs/bad_inode.o
> |   CC      fs/file.o
> |   CC      fs/filesystems.o
> |   CC      fs/namespace.o
> |   CC      fs/seq_file.o
> |   CC      fs/xattr.o
> |   CC      fs/libfs.o
> |   CC      fs/fs-writeback.o
> |   CC      fs/pnode.o
> |   CC      fs/drop_caches.o
> |   CC      fs/splice.o
> |   CC      fs/sync.o
> |   CC      fs/utimes.o
> |   CC      fs/stack.o
> |   CC      fs/fs_struct.o
> |   CC      fs/statfs.o
> |   CC      fs/buffer.o
> |   CC      fs/bio.o
> |   CC      fs/block_dev.o
> |   CC      fs/direct-io.o
> |   CC      fs/mpage.o
> |   CC      fs/ioprio.o
> |   CC      fs/devpts/inode.o
> |   LD      fs/devpts/devpts.o
> |   LD      fs/devpts/built-in.o
> |   CC      fs/ext4/balloc.o
> |   CC      fs/fat/cache.o
> |   CC      fs/jbd2/transaction.o
> |   CC      fs/fuse/dev.o
> |   CC      fs/fat/dir.o
> |   CC      fs/ext4/bitmap.o
> |   CC      fs/ext4/dir.o
> |   CC      fs/jbd2/commit.o
> |   CC      fs/ext4/file.o
> |   CC      fs/fuse/dir.o
> |   CC      fs/fat/fatent.o
> |   CC      fs/ext4/fsync.o
> |   CC      fs/jbd2/recovery.o
> | In file included from fs/ext4/fsync.c:33:0:
> | fs/ext4/ext4_jbd2.h: In function 'ext4_inode_journal_mode':
> | fs/ext4/ext4_jbd2.h:288:1: warning: control reaches end of non-void
> function [-Wreturn-type]
> |  }
> |  ^
> |   CC      fs/ext4/ialloc.o
> |   CC      fs/fat/file.o
> |   CC      fs/fuse/file.o
> |   CC      fs/jbd2/checkpoint.o
> | In file included from include/linux/mm.h:11:0,
> |                  from fs/fuse/fuse_i.h:18,
> |                  from fs/fuse/file.c:9:
> | fs/fuse/file.c: In function 'fuse_file_poll':
> | include/linux/rbtree.h:171:26: warning: 'parent' may be used
> uninitialized in this function [-Wmaybe-uninitialized]
> |   node->rb_parent_color = (unsigned long )parent;
> |                           ^
> | fs/fuse/file.c:2052:27: note: 'parent' was declared here
> |    struct rb_node **link, *parent;
> |                            ^
> |   CC      fs/fat/inode.o
> |   CC      fs/jbd2/revoke.o
> |   CC      fs/ext4/inode.o
> |   CC      fs/jbd2/journal.o
> | In file included from fs/ext4/inode.c:46:0:
> | fs/ext4/ext4_jbd2.h: In function 'ext4_inode_journal_mode':
> | fs/ext4/ext4_jbd2.h:288:1: warning: control reaches end of non-void
> function [-Wreturn-type]
> |  }
> |  ^
> |   CC      fs/fuse/inode.o
> |   CC      fs/fat/misc.o
> |   CC      fs/fat/namei_vfat.o
> |   CC      fs/fuse/control.o
> |   LD      fs/fuse/fuse.o
> |   LD      fs/jbd2/jbd2.o
> |   LD      fs/fuse/built-in.o
> |   LD      fs/jbd2/built-in.o
> |   CC      fs/nls/nls_base.o
> |   CC      fs/notify/fsnotify.o
> |   LD      fs/fat/fat.o
> |   LD      fs/fat/vfat.o
> |   LD      fs/fat/built-in.o
> |   CC      fs/partitions/check.o
> |   CC      fs/nls/nls_cp437.o
> |   CC      fs/notify/notification.o
> |   CC      fs/ext4/page-io.o
> |   CC      fs/nls/nls_ascii.o
> |   CC      fs/nls/nls_iso8859-1.o
> |   CC      fs/notify/group.o
> |   CC      fs/ext4/ioctl.o
> |   CC      fs/nls/nls_utf8.o
> |   LD      fs/nls/built-in.o
> |   CC      fs/partitions/msdos.o
> |   CC      fs/proc/mmu.o
> |   CC      fs/notify/inode_mark.o
> |   CC      fs/ext4/namei.o
> |   CC      fs/proc/task_mmu.o
> |   CC      fs/partitions/efi.o
> |   CC      fs/notify/mark.o
> |   CC      fs/proc/inode.o
> |   LD      fs/partitions/built-in.o
> |   CC      fs/notify/vfsmount_mark.o
> |   LD      fs/quota/built-in.o
> |   CC      fs/proc/root.o
> |   CC      fs/ramfs/inode.o
> |   LD      fs/notify/dnotify/built-in.o
> |   LD      fs/notify/fanotify/built-in.o
> |   CC      fs/notify/inotify/inotify_fsnotify.o
> |   CC      fs/proc/base.o
> |   CC      fs/ramfs/file-mmu.o
> |   CC      fs/ext4/super.o
> |   LD      fs/ramfs/ramfs.o
> |   LD      fs/ramfs/built-in.o
> |   CC      fs/notify/inotify/inotify_user.o
> |   CC      fs/sysfs/inode.o
> |   CC      fs/sysfs/file.o
> |   LD      fs/notify/inotify/built-in.o
> |   LD      fs/notify/built-in.o
> |   CC      fs/eventpoll.o
> |   CC      fs/proc/generic.o
> |   CC      fs/sysfs/dir.o
> | fs/sysfs/dir.c:414:14: warning: 'sysfs_pathname' defined but not used
> [-Wunused-function]
> |  static char *sysfs_pathname(struct sysfs_dirent *sd, char *path)
> |               ^
> |   CC      fs/anon_inodes.o
> |   CC      fs/sysfs/symlink.o
> |   CC      fs/proc/array.o
> |   CC      fs/signalfd.o
> |   CC      fs/ext4/symlink.o
> |   CC      fs/ext4/hash.o
> |   CC      fs/sysfs/mount.o
> |   CC      fs/proc/proc_tty.o
> |   CC      fs/timerfd.o
> |   CC      fs/proc/cmdline.o
> |   CC      fs/ext4/resize.o
> |   CC      fs/sysfs/bin.o
> |   CC      fs/proc/consoles.o
> |   CC      fs/proc/cpuinfo.o
> |   CC      fs/proc/devices.o
> |   CC      fs/eventfd.o
> |   CC      fs/sysfs/group.o
> |   CC      fs/proc/interrupts.o
> |   CC      fs/ext4/extents.o
> |   LD      fs/sysfs/built-in.o
> |   CC      fs/proc/loadavg.o
> |   CC      fs/locks.o
> |   CC      fs/binfmt_script.o
> | In file included from fs/ext4/extents.c:44:0:
> | fs/ext4/ext4_jbd2.h: In function 'ext4_inode_journal_mode':
> | fs/ext4/ext4_jbd2.h:288:1: warning: control reaches end of non-void
> function [-Wreturn-type]
> |  }
> |  ^
> |   CC      fs/proc/meminfo.o
> |   CC      fs/binfmt_elf.o
> |   CC      fs/proc/stat.o
> |   CC      fs/proc/uptime.o
> |   CC      fs/mbcache.o
> |   CC      fs/proc/version.o
> |   CC      fs/proc/softirqs.o
> |   CC      fs/proc/namespaces.o
> |   CC      fs/proc/proc_sysctl.o
> |   CC      fs/ext4/ext4_jbd2.o
> |   CC      fs/proc/proc_net.o
> |   CC      fs/ext4/migrate.o
> | In file included from fs/ext4/ext4_jbd2.c:5:0:
> | fs/ext4/ext4_jbd2.h: In function 'ext4_inode_journal_mode':
> | fs/ext4/ext4_jbd2.h:288:1: warning: control reaches end of non-void
> function [-Wreturn-type]
> |  }
> |  ^
> |   CC      fs/proc/kmsg.o
> |   CC      fs/ext4/mballoc.o
> |   CC      fs/ext4/block_validity.o
> |   LD      fs/proc/proc.o
> |   LD      fs/proc/built-in.o
> |   CC      fs/ext4/move_extent.o
> |   CC      fs/ext4/mmp.o
> | In file included from fs/ext4/mballoc.h:22:0,
> |                  from fs/ext4/mballoc.c:24:
> | fs/ext4/ext4_jbd2.h: In function 'ext4_inode_journal_mode':
> | fs/ext4/ext4_jbd2.h:288:1: warning: control reaches end of non-void
> function [-Wreturn-type]
> |  }
> |  ^
> |   CC      fs/ext4/xattr.o
> |   CC      fs/ext4/xattr_user.o
> |   CC      fs/ext4/xattr_trusted.o
> |   LD      fs/ext4/ext4.o
> |   LD      fs/ext4/built-in.o
> |   LD      fs/built-in.o
> | ERROR: oe_runmake failed
> | WARNING:
> /home/srikanth/Desktop/work/pavan/Minizap/wandboard/yocto/fsl-community-bsp/build/tmp/work/wandboard_quad-poky-linux-gnueabi/linux-wandboard/3.0.35-r0/temp/run.do_compile.6787:1
> exit 1 from
> |   exit 1
> | ERROR: Function failed: do_compile (log file is located at
> /home/srikanth/Desktop/work/pavan/Minizap/wandboard/yocto/fsl-community-bsp/build/tmp/work/wandboard_quad-poky-linux-gnueabi/linux-wandboard/3.0.35-r0/temp/log.do_compile.6787)
> ERROR: Task 6
> (/home/srikanth/Desktop/work/pavan/Minizap/wandboard/yocto/fsl-community-bsp/sources/meta-fsl-arm-extra/recipes-kernel/linux/
> linux-wandboard_3.0.35.bb, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 555 tasks of which 554 didn't need to be
> rerun and 1 failed.
> No currently running tasks (355 of 568)
>
> Summary: 1 task failed:
>
> /home/srikanth/Desktop/work/pavan/Minizap/wandboard/yocto/fsl-community-bsp/sources/meta-fsl-arm-extra/recipes-kernel/linux/
> linux-wandboard_3.0.35.bb, do_compile
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
> On Wed, Feb 4, 2015 at 4:05 PM, Jegan Chandru <pcjegan@gmail.com> wrote:
>
>> It just says the patch  drm-vivante-Add-00-sufix-in-returned-bus-Id.patch
>> is already applied in the source code.
>>
>> On Wed, Feb 4, 2015 at 1:29 AM, Pavan Kumar B <u2bpavankumar@gmail.com>
>> wrote:
>>
>>>
>>> Hi,
>>>
>>> I was trying to set the local repo for kernel and build the yocto image.
>>> For that
>>>
>>> I have set SRC_URI as below located at $
>>> /fsl-community-bsp/sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-wandboard.inc
>>>
>>> SRC_URI = "git:///home/jos/test/temp/mykernel;protocol=file;bareclone=1"
>>>
>>> and it started recognizing the local repo..,
>>>
>>> Also I have modified the linux-imx file "S" parameter as below
>>>
>>> S = "/home/jos/test/temp/mykernel"
>>>
>>> But I ran into another error and log is mentioned below
>>>
>>> The kernel baseline in my local repo is 3.0.35-4.1.0 and the I am using
>>> dora yocto branch
>>>
>>> There are some set of patches I can see at linux-imx_3.0.35.bb as below
>>>
>>> # GPU support patches
>>> SRC_URI += "file://drm-vivante-Add-00-sufix-in-returned-bus-Id.patch \
>>>
>>> file://0001-ENGR00255688-4.6.9p11.1-gpu-GPU-Kernel-driver-integr.patch \
>>>
>>> file://0002-ENGR00265465-gpu-Add-global-value-for-minimum-3D-clo.patch \
>>>
>>> file://0003-ENGR00261814-4-gpu-use-new-PU-power-on-off-interface.patch \
>>>
>>> file://0004-ENGR00264288-1-GPU-Integrate-4.6.9p12-release-kernel.patch \
>>>
>>> file://0005-ENGR00264275-GPU-Correct-suspend-resume-calling-afte.patch \
>>>
>>> file://0006-ENGR00265130-gpu-Correct-section-mismatch-in-gpu-ker.patch"
>>>
>>>
>>> The patch function is failing here. But with the kernel that was
>>> downloaded from git previously for wandboard is compiling with same patches
>>> with out any problem. These patches don't work for 3.0.35-4.1.0?
>>>
>>> What should be done here to apply patch & compile the image.
>>>
>>> please do guide me over here
>>>
>>> Regards,
>>> Pavan
>>>
>>> PS: Attached is the error log file
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>>
>> --
>> JCP
>>
>
>


-- 
JCP

--047d7b86d6ca1c3e41050e443726
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif">I think you should refer or ask here for better =
replies,</div><div class=3D"gmail_default" style=3D"font-family:&#39;trebuc=
het ms&#39;,sans-serif"><br></div><div class=3D"gmail_default" style><font =
face=3D"trebuchet ms, sans-serif"><a href=3D"https://lists.yoctoproject.org=
/listinfo/meta-freescale">https://lists.yoctoproject.org/listinfo/meta-free=
scale</a></font><br></div><div class=3D"gmail_default" style><font face=3D"=
trebuchet ms, sans-serif"><br></font></div><div class=3D"gmail_default" sty=
le><font face=3D"trebuchet ms, sans-serif">which is for freescale specific =
ML.</font></div><div class=3D"gmail_default" style><font face=3D"trebuchet =
ms, sans-serif"><br></font></div><div class=3D"gmail_default" style><font f=
ace=3D"trebuchet ms, sans-serif">Also for the error, I guess it needs to be=
 patched, I just googled it and found this,</font></div><div class=3D"gmail=
_default" style><font face=3D"trebuchet ms, sans-serif"><br></font></div><d=
iv class=3D"gmail_default" style><font face=3D"trebuchet ms, sans-serif"><a=
 href=3D"https://github.com/ralix-dev/PKGBUILDs/tree/master/core/linux-util=
ite-fsl">https://github.com/ralix-dev/PKGBUILDs/tree/master/core/linux-util=
ite-fsl</a>=C2=A0</font></div><div class=3D"gmail_default" style><font face=
=3D"trebuchet ms, sans-serif"><br></font></div><div class=3D"gmail_default"=
 style><font face=3D"trebuchet ms, sans-serif">Hope it helps,</font></div><=
div class=3D"gmail_default" style><font face=3D"trebuchet ms, sans-serif"><=
br></font></div><div class=3D"gmail_default" style><font face=3D"trebuchet =
ms, sans-serif">JC</font></div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Wed, Feb 4, 2015 at 7:38 PM, Pavan Kumar B <span dir=
=3D"ltr">&lt;<a href=3D"mailto:u2bpavankumar@gmail.com" target=3D"_blank">u=
2bpavankumar@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div dir=3D"ltr"><div><div><div>Hi,<br><br></div>Now I am getting the f=
ollowing error<br><br></div>Any idea like &quot;PAD_CTL_DSE_40ohm&quot; und=
eclared corresponds to ??<br><br></div>Please do guide me<br><div><div><br>=
Log data follows:<br>| DEBUG: Executing shell function do_compile<br>| NOTE=
: make -j 4 uImage CC=3Darm-poky-linux-gnueabi-gcc=C2=A0 -mno-thumb-interwo=
rk -marm LD=3Darm-poky-linux-gnueabi-ld.bfd=C2=A0=C2=A0 LOADADDR=3D0x100080=
00<br>|=C2=A0=C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/linux/version.h<br>=
|=C2=A0=C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/utsrelease.h<br=
>| make[1]: `include/generated/mach-types.h&#39; is up to date.<br>|=C2=A0=
=C2=A0 CALL=C2=A0=C2=A0=C2=A0 scripts/checksyscalls.sh<br>|=C2=A0=C2=A0 CHK=
=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/compile.h<br>|=C2=A0=C2=A0 CC=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 arch/arm/mach-mx6/usb_h2.o<br>|=C2=A0=C2=A0 CC=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 arch/arm/plat-mxc/devices/platform-imx-dma.o=
<br>| In file included from arch/arm/plat-mxc/include/mach/iomux-mx6q.h:25:=
0,<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from arch/arm/mach-mx6/usb_h2.c:32:<br=
>| arch/arm/mach-mx6/usb_h2.c: In function &#39;hsic_start&#39;:<br>| arch/=
arm/plat-mxc/include/mach/iomux-mx6q.h:83:5: error: &#39;PAD_CTL_DSE_40ohm&=
#39; undeclared (first use in this function)<br>|=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 PAD_CTL_DSE_40ohm)<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| arch/ar=
m/plat-mxc/include/mach/iomux-v3.h:74:44: note: in definition of macro &#39=
;MUX_PAD_CTRL&#39;<br>|=C2=A0 #define MUX_PAD_CTRL(x)=C2=A0 ((iomux_v3_cfg_=
t)(x) &lt;&lt; MUX_PAD_CTRL_SHIFT)<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ^<br>| arch/arm/plat-mxc/include/mach/iomux-mx6q.h:3828:17: note: in ex=
pansion of macro &#39;MX6Q_USB_HSIC_PAD_CTRL&#39;<br>|=C2=A0=C2=A0=C2=A0=C2=
=A0 MUX_PAD_CTRL(MX6Q_USB_HSIC_PAD_CTRL | PAD_CTL_PUS_47K_UP)\<br>|=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^<br>| arch/arm/mach-mx6/usb_h2.c:180:5: note: in exp=
ansion of macro &#39;MX6Q_PAD_RGMII_TX_CTL__USBOH3_H2_STROBE_START&#39;<br>=
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MX6Q_PAD_RGMII_TX_CTL__USBOH3_H2_STROBE_STA=
RT);<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| arch/arm/plat-mxc/include/ma=
ch/iomux-mx6q.h:83:5: note: each undeclared identifier is reported only onc=
e for each function it appears in<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PAD_CT=
L_DSE_40ohm)<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| arch/arm/plat-mxc/in=
clude/mach/iomux-v3.h:74:44: note: in definition of macro &#39;MUX_PAD_CTRL=
&#39;<br>|=C2=A0 #define MUX_PAD_CTRL(x)=C2=A0 ((iomux_v3_cfg_t)(x) &lt;&lt=
; MUX_PAD_CTRL_SHIFT)<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| a=
rch/arm/plat-mxc/include/mach/iomux-mx6q.h:3828:17: note: in expansion of m=
acro &#39;MX6Q_USB_HSIC_PAD_CTRL&#39;<br>|=C2=A0=C2=A0=C2=A0=C2=A0 MUX_PAD_=
CTRL(MX6Q_USB_HSIC_PAD_CTRL | PAD_CTL_PUS_47K_UP)\<br>|=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 ^<br>| arch/arm/mach-mx6/usb_h2.c:180:5: note: in expansion of ma=
cro &#39;MX6Q_PAD_RGMII_TX_CTL__USBOH3_H2_STROBE_START&#39;<br>|=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 MX6Q_PAD_RGMII_TX_CTL__USBOH3_H2_STROBE_START);<br>|=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| make[1]: *** [arch/arm/mach-mx6/usb_h=
2.o] Error 1<br>| make: *** [arch/arm/mach-mx6] Error 2<br>| make: *** Wait=
ing for unfinished jobs....<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 fs/open.o<br>| arch/arm/plat-mxc/devices/platform-imx-dma.c: In functio=
n &#39;imxXX_add_imx_dma&#39;:<br>| arch/arm/plat-mxc/devices/platform-imx-=
dma.c:265:2: error: &#39;imx6q_imx_sdma_data&#39; undeclared (first use in =
this function)<br>|=C2=A0=C2=A0 imx6q_imx_sdma_data.pdata.to_version =3D to=
_version;<br>|=C2=A0=C2=A0 ^<br>| arch/arm/plat-mxc/devices/platform-imx-dm=
a.c:265:2: note: each undeclared identifier is reported only once for each =
function it appears in<br>| arch/arm/plat-mxc/devices/platform-imx-dma.c:26=
8:8: error: &#39;addr_imx6q_to1&#39; undeclared (first use in this function=
)<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &amp;addr_imx6q_to1;<br>|=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>|=C2=A0=C2=A0 CC=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/read_write.o<br>| make[2]: *** [arch/arm/pla=
t-mxc/devices/platform-imx-dma.o] Error 1<br>| make[1]: *** [arch/arm/plat-=
mxc/devices] Error 2<br>| make: *** [arch/arm/plat-mxc] Error 2<br>|=C2=A0=
=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/file_table.o<br>|=C2=A0=C2=A0 CC=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/super.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 fs/char_dev.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 fs/stat.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ex=
ec.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/pipe.o<br>|=C2=A0=
=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/namei.o<br>|=C2=A0=C2=A0 CC=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/fcntl.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 fs/ioctl.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 fs/readdir.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/selec=
t.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/fifo.o<br>|=C2=A0=
=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/dcache.o<br>|=C2=A0=C2=A0 CC=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/inode.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 fs/attr.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 fs/bad_inode.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/file.o=
<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/filesystems.o<br>|=C2=
=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/namespace.o<br>|=C2=A0=C2=A0 =
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/seq_file.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 fs/xattr.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 fs/libfs.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/f=
s-writeback.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/pnode.o<=
br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/drop_caches.o<br>|=C2=
=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/splice.o<br>|=C2=A0=C2=A0 CC=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/sync.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 fs/utimes.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 fs/stack.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/fs_stru=
ct.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/statfs.o<br>|=C2=
=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/buffer.o<br>|=C2=A0=C2=A0 CC=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/bio.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 fs/block_dev.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 fs/direct-io.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/=
mpage.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ioprio.o<br>|=
=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/devpts/inode.o<br>|=C2=A0=
=C2=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/devpts/devpts.o<br>|=C2=A0=C2=A0=
 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/devpts/built-in.o<br>|=C2=A0=C2=A0 CC=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/balloc.o<br>|=C2=A0=C2=A0 CC=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 fs/fat/cache.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 fs/jbd2/transaction.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 fs/fuse/dev.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 fs/fat/dir.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/=
bitmap.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/dir.o<br=
>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/jbd2/commit.o<br>|=C2=A0=
=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/file.o<br>|=C2=A0=C2=A0 CC=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/fuse/dir.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 fs/fat/fatent.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 fs/ext4/fsync.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 fs/jbd2/recovery.o<br>| In file included from fs/ext4/fsync.c:33:0:<br>=
| fs/ext4/ext4_jbd2.h: In function &#39;ext4_inode_journal_mode&#39;:<br>| =
fs/ext4/ext4_jbd2.h:288:1: warning: control reaches end of non-void functio=
n [-Wreturn-type]<br>|=C2=A0 }<br>|=C2=A0 ^<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 fs/ext4/ialloc.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 fs/fat/file.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 fs/fuse/file.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/jbd=
2/checkpoint.o<br>| In file included from include/linux/mm.h:11:0,<br>|=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 from fs/fuse/fuse_i.h:18,<br>|=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 from fs/fuse/file.c:9:<br>| fs/fuse/file.c: In function &#39;fuse=
_file_poll&#39;:<br>| include/linux/rbtree.h:171:26: warning: &#39;parent&#=
39; may be used uninitialized in this function [-Wmaybe-uninitialized]<br>|=
=C2=A0=C2=A0 node-&gt;rb_parent_color =3D (unsigned long )parent;<br>|=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ^<br>| fs/fuse/file.c:2052:27: note: &#39;parent&#39; was declared here=
<br>|=C2=A0=C2=A0=C2=A0 struct rb_node **link, *parent;<br>|=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<=
br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/fat/inode.o<br>|=C2=A0=
=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/jbd2/revoke.o<br>|=C2=A0=C2=A0 C=
C=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/inode.o<br>|=C2=A0=C2=A0 CC=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 fs/jbd2/journal.o<br>| In file included from fs/ex=
t4/inode.c:46:0:<br>| fs/ext4/ext4_jbd2.h: In function &#39;ext4_inode_jour=
nal_mode&#39;:<br>| fs/ext4/ext4_jbd2.h:288:1: warning: control reaches end=
 of non-void function [-Wreturn-type]<br>|=C2=A0 }<br>|=C2=A0 ^<br>|=C2=A0=
=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/fuse/inode.o<br>|=C2=A0=C2=A0 CC=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/fat/misc.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 fs/fat/namei_vfat.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 fs/fuse/control.o<br>|=C2=A0=C2=A0 LD=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 fs/fuse/fuse.o<br>|=C2=A0=C2=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 fs/jbd2/jbd2.o<br>|=C2=A0=C2=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/fus=
e/built-in.o<br>|=C2=A0=C2=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/jbd2/buil=
t-in.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/nls/nls_base.o<=
br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/notify/fsnotify.o<br>|=
=C2=A0=C2=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/fat/fat.o<br>|=C2=A0=C2=A0=
 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/fat/vfat.o<br>|=C2=A0=C2=A0 LD=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 fs/fat/built-in.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 fs/partitions/check.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 fs/nls/nls_cp437.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 fs/notify/notification.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 fs/ext4/page-io.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 fs/nls/nls_ascii.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs=
/nls/nls_iso8859-1.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/n=
otify/group.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/ioc=
tl.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/nls/nls_utf8.o<br=
>|=C2=A0=C2=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/nls/built-in.o<br>|=C2=
=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/partitions/msdos.o<br>|=C2=A0=
=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/proc/mmu.o<br>|=C2=A0=C2=A0 CC=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/notify/inode_mark.o<br>|=C2=A0=C2=A0 CC=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/namei.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 fs/proc/task_mmu.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 fs/partitions/efi.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 fs/notify/mark.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 fs/proc/inode.o<br>|=C2=A0=C2=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs=
/partitions/built-in.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs=
/notify/vfsmount_mark.o<br>|=C2=A0=C2=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 f=
s/quota/built-in.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/pro=
c/root.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ramfs/inode.o=
<br>|=C2=A0=C2=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/notify/dnotify/built-=
in.o<br>|=C2=A0=C2=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/notify/fanotify/b=
uilt-in.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/notify/inoti=
fy/inotify_fsnotify.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/=
proc/base.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ramfs/file=
-mmu.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/super.o<br=
>|=C2=A0=C2=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ramfs/ramfs.o<br>|=C2=A0=
=C2=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ramfs/built-in.o<br>|=C2=A0=C2=
=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/notify/inotify/inotify_user.o<br>|=
=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/sysfs/inode.o<br>|=C2=A0=
=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/sysfs/file.o<br>|=C2=A0=C2=A0 LD=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/notify/inotify/built-in.o<br>|=C2=A0=C2=
=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/notify/built-in.o<br>|=C2=A0=C2=A0 =
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/eventpoll.o<br>|=C2=A0=C2=A0 CC=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 fs/proc/generic.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 fs/sysfs/dir.o<br>| fs/sysfs/dir.c:414:14: warning: &#39=
;sysfs_pathname&#39; defined but not used [-Wunused-function]<br>|=C2=A0 st=
atic char *sysfs_pathname(struct sysfs_dirent *sd, char *path)<br>|=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ^<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/anon_inodes.o<br=
>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/sysfs/symlink.o<br>|=C2=
=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/proc/array.o<br>|=C2=A0=C2=A0=
 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/signalfd.o<br>|=C2=A0=C2=A0 CC=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/symlink.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 fs/ext4/hash.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 fs/sysfs/mount.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 fs/proc/proc_tty.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs=
/timerfd.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/proc/cmdlin=
e.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/resize.o<br>|=
=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/sysfs/bin.o<br>|=C2=A0=C2=
=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/proc/consoles.o<br>|=C2=A0=C2=A0 CC=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/proc/cpuinfo.o<br>|=C2=A0=C2=A0 CC=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 fs/proc/devices.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 fs/eventfd.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 fs/sysfs/group.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 f=
s/proc/interrupts.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ex=
t4/extents.o<br>|=C2=A0=C2=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/sysfs/bui=
lt-in.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/proc/loadavg.o=
<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/locks.o<br>|=C2=A0=C2=
=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/binfmt_script.o<br>| In file includ=
ed from fs/ext4/extents.c:44:0:<br>| fs/ext4/ext4_jbd2.h: In function &#39;=
ext4_inode_journal_mode&#39;:<br>| fs/ext4/ext4_jbd2.h:288:1: warning: cont=
rol reaches end of non-void function [-Wreturn-type]<br>|=C2=A0 }<br>|=C2=
=A0 ^<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/proc/meminfo.o<b=
r>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/binfmt_elf.o<br>|=C2=A0=
=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/proc/stat.o<br>|=C2=A0=C2=A0 CC=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/proc/uptime.o<br>|=C2=A0=C2=A0 CC=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 fs/mbcache.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 fs/proc/version.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 fs/proc/softirqs.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 fs/proc/namespaces.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/=
proc/proc_sysctl.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext=
4/ext4_jbd2.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/proc/pro=
c_net.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/migrate.o=
<br>| In file included from fs/ext4/ext4_jbd2.c:5:0:<br>| fs/ext4/ext4_jbd2=
.h: In function &#39;ext4_inode_journal_mode&#39;:<br>| fs/ext4/ext4_jbd2.h=
:288:1: warning: control reaches end of non-void function [-Wreturn-type]<b=
r>|=C2=A0 }<br>|=C2=A0 ^<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
fs/proc/kmsg.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/mb=
alloc.o<br>|=C2=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/block_val=
idity.o<br>|=C2=A0=C2=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/proc/proc.o<br=
>|=C2=A0=C2=A0 LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/proc/built-in.o<br>|=C2=
=A0=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/move_extent.o<br>|=C2=A0=
=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/mmp.o<br>| In file included=
 from fs/ext4/mballoc.h:22:0,<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from fs/ext=
4/mballoc.c:24:<br>| fs/ext4/ext4_jbd2.h: In function &#39;ext4_inode_journ=
al_mode&#39;:<br>| fs/ext4/ext4_jbd2.h:288:1: warning: control reaches end =
of non-void function [-Wreturn-type]<br>|=C2=A0 }<br>|=C2=A0 ^<br>|=C2=A0=
=C2=A0 CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/xattr.o<br>|=C2=A0=C2=A0 CC=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/xattr_user.o<br>|=C2=A0=C2=A0 CC=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/xattr_trusted.o<br>|=C2=A0=C2=A0 LD=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs/ext4/ext4.o<br>|=C2=A0=C2=A0 LD=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 fs/ext4/built-in.o<br>|=C2=A0=C2=A0 LD=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 fs/built-in.o<br>| ERROR: oe_runmake failed<br>| WARNING: /hom=
e/srikanth/Desktop/work/pavan/Minizap/wandboard/yocto/fsl-community-bsp/bui=
ld/tmp/work/wandboard_quad-poky-linux-gnueabi/linux-wandboard/3.0.35-r0/tem=
p/run.do_compile.6787:1 exit 1 from<br>|=C2=A0=C2=A0 exit 1<br>| ERROR: Fun=
ction failed: do_compile (log file is located at /home/srikanth/Desktop/wor=
k/pavan/Minizap/wandboard/yocto/fsl-community-bsp/build/tmp/work/wandboard_=
quad-poky-linux-gnueabi/linux-wandboard/3.0.35-r0/temp/log.do_compile.6787)=
<br>ERROR: Task 6 (/home/srikanth/Desktop/work/pavan/Minizap/wandboard/yoct=
o/fsl-community-bsp/sources/meta-fsl-arm-extra/recipes-kernel/linux/<a href=
=3D"http://linux-wandboard_3.0.35.bb" target=3D"_blank">linux-wandboard_3.0=
.35.bb</a>, do_compile) failed with exit code &#39;1&#39;<br>NOTE: Tasks Su=
mmary: Attempted 555 tasks of which 554 didn&#39;t need to be rerun and 1 f=
ailed.<br>No currently running tasks (355 of 568)<br><br>Summary: 1 task fa=
iled:<br>=C2=A0 /home/srikanth/Desktop/work/pavan/Minizap/wandboard/yocto/f=
sl-community-bsp/sources/meta-fsl-arm-extra/recipes-kernel/linux/<a href=3D=
"http://linux-wandboard_3.0.35.bb" target=3D"_blank">linux-wandboard_3.0.35=
.bb</a>, do_compile<br>Summary: There was 1 WARNING message shown.<br>Summa=
ry: There was 1 ERROR message shown, returning a non-zero exit code.<br><br=
></div></div><div><div class=3D"h5"><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Wed, Feb 4, 2015 at 4:05 PM, Jegan Chandru <span dir=
=3D"ltr">&lt;<a href=3D"mailto:pcjegan@gmail.com" target=3D"_blank">pcjegan=
@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif">It ju=
st says the patch=C2=A0=C2=A0drm-vivante-Add-00-sufix-in-returned-bus-Id.pa=
tch is already applied in the source code.=C2=A0</div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote"><div><div>On Wed, Feb 4, 2015 at=
 1:29 AM, Pavan Kumar B <span dir=3D"ltr">&lt;<a href=3D"mailto:u2bpavankum=
ar@gmail.com" target=3D"_blank">u2bpavankumar@gmail.com</a>&gt;</span> wrot=
e:<br></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div><div dir=3D"ltr"=
><div><table height=3D"21" width=3D"6"><tbody><tr>
          <td>
            <br></td></tr></tbody></table>Hi,<br><br>I was trying to set th=
e local repo for kernel and build the yocto image. For that<br><br>I have s=
et SRC_URI as below located at $ /fsl-community-bsp/sources/meta-fsl-arm-ex=
tra/recipes-kernel/linux/linux-wandboard.inc<br><br>SRC_URI =3D &quot;git:/=
//home/jos/test/temp/mykernel;protocol=3Dfile;bareclone=3D1&quot;<br><br>an=
d it started recognizing the local repo.., <br><br>Also I have modified the=
 linux-imx file &quot;S&quot; parameter as below<br><br>S =3D &quot;/home/j=
os/test/temp/mykernel&quot;<br><br>But I ran into another error and log is =
mentioned below<br><br>The kernel baseline in my local repo is 3.0.35-4.1.0=
 and the I am using dora yocto branch<br><br>There are some set of patches =
I can see at <a href=3D"http://linux-imx_3.0.35.bb" target=3D"_blank">linux=
-imx_3.0.35.bb</a> as below<br><br># GPU support patches<br>SRC_URI +=3D &q=
uot;file://drm-vivante-Add-00-sufix-in-returned-bus-Id.patch \<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0001-ENGR0=
0255688-4.6.9p11.1-gpu-GPU-Kernel-driver-integr.patch \<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0002-ENGR0026546=
5-gpu-Add-global-value-for-minimum-3D-clo.patch \<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0003-ENGR00261814-4-gp=
u-use-new-PU-power-on-off-interface.patch \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0004-ENGR00264288-1-GPU-Inte=
grate-4.6.9p12-release-kernel.patch \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0005-ENGR00264275-GPU-Correct-susp=
end-resume-calling-afte.patch \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0006-ENGR00265130-gpu-Correct-section-mi=
smatch-in-gpu-ker.patch&quot;<br><br><br>The patch function is failing here=
. But with the kernel that was downloaded from git previously for wandboard=
 is compiling with same patches with out any problem. These patches don&#39=
;t work for 3.0.35-4.1.0? <br><br>What should be done here to apply patch &=
amp; compile the image.<br><br>please do guide me over here<br><br>Regards,=
<br>Pavan<br><br></div>PS: Attached is the error log file<br></div>
<br></div></div><span><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></font></span></blockquote></div><span><font color=3D"#888888"><br><br =
clear=3D"all"><div><br></div>-- <br><div>JCP</div>
</font></span></div>
</blockquote></div><br></div></div></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature">JCP</div>
</div>

--047d7b86d6ca1c3e41050e443726--
