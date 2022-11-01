Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B0E2C433FE
	for <webhook@archiver.kernel.org>; Tue,  1 Nov 2022 12:54:20 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web08.5862.1667307253459297933
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Nov 2022 05:54:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ap9TDjs1;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id t16so10167590qvm.9
        for <yocto@lists.yoctoproject.org>; Tue, 01 Nov 2022 05:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=djr2wyJRNEKWHaLgH8Gn2a7dcoULkJ8Cltz5fENIaMo=;
        b=Ap9TDjs1tELN7+GN1aIofh9oYt5xSmnnksVyjKAKIObQCwacM8mdhrfqw07m6Gdd86
         cMrS2XPIJBy3zHx4p1OjwrozGO/sXKCZfa9uX7erLXss3mV27hNEkKbIBXvZwdWLJj/7
         wIq/mQFYjD4OwzH1exdjjl3YhapfScyhiUetw8fnKIpjGkII5K4g4JpuQsAQ8RT2IcpC
         aLxf47HnfOrS/V5YrZ7whCnUf6wIPAHlEJAD4U5BEtCaB2oqijFuBfEvGCHM0fG5+9LX
         3MQm4C98ILdpmlgUYKH6b+QulXFghdh5Tv0t0X1bfVGeysxKMgeKZnrLrSI3fGG96k1w
         2Xew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=djr2wyJRNEKWHaLgH8Gn2a7dcoULkJ8Cltz5fENIaMo=;
        b=Y1LgwcNjPlISGvPKT+vLZA4fcrIKD7YzaeYJpn1cWWs1dBcFVVhoyAkueo8Ts/s2BT
         onGwr/jA1ulmqVifPtYZE92CpD2ORJO6GHhkkx/VCR8+YXVCpH+sXK71hKVWevM5IiS7
         k2gfOO33ECLd/awefGQLAafRDUhe38cZsz4vIyLZOQGtwdF5J8/ANEqB2B4snm5zcwqD
         s4Q0RUxSyICAMeo7lHODVHJWpZktVRMccblAzZy1rsZJ24yu8NVa9nr44aOHNZFVkXGG
         yPlr9KjsWnH3q5I4eE5Em/yW1jzuxKhHgOlMOzZfws8jRNcEgq4dhEl2bOUSAkIt13SM
         Y6Uw==
X-Gm-Message-State: ACrzQf3EBRq0/m2IRvyZHPsZZgq6sAPGc+7oRYADw5Q4C6k5vwtLcdiq
	WSoRdAg/cyN35FTBxxulzI8=
X-Google-Smtp-Source: AMsMyM5ExfroO6YjXFZFnDZpvKniVt6SX6Hs17k0fr9BOkq9qPsaJA4HoY4IAeZkDA1LZF0Z63OvNA==
X-Received: by 2002:a05:6214:c4f:b0:4bb:9343:b7b5 with SMTP id r15-20020a0562140c4f00b004bb9343b7b5mr15433254qvj.31.1667307252287;
        Tue, 01 Nov 2022 05:54:12 -0700 (PDT)
Received: from gmail.com (cpe7c9a54441c1f-cm7c9a54441c1d.cpe.net.cable.rogers.com. [173.34.238.88])
        by smtp.gmail.com with ESMTPSA id y6-20020a05620a0e0600b006aedb35d8a1sm6354453qkm.74.2022.11.01.05.54.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Nov 2022 05:54:12 -0700 (PDT)
Date: Tue, 1 Nov 2022 08:54:10 -0400
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: mpham20@gmu.edu
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Help with setting up a PREEMPT_RT image for BeagleBone
 Black #yocto
Message-ID: <20221101125410.GD17701@gmail.com>
References: <LsVs.1666893088601518070.INID@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <LsVs.1666893088601518070.INID@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Nov 2022 12:54:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58457

In message: [yocto] Help with setting up a PREEMPT_RT image for BeagleBone Black #yocto
on 27/10/2022 mpham20@gmu.edu wrote:

> Hello all,
> 
> I am new to Yocto and would like to seek assistance for setting up a PREEMPT_RT
> image for BeagleBone Black.
> 
> Here is what I have tried so far. First I followed the Yocto Project Quick
> Build tutorial in the documentation.
> 
> 1)
> sudo apt install gawk wget git diffstat unzip texinfo gcc build-essential
> chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils
> iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint xterm
> python3-subunit mesa-common-dev zstd liblz4-tool
> 
> 2)
> git clone git://git.yoctoproject.org/poky
> 
> 3)
> cd poky
> 
> 4)
> git checkout -t origin/langdale -b my-langdale
> 
> 5)
> git pull
> 
> 6)
> source oe-init-build-env
> 
> 7) Then I went to poky/build/conf and edited local.conf by uncommenting
> MACHINE ?= "beaglebone-yocto"
> and commenting out
> #MACHINE ??= "qemux86-64"
> Then I added these two lines at the bottom of the file:
> PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
> COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
> 
> 8) Next I ran this command:
> bitbake core-image-minimal
> 
> 9) Then I get errors at this point.
> ERROR: Nothing PROVIDES 'virtual/kernel'
> linux-yocto-upstream PROVIDES virtual/kernel but was skipped: Set
> PREFERRED_PROVIDER_virtual/kernel to linux-yocto-upstream to enable it
> linux-yocto PROVIDES virtual/kernel but was skipped: Set
> PREFERRED_PROVIDER_virtual/kernel to linux-yocto to enable it
> linux-yocto-rt PROVIDES virtual/kernel but was skipped: incompatible with
> machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
> linux-yocto-dev PROVIDES virtual/kernel but was skipped: Set
> PREFERRED_PROVIDER_virtual/kernel to linux-yocto-dev to enable it
> linux-yocto-rt PROVIDES virtual/kernel but was skipped: incompatible with
> machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
> linux-yocto-upstream PROVIDES virtual/kernel but was skipped: Set
> PREFERRED_PROVIDER_virtual/kernel to linux-yocto-upstream to enable it
> linux-yocto PROVIDES virtual/kernel but was skipped: Set
> PREFERRED_PROVIDER_virtual/kernel to linux-yocto to enable it
> linux-yocto-tiny PROVIDES virtual/kernel but was skipped: incompatible with
> machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
> linux-dummy PROVIDES virtual/kernel but was skipped: PREFERRED_PROVIDER_virtual
> /kernel set to linux-yocto-rt, not linux-dummy
> linux-yocto-tiny PROVIDES virtual/kernel but was skipped: incompatible with
> machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
> ERROR: Required build target 'core-image-minimal' has no buildable providers.
> Missing or unbuildable dependency chain was: ['core-image-minimal', 'virtual/
> kernel']
>  
> Summary: There was 1 WARNING message.
> Summary: There were 2 ERROR messages, returning a non-zero exit code.
> 
> I've tried a variety of ways and read lots of links but still no luck. Can
> someone tell me the best way to accomplish my goal?
> Thank you for any help.

To build a kernel recipe (not just linux-yocto), it must be marked
as compatible with your machine. The messages you are seeing are
telling you that, by indicating that the recipes were skipped (since
they are not compatible) and once they are all skipped you get a failure
as nothing provides virtual/kernel.

For linux-yocto, you also need a BSP description that the tooling
uses to create the kernel configuration.

We haven't been testing the beaglebone-yocto reference against -rt,
so it isn't marked as compatible by default. That being said, it
can be easily made compatible via a bbappend. Look at the
meta-yocto-bsp layer, and the bbappends in there. We are adding
the reference boards as compatible with linux-yocto. A similar
bbappend would work for linux-yocto-rt, and you'd solve that first
issue of not having a compatible machine.

For the BSP description, it does happen that we have one in the
linux-yocto configuration meta-data, so one doesn't need to be
created. The tools would find that description during the build
and use it accordingly. The default KBRANCH should aslo be fine
for the beaglebone-yocto, as we aren't carrying any extra patches
for the board, so the linux-yocto-rt recipe's default values will
get the right branch checked out and built.

Whether it builds (it should), boots (it should) or gives you
appropriate -rt performance (unknown) .. are other questions
that are to be answered :)

Bruce


> 
> Michael

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58426): https://lists.yoctoproject.org/g/yocto/message/58426
> Mute This Topic: https://lists.yoctoproject.org/mt/94609944/1050810
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


