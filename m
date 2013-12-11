Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8EF2E007C1
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 21:30:10 -0800 (PST)
Received: by mail-wi0-f180.google.com with SMTP id hn9so323867wib.13
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 21:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=D29lSnJ6UrHw8HPj2IRSSm7nnHY6M9Y9Jf7ENSpMi70=;
	b=Y22XpGPyDkSaUp095ILRPwlk74yPOxwFyITh0uZtEgNrMHlFMMld9ERrXEgp17TpI3
	ur1/l6jn51TfOZj7eaEQuu+v/l3phjImx7zpjRhbvlI/Gnhp3uRJTfzaJQCxIaZ8T0HR
	5Bzob/aZyGvhJNX7BcWD7St96MftOkZfaewNuczlYdzExohravnTAB2MgITxOFv1DFQ7
	OwqH6NJqq5N3MNavL9ssp+aPQEXLjzAjwx0wEFzubaTa9scQlEILEYRfIPffAlc51ZbZ
	/R3ncXJ0lcUUSGfEayZTHypH5ZqNo3Lu1BtsvANpm9hT8uMH99gOEZE2WcB/TO7kqDdz
	9l2Q==
X-Received: by 10.180.160.166 with SMTP id xl6mr1069984wib.43.1386739809555;
	Tue, 10 Dec 2013 21:30:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.24.170 with HTTP; Tue, 10 Dec 2013 21:29:49 -0800 (PST)
From: Insop Song <insop.song@gmail.com>
Date: Tue, 10 Dec 2013 21:29:49 -0800
Message-ID: <CACzyEJ-gZmh4hDmCiaNUZzFcx6H2edtMfh0AFvq7HMCVC-+XTg@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>,
	Khem Raj <raj.khem@gmail.com>, paul.eggleton@linux.intel.com
Cc: Mingkai.Hu@freescale.com, yorksun@freescale.com
Subject: package_deb creation issue in powerpc (kernel 64bit, userspace 32bit)
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
X-List-Received-Date: Wed, 11 Dec 2013 05:30:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Khem and Paul,

I have an issue of creating deb packages.

I am using Freescale version of yocto, which is based on dylan
- http://git.freescale.com/git/cgit.cgi/ppc/sdk/poky.git/

I've put the following in
- PACKAGE_CLASSES ?= "package_deb"
- IMAGE_FEATURES += "package-management"

I've tested opkg, and it runs fine as you suggested in other thread
- https://lists.yoctoproject.org/pipermail/yocto/2013-October/016887.html

Our target is:
- RFS and application: 32bit
- Kernel: 64 bit
- ARCH: powerpc


Here is the error message I got:

"
insop@neon /opt/build-fsl-yocto-1.4 $ bitbake fsl-image-g100
Parsing recipes: 100%
|###########################################################################################|
Time: 00:01:30
Parsing of 1376 .bb files complete (0 cached, 1376 parsed). 3147
targets, 132 skipped, 0 masked, 0 errors.
Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "powerpc-fsl_networking-linux"
MACHINE           = "b4860qds"
DISTRO            = "fsl-networking"
DISTRO_VERSION    = "1.4.1"
TUNE_FEATURES     = "m32 fpu-hard e6500 altivec"
TARGET_FPU        = "hard"
meta
meta-yocto
meta-yocto-bsp    = "feature/CH-1449:97b5f9e64fb64aa1c883eedc03e6cb6765291179"
meta-fsl-ppc      = "feature/CH-1449:d686f3162481ccb942a3d896a10a86d93d12e455"
meta-fsl-ppc-toolchain = "sdk-v1.4.x:8ec94cec04527cb971c125b1ddd2c5375034d723"
meta-virtualization = "sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f878329d6f93"
meta-fsl-networking = "develop:08bb6c1a78838bbff79befa3f15e49ca642d479e"
meta-oe
meta-networking   = "sdk-v1.4.x:7c8dd8f096b64a709175d37a08a4fb02ca263616"
NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_rootfs (see
/opt/build-fsl-yocto-1.4/tmp/work/b4860qds-fsl_networking-linux/fsl-image-g100/1.0-r20/temp/log.do_rootfs.8847
for further information)
ERROR: Logfile of failure stored in:
/opt/build-fsl-yocto-1.4/tmp/work/b4860qds-fsl_networking-linux/fsl-image-g100/1.0-r20/temp/log.do_rootfs.8847
Log data follows:
| DEBUG: Executing shell function do_rootfs
| dpkg-scanpackages.real: info: Wrote 6 entries to output Packages file.
| dpkg-scanpackages.real: info: Wrote 2037 entries to output Packages file.
| dpkg-scanpackages.real: info: Wrote 68 entries to output Packages file.
| dpkg-scanpackages.real: info: Wrote 6 entries to output Packages file.
| Ign file: ./ InRelease
| Ign file: ./ InRelease
| Ign file: ./ InRelease
| Ign file: ./ Release.gpg
| Ign file: ./ Release.gpg
| Ign file: ./ Release.gpg
| Get:1 file: ./ Release [16 B]
| Get:2 file: ./ Release [16 B]
| Get:3 file: ./ Release [11 B]
| Ign file: ./ Translation-en
| Ign file: ./ Translation-en
| Ign file: ./ Translation-en
| Reading package lists...
| W: Ignoring Provides line with DepCompareOp for package
pkgconfig__pkg-config__
| W: You may want to run apt-get update to correct these problems
| Reading package lists...
| Building dependency tree...
| W: Ignoring Provides line with DepCompareOp for package
pkgconfig__pkg-config__
| W: You may want to run apt-get update to correct these problems
| E: Unable to locate package lib64-hypervisor
| E: Unable to locate package lib64-hypervisor-partman
| ERROR: Function failed: do_rootfs (see
/opt/build-fsl-yocto-1.4/tmp/work/b4860qds-fsl_networking-linux/fsl-image-g100/1.0-r20/temp/log.do_rootfs.8847
for further information)
ERROR: Task 7 (/home/insop/Projects/fsl-yocto-1.4/meta-fsl-networking/images/fsl-image-g100.bb,
do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3527 tasks of which 2782 didn't need to
be rerun and 1 failed.
No currently running tasks (3527 of 3528)
Summary: 1 task failed:
  /home/insop/Projects/fsl-yocto-1.4/meta-fsl-networking/images/fsl-image-g100.bb,
do_rootfs
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
"

Thank you,

Insop

