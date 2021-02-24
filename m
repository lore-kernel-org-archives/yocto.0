Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3733.1614148942319171216
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Feb 2021 22:42:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XblPueDF;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: karthik.poduval@gmail.com)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id EFCE438C0731
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2021 06:42:20 +0000 (UTC)
Received: by mail-vs1-f51.google.com with SMTP id p123so547707vsp.6
        for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 22:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=onyu1ad8stcSrv1EGRCal+C2C41WL2KTTp4ovClDL8Y=;
        b=XblPueDFd2qFbEz8DwE8GlsRAefPb/m6RMLHpvsYo89+1wsUsTu0kM61eA/WvdW6hW
         O0jO4uYqcn8+a7tw745/uZCR8E1Mxz6NOid8CLiKuvP5zyHGQ14yJnQ0eSCwtM97hA/8
         HQPklJVlUfCvC4ivsTCIusCOsEyoE4OIvglm8GCUWQMxsrgmsmI8MbWky3qNHj9Sa7VO
         JyO/qvibiVZVNf2eRCN2I8rEKoUkMZRtoE8OctK8c0ztJkSyphJBSWKHvMPulPkix8vd
         Lo3QlY1v9Wqgbtlgr4WiR33/ZZspw2jlLHssBeqR28BHtTo9Vb/y4mQM9TWnISR6VDsI
         eqYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=onyu1ad8stcSrv1EGRCal+C2C41WL2KTTp4ovClDL8Y=;
        b=fXoQrW/HSdFxSJztD0hjGzsPuA+Ebt1Fv/ucg/772VTqP6mr6jLfKcydFFlGAulHjy
         dHEAW+qpIJu7ED1z79zqZ/Z13FIGE3usN8Pzw35zaBHW5gGWFJ6H0JuXWHzrXLeLXq4Y
         Rw0Pas0nQUDO/RHaHwho5Ya95Y2dHfgXghEBcshX8jNA6JvqPxy40bwHJSBpEOWXl8w2
         Pcm5y0rkyxDP9qicn7OG/y3bvi3ROvAHvcOdoctCrhZKSL2zY8s/HwX72Ji/zsBpIEQk
         XX4H3qM4X7JktlV2/e4fXOrQCho2OYWUq8PH/af7fjkOAuUeXjNbIOD5MMyZFHFkXuxO
         7ibA==
X-Gm-Message-State: AOAM533g2CgW+85JAopVSM8lTYkQ8c0TEkT/5Epvw0uSE5UK66DXCzPU
	ePkYIjD7RLVoazzhtk5iaofX4pCM6zXUflQh4PI=
X-Google-Smtp-Source: ABdhPJyc1F98mHHUGBvwlzjz0dnnR7ho2RWCKbZqpq/E2E9tVhJu/ocmQMNEFxtis2pZqwuwWcyo/v6YlT+jWC5WPBc=
X-Received: by 2002:a05:6102:104e:: with SMTP id h14mr3728536vsq.39.1614148939783;
 Tue, 23 Feb 2021 22:42:19 -0800 (PST)
MIME-Version: 1.0
References: <CAFP0Ok-UOjo3n1CYtg+k1C8QHz6L+4RMDcOLPnnWGJ6Oxd+azQ@mail.gmail.com>
 <CADkTA4NKtcZYHtWJGs5gOMZxUjf9dn9+KB5-ts4633tdyu8x1Q@mail.gmail.com>
 <CAFP0Ok9+UN=t=22gZQ6MJV5DDfPPn_tSWY1w8AjNh+ojBQ94dg@mail.gmail.com>
 <YDUAklwGAsPCeyVe@korppu> <CAFP0Ok-863pEPRRRsOsZDG1VJ8GZw06qR+mu+_M2yJouJDuB+Q@mail.gmail.com>
 <CADkTA4NB8oatgLAg=pNEVbOcEPSXvLb-NSaDrdM_oDA5i5mAnA@mail.gmail.com>
In-Reply-To: <CADkTA4NB8oatgLAg=pNEVbOcEPSXvLb-NSaDrdM_oDA5i5mAnA@mail.gmail.com>
From: "Karthik Poduval" <karthik.poduval@gmail.com>
Date: Tue, 23 Feb 2021 22:42:08 -0800
Message-ID: <CAFP0Ok-5WgxfxnDny9mP6tSHMSnXgG=pv=72=UPwQauZjKqFng@mail.gmail.com>
Subject: Re: [yocto] Kernel Header UAPI Issue
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Mikko Rapeli <Mikko.Rapeli@bmw.de>, Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi Bruce,

Thanks a lot for your patch (attached in bugzilla
https://bugzilla.yoctoproject.org/show_bug.cgi?id=5305). I am
summarizing all steps once again for the benefit of anyone else who
faces the same issue (including myself in the future) and may use this
email list as a reference. The basic need was to export kernel headers
from kernel source for an application recipe (those headers are not a
part of linux-libc-headers recipe).

I applied the patch pointed by Bruce
https://bugzilla.yoctoproject.org/attachment.cgi?id=4647 to my local
BSP layer. The patch has 2 modes of operation (described in the patch
documentation).

mode1: To make this work I added the following lines to my application recipe.

inherit cmake kernel-alt-headers
DEPENDS = "gtest rsync-native"
EXTRA_OECMAKE =
'-DKERNEL_HEADER_DIR:STRING=${WORKDIR}/${KERNEL_ALT_HEADER_DIR}/include'
Then in my CMakeLists.txt.
include_directories(${KERNEL_HEADER_DIR})

The application compiled fine but there was one side effect that
kernel menuconfig (bitbake virtual/kernel -c menuconfig) wasn't able
to run as it complained that the source tree wasn't clean and make
mrproper was needed. This was resolved by a simple fix to the
do_compile_prepend in the patch (added the mrproper command).
do_compile_prepend() {
        if [ "${KERNEL_SOURCE_IS_LOCAL}" = "False" ]; then
            # install from the staging kernel directory
            oe_runmake -C ${STAGING_KERNEL_DIR} headers_install
INSTALL_HDR_PATH=${WORKDIR}/${KERNEL_ALT_HEADER_DIR}
            oe_runmake -C ${STAGING_KERNEL_DIR} mrproper
        fi
}

mode2: To make this work I added the following line to my kernel recipe.
inherit kernel-alt-headers

to my application recipe following lines were added.
DEPENDS += "virtual/kernel"
EXTRA_OECMAKE =
'-DKERNEL_HEADER_DIR:STRING=${STAGING_DIR_TARGET}/usr/alt-headers/include'
Then in my CMakeLists.txt.
include_directories(${KERNEL_HEADER_DIR})

-- 
Regards,
Karthik Poduval

On Tue, Feb 23, 2021 at 10:50 AM Bruce Ashfield
<bruce.ashfield@gmail.com> wrote:
>
> On Tue, Feb 23, 2021 at 9:56 AM Karthik Poduval
> <karthik.poduval@gmail.com> wrote:
> >
> > Hi Mikko,
> >
> > Do you have an example on how you do that ? Do you bbapend the
> > linux-libc-headers recipe file ?
> > I have an application that uses dmabuf heap that potentially extends
> > across multiple BSP's as its BSP agnostic. I don't want to be patching
> > individual BSP recipes and generating headers. The issue I am facing
> > is due to backporting the patch from 5.6 to 5.4 so the required header
> > isn't a part of the linux-libc-headers.bb recipe. Best would have been
> > a virtual/kernel-keaders target that applications that require BSP
> > headers would add to their recipe DEPENDS. Why is this not a solved
> > issue by yocto project ? Why do individual BSP's need to deal with
> > this differently  when the header install mechanism (make
> > headers_install) is the same irrespective of the type of BSP ?
>
> Because it's not a simple thing to solve (and there's a bugzilla around for it
> already, where the thoughts and issues are captured, but that one seems to
> have been closed and I can't find it at the moment).  I do have a WIP
> class that provides some different modes
> (https://bugzilla.yoctoproject.org/show_bug.cgi?id=5305),
> but with corner cases and concerns, it keeps slipping. Feel free to try it
> out and comment in the bug (I'll try myself to be sure it still applied, it has
> been a few months).
>
> What works for your case, doesn't mean it is a general/supporable
> solution.
>
> But generally speaking, It's an incredibly bad idea to have your libc-headers
> tied to the kernel you are building. Every time that kernel changes, you
> basically need to rebuild the entire stack .. hence the bad idea.  It is such
> a common question, that we actually put a warning in the libc-headers
> recipe itself.
>
> We do not really want a parallel set of headers in the shared workdir, that are
> from the currently built kernel. You'd end up with all sorts of mismatches
> and cross includes and potential different behaviour per-application.
>
> We already have the kernel source installed into the shared workdir,
> which is what the tips in the libc-headers recipe suggest using. And it
> honestly isn't so common the need for sanitized headers that the need for
> something like I did in that bug has made it necessary.
>
> Bruce
>
> >
> > On Tue, Feb 23, 2021 at 5:18 AM <Mikko.Rapeli@bmw.de> wrote:
> > >
> > > Hi,
> > >
> > > I know it's not the best or recommended approach, but I find it
> > > hard to avoid merging linux-libc-headers recipe with the actual
> > > kernel recipe that a distro is using. At least a static copy
> > > of some version of uapi headers from that kernel can be used
> > > instead of the poky side linux-libc-headers. This helps to get
> > > the actual BSP SW delivery headers into userspace, SDK etc.
> > >
> > > Cheers,
> > >
> > > -Mikko
> >
> >
> >
> > --
> > Regards,
> > Karthik Poduval
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
