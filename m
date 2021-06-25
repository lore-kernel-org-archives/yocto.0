Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3810.1624600702630739190
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Jun 2021 22:58:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qaiU05hV;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: zoran.stojsavljevic@gmail.com)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2FE6238C0507
	for <yocto@yoctoproject.org>; Fri, 25 Jun 2021 05:58:22 +0000 (UTC)
Received: by mail-pg1-f180.google.com with SMTP id a2so6687774pgi.6
        for <yocto@yoctoproject.org>; Thu, 24 Jun 2021 22:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vVjJJe9TWqEU5zSUloJlHZshnXHFsilY+RTvY5sD4yk=;
        b=qaiU05hVVNKgN0CK9lKjQA1BQ8GvviTG5K0K6jEYsX0xhkpE30S2PEZufJtS6nDBrN
         nDvW9zKhLSLxWyO36uiUZorPeWWzTb9rCxRiKsCt/4sMXWSgU6rmNz9bgjgtD0KJqnNc
         YHD2UE9rO8QrrWn2eca/a9iCyeBKG/xdGxy0qugSC/o6pFGTOQ/xCdMBzRZf4sCC4Cx2
         DFey9KSyr7XhKuuwuddodp3fxPOuTKbNd+k6cy5bfk60JAQ477gMYyt2cY0V86zptqm+
         x9zos7TySI2aKKAuM4s7gPj3F31GMJgRzAGCidOe0OKfIEd7isYTraGxJ+JsgOpakH1L
         lTwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vVjJJe9TWqEU5zSUloJlHZshnXHFsilY+RTvY5sD4yk=;
        b=ancf21+uuythCcW+KjA6rOwPZR90WaHZMtBZa5xMvirWEgN+7hkg91iKuWD6Ef5dXR
         zI5rO+domQ04eWMFCVgGgvtlvbS/Yu61UNI15F7s6ocZ7DfiDskXYUpLfJ60iJXm/4no
         BxaEzaN+NiQIBlIbdUpssTyZ9YgXbFq1n8BH3Wu2dE7zg7N24w5Wi3kRHeuBtVzFDWA0
         9x4khsWaDKwToApF0bX6HmhBduFQdjoQ70/pNge+pWSbkb2XJD+55CRNiTibjIvboLq+
         OYNFTyggVKc7ZEz8pPokWzggsnEWBDauOn+517Sz9nvDKbAKXYmO5D5wVd/su+1CuSn1
         gvMg==
X-Gm-Message-State: AOAM5308DwPTfBVG3p8c/NA3ppxHO7oqrEZkSgUhcdv5Tk+r7R1xOX0K
	TCb9NxztOHu9cTBB+PRkBi2Cemclgfs6EKO7xaA=
X-Google-Smtp-Source: ABdhPJw1xaD+SzU6nM7WTCEknprKiiaUr8nm22mFjndKEMglDzUlSHzWzzEjCZ9ZDX5StIXfF5uIUSWDPzh/KxcGZTw=
X-Received: by 2002:a65:508d:: with SMTP id r13mr8279243pgp.36.1624600701617;
 Thu, 24 Jun 2021 22:58:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAB=6tBQR1S=2niGMojS_55-JebtQX4LybA2aEh_6YNtXf_3yNA@mail.gmail.com>
In-Reply-To: <CAB=6tBQR1S=2niGMojS_55-JebtQX4LybA2aEh_6YNtXf_3yNA@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 25 Jun 2021 07:58:10 +0200
Message-ID: <CAGAf8Lzv1=kjVuZCVQ=gAAALHbEgkq7_G_EXsZRdJYmR0BxGhw@mail.gmail.com>
Subject: Re: [yocto] Hardknott (GCC10) Compiler Issues
To: Chuck Wolber <chuckwolber@gmail.com>
Cc: openembedded-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

An interesting issue, and I think I hit it as well (my best guess).

Here is my issue:
https://github.com/mguentner/cannelloni/issues/35

> During the thud-to-hardknott upgrade process, we did nightly
> builds of the new hardknott based target image from our thud
> based SDK VM. I assumed that since GCC10 was being built
> as part of the build sysroot bootstrap process, we were getting
> a clean and consistent result irrespective of the underlying
> build server OS.

Maybe you can try the following: in your local.conf to insert the
following line:

GCCVERSION = "9.%"

for hardknott release.

I need to try this myself, I just used gcc as is (default one which
comes with the release, I guess 10).

I have no idea if this is possible in the current YOCTO development stage:

GCCVERSION = "11.%"

To do the FF to GCC 11.

Zee
_______

On Fri, Jun 25, 2021 at 6:48 AM Chuck Wolber <chuckwolber@gmail.com> wrote:
>
> All,
>
> Please accept my apologies in advance for the detailed submission. I think it is warranted in this
> case.
>
> There is something... "odd" about the GCC 10 compiler that is delivered with Hardknott. I am still
> chasing it down, so I am not yet ready to declare a root cause or submit a bug, but I am posting
> what I have now in case anyone has some insights to offer.
>
> For all I know it is something unusual that I am doing, but we have a lot of history with our
> build/dev/release methods, so I would be surprised if that was actually the case. I have also
> discussed aspects of this on IRC for the last few days, so some of this may be familiar to some
> of you.
>
> Background: We maintain a virtual machine SDK for our developers that is as close as possible to
> the actual embedded hardware environment that we target. The SDK image is our baseline Linux
> OS plus lots of the expected dev and debugging tools. The image deployed to our target devices is
> the baseline Linux OS plus the core application suite. It is also important to note that we only
> support the x86_64 machine architecture in our target devices and development workstations.
>
> We also spin up and spin down the SDK VM for our nightly builds. This guarantees strict consistency
> and eliminates lots of variables when we are trying to troubleshoot something hairy.
>
> We just upgraded from Thud to Hardknott. This means we built our new Hardknott based SDK VM
> image from our Thud based SDK VM (GCC 8 / glibc 2.28). When we attempted to build our target
> device image in the new Hardknott based SDK VM, we consistently got a segfault when any build
> task involves bison issuing a warning of some sort. I traced this down for a very long time and it
> seemed to have something to do with the libtextstyle library from gettext and the way bison used it.
> But I now believe that this to be a red herring. Bison seems to be very fragile, but in this case,
> that may have actually been a good thing.
>
> After some experimentation I found that the issue went away when I dropped down to the 3.6.4
> recipe of bison found at OE-Core:bc95820cd. But this did not sit right with me. There is no way I
> should be the only person seeing this issue.
>
> Then I tried an experiment... I assumed I was encountering a compiler bootstrap issue with such a
> big jump (GCC8 -> GCC10), so I rebuilt our hardknott based SDK VM with the 3.3.1 version of
> buildtools-extended. The build worked flawlessly, but when I booted into the new SDK VM and
> kicked off the build I got the same result (bison segfault when any build warnings are encountered).
>
> This is when I started to mentally put a few more details together with other post-upgrade issues that
> had been discovered in our lab. We attributed them to garden variety API and behavioral changes
> expected during a Yocto upgrade, but now I am not so sure.
>
> During the thud-to-hardknott upgrade process, we did nightly builds of the new hardknott based
> target image from our thud based SDK VM. I assumed that since GCC10 was being built as part of
> the build sysroot bootstrap process, we were getting a clean and consistent result irrespective of the
> underlying build server OS.
>
> One of the issues we were seeing in the lab was a periodic hang during the initramfs phase of the
> boot process. We run a couple of setup scripts to manage the sysroot before the switch_root, so it
> is not unusual to see some "growing pains" after an upgrade. The hangs were random with no
> obvious cause, but systemd is very weird anyway so we attributed it to a new dependency or race
> condition that we had to address after going from systemd 239 to 247.
>
> It is also worth noting that systemd itself was not hung, it responded to the 'ole "three finger salute"
> and dutifully filled the screen with shutdown messages. It was just that the boot process randomly
> stopped cold in initramfs before the switch root. We would also occasionally see systemd
> complaining in the logs, "Starting requested but asserts failed".
>
> Historically, when asserts fail, it is a sign of a much larger problem, so I did another experiment...
>
> Since we could build our SDK VM successfully with buildtools-extended, why not build the target
> images? So I did. After a day of testing in the lab, none of the testers have seen the boot hang up in
> the initramfs stage, whereas before it was happening about 50% of the time. I need a good week of
> successful test activity before I am willing to declare success, but the results were convincing
> enough to make it worth this summary post.
>
> I did an extensive amount of trial and error testing, including meticulously comparing
> buildtools-extended with our own versions of the same files. The only intersection point was gcc.
>
> The gcc delivered with buildtools-extended works great. When I build hardknott's gcc10 from the
> gcc in buildtools-extended, we are not able to build our target images with the resulting compiler.
> When I build our target images from the old thud environment, we get a mysterious hang and
> systemd asserts triggering during boot. Since GCC10 is an intermediate piece of the build, it is
> also implicated despite the native environment running GCC8.
>
> I will continue to troubleshoot this but I was hoping for some insight (or gentle guidance if I am
> making a silly mistake). Overall, I am at a loss to think of a reason why I should not be able to build
> a compiler from the buildtools-extended compiler and then use it to reliably build our target images.
>
> Thank you,
>
> ..Ch:W..
>
>
> P.S. For those who are curious, we started out on Pyro hosted on Ubuntu 16.04. From there we made
> the jump to self hosting when we used that environment to build a thud based VM SDK. After years of
> successful build, we are now in the process of upgrading to Hardknott.
>
> P.P.S. For the sake of completeness, I had to add the following files to the buildtools-extended
> sysroot to fully complete the build of our images:
>
> /usr/include/magic.h -> util-linux "more" command requires this.
> /usr/include/zstd.h -> I do not recall which recipe required this.
> /usr/bin/free -> The OpenJDK 8 build scripts need this.
> /usr/include/sys/* -> openjdk-8-native
> /lib/libcap.so.2 -> The binutils "dir" command quietly breaks the build without this. I am not a fan of the
>                             lack of error checking in the binutils build...
> /usr/include/sensors/error.h and sensors.h -> mesa-native
> /usr/include/zstd_errors.h -> qemu-system-native
>
> --
> "Perfection must be reached by degrees; she requires the slow hand of time." - Voltaire
>
> 
>
