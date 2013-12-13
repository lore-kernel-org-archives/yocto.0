Return-Path: <insop.song@gmail.com>
Received: from mail-we0-f178.google.com (mail-we0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4155DE007B0
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 11:04:14 -0800 (PST)
Received: by mail-we0-f178.google.com with SMTP id u57so2292748wes.37
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 11:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=WYMkb/JKrCs5UmUMxPCZq7KWQKB8seSkBrSz6xMX9mA=;
	b=B0pCDKpASNqqv/2J1x1uK34CkDRkjHESEnjtZ+MkWCtR0cCVmxyJNK1Ime6tT5D3jf
	zSe+SQw8qT6EZeHzEO/1Ee2flwbuHWFlgG+lamRINGKyHlzphbz5yej5MMvupI/EqnIK
	QDB0n1OWh4g79niX/vAMdP+w8s/2Q2hqzprCtHVKtJ3+ku3j2X2OCh3yIpKs4yFookSG
	1X4M8+42Vh2zAZvmvkCKm7fYzxCRzr7lMbmp2k4d8TnhNwCjDfuJzlLhCKDbV0BM2g4D
	KSOWV0avgl55KF+KTnBheUIH1tf3m9vSmvDBk1CHjf3ZegCxv3T9NWIwm9ASK9bNN0Aw
	Zv6w==
X-Received: by 10.180.90.37 with SMTP id bt5mr4180368wib.43.1386961453291;
	Fri, 13 Dec 2013 11:04:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.24.170 with HTTP; Fri, 13 Dec 2013 11:03:45 -0800 (PST)
In-Reply-To: <CACzyEJ-gZmh4hDmCiaNUZzFcx6H2edtMfh0AFvq7HMCVC-+XTg@mail.gmail.com>
References: <CACzyEJ-gZmh4hDmCiaNUZzFcx6H2edtMfh0AFvq7HMCVC-+XTg@mail.gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Fri, 13 Dec 2013 11:03:45 -0800
Message-ID: <CACzyEJ_8Ejk_jiB-FFLF=wfSQ_wDKHKPV8COvBfvNbJfu9zPRA@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>,
	Khem Raj <raj.khem@gmail.com>, paul.eggleton@linux.intel.com
Cc: Mingkai.Hu@freescale.com, yorksun@freescale.com
Subject: Re: package_deb creation issue in powerpc (kernel 64bit, userspace 32bit)
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
X-List-Received-Date: Fri, 13 Dec 2013 19:04:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

Can anyone use debian package?

On Tue, Dec 10, 2013 at 9:29 PM, Insop Song <insop.song@gmail.com> wrote:
> Hi Khem and Paul,
>
> I have an issue of creating deb packages.
>
> I am using Freescale version of yocto, which is based on dylan
> - http://git.freescale.com/git/cgit.cgi/ppc/sdk/poky.git/
>
> I've put the following in
> - PACKAGE_CLASSES ?= "package_deb"
> - IMAGE_FEATURES += "package-management"
>
> I've tested opkg, and it runs fine as you suggested in other thread
> - https://lists.yoctoproject.org/pipermail/yocto/2013-October/016887.html
>
> Our target is:
> - RFS and application: 32bit
> - Kernel: 64 bit
> - ARCH: powerpc
>
>
> Here is the error message I got:
>
> "
> insop@neon /opt/build-fsl-yocto-1.4 $ bitbake fsl-image-g100
> Parsing recipes: 100%
> |###########################################################################################|
> Time: 00:01:30
> Parsing of 1376 .bb files complete (0 cached, 1376 parsed). 3147
> targets, 132 skipped, 0 masked, 0 errors.
> Build Configuration:
> BB_VERSION        = "1.18.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-12.04"
> TARGET_SYS        = "powerpc-fsl_networking-linux"
> MACHINE           = "b4860qds"
> DISTRO            = "fsl-networking"
> DISTRO_VERSION    = "1.4.1"
> TUNE_FEATURES     = "m32 fpu-hard e6500 altivec"
> TARGET_FPU        = "hard"
> meta
> meta-yocto
> meta-yocto-bsp    = "feature/CH-1449:97b5f9e64fb64aa1c883eedc03e6cb6765291179"
> meta-fsl-ppc      = "feature/CH-1449:d686f3162481ccb942a3d896a10a86d93d12e455"
> meta-fsl-ppc-toolchain = "sdk-v1.4.x:8ec94cec04527cb971c125b1ddd2c5375034d723"
> meta-virtualization = "sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f878329d6f93"
> meta-fsl-networking = "develop:08bb6c1a78838bbff79befa3f15e49ca642d479e"
> meta-oe
> meta-networking   = "sdk-v1.4.x:7c8dd8f096b64a709175d37a08a4fb02ca263616"
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Function failed: do_rootfs (see
> /opt/build-fsl-yocto-1.4/tmp/work/b4860qds-fsl_networking-linux/fsl-image-g100/1.0-r20/temp/log.do_rootfs.8847
> for further information)
> ERROR: Logfile of failure stored in:
> /opt/build-fsl-yocto-1.4/tmp/work/b4860qds-fsl_networking-linux/fsl-image-g100/1.0-r20/temp/log.do_rootfs.8847
> Log data follows:
> | DEBUG: Executing shell function do_rootfs
> | dpkg-scanpackages.real: info: Wrote 6 entries to output Packages file.
> | dpkg-scanpackages.real: info: Wrote 2037 entries to output Packages file.
> | dpkg-scanpackages.real: info: Wrote 68 entries to output Packages file.
> | dpkg-scanpackages.real: info: Wrote 6 entries to output Packages file.
> | Ign file: ./ InRelease
> | Ign file: ./ InRelease
> | Ign file: ./ InRelease
> | Ign file: ./ Release.gpg
> | Ign file: ./ Release.gpg
> | Ign file: ./ Release.gpg
> | Get:1 file: ./ Release [16 B]
> | Get:2 file: ./ Release [16 B]
> | Get:3 file: ./ Release [11 B]
> | Ign file: ./ Translation-en
> | Ign file: ./ Translation-en
> | Ign file: ./ Translation-en
> | Reading package lists...
> | W: Ignoring Provides line with DepCompareOp for package
> pkgconfig__pkg-config__
> | W: You may want to run apt-get update to correct these problems
> | Reading package lists...
> | Building dependency tree...
> | W: Ignoring Provides line with DepCompareOp for package
> pkgconfig__pkg-config__
> | W: You may want to run apt-get update to correct these problems
> | E: Unable to locate package lib64-hypervisor
> | E: Unable to locate package lib64-hypervisor-partman
> | ERROR: Function failed: do_rootfs (see
> /opt/build-fsl-yocto-1.4/tmp/work/b4860qds-fsl_networking-linux/fsl-image-g100/1.0-r20/temp/log.do_rootfs.8847
> for further information)
> ERROR: Task 7 (/home/insop/Projects/fsl-yocto-1.4/meta-fsl-networking/images/fsl-image-g100.bb,
> do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3527 tasks of which 2782 didn't need to
> be rerun and 1 failed.
> No currently running tasks (3527 of 3528)
> Summary: 1 task failed:
>   /home/insop/Projects/fsl-yocto-1.4/meta-fsl-networking/images/fsl-image-g100.bb,
> do_rootfs
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> "
>
> Thank you,
>
> Insop

