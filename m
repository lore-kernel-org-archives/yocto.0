Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 166DDE0044A
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 00:07:05 -0700 (PDT)
Received: by dadz8 with SMTP id z8so3717324dad.35
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 00:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=3/2torxRCoibPxKmQ2R7Kt12eo1d16nY6WaXkI+uWZo=;
	b=SwqichQxrfemmcE4QBGLWbKMqVvbcyPgV+z2Ve+g2czBq1yefrfqT4WW7ffzFLGJKL
	YS+a8zVUFZNrCKNFt3kmg9XrwT6rgqK5djlPtEKtg/Z/nEtxME4fPtASR4H3Cn/pBNmN
	PyvM3/f/sYT1bpe3TQVI0GRnZAB3YH9foGAO8at2vjKItl8jANBLHhgOS3yUW/DDFMau
	04FrW7AAT1GtyLdRjtlC942vfOinPRhschZHC4Ip6NklVdEqh7qb3dvgrqMLP9v9HGDj
	4+rpb3aEKA0JWWidoSif+btuoIgFAc+UahdoyWHfWtsMw/E8sZlc4Bq2mALYqVeNwaLd
	Ljxw==
MIME-Version: 1.0
Received: by 10.68.202.8 with SMTP id ke8mr28242522pbc.94.1336720024709; Fri,
	11 May 2012 00:07:04 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Fri, 11 May 2012 00:07:04 -0700 (PDT)
Date: Fri, 11 May 2012 09:07:04 +0200
Message-ID: <CACW_hTYnH_ccSf7844bwwKeKH+otHopbbz7h2igrCMhUddN1tQ@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: kernel rebuild and bitbake -c menuconfig
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
X-List-Received-Date: Fri, 11 May 2012 07:07:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm wondering how to do a kernel rebuild after doing changing the .config using
bitbake -c menuconfig virtual/kernel
I've tried forcing a recompile using:
bitbake -ccompile -f virtual/kernel
that indeed rebuilds the kernel
However if I then do a bitbake virtual/kernel this does not result in
an image in my deploy dir.

system info
host: ubuntu 12.04
denzil 7.0 software (from tarball)
target: ppc (actually for my own board but I did not do weird things
in my bsp, like adding extra tasks.

It seems the vmlinux.bin.gz is still generated but the uImage is not
(which can also be seen from the log below where do_install is not
ran.
Additional proof:
f5ad9f2b30047a8d3493a1a2880a-r1.40$ ls -l ./image/kernel/uImage
./linux-syrcxx-standard-build/vmlinux.bin.gz
-rw-r--r-- 1 frans frans 1609509 2012-05-10 10:19 ./image/kernel/uImage
-rwxr-xr-x 1 frans frans 1611499 2012-05-11 08:52
./linux-syrcxx-standard-build/vmlinux.bin.gz
This si from after I ran the bitbake commands below.

What is going wrong here?

Frans.

Log from
bitbake -c compile -f virtual/kernel; bitbake virtual/kernel

frans@frans-desktop:~/poky-denzil-7.0-build$ bitbake virtual/kernel
-ccompile -f; bitbake virtual/kernel
Loading cache: 100%
|########################################################################################################################|
ETA:  00:00:00
Loaded 1106 entries from dependency cache.

OE Build Configuration:
BB_VERSION        = "1.15.1"
TARGET_ARCH       = "powerpc"
TARGET_OS         = "linux-uclibc"
MACHINE           = "syrcxx"
DISTRO            = "poky"
DISTRO_VERSION    = "1.2"
TUNE_FEATURES     = "m32 fpu-hard ppce300c3"
TARGET_FPU        = ""
meta
meta-yocto
meta-syrcxx       = "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
^[NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
kNOTE: Running task 278 of 278 (ID: 8,
/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
do_compile)
kkNOTE: package
linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
task do_compile: Started
NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
task do_compile: Succeeded
NOTE: Tasks Summary: Attempted 278 tasks of which 277 didn't need to
be rerun and all succeeded.
Loading cache: 100%
|########################################################################################################################|
ETA:  00:00:00
Loaded 1106 entries from dependency cache.

OE Build Configuration:
BB_VERSION        = "1.15.1"
TARGET_ARCH       = "powerpc"
TARGET_OS         = "linux-uclibc"
MACHINE           = "syrcxx"
DISTRO            = "poky"
DISTRO_VERSION    = "1.2"
TUNE_FEATURES     = "m32 fpu-hard ppce300c3"
TARGET_FPU        = ""
meta
meta-yocto
meta-syrcxx       = "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Running setscene task 213 of 235
(/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
do_populate_sysroot_setscene)
NOTE: Running setscene task 214 of 235
(/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
do_deploy_setscene)
NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
task do_populate_sysroot_setscene: Started
NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
task do_deploy_setscene: Started
NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
task do_deploy_setscene: Succeeded
NOTE: Running setscene task 215 of 235
(/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
do_package_setscene)
NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
task do_package_setscene: Started
NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
task do_package_setscene: Succeeded
NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
task do_populate_sysroot_setscene: Succeeded
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 664 tasks of which 664 didn't need to
be rerun and all succeeded.

