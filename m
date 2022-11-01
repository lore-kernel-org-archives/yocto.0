Return-Path: <zoran.stojsavljevic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1235C433FE
	for <webhook@archiver.kernel.org>; Tue,  1 Nov 2022 19:34:12 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web12.10975.1667331246009192109
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Nov 2022 12:34:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Q9lbdARa;
 spf=pass (domain: gmail.com, ip: 209.85.221.43, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-wr1-f43.google.com with SMTP id g12so21518462wrs.10
        for <yocto@lists.yoctoproject.org>; Tue, 01 Nov 2022 12:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gcgHaVg2SipX8SHYRl7JzYkKJnk4ImW+yFlM8kwAIS8=;
        b=Q9lbdARapQepERzUaBwpUlDfuCeXedQWe9ohjQeYRLbR6sSqd+QA3C7M4ZnaqSp8pR
         6VDxzz0U+vFr3Oe2hiuRYJ2k8qUuM3rBJYUkEUJsmgiRBpVUJTUpKk4Lvko7TngAyrRB
         NBk8RKkNCaOm2vG60cPMm0omPfhD3gfX/qOTJ5LCiOS9FGQLLEzA9COIVX6cUbDCTvGP
         suWMVOIuz214X2/hSa/mR2Qr7LxynIuNNn2ZUubQs/4bowZaH09Zua2VgrAkfQkTJG0W
         RBvaWETo9hZ3lG2+RixEpe0VqtZ1TQ75UNtjqvbVpf1VrItX/kz4nrqvJERQ4qDCJi2G
         r/tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gcgHaVg2SipX8SHYRl7JzYkKJnk4ImW+yFlM8kwAIS8=;
        b=dAp1mD7Pb9e2ZTMuyAIV4UtGQUlMHnuB5WjLLO+TEI5hRZKoUSmqUl4XsaOuZob6AF
         2MM11gzMYKlrGZrBJiiNxaG0kLDWQaGlmfAKnRvu4lj9oEu20TrdP6UghJJ4n/N1xhdH
         QLkOH0bWIH2GW1DJzzMVDbwopLyo+u1cS5zYn3sAqtqjZW1TuQQzrzqzkexrniHVyg8C
         wWkM0lE9zcV2DtfmudTNHPR4so9DOW3A3VtR8pAI0/BjUprIWMQpAyGOhecEEchlZr/v
         fwXtAQuW0oUwgh1z2Xx2Y7iz3KJj9xeWDm92Vrk3yLq8Y7b54FzGLAHvlnwyRSoO9YKe
         MyXA==
X-Gm-Message-State: ACrzQf0jJguRIn/98YSNFuqXM1Ha7HTl1RCt1aCgIlrYeoQ41OtE2qhQ
	zKs81+/ez99DNqRtCYYKUgGgpolIHrJLO86Yclk=
X-Google-Smtp-Source: AMsMyM5YzBwHJbDuqC/eX6Mcd3FFocSUs9tgK0x2lg8eIclE/kuzjmBm7e96XvaXpzuqjuGHhNPCeU1tZ6ldXRS9vVo=
X-Received: by 2002:a05:6000:810:b0:236:8a6d:e4e1 with SMTP id
 bt16-20020a056000081000b002368a6de4e1mr12536619wrb.661.1667331244260; Tue, 01
 Nov 2022 12:34:04 -0700 (PDT)
MIME-Version: 1.0
References: <LsVs.1666893088601518070.INID@lists.yoctoproject.org> <20221101125410.GD17701@gmail.com>
In-Reply-To: <20221101125410.GD17701@gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 1 Nov 2022 20:33:52 +0100
Message-ID: <CAGAf8LwuN5uj7Fv6RZQU9BTOA1Z-bwmPMUYN2WjscxYNPOmZnQ@mail.gmail.com>
Subject: Re: [yocto] Help with setting up a PREEMPT_RT image for BeagleBone
 Black #yocto
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: mpham20@gmu.edu, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Nov 2022 19:34:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58461

Michael,

I am not sure what you are trying to achieve, but I have some advice for you.

Here is what you need to do in local.conf:

MACHINE ?= "beaglebone"
PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"

Not sure what the last two commands should be, but you should NOT
mention any rt.

For -rt bbb you should set following options in virtual/kernel make menuconfig:

    # CONFIG_SMP is not set
    # CONFIG_MODULES is not set

    CONFIG_DEBUG_ATOMIC_SLEEP=y
    # CONFIG_DEBUG_LOCK_ALLOC is not set
    # CONFIG_PROVE_LOCKING is not set
    # CONFIG_LOCKDEP is not set

    # CONFIG_CPU_FREQ is not set
    # CONFIG_CPU_IDLE is not set

    # CONFIG_NO_HZ is not set
    CONFIG_HZ_PERIODIC=y

    CONFIG_HZ_250=y
    CONFIG_HZ=250

    # CONFIG_SUSPEND is not set
    # CONFIG_HIBERNATION is not set
    # CONFIG_PM is not set

    # CONFIG_FTRACE is not set

    CONFIG_PREEMPT_RT_FULL=y

The commands to setup the menuconfig are the following:

[1] Run menuconfig and configure the kernel:
     $ bitbake -c menuconfig virtual/kernel

[2] To save the configuration in a defconfig format:
      $  bitbake -c savedefconfig virtual/kernel

https://variwiki.com/index.php?title=Yocto_Customizing_the_Linux_kernel

Then, you should have a bbb-rt kernel. With some tweaks and some
tricks... You'll find these for yourself!

Please, use the rt-tests package for testing kernel-bbb-rt.

My two cent worth answer,
Zee
_______

On Tue, Nov 1, 2022 at 1:54 PM Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>
> In message: [yocto] Help with setting up a PREEMPT_RT image for BeagleBone Black #yocto
> on 27/10/2022 mpham20@gmu.edu wrote:
>
> > Hello all,
> >
> > I am new to Yocto and would like to seek assistance for setting up a PREEMPT_RT
> > image for BeagleBone Black.
> >
> > Here is what I have tried so far. First I followed the Yocto Project Quick
> > Build tutorial in the documentation.
> >
> > 1)
> > sudo apt install gawk wget git diffstat unzip texinfo gcc build-essential
> > chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils
> > iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint xterm
> > python3-subunit mesa-common-dev zstd liblz4-tool
> >
> > 2)
> > git clone git://git.yoctoproject.org/poky
> >
> > 3)
> > cd poky
> >
> > 4)
> > git checkout -t origin/langdale -b my-langdale
> >
> > 5)
> > git pull
> >
> > 6)
> > source oe-init-build-env
> >
> > 7) Then I went to poky/build/conf and edited local.conf by uncommenting
> > MACHINE ?= "beaglebone-yocto"
> > and commenting out
> > #MACHINE ??= "qemux86-64"
> > Then I added these two lines at the bottom of the file:
> > PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
> > COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
> >
> > 8) Next I ran this command:
> > bitbake core-image-minimal
> >
> > 9) Then I get errors at this point.
> > ERROR: Nothing PROVIDES 'virtual/kernel'
> > linux-yocto-upstream PROVIDES virtual/kernel but was skipped: Set
> > PREFERRED_PROVIDER_virtual/kernel to linux-yocto-upstream to enable it
> > linux-yocto PROVIDES virtual/kernel but was skipped: Set
> > PREFERRED_PROVIDER_virtual/kernel to linux-yocto to enable it
> > linux-yocto-rt PROVIDES virtual/kernel but was skipped: incompatible with
> > machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
> > linux-yocto-dev PROVIDES virtual/kernel but was skipped: Set
> > PREFERRED_PROVIDER_virtual/kernel to linux-yocto-dev to enable it
> > linux-yocto-rt PROVIDES virtual/kernel but was skipped: incompatible with
> > machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
> > linux-yocto-upstream PROVIDES virtual/kernel but was skipped: Set
> > PREFERRED_PROVIDER_virtual/kernel to linux-yocto-upstream to enable it
> > linux-yocto PROVIDES virtual/kernel but was skipped: Set
> > PREFERRED_PROVIDER_virtual/kernel to linux-yocto to enable it
> > linux-yocto-tiny PROVIDES virtual/kernel but was skipped: incompatible with
> > machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
> > linux-dummy PROVIDES virtual/kernel but was skipped: PREFERRED_PROVIDER_virtual
> > /kernel set to linux-yocto-rt, not linux-dummy
> > linux-yocto-tiny PROVIDES virtual/kernel but was skipped: incompatible with
> > machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
> > ERROR: Required build target 'core-image-minimal' has no buildable providers.
> > Missing or unbuildable dependency chain was: ['core-image-minimal', 'virtual/
> > kernel']
> >
> > Summary: There was 1 WARNING message.
> > Summary: There were 2 ERROR messages, returning a non-zero exit code.
> >
> > I've tried a variety of ways and read lots of links but still no luck. Can
> > someone tell me the best way to accomplish my goal?
> > Thank you for any help.
>
> To build a kernel recipe (not just linux-yocto), it must be marked
> as compatible with your machine. The messages you are seeing are
> telling you that, by indicating that the recipes were skipped (since
> they are not compatible) and once they are all skipped you get a failure
> as nothing provides virtual/kernel.
>
> For linux-yocto, you also need a BSP description that the tooling
> uses to create the kernel configuration.
>
> We haven't been testing the beaglebone-yocto reference against -rt,
> so it isn't marked as compatible by default. That being said, it
> can be easily made compatible via a bbappend. Look at the
> meta-yocto-bsp layer, and the bbappends in there. We are adding
> the reference boards as compatible with linux-yocto. A similar
> bbappend would work for linux-yocto-rt, and you'd solve that first
> issue of not having a compatible machine.
>
> For the BSP description, it does happen that we have one in the
> linux-yocto configuration meta-data, so one doesn't need to be
> created. The tools would find that description during the build
> and use it accordingly. The default KBRANCH should aslo be fine
> for the beaglebone-yocto, as we aren't carrying any extra patches
> for the board, so the linux-yocto-rt recipe's default values will
> get the right branch checked out and built.
>
> Whether it builds (it should), boots (it should) or gives you
> appropriate -rt performance (unknown) .. are other questions
> that are to be answered :)
>
> Bruce
>
>
> >
> > Michael
>
> >
> >
> >
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58457): https://lists.yoctoproject.org/g/yocto/message/58457
> Mute This Topic: https://lists.yoctoproject.org/mt/94609944/3618681
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [zoran.stojsavljevic@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

