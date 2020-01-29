Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web11.2908.1580295596155173336
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 02:59:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hvbjTSaF;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: mans.zigher@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id n18so17930918ljo.7
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jan 2020 02:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=pTNiEUVySXSIkwtTQGRG4D+FqkkizjBKe8kjyg682/w=;
        b=hvbjTSaFOok/WTdY89+6YFT/Aq905flpuQp/NODr5t0kDFRI1X0HtlE1GUkR0fSnbx
         h3a3c2YHABsrhSXAsRLIrkDpA0z4tF41ErX2MV3tWLVn0wtydVpVGgi5DHRYR8BV5dM2
         ogOpL4z3+lTEoI+fndDQdpwZ0+mS7/WKEK7wA49NpQHD/rEkCQPWKX4kZbc6lBfVEg9a
         pUusJmMoeflbntmqId+GriTvc2pkLPq4x4s5h/fx0k5CeJV7fgJm7VEJy/sQn4WvtLbS
         NbOCm+ZQSrccxDCKMxGqN7u+UXya2GKBV8C0ad9B+Arbynhd9RW+78aEny/EJmBrTk0a
         U/Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=pTNiEUVySXSIkwtTQGRG4D+FqkkizjBKe8kjyg682/w=;
        b=WeL7lCtc1pj7HV07Iz9NclzxdThOT+XIwrEOgUQSVR4B9Wmd+5PPQNp/cUV0uo35Hw
         RiOnIG2MYSIYu4zXFupjdKSvpj7IWMtziJshpqzCqmQ4WwJJ13cv62fYY7PItMcQMO0F
         /CcFUmRo5SAyShUTM3pgpWCROFunLFJr9kCObTn4I3+sM2QeFH4J2JbdQlh/lktM8hgQ
         WFoxHYVQipgc2yGzuLPk9od2oUDy7LvVMOl2jyTwPKSmbyMD0q3fg7serNoubnjgvSt9
         J/5M8LQPnitMOhkL95EL1q4hmSLweTH8wfafMi0jAw0GysNFhNxNsw8F3zfUJpSx0RFW
         xJlg==
X-Gm-Message-State: APjAAAXcFv8q+oXvKnHa8g2Iw4X0N1AaM072v5Ec4OcTCXliv4ssJ4w9
	vmUFT4NokPMkG1eEsJxSveh+H1zss3tYpe7Ymro=
X-Google-Smtp-Source: APXvYqzo3G+m7NiJ3/RzgIbIVYX20kz53pen2UwFRq/ptx6s3QgOiiFDsV8gNgODJS+6OcBL6ZSk5i+sYKKbqy8iAeU=
X-Received: by 2002:a2e:85cd:: with SMTP id h13mr16269217ljj.191.1580295594180;
 Wed, 29 Jan 2020 02:59:54 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8nVontmaBzT_Grmhv32A1tbeen7JqDYV0mCD1qzBCZZQA@mail.gmail.com>
 <2775367.ckEGUpPHnh@yow-masselst-lx1> <CAEhQi8kUu-2Vna1MBbhmX3RfRdsfM1fTSzF88JkyCPs9HcS-sg@mail.gmail.com>
 <CAEhQi8nSu77Nm8aWeJqOPksFFoH6+-WcBbVxXGMVpRisLFP0oA@mail.gmail.com>
In-Reply-To: <CAEhQi8nSu77Nm8aWeJqOPksFFoH6+-WcBbVxXGMVpRisLFP0oA@mail.gmail.com>
From: "Mans Zigher" <mans.zigher@gmail.com>
Date: Wed, 29 Jan 2020 11:59:42 +0100
Message-ID: <CAEhQi8mebz_kedyhXhFJFvE=hEyQWiqAugkLP3QpMDp5ip=Xsg@mail.gmail.com>
Subject: Re: [yocto] [Question]:How to build kernel as externalsrc that is missing .git?
To: Mark Asselstine <mark.asselstine@windriver.com>
Cc: yocto@lists.yoctoproject.org, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For anyone having some similar issue with the linux-msm please notice
https://source.codeaurora.org/quic/le/meta-qti-bsp/tree/recipes-kernel/linu=
x-msm/linux-msm.inc?id=3Dcbe4d954a9a37dd15e78e3dfdc823ffc6776d746

do_kernel_checkout[noexec] =3D "1"

This will result in issues if you don't already have a .git directory
in the kernel source code. To unset this add

unset do_kernel_checkout[noexec]

to your bbappend file.

/Mans



Den ons 29 jan. 2020 kl 08:27 skrev M=C3=A5ns Zigher <mans.zigher@gmail.com=
>:
>
> Hi again,
>
> Looks like the kernel source code was not clean so I made sure it was
> and created a new tar file and now it is building. I will try using
> the tar file and if it works I will start moving to our own git repo.
>
> Thanks
>
> Den ons 29 jan. 2020 kl 08:05 skrev M=C3=A5ns Zigher <mans.zigher@gmail.c=
om>:
> >
> > Hi,
> >
> > Thanks for your help. You are probably right regarding the subject.
> > The build system that we are using have a complex setup where we are
> > downloading a large tar file and then running android repo tool when
> > we have all the source code we need to merge these two together. To
> > prevent downloading all of this from external source we naively
> > decided to put all of this up in our local gerrit server. So the use
> > of ${WORKSPACE} is used by by not just the kernel. For the long term
> > we will likely have to rethink this but my goal was for the short term
> > to try and set something up that we can use for the kernel. To test it
> > it out would it make sense to try and use a local tar file containing
> > the kernel source code? I am currently facing some issues when using a
> > tar file or the externalsrc for that mater. I just don't want to setup
> > the git repo and waist time on that if I can do quicker workaround for
> > now but based on what I can see in kernel-yocto.bbclass and the
> > documentation you pointing me to it looks like git is expected?
> >
> > ERROR: linux-msm-4.14-r0 do_compile: oe_runmake failed
> > ERROR: linux-msm-4.14-r0 do_compile: Function failed: do_compile (log
> > file is located at
> > /home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/li=
nux-msm/4.14-r0/temp/log.do_compile.13840)
> > ERROR: Logfile of failure stored in:
> > /home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/li=
nux-msm/4.14-r0/temp/log.do_compile.13840
> > Log data follows:
> > | DEBUG: Executing shell function do_compile
> > | NOTE: make -j 8 RTIC_MPGEN=3Dpython
> > /home/ext/workspace/gn/apps_proc/vendor/qcom/proprietary/qrsp/mpgen/mpg=
en.py
> >  INSTALL_MOD_STRIP=3D1
> > CC=3D/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-lin=
ux/linux-msm/4.14-r0/recipe-sysroot-native/usr/bin/llvm-arm-toolchain/bin/c=
lang
> > -target aarch64-oe-linux  -D__extern_always_inline=3Dinline
> > -no-integrated-as -Wno-error=3Dunused-command-line-argument
> > -Qunused-arguments -fstack-protector-strong -pie -fPIE
> > -D_FORTIFY_SOURCE=3D2 -Wa,--noexecstack -Wformat -Wformat-security
> > -Werror=3Dformat-security
> > --sysroot=3D/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64=
-oe-linux/linux-msm/4.14-r0/recipe-sysroot
> > -fuse-ld=3Dbfd  --sysroot=3D/home/ext/workspace/builds/board-debug/tmp-=
glibc/work/vt_64-oe-linux/linux-msm/4.14-r0/recipe-sysroot
> > LD=3Daarch64-oe-linux-ld.bfd
> > --sysroot=3D/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64=
-oe-linux/linux-msm/4.14-r0/recipe-sysroot
> > O=3D/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linu=
x/linux-msm/4.14-r0/build
> > |   CHK     include/config/kernel.release
> > | Error: kernelrelease not valid - run 'make prepare' to update it
> > |   UPD     include/config/kernel.release
> > |   GEN     ./Makefile
> > |   CHK     include/generated/uapi/linux/version.h
> > |   UPD     include/generated/uapi/linux/version.h
> > |   CHK     include/generated/utsrelease.h
> > |   UPD     include/generated/utsrelease.h
> > |   GEN     ./Makefile
> > | scripts/kconfig/conf  --silentoldconfig Kconfig
> > |   Using /home/ext/workspace/builds/board-debug/tmp-glibc/work-shared/=
vt-64/kernel-source
> > as source for kernel
> > |   /home/ext/workspace/builds/board-debug/tmp-glibc/work-shared/vt-64/=
kernel-source
> > is not clean, please run 'make mrproper'
> > |   in the '/home/ext/workspace/builds/board-debug/tmp-glibc/work-share=
d/vt-64/kernel-source'
> > directory.
> > | /home/ext/workspace/builds/board-debug/tmp-glibc/work-shared/vt-64/ke=
rnel-source/Makefile:1149:
> > recipe for target 'prepare3' failed
> > | make[2]: *** [prepare3] Error 1
> > | Makefile:146: recipe for target 'sub-make' failed
> > | make[1]: *** [sub-make] Error 2
> > | Makefile:24: recipe for target '__sub-make' failed
> > | make: *** [__sub-make] Error 2
> > | ERROR: oe_runmake failed
> > | WARNING: /home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-=
oe-linux/linux-msm/4.14-r0/temp/run.do_compile.13840:1
> > exit 1 from 'exit 1'
> > | ERROR: Function failed: do_compile (log file is located at
> > /home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/li=
nux-msm/4.14-r0/temp/log.do_compile.13840)
> > ERROR: Task (/home/ext/workspace/layers/meta-qti/meta-qti-bsp/recipes-k=
ernel/linux-msm/linux-msm_4.14.bb:do_compile)
> > failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 400 tasks of which 390 didn't need to
> > be rerun and 1 failed.
> > NOTE: Writing buildhistory
> >
> > Summary: 1 task failed:
> >   /home/ext/workspace/layers/meta-qti/meta-qti-bsp/recipes-kernel/linux=
-msm/linux-msm_4.14.bb:do_compile
> > Summary: There were 16 WARNING messages shown.
> > Summary: There were 2 ERROR messages shown, returning a non-zero exit c=
ode.
> >
> > Here is my current bbappend file
> >
> > 1 FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> > 2
> > 3 SRC_URI +=3D "file://msm-${PV}.tar.gz;subdir=3D${WORKDIR}/${PN}"
> > 4
> > 5 S =3D "${WORKDIR}/${PN}/msm-${PV}"
> >
> > The error "Error: kernelrelease not valid - run 'make prepare' to
> > update it" is coming from scripts/setlocalversion in the kernel source
> >
> > if test -e include/config/auto.conf; then
> >         . include/config/auto.conf
> > else
> >         echo "Error: kernelrelease not valid - run 'make prepare' to
> > update it" >&2
> >         exit 1
> > fi
> >
> > But when running bitbake -c devshell virtual/kernel and checking the
> > source code the file is there.
> >
> > Thanks
> >
> > Den tis 28 jan. 2020 kl 15:37 skrev Mark Asselstine
> > <mark.asselstine@windriver.com>:
> > >
> > > On Tuesday, January 28, 2020 7:37:28 A.M. EST Mans Zigher wrote:
> > > > Hi,
> > > >
> > > > We have a build where the kernel is based on
> > > > https://source.codeaurora.org/quic/le/meta-qti-bsp/tree/recipes-ker=
nel/linux
> > > > -msm/linux-msm_4.14.bb?id=3Dcbe4d954a9a37dd15e78e3dfdc823ffc6776d74=
6
> > > >
> > > > We are facing some issues with this recipe because I don't think it=
 is
> > > > correctly setup. For
> > > > example they are not using the externalsrc.bbclass even though the
> > > > source code is an external src. The location for the source code is
> > > > just defined by
> > > >
> > > > SRC_DIR =3D "${WORKSPACE}/kernel/msm-4.14"
> > > >
> > > > The WORKSPACE is then defined in the bblayers.conf file. The proble=
m
> > > > is that there are a lot of source code located in the WORKSPACE
> > > > directory so we decided to put all of that in it's own repo and che=
ck
> > > > it out before building. Because of that we had to remove the
> > > > individual .git directories in the repos that included the .git und=
er
> > > > ${WORKSPACE}/kernel/msm-4.14. Any suggestions? Is it possible to bu=
ild
> > > > the kernel as an externalsrc even when it is missing the .git? And =
can
> > > > we still apply patches when having it as an externalsrc? Or should =
we
> > > > just change it so we are using a local tar file?
> > >
> > > I would be hesitant to just going along with the implied use of ${WOR=
KSPACE}
> > > for the location of things such as the kernel source.
> > >
> > > ie. this bit from the linux-msm.inc file
> > > ---
> > > FILESPATH =3D+ "${WORKSPACE}:"
> > > SRC_URI   =3D  "file://kernel \
> > > ---
> > >
> > > You most likely already have a custom layer created where you have ot=
her
> > > customizations in the form of bbappends. If not I would set one up (u=
se
> > > bitbake-layers create-layer and bitbake-layers add-layer). I would th=
en create
> > > a linux-msm_%.bbappend and use this to make things more manageable by=
 removing
> > > the need to host things like the kernel source in ${WORKSPACE}. ie. i=
n the
> > > bbappend have 'FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"' and =
 'SRC_URI
> > > +=3D "git://your.git.server/path/to/the/kernel"'. This way you can av=
oid having
> > > to check your kernel git repo into another repo.
> > >
> > > Note that the SRC_URI crime they have in linux-msm.inc will require y=
ou to
> > > provide a file name 'kernel' still, you can do this by putting an emp=
ty file
> > > or a file with a line like 'satisfy SRC_URI' called kernel in your la=
yer. So
> > > you will end up with
> > >
> > > <your-custom-layer>/recipes-kernel/linux-msm/linux-msm_%.bbappend
> > > <your-custom-layer>/recipes-kernel/linux-msm/files/kernel
> > >
> > > If you need more inspiration review the kernel dev document
> > > https://www.yoctoproject.org/docs/1.6/kernel-dev/kernel-dev.html#work=
ing-with-your-own-sources
> > >
> > > Overall I don't think the question here should be, how do you work wi=
th
> > > kernels that don't have a .git. But rather how can you better configu=
re things
> > > with a bbappend in a custom layer to allow you to work better than wh=
at is
> > > being proposed in the meta-qti-bsp layer.
> > >
> > > Good luck,
> > > Mark Asselstine
> > >
> > > >
> > > > Thanks
> > > >
> > > > BR
> > > > Mans Zigher
> > >
> > >
> > >
> > >
