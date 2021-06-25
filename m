Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.8828.1624633166808060854
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Jun 2021 07:59:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rfxxq8UA;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: zoran.stojsavljevic@gmail.com)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B916738C0627
	for <yocto@yoctoproject.org>; Fri, 25 Jun 2021 14:59:25 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id y21so4853077plb.4
        for <yocto@yoctoproject.org>; Fri, 25 Jun 2021 07:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wkG6RSKEKdXnCsC2xrWZsbCl94F57lRrbO5WHXVE8Q8=;
        b=rfxxq8UAlCkhoDvHw8DtyUfRmhpQ9iE5/226/eKOQdSF1SXnmCbaggOdThqWxfwH6+
         zIu0E/xL2rDUAypWL9HzggoQohTFbYjG5Q4wpOjtvkmPUvubW0uinQ/bee5eaPO9ppG7
         U8ru6SxvemH0yqvPoZXP4m8U96QQ0UTxNkhGvulivP4aCqx8OTmrCm/slYBPeClAFL/Y
         Bz1vcDkoRcmlumVb+5wSMEoLEJtdxbiKUTLDFmdq8auJoKTgNJ6DBsGO/Bcedo7u8q4R
         Pw4L46wOcn5mWHLNV7DMINDeOVMc0Pvv2Y3vz+FSL7UX9cKqIrM+MrMxalJRuEaBi30Y
         n8hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wkG6RSKEKdXnCsC2xrWZsbCl94F57lRrbO5WHXVE8Q8=;
        b=FFRIW/lcuHqe4Llf+4Lsm8bljj2LaLt8BLRVvXpRrYghhTIN0DqHEPhwLprlUOy8TC
         745W/yjNTe/ngms2KZ+xXW1mG1JnXtW8t/0tUZYLq69jGrUSOyliCek7pMhEioHBd6Qz
         UnkeAT2pEk4SglYWPUEIZekSbU8xxQEOca7dDb2D3N1p9nxPPqJy9Qjcm8akhhNlKyL4
         +4gGd122CEIoKLRuNwdTdANRtpTzc1G3Ll1P28mQFPBmpzsvmXz4q8WqV8nZKys2eLvH
         tpyu4JLihP7h4skh3MFU5SQgkZgFzUs2bFmPiob3qB98ygnwyBbklwn6qN6FF54bFWgk
         cCcA==
X-Gm-Message-State: AOAM533uT6DqaLfz//c5C5nRI/+j8DDEj8WKVF2JX59/aB6/dfHn9UmG
	BzRtGQncB86OJbNzfutwRlEtSGVFmbKriA/MyEY=
X-Google-Smtp-Source: ABdhPJzKRhhMRagApbMRIaebKGFvEGMarkDwPOtRj1RfDTmeQEruMmlKTYd6FW52r9jJ2K6O7Unf2wZJ/8TIpS+nzC4=
X-Received: by 2002:a17:90a:bd18:: with SMTP id y24mr21891136pjr.83.1624633165014;
 Fri, 25 Jun 2021 07:59:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAB=6tBQR1S=2niGMojS_55-JebtQX4LybA2aEh_6YNtXf_3yNA@mail.gmail.com>
 <168BBDBB51FE1C72.20368@lists.yoctoproject.org> <168BC530899504B6.31827@lists.yoctoproject.org>
In-Reply-To: <168BC530899504B6.31827@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 25 Jun 2021 16:59:12 +0200
Message-ID: <CAGAf8Lzhh3gZ5M+_ZfTxGLraUhUCjF0CevAMrRm6CSC-=TYg6w@mail.gmail.com>
Subject: Re: [yocto] Hardknott (GCC10) Compiler Issues
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Chuck Wolber <chuckwolber@gmail.com>, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

> GCCVERSION = "9.%"

Basically, do NOT use this instruction anywhere. It clearly does NOT work?!

I did replace the whole gcc/ in the: poky/meta/recipes-devtools/gcc
for hardknott branch:

Now I have a gcc_11.1 compiler (from master branch), instead of gcc_10.2.

poky/meta/recipes-devtools/gcc
[vuser@fedora33-ssd projects_yocto]$ cd
bbb-yocto-hardknott/poky/meta/recipes-devtools/gcc
[vuser@fedora33-ssd gcc]$ ls -al
total 180
drwxr-xr-x.  3 vuser vboxusers  4096 Jun 25 13:50 .
drwxr-xr-x. 94 vuser vboxusers  4096 Jun 25 14:45 ..
drwxr-xr-x.  2 vuser vboxusers  4096 Jun 25 13:50 gcc
-rw-r--r--.  1 vuser vboxusers   800 Jun 25 13:50 gcc_11.1.bb
-rw-r--r--.  1 vuser vboxusers  5330 Jun 25 13:50 gcc-11.1.inc
-rw-r--r--.  1 vuser vboxusers  4560 Jun 25 13:50 gcc-common.inc
-rw-r--r--.  1 vuser vboxusers  4426 Jun 25 13:50 gcc-configure-common.inc
-rw-r--r--.  1 vuser vboxusers    66 Jun 25 13:50 gcc-cross_11.1.bb
-rw-r--r--.  1 vuser vboxusers    77 Jun 25 13:50 gcc-cross-canadian_11.1.bb
-rw-r--r--.  1 vuser vboxusers  6971 Jun 25 13:50 gcc-cross-canadian.inc
-rw-r--r--.  1 vuser vboxusers  6383 Jun 25 13:50 gcc-cross.inc
-rw-r--r--.  1 vuser vboxusers    73 Jun 25 13:50 gcc-crosssdk_11.1.bb
-rw-r--r--.  1 vuser vboxusers   429 Jun 25 13:50 gcc-crosssdk.inc
-rw-r--r--.  1 vuser vboxusers  9593 Jun 25 13:50 gcc-multilib-config.inc
-rw-r--r--.  1 vuser vboxusers    67 Jun 25 13:50 gcc-runtime_11.1.bb
-rw-r--r--.  1 vuser vboxusers 12398 Jun 25 13:50 gcc-runtime.inc
-rw-r--r--.  1 vuser vboxusers   271 Jun 25 13:50 gcc-sanitizers_11.1.bb
-rw-r--r--.  1 vuser vboxusers  4407 Jun 25 13:50 gcc-sanitizers.inc
-rw-r--r--.  1 vuser vboxusers   208 Jun 25 13:50 gcc-shared-source.inc
-rw-r--r--.  1 vuser vboxusers   113 Jun 25 13:50 gcc-source_11.1.bb
-rw-r--r--.  1 vuser vboxusers  1468 Jun 25 13:50 gcc-source.inc
-rw-r--r--.  1 vuser vboxusers  8598 Jun 25 13:50 gcc-target.inc
-rw-r--r--.  1 vuser vboxusers  4924 Jun 25 13:50 gcc-testsuite.inc
-rw-r--r--.  1 vuser vboxusers   143 Jun 25 13:50 libgcc_11.1.bb
-rw-r--r--.  1 vuser vboxusers  5175 Jun 25 13:50 libgcc-common.inc
-rw-r--r--.  1 vuser vboxusers  1785 Jun 25 13:50 libgcc.inc
-rw-r--r--.  1 vuser vboxusers   151 Jun 25 13:50 libgcc-initial_11.1.bb
-rw-r--r--.  1 vuser vboxusers  2020 Jun 25 13:50 libgcc-initial.inc
-rw-r--r--.  1 vuser vboxusers    68 Jun 25 13:50 libgfortran_11.1.bb
-rw-r--r--.  1 vuser vboxusers  2574 Jun 25 13:50 libgfortran.inc
[vuser@fedora33-ssd gcc]$

Waiting for the compilation results (still compiles).

Zee
_______


On Fri, Jun 25, 2021 at 10:15 AM Zoran via lists.yoctoproject.org
<zoran.stojsavljevic=gmail.com@lists.yoctoproject.org> wrote:
>
> > I have no idea if this is possible in the current YOCTO development stage:
> > GCCVERSION = "11.%"
> > To do the FF to GCC 11.>
>
> WARNING: preferred version 11.% of gcc-runtime not available (for item libg2c)
> WARNING: versions of gcc-runtime available: 10.2.0
>
> For hardknott. Guess, this answers my later question.
>
> Let us see about my very first question!
>
> BR,
> Zee
> _______
>
> INCLUDED:
> WARNING: preferred version 11.% of gcc-runtime not available (for item libssp-dev)
> WARNING: versions of gcc-runtime available: 10.2.0
> WARNING: preferred version 11.% of gcc-runtime not available (for item libg2c-dev)
> WARNING: versions of gcc-runtime available: 10.2.0
> WARNING: preferred version 11.% of gcc-runtime not available (for item libssp)
> WARNING: versions of gcc-runtime available: 10.2.0
>
> Build Configuration:
> BB_VERSION           = "1.50.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "fedora-33"
> TARGET_SYS           = "arm-poky-linux-gnueabi"
> MACHINE              = "beaglebone"
> DISTRO               = "poky"
> DISTRO_VERSION       = "3.3.1"
> TUNE_FEATURES        = "arm vfp cortexa8 neon callconvention-hard"
> TARGET_FPU           = "hard"
> meta
> meta-poky
> meta-yocto-bsp       = "hardknott:74dbb08c3709fec6563ee65a3661f66fdcbb3e2f"
> meta-jumpnow         = "hardknott:ac90f018ebb9de8d6ac12f22368e004aa7be69a2"
> meta-bbb             = "hardknott:d838aa54e3ed81d08597c08e112fc8966aaa501d"
> meta-oe
> meta-python
> meta-networking      = "hardknott:aca88908fd329f5cef6f19995b072397fb2d8ec6"
> meta-qt5             = "upstream/hardknott:a00af3eae082b772469d9dd21b2371dd4d237684"
> meta-socketcan       = "master:cefd86cd1def9ad2e63be527f8ce36a076d7e17c"
>
> NOTE: Fetching uninative binary shim http://downloads.yoctoproject.org/releases/uninative/3.2/x86_64-nativesdk-libc.tar.xz;sha256sum=3ee8c7d55e2d4c7ae3887cddb97219f97b94efddfeee2e24923c0cb0e8ce84c6 (will check PREMIRRORS first)
> Initialising tasks: 100% |###########################################################################################| Time: 0:00:11
> Sstate summary: Wanted 1709 Local 0 Network 0 Missed 1709 Current 0 (0% match, 0% complete)
> NOTE: Executing Tasks
>
>
> On Fri, Jun 25, 2021 at 7:58 AM Zoran via lists.yoctoproject.org <zoran.stojsavljevic=gmail.com@lists.yoctoproject.org> wrote:
>>
>> An interesting issue, and I think I hit it as well (my best guess).
>>
>> Here is my issue:
>> https://github.com/mguentner/cannelloni/issues/35
>>
>> > During the thud-to-hardknott upgrade process, we did nightly
>> > builds of the new hardknott based target image from our thud
>> > based SDK VM. I assumed that since GCC10 was being built
>> > as part of the build sysroot bootstrap process, we were getting
>> > a clean and consistent result irrespective of the underlying
>> > build server OS.
>>
>> Maybe you can try the following: in your local.conf to insert the
>> following line:
>>
>> GCCVERSION = "9.%"
>>
>> for hardknott release.
>>
>> I need to try this myself, I just used gcc as is (default one which
>> comes with the release, I guess 10).
>>
>> I have no idea if this is possible in the current YOCTO development stage:
>>
>> GCCVERSION = "11.%"
>>
>> To do the FF to GCC 11.
>>
>> Zee
>> _______
>>
>> On Fri, Jun 25, 2021 at 6:48 AM Chuck Wolber <chuckwolber@gmail.com> wrote:
>> >
>> > All,
>> >
>> > Please accept my apologies in advance for the detailed submission. I think it is warranted in this
>> > case.
>> >
>> > There is something... "odd" about the GCC 10 compiler that is delivered with Hardknott. I am still
>> > chasing it down, so I am not yet ready to declare a root cause or submit a bug, but I am posting
>> > what I have now in case anyone has some insights to offer.
>> >
>> > For all I know it is something unusual that I am doing, but we have a lot of history with our
>> > build/dev/release methods, so I would be surprised if that was actually the case. I have also
>> > discussed aspects of this on IRC for the last few days, so some of this may be familiar to some
>> > of you.
>> >
>> > Background: We maintain a virtual machine SDK for our developers that is as close as possible to
>> > the actual embedded hardware environment that we target. The SDK image is our baseline Linux
>> > OS plus lots of the expected dev and debugging tools. The image deployed to our target devices is
>> > the baseline Linux OS plus the core application suite. It is also important to note that we only
>> > support the x86_64 machine architecture in our target devices and development workstations.
>> >
>> > We also spin up and spin down the SDK VM for our nightly builds. This guarantees strict consistency
>> > and eliminates lots of variables when we are trying to troubleshoot something hairy.
>> >
>> > We just upgraded from Thud to Hardknott. This means we built our new Hardknott based SDK VM
>> > image from our Thud based SDK VM (GCC 8 / glibc 2.28). When we attempted to build our target
>> > device image in the new Hardknott based SDK VM, we consistently got a segfault when any build
>> > task involves bison issuing a warning of some sort. I traced this down for a very long time and it
>> > seemed to have something to do with the libtextstyle library from gettext and the way bison used it.
>> > But I now believe that this to be a red herring. Bison seems to be very fragile, but in this case,
>> > that may have actually been a good thing.
>> >
>> > After some experimentation I found that the issue went away when I dropped down to the 3.6.4
>> > recipe of bison found at OE-Core:bc95820cd. But this did not sit right with me. There is no way I
>> > should be the only person seeing this issue.
>> >
>> > Then I tried an experiment... I assumed I was encountering a compiler bootstrap issue with such a
>> > big jump (GCC8 -> GCC10), so I rebuilt our hardknott based SDK VM with the 3.3.1 version of
>> > buildtools-extended. The build worked flawlessly, but when I booted into the new SDK VM and
>> > kicked off the build I got the same result (bison segfault when any build warnings are encountered).
>> >
>> > This is when I started to mentally put a few more details together with other post-upgrade issues that
>> > had been discovered in our lab. We attributed them to garden variety API and behavioral changes
>> > expected during a Yocto upgrade, but now I am not so sure.
>> >
>> > During the thud-to-hardknott upgrade process, we did nightly builds of the new hardknott based
>> > target image from our thud based SDK VM. I assumed that since GCC10 was being built as part of
>> > the build sysroot bootstrap process, we were getting a clean and consistent result irrespective of the
>> > underlying build server OS.
>> >
>> > One of the issues we were seeing in the lab was a periodic hang during the initramfs phase of the
>> > boot process. We run a couple of setup scripts to manage the sysroot before the switch_root, so it
>> > is not unusual to see some "growing pains" after an upgrade. The hangs were random with no
>> > obvious cause, but systemd is very weird anyway so we attributed it to a new dependency or race
>> > condition that we had to address after going from systemd 239 to 247.
>> >
>> > It is also worth noting that systemd itself was not hung, it responded to the 'ole "three finger salute"
>> > and dutifully filled the screen with shutdown messages. It was just that the boot process randomly
>> > stopped cold in initramfs before the switch root. We would also occasionally see systemd
>> > complaining in the logs, "Starting requested but asserts failed".
>> >
>> > Historically, when asserts fail, it is a sign of a much larger problem, so I did another experiment...
>> >
>> > Since we could build our SDK VM successfully with buildtools-extended, why not build the target
>> > images? So I did. After a day of testing in the lab, none of the testers have seen the boot hang up in
>> > the initramfs stage, whereas before it was happening about 50% of the time. I need a good week of
>> > successful test activity before I am willing to declare success, but the results were convincing
>> > enough to make it worth this summary post.
>> >
>> > I did an extensive amount of trial and error testing, including meticulously comparing
>> > buildtools-extended with our own versions of the same files. The only intersection point was gcc.
>> >
>> > The gcc delivered with buildtools-extended works great. When I build hardknott's gcc10 from the
>> > gcc in buildtools-extended, we are not able to build our target images with the resulting compiler.
>> > When I build our target images from the old thud environment, we get a mysterious hang and
>> > systemd asserts triggering during boot. Since GCC10 is an intermediate piece of the build, it is
>> > also implicated despite the native environment running GCC8.
>> >
>> > I will continue to troubleshoot this but I was hoping for some insight (or gentle guidance if I am
>> > making a silly mistake). Overall, I am at a loss to think of a reason why I should not be able to build
>> > a compiler from the buildtools-extended compiler and then use it to reliably build our target images.
>> >
>> > Thank you,
>> >
>> > ..Ch:W..
>> >
>> >
>> > P.S. For those who are curious, we started out on Pyro hosted on Ubuntu 16.04. From there we made
>> > the jump to self hosting when we used that environment to build a thud based VM SDK. After years of
>> > successful build, we are now in the process of upgrading to Hardknott.
>> >
>> > P.P.S. For the sake of completeness, I had to add the following files to the buildtools-extended
>> > sysroot to fully complete the build of our images:
>> >
>> > /usr/include/magic.h -> util-linux "more" command requires this.
>> > /usr/include/zstd.h -> I do not recall which recipe required this.
>> > /usr/bin/free -> The OpenJDK 8 build scripts need this.
>> > /usr/include/sys/* -> openjdk-8-native
>> > /lib/libcap.so.2 -> The binutils "dir" command quietly breaks the build without this. I am not a fan of the
>> >                             lack of error checking in the binutils build...
>> > /usr/include/sensors/error.h and sensors.h -> mesa-native
>> > /usr/include/zstd_errors.h -> qemu-system-native
>> >
>> > --
>> > "Perfection must be reached by degrees; she requires the slow hand of time." - Voltaire
>> >
>> >
>> >
>>
>>
>>
>
> 
>
