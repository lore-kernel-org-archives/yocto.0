Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web12.871.1580282864886587481
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2020 23:27:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VheXHg6S;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: mans.zigher@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id r14so11148382lfm.5
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2020 23:27:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=+p231FyiToqsNzpZZwg6tqemNCyumnojzLygrxmk3C0=;
        b=VheXHg6S5MNvUPLMtrwbrAmIiu8Af+fUXVh+KOFnEa6UrifSu8CbO0n0n7rbp9FzqL
         BvrOXsHvWbiHwl0xr5OM88fjfp5DT/2mS8C/f2cm8xt1FlWSPUCm1u9VIDTZrtjhb3v3
         LE0fXciwNxp6pzQ6sRK8Ztpd6QBhtXfhN/hrC9CBSebkG1lFCmMOrijwcZsI3vJoNEGn
         pIn/5WIYWG45+mn5atjyL2R18L47nQYIcgUrDU/RvXV18Suat+qbRQFzPgSQLbXm+xaa
         qeN+9tQsx7hEaQgaloNLCmfU/90KhL/GSKdwJuVDhXAUYcsFYxaOpg92gpWT+EJIQw91
         koZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=+p231FyiToqsNzpZZwg6tqemNCyumnojzLygrxmk3C0=;
        b=Ili1ARg306uwpzwHbCZoXvbr8vUDPicIWokhL/Joz5wFaF/bZp6er973bxFYXdTdaL
         Bwnu3PNzCVPNMH5IKzmU21OTLNBOPM3GtZfXfV+1kqqvpPZVLTealL+RCsPnt8n+CyXj
         UjNlBMFM0W+/m6TzsSzdi67Pw6b1yM1jnTfp/ZgaDmNXeMKPBkSDp7hYxLoAg5+M0izS
         AfrsNGeyDQ95HBS+q3SC662N39T7sWbRICczXR+/bvi4CAqLCmpybl4NWFu63sCpqGCm
         p6xR8nZR2wxdJEObrccV8AX7cIyIlpiZj2l/Xirq6Bw/KGi2MCbQ6ZOyHrstTdYE8MxQ
         roqw==
X-Gm-Message-State: APjAAAVL6K4RItXzixiiY/WT+zRKbJR+Xqp417mExNixb03g3Z60AbVH
	FIEdx1j0uOUzibsP7r2So8TIR5PURKekEGOp23o=
X-Google-Smtp-Source: APXvYqwol+xLwo+VbGuY8tGTkz0O+ZVNMai7YSojRBn03z/zt9r6UlGhTzUH+jK+/PiCeljmZsr2eRXa7BtEUCjoEwc=
X-Received: by 2002:a19:22cc:: with SMTP id i195mr4514635lfi.148.1580282862931;
 Tue, 28 Jan 2020 23:27:42 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8nVontmaBzT_Grmhv32A1tbeen7JqDYV0mCD1qzBCZZQA@mail.gmail.com>
 <2775367.ckEGUpPHnh@yow-masselst-lx1> <CAEhQi8kUu-2Vna1MBbhmX3RfRdsfM1fTSzF88JkyCPs9HcS-sg@mail.gmail.com>
In-Reply-To: <CAEhQi8kUu-2Vna1MBbhmX3RfRdsfM1fTSzF88JkyCPs9HcS-sg@mail.gmail.com>
From: "Mans Zigher" <mans.zigher@gmail.com>
Date: Wed, 29 Jan 2020 08:27:31 +0100
Message-ID: <CAEhQi8nSu77Nm8aWeJqOPksFFoH6+-WcBbVxXGMVpRisLFP0oA@mail.gmail.com>
Subject: Re: [yocto] [Question]:How to build kernel as externalsrc that is missing .git?
To: Mark Asselstine <mark.asselstine@windriver.com>
Cc: yocto@lists.yoctoproject.org, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi again,

Looks like the kernel source code was not clean so I made sure it was
and created a new tar file and now it is building. I will try using
the tar file and if it works I will start moving to our own git repo.

Thanks

Den ons 29 jan. 2020 kl 08:05 skrev M=C3=A5ns Zigher <mans.zigher@gmail.com=
>:
>
> Hi,
>
> Thanks for your help. You are probably right regarding the subject.
> The build system that we are using have a complex setup where we are
> downloading a large tar file and then running android repo tool when
> we have all the source code we need to merge these two together. To
> prevent downloading all of this from external source we naively
> decided to put all of this up in our local gerrit server. So the use
> of ${WORKSPACE} is used by by not just the kernel. For the long term
> we will likely have to rethink this but my goal was for the short term
> to try and set something up that we can use for the kernel. To test it
> it out would it make sense to try and use a local tar file containing
> the kernel source code? I am currently facing some issues when using a
> tar file or the externalsrc for that mater. I just don't want to setup
> the git repo and waist time on that if I can do quicker workaround for
> now but based on what I can see in kernel-yocto.bbclass and the
> documentation you pointing me to it looks like git is expected?
>
> ERROR: linux-msm-4.14-r0 do_compile: oe_runmake failed
> ERROR: linux-msm-4.14-r0 do_compile: Function failed: do_compile (log
> file is located at
> /home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/linu=
x-msm/4.14-r0/temp/log.do_compile.13840)
> ERROR: Logfile of failure stored in:
> /home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/linu=
x-msm/4.14-r0/temp/log.do_compile.13840
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 8 RTIC_MPGEN=3Dpython
> /home/ext/workspace/gn/apps_proc/vendor/qcom/proprietary/qrsp/mpgen/mpgen=
.py
>  INSTALL_MOD_STRIP=3D1
> CC=3D/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux=
/linux-msm/4.14-r0/recipe-sysroot-native/usr/bin/llvm-arm-toolchain/bin/cla=
ng
> -target aarch64-oe-linux  -D__extern_always_inline=3Dinline
> -no-integrated-as -Wno-error=3Dunused-command-line-argument
> -Qunused-arguments -fstack-protector-strong -pie -fPIE
> -D_FORTIFY_SOURCE=3D2 -Wa,--noexecstack -Wformat -Wformat-security
> -Werror=3Dformat-security
> --sysroot=3D/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-o=
e-linux/linux-msm/4.14-r0/recipe-sysroot
> -fuse-ld=3Dbfd  --sysroot=3D/home/ext/workspace/builds/board-debug/tmp-gl=
ibc/work/vt_64-oe-linux/linux-msm/4.14-r0/recipe-sysroot
> LD=3Daarch64-oe-linux-ld.bfd
> --sysroot=3D/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-o=
e-linux/linux-msm/4.14-r0/recipe-sysroot
> O=3D/home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/=
linux-msm/4.14-r0/build
> |   CHK     include/config/kernel.release
> | Error: kernelrelease not valid - run 'make prepare' to update it
> |   UPD     include/config/kernel.release
> |   GEN     ./Makefile
> |   CHK     include/generated/uapi/linux/version.h
> |   UPD     include/generated/uapi/linux/version.h
> |   CHK     include/generated/utsrelease.h
> |   UPD     include/generated/utsrelease.h
> |   GEN     ./Makefile
> | scripts/kconfig/conf  --silentoldconfig Kconfig
> |   Using /home/ext/workspace/builds/board-debug/tmp-glibc/work-shared/vt=
-64/kernel-source
> as source for kernel
> |   /home/ext/workspace/builds/board-debug/tmp-glibc/work-shared/vt-64/ke=
rnel-source
> is not clean, please run 'make mrproper'
> |   in the '/home/ext/workspace/builds/board-debug/tmp-glibc/work-shared/=
vt-64/kernel-source'
> directory.
> | /home/ext/workspace/builds/board-debug/tmp-glibc/work-shared/vt-64/kern=
el-source/Makefile:1149:
> recipe for target 'prepare3' failed
> | make[2]: *** [prepare3] Error 1
> | Makefile:146: recipe for target 'sub-make' failed
> | make[1]: *** [sub-make] Error 2
> | Makefile:24: recipe for target '__sub-make' failed
> | make: *** [__sub-make] Error 2
> | ERROR: oe_runmake failed
> | WARNING: /home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe=
-linux/linux-msm/4.14-r0/temp/run.do_compile.13840:1
> exit 1 from 'exit 1'
> | ERROR: Function failed: do_compile (log file is located at
> /home/ext/workspace/builds/board-debug/tmp-glibc/work/vt_64-oe-linux/linu=
x-msm/4.14-r0/temp/log.do_compile.13840)
> ERROR: Task (/home/ext/workspace/layers/meta-qti/meta-qti-bsp/recipes-ker=
nel/linux-msm/linux-msm_4.14.bb:do_compile)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 400 tasks of which 390 didn't need to
> be rerun and 1 failed.
> NOTE: Writing buildhistory
>
> Summary: 1 task failed:
>   /home/ext/workspace/layers/meta-qti/meta-qti-bsp/recipes-kernel/linux-m=
sm/linux-msm_4.14.bb:do_compile
> Summary: There were 16 WARNING messages shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>
> Here is my current bbappend file
>
> 1 FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> 2
> 3 SRC_URI +=3D "file://msm-${PV}.tar.gz;subdir=3D${WORKDIR}/${PN}"
> 4
> 5 S =3D "${WORKDIR}/${PN}/msm-${PV}"
>
> The error "Error: kernelrelease not valid - run 'make prepare' to
> update it" is coming from scripts/setlocalversion in the kernel source
>
> if test -e include/config/auto.conf; then
>         . include/config/auto.conf
> else
>         echo "Error: kernelrelease not valid - run 'make prepare' to
> update it" >&2
>         exit 1
> fi
>
> But when running bitbake -c devshell virtual/kernel and checking the
> source code the file is there.
>
> Thanks
>
> Den tis 28 jan. 2020 kl 15:37 skrev Mark Asselstine
> <mark.asselstine@windriver.com>:
> >
> > On Tuesday, January 28, 2020 7:37:28 A.M. EST Mans Zigher wrote:
> > > Hi,
> > >
> > > We have a build where the kernel is based on
> > > https://source.codeaurora.org/quic/le/meta-qti-bsp/tree/recipes-kerne=
l/linux
> > > -msm/linux-msm_4.14.bb?id=3Dcbe4d954a9a37dd15e78e3dfdc823ffc6776d746
> > >
> > > We are facing some issues with this recipe because I don't think it i=
s
> > > correctly setup. For
> > > example they are not using the externalsrc.bbclass even though the
> > > source code is an external src. The location for the source code is
> > > just defined by
> > >
> > > SRC_DIR =3D "${WORKSPACE}/kernel/msm-4.14"
> > >
> > > The WORKSPACE is then defined in the bblayers.conf file. The problem
> > > is that there are a lot of source code located in the WORKSPACE
> > > directory so we decided to put all of that in it's own repo and check
> > > it out before building. Because of that we had to remove the
> > > individual .git directories in the repos that included the .git under
> > > ${WORKSPACE}/kernel/msm-4.14. Any suggestions? Is it possible to buil=
d
> > > the kernel as an externalsrc even when it is missing the .git? And ca=
n
> > > we still apply patches when having it as an externalsrc? Or should we
> > > just change it so we are using a local tar file?
> >
> > I would be hesitant to just going along with the implied use of ${WORKS=
PACE}
> > for the location of things such as the kernel source.
> >
> > ie. this bit from the linux-msm.inc file
> > ---
> > FILESPATH =3D+ "${WORKSPACE}:"
> > SRC_URI   =3D  "file://kernel \
> > ---
> >
> > You most likely already have a custom layer created where you have othe=
r
> > customizations in the form of bbappends. If not I would set one up (use
> > bitbake-layers create-layer and bitbake-layers add-layer). I would then=
 create
> > a linux-msm_%.bbappend and use this to make things more manageable by r=
emoving
> > the need to host things like the kernel source in ${WORKSPACE}. ie. in =
the
> > bbappend have 'FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"' and  '=
SRC_URI
> > +=3D "git://your.git.server/path/to/the/kernel"'. This way you can avoi=
d having
> > to check your kernel git repo into another repo.
> >
> > Note that the SRC_URI crime they have in linux-msm.inc will require you=
 to
> > provide a file name 'kernel' still, you can do this by putting an empty=
 file
> > or a file with a line like 'satisfy SRC_URI' called kernel in your laye=
r. So
> > you will end up with
> >
> > <your-custom-layer>/recipes-kernel/linux-msm/linux-msm_%.bbappend
> > <your-custom-layer>/recipes-kernel/linux-msm/files/kernel
> >
> > If you need more inspiration review the kernel dev document
> > https://www.yoctoproject.org/docs/1.6/kernel-dev/kernel-dev.html#workin=
g-with-your-own-sources
> >
> > Overall I don't think the question here should be, how do you work with
> > kernels that don't have a .git. But rather how can you better configure=
 things
> > with a bbappend in a custom layer to allow you to work better than what=
 is
> > being proposed in the meta-qti-bsp layer.
> >
> > Good luck,
> > Mark Asselstine
> >
> > >
> > > Thanks
> > >
> > > BR
> > > Mans Zigher
> >
> >
> >
> >
