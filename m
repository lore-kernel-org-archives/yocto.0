Return-Path: <adam.yh.lee@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7E1BE00DDC; Wed, 12 Jun 2019 05:51:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (adam.yh.lee[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.219.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yb1-f195.google.com (mail-yb1-f195.google.com
	[209.85.219.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08BE8E00B8F
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 05:51:52 -0700 (PDT)
Received: by mail-yb1-f195.google.com with SMTP id n145so6340010ybg.10
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 05:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=lWEgOviO3zYWHuHOxHTvS7sEAZrARZOPsJRR2j43ur0=;
	b=YxSVguxAmLLxXzo9Q0ctcwZ2Xg5e+k4lhAF9Zm/sA3qeYWnnn0z2bWPyi9kwNtYu+I
	WGXK852X3wqM/fD5qSY8NA56MOCjKjrfb0vozw0Jvzr48PbU5w8GYe9q3q7khACRZRXP
	quVsyZLgDvU8E7OYPjukP7ZSUvAp/Eeh0a/uqIYaR3mcwlEpD+KWrNUQK91EB0SbVAAm
	XOfvV/o7Rygl7D1+8N8nK/BJ6w+TwTOfnyw37Xvx3Pabx9ocJktBSpI34J/gA9ZAOP17
	aizHPhXKCu3ZEBxQvWqnE7a5D0MHnoPakIdqgPdYceshRoJjLel5rqUUfQqRSD0RFEWz
	37JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=lWEgOviO3zYWHuHOxHTvS7sEAZrARZOPsJRR2j43ur0=;
	b=iyhgmygM5+a2XzAEJruREHAg73Ugz/z7Xvxp7zEzrKTnR0In9n/AHo/ueNiDXI9UcP
	NJw8cUGhsU2lDffKBvJPNhth4wtMEABMuyP4byMPwE5gr1OWVAxA/QCRXB+T+GgINI+Z
	bUtYkjr75gEfCndyV8u/q13v3lcGQRhZjV8pAIbYkpEWWIZVXoj98Ou0P/23x7AkyPUh
	yJE/5iDb3mvsW1cTWNSE1x6EMgmHKkzPLl1nJwGcZ+iQ3uGRgaELpdwp8gU6MVJDP1kz
	AbtzD6V+LxoSW3p7An3E4zpLj5ObKpDakUePDaxPmqN8ltZYcbskOVPf7JDlHzHN4F+C
	4dKw==
X-Gm-Message-State: APjAAAU7qaFMhPzsXIYtaxDJncJw2JmZMP1U5mBIc0u8dT3fW15Gy+Eg
	kvEaLbEwUQvkm9V3oNwB639fG8Vs845U5FZ0492KXNWQ
X-Google-Smtp-Source: APXvYqzQRAAQp/4/o61w69aElOuVY+uwB/JIuSReVqH56lZBJumx/4uOBstQAEbfIXspX8J1nrLW7JaChhw2IbcZn98=
X-Received: by 2002:a25:b749:: with SMTP id e9mr11497533ybm.299.1560343912016; 
	Wed, 12 Jun 2019 05:51:52 -0700 (PDT)
MIME-Version: 1.0
From: Adam Lee <adam.yh.lee@gmail.com>
Date: Wed, 12 Jun 2019 08:51:41 -0400
Message-ID: <CAFeBWL6Z0d-oEJh-x2BRZRJ2YaAzv5FBcR7aQKTQ2HRNQqDO9Q@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 14 Jun 2019 08:08:25 -0700
Subject: Build failure on kernel-devsrc
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
X-List-Received-Date: Wed, 12 Jun 2019 12:51:53 -0000
Content-Type: text/plain; charset="UTF-8"

At some point I noticed I *must* clean kernel-devsrc before I can
build my image with Kernel changes.
I suppose this isn't normal and expect it rebuild what's necessary as
part of the image build. Has anyone seen this before?

Build Configuration:
BB_VERSION           = "1.36.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "ubuntu-18.04"
TARGET_SYS           = "arm-oe-linux-gnueabi"
MACHINE              = "solix"
DISTRO               = "jome"
DISTRO_VERSION       = "2018.06"
TUNE_FEATURES        = "arm armv7a vfp thumb neon callconvention-hard"
TARGET_FPU           = "hard"
meta-arago-distro
meta-arago-extras    = "HEAD:61f5c7b578255a0ddff8046b060f8488157c0a0d"
meta-browser         = "HEAD:4c1d135a085fe4011fadd73bf1f7876d26eac443"
meta-qt5             = "HEAD:682ad61c071a9710e9f9d8a32ab1b5f3c14953d1"
meta-networking
meta-python
meta-oe
meta-gnome           = "HEAD:352531015014d1957d6444d114f4451e241c4d23"
meta-ti              = "HEAD:6f1740c8121daafc497e26834bee67e3eeae322c"
meta-jo              = "dev:914fe3bb19ec4ddad0c7286b6908eddddb82a5be"
meta-linaro-toolchain
meta-optee           = "HEAD:75dfb67bbb14a70cd47afda9726e2e1c76731885"
meta                 = "HEAD:931a52e8698f684ccbb26ddec18764ad9d9a3e8f"
workspace            = "<unknown>:<unknown>"

Initialising tasks: 100%
|###################################################################################################|
Time: 0:00:06
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: redpine: compiling from external source tree
/home/adam/test/build/workspace/sources/redpine/source/host
NOTE: lp8863-mod: compiling from external source tree
/home/adam/test/build/workspace/sources/lp8863-mod
ERROR: kernel-devsrc-1.0-r0 do_install: Function failed: do_install
(log file is located at
/home/adam/test/build/build/tmp-glibc/work/solix-oe-linux-gnueabi/kernel-devsrc/1.0-r0/temp/log.do_install.70443)
ERROR: Logfile of failure stored in:
/home/adam/test/build/build/tmp-glibc/work/solix-oe-linux-gnueabi/kernel-devsrc/1.0-r0/temp/log.do_install.70443
Log data follows:
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are
['virtual:native:/home/adam/test/poky/meta/recipes-devtools/pseudo/pseudo_1.8.2.bb:do_populate_sysroot',
'/home/adam/test/poky/meta/recipes-devtools/gcc/gcc-runtime_7.3.bb:do_populate_sysroot',
'/home/adam/test/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_populate_sysroot',
'/home/adam/test/poky/meta/recipes-core/glibc/glibc_2.26.bb:do_populate_sysroot',
'virtual:native:/home/adam/test/poky/meta/recipes-bsp/u-boot/u-boot-mkimage_2017.09.bb:do_populate_sysroot',
'virtual:native:/home/adam/test/poky/meta/recipes-extended/bc/bc_1.06.bb:do_populate_sysroot',
'/home/adam/test/poky/meta/recipes-kernel/kmod/kmod-native_git.bb:do_populate_sysroot',
'virtual:native:/home/adam/test/poky/meta/recipes-support/lzop/lzop_1.03.bb:do_populate_sysroot',
'/home/adam/test/poky/meta/recipes-devtools/binutils/binutils-cross_2.29.1.bb:do_populate_sysroot',
'/home/adam/test/poky/meta/recipes-devtools/gcc/gcc-cross_7.3.bb:do_populate_sysroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['pseudo-native',
'gcc-runtime', 'quilt-native', 'glibc', 'u-boot-mkimage-native',
'bc-native', 'kmod-native', 'lzop-native', 'binutils-cross-arm',
'gcc-cross-arm', 'linux-libc-headers', 'libgcc', 'openssl-native',
'gnu-config-native', 'gtk-doc-native', 'libtool-native',
'zlib-native', 'pkgconfig-native', 'autoconf-native',
'automake-native', 'texinfo-dummy-native', 'bison-native',
'flex-native', 'mpfr-native', 'xz-native', 'gmp-native',
'libmpc-native', 'lzo-native', 'makedepend-native',
'cryptodev-linux-native', 'm4-native', 'gettext-minimal-native',
'xproto-native', 'util-macros-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_install
| 0 blocks
| cpio: ./singletask.lock: Cannot stat: No such file or directory
| 0 blocks
| WARNING: exit code 2 from a shell command.
| ERROR: Function failed: do_install (log file is located at
/home/adam/test/build/build/tmp-glibc/work/solix-oe-linux-gnueabi/kernel-devsrc/1.0-r0/temp/log.do_install.70443)
ERROR: Task (/home/adam/test/poky/meta/recipes-kernel/linux/kernel-devsrc.bb:do_install)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 5488 tasks of which 5240 didn't need to
be rerun and 1 failed.
NOTE: Writing buildhistory

Summary: 1 task failed:
  /home/adam/test/poky/meta/recipes-kernel/linux/kernel-devsrc.bb:do_install
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

