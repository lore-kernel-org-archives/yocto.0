Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D773E014CE
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 03:04:09 -0700 (PDT)
Received: by mail-wi0-f174.google.com with SMTP id hj8so1769073wib.1
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 03:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to
	:content-type; bh=qiXizTd+8EZHIlJzPnvqnUA+B1em/NpGAA4jzNFPw+g=;
	b=wGIHsWeuEPQ55VhKplYDx1E0n0p43ftHzMOzmgk5pdeeniHAsXz4tRSacRDkdU2Erg
	bSC1RkSNT27wltNEFNir/uzrgB4hihDxaMBRcMoi2LBqNw9WlCbaPa2vDFAJTrF8pnyI
	Cih/f4fbIfh9CvC5cAbBDzT+MmoYlaCFGsDPm+G1Ksv5U8oajyy28V1wjbvaC2Qoo+rA
	8fSpv28Insy9SUm+RMwN/4EvO4RWyKjnhsM+Z462cvQe5mXbZKzks9qow2nIsJwiVlFP
	5SJvFiaRn4MmRnCaw4gsn50eCJF9YovER+DAdGtQsw+Y4GLzC9nb7VhyCfPTyD5KgxNy
	kMsQ==
X-Received: by 10.194.10.129 with SMTP id i1mr4336538wjb.21.1364205848078;
	Mon, 25 Mar 2013 03:04:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Mon, 25 Mar 2013 03:03:48 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
Date: Mon, 25 Mar 2013 03:03:48 -0700
Message-ID: <CACzyEJ_XeBBTBe8ae5qtdMwuELk+JZM_=WVS_3yL6EOZurByMA@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: grub-efi-native_2.00.bb do_deploy fail
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
X-List-Received-Date: Mon, 25 Mar 2013 10:04:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am using latest HEAD of master, and have this error, any one has the
similar issue?

- error msg
ERROR: Function failed: do_deploy (see
/home/insop/mybuilds/fri2-1.4/tmp/work/i686-linux/grub-efi-i586-native/2.00-r1/temp/log.do_deploy.7321
for further information)
ERROR: Logfile of failure stored in:
/home/insop/mybuilds/fri2-1.4/tmp/work/i686-linux/grub-efi-i586-native/2.00-r1/temp/log.do_deploy.7321



- full log

insop@chai ~/mybuilds/fri2-1.4 $ time bitbake core-image-realtime-sdk
Loading cache: 100%
|##############################################################################################|
ETA:  00:00:00
Loaded 1145 entries from dependency cache.

Build Configuration:
BB_VERSION        = "1.17.1"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "Ubuntu-12.10"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "fri2"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130325"
TUNE_FEATURES     = "m32 core2"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "master:3c5f4d54d01887a117bf659fc9af6b2b892c2b08"
meta-intel
meta-fri2         = "master:8bfb88c22a9298c0193ccbb7fc0221300956b612"
meta-realtime     = "image-sdk:6825219a33a4b4d140a01cee5165d805951d1d75"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_deploy (see
/home/insop/mybuilds/fri2-1.4/tmp/work/i686-linux/grub-efi-i586-native/2.00-r1/temp/log.do_deploy.7321
for further information)
ERROR: Logfile of failure stored in:
/home/insop/mybuilds/fri2-1.4/tmp/work/i686-linux/grub-efi-i586-native/2.00-r1/temp/log.do_deploy.7321
Log data follows:
| DEBUG: Executing python function sstate_task_prefunc
| DEBUG: Python function sstate_task_prefunc finished
| DEBUG: Executing shell function do_deploy
| install: cannot stat
`/home/insop/mybuilds/fri2-1.4/tmp/work/i686-linux/grub-efi-i586-native/2.00-r1/grub-2.00/bootia32.efi':
No such file or directory
| ERROR: Function failed: do_deploy (see
/home/insop/mybuilds/fri2-1.4/tmp/work/i686-linux/grub-efi-i586-native/2.00-r1/temp/log.do_deploy.7321
for further information)
ERROR: Task 243
(/home/insop/poky/meta/recipes-bsp/grub/grub-efi-native_2.00.bb,
do_deploy) failed with exit code '1'
Currently 3 running tasks (4427 of 4432):
0: core-image-realtime-sdk-1.0-r0 do_rootfs (pid 3668)
1: syslinux-4.03-r9 do_package_write_rpm (pid 19504)
2: core-image-minimal-initramfs-1.0-r0 do_rootfs (pid 23423)

--

Thank you,

Insop

