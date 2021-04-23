Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web10.5896.1619157826597995278
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 23:03:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XlQxt56V;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id y136so16613969qkb.1
        for <yocto@lists.yoctoproject.org>; Thu, 22 Apr 2021 23:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iBgqZIPqCzDGCx6KReTRyqAz4P8CQc94t9mW7i8kmg4=;
        b=XlQxt56VdI31EZ6dHJ5wOQO9gFhRDhsonGY5x+xU7aQuaHx5hsOIFbiYh1Tsj7cB1I
         G2RQJ0qA8y7/2juD66rpjXO7gc8V5c8qKWLTolQVSEZJCXF9jAHRPdWuqrdm1Gn/hS4Y
         CyGv8HvaH5ezwlW9WoEBXsGiwIrZR+KzrwG/X7eeNDJzZGVdK1aDFQZUmr13l6Ox+sq+
         aQCCV9lzdpnkttiiZQQtNWlHd5Qc2yjUDcyV217LTmoDdvxuo6ZfLof0Os5qG9lp7JZz
         eXlTVVbEK1PlIgsP21sq7ODcBFnjNYke0KsujIYo5z3+1n7mqL7h7gAsH1l/cYnQ+TUe
         iilw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iBgqZIPqCzDGCx6KReTRyqAz4P8CQc94t9mW7i8kmg4=;
        b=EfZMubXrRjtJmpfeY5Ji+QFUtAFjOARjdxyt/AAfQg6e0RKTMfITC8MCsNI1mV3W6Q
         UKfJw/oyWlrSl43ny1DfWIsKaRe6XZBfnFGup8I9VSQWqpZzedzAaRv0c4Z4cfxI/MFr
         RTVHOztCz5SUftSQxJsO/kH/Udi3CVy/oZvyBMcMIp5h6K2CscsY/ChhP8GEw17FjJQC
         N0jd4hnYMvWPrRtRVRsNyqpj+/RYZrteMP0C0/ix20BX5HOATtZSehMQog36+SLJwMKn
         mMneMCaB64lJT/Sfp6/+eT4cFNTf4thVeDR36imglywYHQf3kpJzTmeG2RJoJpSbeyez
         eCbg==
X-Gm-Message-State: AOAM530ibLqIzuA0msnLCsh/wrFOXE60t8S5/VT60Y7Fg8xyFadUD7Ju
	qxzOAvq+GrEtKngeBiGc+9cvvVhfIaW2UuLTrvA=
X-Google-Smtp-Source: ABdhPJw82Eqey4lYOxyDOSj8XKj0xpHqvR0aCVCNf5I5fe6qs6E4Qw13YsKLV4foYdAW5dve/DbfzrspxpYkzPAIoO8=
X-Received: by 2002:a05:620a:983:: with SMTP id x3mr2457670qkx.119.1619157825723;
 Thu, 22 Apr 2021 23:03:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAMrUZLiOVUDxXUXytS4BRmkb+xK7M03i2fE0hoUOW6SEeP7Y8w@mail.gmail.com>
 <CAMKF1srY4H8r7damyEMnUmNumVD3HEPh8DwRHBsYCnSDT6ij2A@mail.gmail.com> <CAMrUZLjApKadn5CcadKmXhrYk2UENEMMFmxvD2ji3-Xf56mNXA@mail.gmail.com>
In-Reply-To: <CAMrUZLjApKadn5CcadKmXhrYk2UENEMMFmxvD2ji3-Xf56mNXA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 22 Apr 2021 23:03:19 -0700
Message-ID: <CAMKF1srE3B+9P5WQWaBKx1AfUgqPYGS2WWH=bLgZ-sCvC8DRZQ@mail.gmail.com>
Subject: Re: [yocto] Problems building hardknott for raspberri pi
To: Morten Bruun <morten.bruun@apide.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 22, 2021 at 10:54 PM Morten Bruun <morten.bruun@apide.com> wrote:
>
> On Fri, Apr 23, 2021 at 7:30 AM Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Thu, Apr 22, 2021 at 10:22 PM Morten Bruun <morten.bruun@apide.com> wrote:
>> >
>> > I'm upgrading to hardknott. The meta-raspberry layer does not have a hardknott branch, so I'm building with the master branch.
>> >
>>
>> I think meta-raspberrypi should branch before mesa-gl restructuring
>> initiated changes in meta-raspberrypi can you try with
>> meta-raspberrypi master@d1f191ed3018e0b130311e443f014e30d2f5ed97
>> and see if it works
>>
> Thanks for your quick reply. I tried to build with d1f191ed3018e0b130311e443f014e30d2f5ed97 which gives me this error instead:
>

never mind, I think we perhaps have is broken on master too. Are you
using DISABLE_VC4GRAPHICS = "1" ?


> ERROR: mesa-gl-2_21.0.1-r0 do_configure: meson failed
> ERROR: mesa-gl-2_21.0.1-r0 do_configure: Execution of '/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_configure.32301' failed with exit code 1:
> The Meson build system
> Version: 0.57.1
> Source dir: /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/mesa-21.0.1
> Build dir: /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/build
> Build type: cross build
> Program python3 found: YES (/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot-native/usr/bin/python3-native/python3)
>
> ../mesa-21.0.1/meson.build:21:0: ERROR: Options "swrast" are not in allowed choices: "auto, i915, i965, r100, r200, nouveau"
>
> A full log can be found at /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/build/meson-logs/meson-log.txt
> WARNING: /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_configure.32301:181 exit 1 from 'exit 1'
> WARNING: Backtrace (BB generated script):
>         #1: bbfatal_log, /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_configure.32301, line 181
>         #2: meson_do_configure, /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_configure.32301, line 170
>         #3: do_configure, /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_configure.32301, line 156
>         #4: main, /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_configure.32301, line 194
>
> Backtrace (metadata-relative locations):
>         #1: bbfatal_log, /home/morten/vetscan-spe-instrument/poky/meta/classes/logging.bbclass, line 72
>         #2: meson_do_configure, /home/morten/vetscan-spe-instrument/poky/meta/classes/meson.bbclass, line 160
>         #3: do_configure, autogenerated, line 2
> ERROR: Logfile of failure stored in: /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/log.do_configure.32301
>
> -- Morten
