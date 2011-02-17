Return-Path: <flavio.alves@phiinnovations.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 533A84C800AC
	for <yocto@yoctoproject.org>; Thu, 17 Feb 2011 05:24:29 -0600 (CST)
Received: by qwe4 with SMTP id 4so2383494qwe.35
	for <yocto@yoctoproject.org>; Thu, 17 Feb 2011 03:24:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.229.81.138 with SMTP id x10mr2129318qck.20.1297941868307; Thu,
	17 Feb 2011 03:24:28 -0800 (PST)
Received: by 10.229.34.140 with HTTP; Thu, 17 Feb 2011 03:24:28 -0800 (PST)
Date: Thu, 17 Feb 2011 09:24:28 -0200
Message-ID: <AANLkTinh2E2xYSRHcdhrqneS3QCYoYOaU1=1q3jpgqCa@mail.gmail.com>
From: Flavio de Castro Alves Filho <flavio.alves@phiinnovations.com>
To: yocto@yoctoproject.org
Subject: Problems with building in ubuntu 10.04
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
X-List-Received-Date: Thu, 17 Feb 2011 11:24:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I'm trying to use yocto project and I'm having problems with my first
build. I'm using ubuntu-10.04 Linux with the PAE kernel

I'm following the instructions from the quick start.

Here is the error message:

flavio@Phi01:~/build$ bitbake poky-image-minimal
NOTE: Handling BitBake files: \ (0844/0844) [100 %]
Parsing of 844 .bb files complete (791 cached, 53 parsed). 997
targets, 34 skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        = "1.11.0"
METADATA_BRANCH   = "<unknown>"
METADATA_REVISION = "<unknown>"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "0.9"
TARGET_FPU        = ""

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing setscene Tasks
NOTE: We can skip tasks set([])
NOTE: Executing runqueue
NOTE: Full skip list set([])
NOTE: Running task 213 of 1633 (ID: 816,
/home/flavio/poky-laverne-4.0/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.34.bb,
do_unpack)
NOTE: Running task 237 of 1633 (ID: 1003,
/home/flavio/poky-laverne-4.0/meta/recipes-devtools/binutils/binutils-cross_2.20.1.bb,
do_configure)
NOTE: Running task 249 of 1633 (ID: 1585,
/home/flavio/poky-laverne-4.0/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.0.bb,
do_unpack)
NOTE: Running task 251 of 1633 (ID: 1457,
/home/flavio/poky-laverne-4.0/meta/recipes-core/eglibc/eglibc-initial_2.12.bb,
do_fetch)
NOTE: package linux-libc-headers-2.6.34-r1: task do_unpack: Started
NOTE: Unpacking /home/flavio/build/downloads/linux-2.6.34.tar.bz2 to
/home/flavio/build/tmp/work/i586-poky-linux/linux-libc-headers-2.6.34-r1/
ERROR: Task failed:
NOTE: package linux-libc-headers-2.6.34-r1: task do_unpack: Failed
ERROR: Task 816
(/home/flavio/poky-laverne-4.0/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.34.bb,
do_unpack) failed with 1
NOTE: package gcc-cross-initial-4.5.0-r10: task do_unpack: Started
Waiting for 1 active tasks to finish:
1: gcc-cross-initial-4.5.0-r10 do_unpack (pid 2930)
Waiting for 2 active tasks to finish:
1: binutils-cross-2.20.1-r3 do_configure (pid 2929)
2: gcc-cross-initial-4.5.0-r10 do_unpack (pid 2930)
NOTE: package binutils-cross-2.20.1-r3: task do_configure: Started
NOTE: Unpacking /home/flavio/build/downloads/gcc-4.5.0.tar.bz2 to
/home/flavio/build/tmp/work/i586-poky-linux/gcc-cross-initial-4.5.0-r10/
ERROR: Task failed:
Waiting for 1 active tasks to finish:
1: binutils-cross-2.20.1-r3 do_configure (pid 2929)
NOTE: package gcc-cross-initial-4.5.0-r10: task do_unpack: Failed
ERROR: Task 1585
(/home/flavio/poky-laverne-4.0/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.0.bb,
do_unpack) failed with 1
Waiting for 2 active tasks to finish:
1: binutils-cross-2.20.1-r3 do_configure (pid 2929)
2: eglibc-initial-2.12-r9 do_fetch (pid 2931)
NOTE: package eglibc-initial-2.12-r9: task do_fetch: Started
Waiting for 1 active tasks to finish:
1: binutils-cross-2.20.1-r3 do_configure (pid 2929)
NOTE: package eglibc-initial-2.12-r9: task do_fetch: Succeeded
NOTE: package binutils-cross-2.20.1-r3: task do_configure: Succeeded
ERROR: '/home/flavio/poky-laverne-4.0/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.34.bb'
failed
ERROR: '/home/flavio/poky-laverne-4.0/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.0.bb'
failed
flavio@Phi01:~/build$

What am I doing wrong?

Best regards,

Flavio

