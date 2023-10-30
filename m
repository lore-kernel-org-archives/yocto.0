Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BF87C4332F
	for <webhook@archiver.kernel.org>; Mon, 30 Oct 2023 17:26:43 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web11.155489.1698686801491271735
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Oct 2023 10:26:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mcpkXlr8;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-66d76904928so31373366d6.2
        for <yocto@lists.yoctoproject.org>; Mon, 30 Oct 2023 10:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698686800; x=1699291600; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KjquSDLP+9s8qoTqMnaTyN6ePIzbTg9GfvWg8E2J2Iw=;
        b=mcpkXlr8A0FRMDGNzFGuM/e+GMOL3LGC/eeSeT1kwDXUZWNpv6GEN81CtfD8ZRY+kq
         gVSxE3QC+j/cxOvwoMGMi8rDKgGM+DahaLgkeRCltL+QMDtP2N8Z3m1rCFEEldWQJC+n
         ZQGPpNhlJ/SwLliApeQ7OchAwDxTF7WyczZJOcoxNYj9sT4KSHWYhMo4fmy5oRKThO8N
         ibTHvTrwEkOMCXRlGEg84HeHE7gfM5oQ3j/RX7H+1DQX6xr3M6ScAE46HuEF3c/Fu636
         xYshDe4E81+G9iHQg9PunRr4tQrE6rbGAXRCFEdjzDlw/k1PkDibsK9zVoZsjcMoi6Jy
         lyDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698686800; x=1699291600;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KjquSDLP+9s8qoTqMnaTyN6ePIzbTg9GfvWg8E2J2Iw=;
        b=wnYZWLdXqJ0kdyikAWslkZz48yzyIxaxRIM2ysr723tw1rKnHaI0F2PnB7f2fmgxov
         9E8O5U0pdKXRtSf2QNBo5hsfI046JGP2lqcGx2jfUb6jwIYiaAktJZCE7wxHPXvFRq4T
         qLT61YgdoNSviUHVNQF/37Ji2hFfjjyx5KNVqBjRwwxWUZT71/PExPEbq5tBSZ2K5QlP
         t10SmU0SKt/RssG0qNABqLqt68GaQEvelJVFS9GWUYM4HMl1gVpSTUxuBsAY73Fwm9JZ
         Gt/4h2NukAYEJy5peZJbiVE3vW6Ph5Suj4s91ocZESb8ojclPVs52FvpQejxtJfehIHu
         e6iA==
X-Gm-Message-State: AOJu0YwsYP35q3IibV+8e22qMb0XXr2HIIgDeSq5o5PYjXmpiSX1L+5g
	l8cKguMNYvkPfminE/nGJGDjJH1bQeI=
X-Google-Smtp-Source: AGHT+IH+rj1HmfuhWwcPtzeY2M/L2wanUWtdLb7nmJqH7eOsKrxhilt99PmyNOKYvsR2e7n2BdMseg==
X-Received: by 2002:a0c:aadd:0:b0:66f:ba6e:73e8 with SMTP id g29-20020a0caadd000000b0066fba6e73e8mr10306122qvb.41.1698686800300;
        Mon, 30 Oct 2023 10:26:40 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id d6-20020a0ce446000000b0066d1d2242desm3574325qvm.120.2023.10.30.10.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 10:26:39 -0700 (PDT)
Date: Mon, 30 Oct 2023 13:26:37 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH 3/3] rock-pi-s: add
Message-ID: <20231030172637.GA9617@localhost>
References: <20231001130803.18662-1-twoerner@gmail.com>
 <20231001130803.18662-4-twoerner@gmail.com>
 <2d966caf-f8b7-6200-0adc-d6c434c6c0ec@theobroma-systems.com>
 <20231003135625.GC2234@localhost>
 <32a11548-d3c2-ba45-0d13-496664f95690@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <32a11548-d3c2-ba45-0d13-496664f95690@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Oct 2023 17:26:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61523

On Wed 2023-10-04 @ 04:23:31 PM, Quentin Schulz wrote:
> On 10/3/23 15:56, Trevor Woerner wrote:
> > On Mon 2023-10-02 @ 06:17:15 PM, Quentin Schulz wrote:
> > > > diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > > > index 7fefb017053b..49e1e682eb7d 100644
> > > > --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > > > +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > > > @@ -1,9 +1,12 @@
> > > >    DESCRIPTION = "Rockchip Firmware and Tool Binaries"
> > > >    LICENSE = "Proprietary"
> > > > +LICENSE:rk3308 = "CLOSED"
> > > >    LIC_FILES_CHKSUM = "file://LICENSE;md5=15faa4a01e7eb0f5d33f9f2bcc7bff62"
> > > > +LIC_FILES_CHKSUM:rk3308 = "file://README;md5=39cc9df955478b8df26158d489fdcc95"
> > > >    SRC_URI = "git://github.com/rockchip-linux/rkbin;protocol=https;branch=master"
> > > >    SRCREV = "b4558da0860ca48bf1a571dd33ccba580b9abe23"
> > > > +SRCREV:rk3308 = "e65b97b511f1349156702db40694454c141d8fe2"
> > > 
> > > Could you please say a few words about this change? It seems that there are
> > > still binaries for it in the SRCREV we already point to. I assume newer
> > > should be better (though it's not always the case), so wondering what's
> > > prompted this change?
> > > 
> > > 
> > > Oooooooh, there is no TPL with uart0m0 support anymore... honestly not sure
> > > it's a good idea to stay on a old blob version just for that? I assume you
> > > should only be missing the uart in TPL but the moment you reach the SPL the
> > > console should appear, doesn't it?
> > 
> > Exactly, I would prefer to be able to capture all of the console output all in
> > one place. It's annoying they randomly decided to change uarts for every other
> > update. As far as I'm concerned one binary blob is a good (or bad) as the
> > next, and if this one gives me diagnostic info in the console, then it wins
> > :-)
> > 
> 
> I think this is a bit too much to hope for :) In the commit logs for ddr-bin
> updates in rkbin, I've seen a few mentions to DDR init stability/reliability
> for example. So saying it's all the same is probably incorrect.

I did a test with the rk3308 binaries from the latest commit of rkbin that
don't support uart0. Specifically I tested with rk3308_ddr_589MHz_uart4_m0_v2.07.bin:
this also works.

Also, it's a lot less hassle to build (rather than rolling back to a release
that has a uart0 console for the rk3308). However, even though the console is
set to uart4, this binary also outputs a lot of data to uart0. I've tried both
1,500,000 baud (the standard rockchip baud) and 115,200 baud: neither are able
to interpret the data. U-Boot, apparently, doesn't try to reset the serial
port either, because the garbage output continues until the Linux kernel
finally takes over. Or perhaps maybe the gibberish that I'm seeing is from
U-Boot outputting to an uninitialized serial port?

Roll back to older rkbin checkout:
PRO:
- supports console on uart0 (same as linux kernel) and all messages from
  rkbin, u-boot, linux kernel, and console appear legibly on the terminal
CON:
- more cumbersome to build (recipe requires a bunch of rk3308-based
  overrides), perhaps a separate rkbin recipe would be better?
- uses older ddr initialization code

Use latest rkbin:
PRO:
- simpler recipe, no overrides necessary, simpler build
- uses the latest code (might include bug fixes or other improvements?)
CON:
- spews a bunch of gibberish to the serial console (from rkbin? from u-boot?
  from both?)
- the first legible messages only start once the linux kernel takes over,
  therefore the user can't interact with U-Boot (should they so wish)

