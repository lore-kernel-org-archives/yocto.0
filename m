Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web12.757.1580281523884251826
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2020 23:05:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SIJ9uyRf;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: mans.zigher@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id f24so11098674lfh.3
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2020 23:05:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1BEXEPSD6+7Ll5OEKlNzz3JG/2xBN/QFFRodkk4LiC0=;
        b=SIJ9uyRfOWwvead9bRumQAvvxaGlH6oD0qGAHDPuo/cwzoxeOZBxe6YN0S7JWLzi/B
         PYIpwkYVG4WtE4SZqdR5JTM8JRxWwQZL/rGsUlRh1nO0mJlZ5K266RAZn9ZvgPYLx9yi
         3A1zzzO7zzwVg3DXqFv3T1VSn0V7qaXAZSaIRSJj7E9aDD99l/bFsG8iBoDCwKMmAlyt
         aC6OlsD0BKLBcrLxLxhsIi+W/Wou68kpziSA055I628ZBnHVxT55YtuxNau5WU5s4pe/
         OK55x7S3uPbznl4vEOEGeES5AVxhoiejHHZvGQOUi6EAt/+58GDjy0ns8AGBMHNZmIgQ
         89Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1BEXEPSD6+7Ll5OEKlNzz3JG/2xBN/QFFRodkk4LiC0=;
        b=StRt4b4ww6qxKuQ0nt6tAfR3pCK99uJ8j9UJF/H6bhDhcogjeFoDPyIH8zv0X7Bwah
         4ZRCohVbRYwcyky4JrjgLl45EWKDY0RkeK3lAUMCH7dh2J0ifiVrm0aE6MmaMdklRPLw
         bfKxpAzpGlp/xNBWYTs39hz00ecJv+ZJ8A8pvHKwIL5jQ8E44SOc9SdC+8t6sTWa7Oo5
         9pUov3VUd1zqfmr/08XA74roHu6ABVlSm8V9zbjJlpPZUnZDV1Y9HVIy7PM2EL4qgfQA
         pZvIAjU30swGM/CusDnkBoS/orU02csVpcCQSsV8KZ+iXhaT6pD46LcDIVoxBYTZj7Om
         QQ7A==
X-Gm-Message-State: APjAAAWMI/u0f3ljLxqL9Tb/mJ5YHHiybV9Moi+n4J8IJN+xGYbnIa9f
	qDHxmjElZ3E0iLwOIsVwX+8tSsmyfC4oTZQ9VI4=
X-Google-Smtp-Source: APXvYqyEau70Zzmf6vKEyz+nf6YO8ebHejerihsY79m3JBTbZSxatA2JcQx59ajUvkVQUS1YS5FhWoHy3MsXmDsx6Gs=
X-Received: by 2002:a19:8456:: with SMTP id g83mr4770819lfd.0.1580281521847;
 Tue, 28 Jan 2020 23:05:21 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8nVontmaBzT_Grmhv32A1tbeen7JqDYV0mCD1qzBCZZQA@mail.gmail.com>
 <2775367.ckEGUpPHnh@yow-masselst-lx1>
In-Reply-To: <2775367.ckEGUpPHnh@yow-masselst-lx1>
From: "Mans Zigher" <mans.zigher@gmail.com>
Date: Wed, 29 Jan 2020 08:05:10 +0100
Message-ID: <CAEhQi8kUu-2Vna1MBbhmX3RfRdsfM1fTSzF88JkyCPs9HcS-sg@mail.gmail.com>
Subject: Re: [yocto] [Question]:How to build kernel as externalsrc that is missing .git?
To: Mark Asselstine <mark.asselstine@windriver.com>
Cc: yocto@lists.yoctoproject.org, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

Thanks for your help. You are probably right regarding the subject.
The build system that we are using have a complex setup where we are
downloading a large tar file and then running android repo tool when
we have all the source code we need to merge these two together. To
prevent downloading all of this from external source we naively
decided to put all of this up in our local gerrit server. So the use
of ${WORKSPACE} is used by by not just the kernel. For the long term
we will likely have to rethink this but my goal was for the short term
to try and set something up that we can use for the kernel. To test it
it out would it make sense to try and use a local tar file containing
the kernel source code? I am currently facing some issues when using a
tar file or the externalsrc for that mater. I just don't want to setup
the git repo and waist time on that if I can do quicker workaround for
now but based on what I can see in kernel-yocto.bbclass and the
documentation you pointing me to it looks like git is expected?

ERROR: linux-msm-4.14-r0 do_compile: oe_runmake failed
ERROR: linux-msm-4.14-r0 do_compile: Function failed: do_compile (log
file is located at
/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/linux-msm/4.14-r0/temp/log.do_compile.13840)
ERROR: Logfile of failure stored in:
/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/linux-msm/4.14-r0/temp/log.do_compile.13840
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 8 RTIC_MPGEN=python
/home/ext/workspace/gn/apps_proc/vendor/qcom/proprietary/qrsp/mpgen/mpgen.py
 INSTALL_MOD_STRIP=1
CC=/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/linux-msm/4.14-r0/recipe-sysroot-native/usr/bin/llvm-arm-toolchain/bin/clang
-target aarch64-oe-linux  -D__extern_always_inline=inline
-no-integrated-as -Wno-error=unused-command-line-argument
-Qunused-arguments -fstack-protector-strong -pie -fPIE
-D_FORTIFY_SOURCE=2 -Wa,--noexecstack -Wformat -Wformat-security
-Werror=format-security
--sysroot=/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/linux-msm/4.14-r0/recipe-sysroot
-fuse-ld=bfd  --sysroot=/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/linux-msm/4.14-r0/recipe-sysroot
LD=aarch64-oe-linux-ld.bfd
--sysroot=/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/linux-msm/4.14-r0/recipe-sysroot
O=/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/linux-msm/4.14-r0/build
|   CHK     include/config/kernel.release
| Error: kernelrelease not valid - run 'make prepare' to update it
|   UPD     include/config/kernel.release
|   GEN     ./Makefile
|   CHK     include/generated/uapi/linux/version.h
|   UPD     include/generated/uapi/linux/version.h
|   CHK     include/generated/utsrelease.h
|   UPD     include/generated/utsrelease.h
|   GEN     ./Makefile
| scripts/kconfig/conf  --silentoldconfig Kconfig
|   Using /home/ext/workspace/builds/board-debug/tmp-glibc/work-shared/vt-64/kernel-source
as source for kernel
|   /home/ext/workspace/builds/board-debug/tmp-glibc/work-shared/vt-64/kernel-source
is not clean, please run 'make mrproper'
|   in the '/home/ext/workspace/builds/board-debug/tmp-glibc/work-shared/vt-64/kernel-source'
directory.
| /home/ext/workspace/builds/board-debug/tmp-glibc/work-shared/vt-64/kernel-source/Makefile:1149:
recipe for target 'prepare3' failed
| make[2]: *** [prepare3] Error 1
| Makefile:146: recipe for target 'sub-make' failed
| make[1]: *** [sub-make] Error 2
| Makefile:24: recipe for target '__sub-make' failed
| make: *** [__sub-make] Error 2
| ERROR: oe_runmake failed
| WARNING: /home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/linux-msm/4.14-r0/temp/run.do_compile.13840:1
exit 1 from 'exit 1'
| ERROR: Function failed: do_compile (log file is located at
/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/linux-msm/4.14-r0/temp/log.do_compile.13840)
ERROR: Task (/home/ext/workspace/layers/meta-qti/meta-qti-bsp/recipes-kernel/linux-msm/linux-msm_4.14.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 400 tasks of which 390 didn't need to
be rerun and 1 failed.
NOTE: Writing buildhistory

Summary: 1 task failed:
  /home/ext/workspace/layers/meta-qti/meta-qti-bsp/recipes-kernel/linux-msm/linux-msm_4.14.bb:do_compile
Summary: There were 16 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

Here is my current bbappend file

1 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
2
3 SRC_URI += "file://msm-${PV}.tar.gz;subdir=${WORKDIR}/${PN}"
4
5 S = "${WORKDIR}/${PN}/msm-${PV}"

The error "Error: kernelrelease not valid - run 'make prepare' to
update it" is coming from scripts/setlocalversion in the kernel source

if test -e include/config/auto.conf; then
        . include/config/auto.conf
else
        echo "Error: kernelrelease not valid - run 'make prepare' to
update it" >&2
        exit 1
fi

But when running bitbake -c devshell virtual/kernel and checking the
source code the file is there.

Thanks

Den tis 28 jan. 2020 kl 15:37 skrev Mark Asselstine
<mark.asselstine@windriver.com>:
>
> On Tuesday, January 28, 2020 7:37:28 A.M. EST Mans Zigher wrote:
> > Hi,
> >
> > We have a build where the kernel is based on
> > https://source.codeaurora.org/quic/le/meta-qti-bsp/tree/recipes-kernel/linux
> > -msm/linux-msm_4.14.bb?id=cbe4d954a9a37dd15e78e3dfdc823ffc6776d746
> >
> > We are facing some issues with this recipe because I don't think it is
> > correctly setup. For
> > example they are not using the externalsrc.bbclass even though the
> > source code is an external src. The location for the source code is
> > just defined by
> >
> > SRC_DIR = "${WORKSPACE}/kernel/msm-4.14"
> >
> > The WORKSPACE is then defined in the bblayers.conf file. The problem
> > is that there are a lot of source code located in the WORKSPACE
> > directory so we decided to put all of that in it's own repo and check
> > it out before building. Because of that we had to remove the
> > individual .git directories in the repos that included the .git under
> > ${WORKSPACE}/kernel/msm-4.14. Any suggestions? Is it possible to build
> > the kernel as an externalsrc even when it is missing the .git? And can
> > we still apply patches when having it as an externalsrc? Or should we
> > just change it so we are using a local tar file?
>
> I would be hesitant to just going along with the implied use of ${WORKSPACE}
> for the location of things such as the kernel source.
>
> ie. this bit from the linux-msm.inc file
> ---
> FILESPATH =+ "${WORKSPACE}:"
> SRC_URI   =  "file://kernel \
> ---
>
> You most likely already have a custom layer created where you have other
> customizations in the form of bbappends. If not I would set one up (use
> bitbake-layers create-layer and bitbake-layers add-layer). I would then create
> a linux-msm_%.bbappend and use this to make things more manageable by removing
> the need to host things like the kernel source in ${WORKSPACE}. ie. in the
> bbappend have 'FILESEXTRAPATHS_prepend := "${THISDIR}/files:"' and  'SRC_URI
> += "git://your.git.server/path/to/the/kernel"'. This way you can avoid having
> to check your kernel git repo into another repo.
>
> Note that the SRC_URI crime they have in linux-msm.inc will require you to
> provide a file name 'kernel' still, you can do this by putting an empty file
> or a file with a line like 'satisfy SRC_URI' called kernel in your layer. So
> you will end up with
>
> <your-custom-layer>/recipes-kernel/linux-msm/linux-msm_%.bbappend
> <your-custom-layer>/recipes-kernel/linux-msm/files/kernel
>
> If you need more inspiration review the kernel dev document
> https://www.yoctoproject.org/docs/1.6/kernel-dev/kernel-dev.html#working-with-your-own-sources
>
> Overall I don't think the question here should be, how do you work with
> kernels that don't have a .git. But rather how can you better configure things
> with a bbappend in a custom layer to allow you to work better than what is
> being proposed in the meta-qti-bsp layer.
>
> Good luck,
> Mark Asselstine
>
> >
> > Thanks
> >
> > BR
> > Mans Zigher
>
>
>
>
