Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCD78E01402
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 05:38:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q4BCclFB003483
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 May 2012 05:38:47 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 11 May 2012 05:38:47 -0700
Message-ID: <4FAD0855.4080209@windriver.com>
Date: Fri, 11 May 2012 08:38:45 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
References: <CACW_hTYnH_ccSf7844bwwKeKH+otHopbbz7h2igrCMhUddN1tQ@mail.gmail.com>
In-Reply-To: <CACW_hTYnH_ccSf7844bwwKeKH+otHopbbz7h2igrCMhUddN1tQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: kernel rebuild and bitbake -c menuconfig
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
X-List-Received-Date: Fri, 11 May 2012 12:38:48 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-11 03:07 AM, Frans Meulenbroeks wrote:
> Hi,
>
> I'm wondering how to do a kernel rebuild after doing changing the .config using
> bitbake -c menuconfig virtual/kernel
> I've tried forcing a recompile using:
> bitbake -ccompile -f virtual/kernel
> that indeed rebuilds the kernel
> However if I then do a bitbake virtual/kernel this does not result in
> an image in my deploy dir.
>
> system info
> host: ubuntu 12.04
> denzil 7.0 software (from tarball)
> target: ppc (actually for my own board but I did not do weird things
> in my bsp, like adding extra tasks.
>
> It seems the vmlinux.bin.gz is still generated but the uImage is not
> (which can also be seen from the log below where do_install is not
> ran.
> Additional proof:
> f5ad9f2b30047a8d3493a1a2880a-r1.40$ ls -l ./image/kernel/uImage
> ./linux-syrcxx-standard-build/vmlinux.bin.gz
> -rw-r--r-- 1 frans frans 1609509 2012-05-10 10:19 ./image/kernel/uImage
> -rwxr-xr-x 1 frans frans 1611499 2012-05-11 08:52
> ./linux-syrcxx-standard-build/vmlinux.bin.gz
> This si from after I ran the bitbake commands below.
>
> What is going wrong here?

You are likely hitting this bug:

   https://bugzilla.yoctoproject.org/show_bug.cgi?id=2256

It's a known issue that is being worked on for 1.3, but the bugzilla has
workarounds that you can use in the meantime.

Cheers,

Bruce

>
> Frans.
>
> Log from
> bitbake -c compile -f virtual/kernel; bitbake virtual/kernel
>
> frans@frans-desktop:~/poky-denzil-7.0-build$ bitbake virtual/kernel
> -ccompile -f; bitbake virtual/kernel
> Loading cache: 100%
> |########################################################################################################################|
> ETA:  00:00:00
> Loaded 1106 entries from dependency cache.
>
> OE Build Configuration:
> BB_VERSION        = "1.15.1"
> TARGET_ARCH       = "powerpc"
> TARGET_OS         = "linux-uclibc"
> MACHINE           = "syrcxx"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.2"
> TUNE_FEATURES     = "m32 fpu-hard ppce300c3"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-syrcxx       = "<unknown>:<unknown>"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> ^[NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> kNOTE: Running task 278 of 278 (ID: 8,
> /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
> do_compile)
> kkNOTE: package
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
> task do_compile: Started
> NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
> task do_compile: Succeeded
> NOTE: Tasks Summary: Attempted 278 tasks of which 277 didn't need to
> be rerun and all succeeded.
> Loading cache: 100%
> |########################################################################################################################|
> ETA:  00:00:00
> Loaded 1106 entries from dependency cache.
>
> OE Build Configuration:
> BB_VERSION        = "1.15.1"
> TARGET_ARCH       = "powerpc"
> TARGET_OS         = "linux-uclibc"
> MACHINE           = "syrcxx"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.2"
> TUNE_FEATURES     = "m32 fpu-hard ppce300c3"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-syrcxx       = "<unknown>:<unknown>"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Running setscene task 213 of 235
> (/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
> do_populate_sysroot_setscene)
> NOTE: Running setscene task 214 of 235
> (/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
> do_deploy_setscene)
> NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
> task do_populate_sysroot_setscene: Started
> NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
> task do_deploy_setscene: Started
> NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
> task do_deploy_setscene: Succeeded
> NOTE: Running setscene task 215 of 235
> (/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
> do_package_setscene)
> NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
> task do_package_setscene: Started
> NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
> task do_package_setscene: Succeeded
> NOTE: package linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.40:
> task do_populate_sysroot_setscene: Succeeded
> NOTE: Executing RunQueue Tasks
> NOTE: Tasks Summary: Attempted 664 tasks of which 664 didn't need to
> be rerun and all succeeded.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


