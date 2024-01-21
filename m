Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E15AC47422
	for <webhook@archiver.kernel.org>; Sun, 21 Jan 2024 04:52:51 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web10.41748.1705812768583395685
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Jan 2024 20:52:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UNKOFRnB;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-783137d8049so190466285a.2
        for <yocto@lists.yoctoproject.org>; Sat, 20 Jan 2024 20:52:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705812766; x=1706417566; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D0P0kWZmpNFTGelreZb1s5Q9xAPWVh/NarrwNwSmOQI=;
        b=UNKOFRnBFUHyytLqBlWVzCH71/iw5q4qHqq2r0H1Nhy0LxFk1ex2YOxeatN8IH0KFZ
         kyDBdOCGQKw0lcldKQiczXHjxyuXCCO4QibtwdCacxLnK0wQu1HL66z64q6YCkh7Bf8A
         ldMph2VvCAJrOPaj4IkMS8X4JIKMItPvTjwkmp0OOi8P6fvcYAWpV80QasT1jIaad8np
         gP4ATq4S6mF48olFJUhbgTmOwvUDlSv+4ZhqeOUMHEmhRKanQzY+RXfvOoATCRM7cnub
         Qwi2F5lBs/9JdoaoM7a4VPKnquoLfzVuRq1TKUbWkdgnHHYwlYB0BlUdUdqXUzQLkCNg
         Gi8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705812766; x=1706417566;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D0P0kWZmpNFTGelreZb1s5Q9xAPWVh/NarrwNwSmOQI=;
        b=O61tXi7Vj2C5I1IAXNEIapFsPbV7y/Z470wVlxZvLqyriDEfYs1gZuuqQ1jAp+F7Bx
         2juoq56jHMXgUwYi6L2pFfG7RljNAjN5umegka0flA/WX9em3JX+cW2f7dgBmBn7Vciu
         Mv3cOwqxy6a2Q7KgpNg8KXF5j/iTZdWQIOgy+RGsseDjvW8No6ieWYQzj8rg5PwSvBKD
         LMwHFRhn/zlRneJ5sJYRx9zUSV55ye6TozLYk+qdYcrvAlDJm52nxljFpSh0ekNdZ5dS
         zbhfjlr6kJO16x9eFmSXY2nKaD5n258hN21b+vNWWN6fLe4xVRK1kr3dhX7HQSwwGrUI
         3SFQ==
X-Gm-Message-State: AOJu0YynwqOP2ySXzhIJHycI+6Ja/ooA6pp3QgvlRfJNNd4FtJblkBqx
	794PIor0PpZXj+wggh4Fi14RKmty4SLj1ISRZoxLVqFTYegMbd8aWQV4ORj2
X-Google-Smtp-Source: AGHT+IFwAJRfpfYqqIIW5Tqvs9Mk+5wlSPZF/Y8TM61RFcCWI4GaxiYj4xrysYrJeKCqa5oFBrFDDA==
X-Received: by 2002:a05:620a:149c:b0:783:89fe:3a10 with SMTP id w28-20020a05620a149c00b0078389fe3a10mr2728660qkj.73.1705812766417;
        Sat, 20 Jan 2024 20:52:46 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id y14-20020a05620a25ce00b007832a7c7fcbsm1064604qko.108.2024.01.20.20.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Jan 2024 20:52:45 -0800 (PST)
Date: Sat, 20 Jan 2024 23:52:43 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Stephen Chen <stephen@radxa.com>
Subject: Re: [yocto] [meta-rockchip] [PATCH] machines: correct
 rk3066/rk3188/rk3288 kernel devicetree path
Message-ID: <20240121045243.GA32674@localhost>
References: <20240120102520.889698-1-stephen@radxa.com>
 <17AC4353844D00EC.16230@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <17AC4353844D00EC.16230@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 21 Jan 2024 04:52:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62212

On Sat 2024-01-20 @ 11:46:20 PM, Trevor Woerner via lists.yoctoproject.org wrote:
> On Sat 2024-01-20 @ 06:25:20 PM, Stephen Chen wrote:
> > Since mainline linux v6.5-rc1, this commit 724ba6751532
> > ("ARM: dts: Move .dts files to vendor sub-directories")
> > was added.
> > 
> > Link: https://github.com/torvalds/linux/commit/724ba6751532055db75992fc6ae21c3e322e94a7
> > 
> > Signed-off-by: Stephen Chen <stephen@radxa.com>
> > ---
> >  conf/machine/firefly-rk3288.conf   | 2 +-
> >  conf/machine/marsboard-rk3066.conf | 2 +-
> >  conf/machine/radxarock.conf        | 2 +-
> >  conf/machine/rock2-square.conf     | 2 +-
> >  conf/machine/tinker-board-s.conf   | 2 +-
> >  conf/machine/tinker-board.conf     | 2 +-
> >  conf/machine/vyasa-rk3288.conf     | 2 +-
> >  7 files changed, 7 insertions(+), 7 deletions(-)
> 
> When I build I get:
> 
> 	| /opt/oe/configs/z/build-master/tinker-board/layers/openembedded-core/scripts/lib/wic/engine.py:362: SyntaxWarning: invalid escape sequence '\/'
> 	|   abs_path = re.sub('\/\/+', '/', path)
> 	| INFO: Creating image(s)...
> 	| 
> 	| ERROR: _exec_cmd: install -m 0644 -D /z/build-master/tinker-board/build/tmp-glibc/deploy/images/tinker-board/rockchip/rk3288-tinker.dtb /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-gnueabi/core-image-base/1.0/tmp-wic/boot.6/rockchip/rk3288-tinker.dtb returned '1' instead of 0
> 	| output: install: cannot stat '/z/build-master/tinker-board/build/tmp-glibc/deploy/images/tinker-board/rockchip/rk3288-tinker.dtb': No such file or directory
> 	| 
> 	| WARNING: /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-gnueabi/core-image-base/1.0/temp/run.do_image_wic.449:160 exit 1 from 'BUILDDIR="/z/build-master/tinker-board/build" PSEUDO_UNLOAD=1 wic create "$wks" --vars "/z/build-master/tinker-board/build/tmp-glibc/sysroots/tinker-board/imgdata/" -e "core-image-base" -o "$build_wic/" -w "$tmp_wic"'
> 	| WARNING: Backtrace (BB generated script):
> 	|       #1: do_image_wic, /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-gnueabi/core-image-base/1.0/temp/run.do_image_wic.449, line 160
> 	|       #2: main, /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-gnueabi/core-image-base/1.0/temp/run.do_image_wic.449, line 177
> 	ERROR: Task (/opt/oe/configs/z/build-master/tinker-board/layers/openembedded-core/meta/recipes-core/images/core-image-base.bb:do_image_wic) failed with exit code '1'

Perhaps also take a look the email thread here:
	https://lists.yoctoproject.org/g/yocto/topic/101728482#61210

> > diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
> > index 3270bb9..6ff1be8 100644
> > --- a/conf/machine/firefly-rk3288.conf
> > +++ b/conf/machine/firefly-rk3288.conf
> > @@ -9,5 +9,5 @@
> >  require conf/machine/include/rk3288.inc
> >  require conf/machine/include/rockchip-wic.inc
> >  
> > -KERNEL_DEVICETREE = "rk3288-firefly.dtb"
> > +KERNEL_DEVICETREE = "rockchip/rk3288-firefly.dtb"
> >  UBOOT_MACHINE = "firefly-rk3288_defconfig"
> > diff --git a/conf/machine/marsboard-rk3066.conf b/conf/machine/marsboard-rk3066.conf
> > index 52fd256..36945e8 100644
> > --- a/conf/machine/marsboard-rk3066.conf
> > +++ b/conf/machine/marsboard-rk3066.conf
> > @@ -8,4 +8,4 @@
> >  
> >  require conf/machine/include/rk3066.inc
> >  
> > -KERNEL_DEVICETREE = "rk3066a-marsboard.dtb"
> > +KERNEL_DEVICETREE = "rockchip/rk3066a-marsboard.dtb"
> > diff --git a/conf/machine/radxarock.conf b/conf/machine/radxarock.conf
> > index 42d8848..6ad8474 100644
> > --- a/conf/machine/radxarock.conf
> > +++ b/conf/machine/radxarock.conf
> > @@ -9,4 +9,4 @@
> >  
> >  require conf/machine/include/rk3188.inc
> >  
> > -KERNEL_DEVICETREE = "rk3188-radxarock.dtb"
> > +KERNEL_DEVICETREE = "rockchip/rk3188-radxarock.dtb"
> > diff --git a/conf/machine/rock2-square.conf b/conf/machine/rock2-square.conf
> > index 46064ee..9468b9a 100644
> > --- a/conf/machine/rock2-square.conf
> > +++ b/conf/machine/rock2-square.conf
> > @@ -9,7 +9,7 @@
> >  require conf/machine/include/rk3288.inc
> >  
> >  SPL_BINARY = "u-boot-spl-dtb.bin"
> > -KERNEL_DEVICETREE = "rk3288-rock2-square.dtb"
> > +KERNEL_DEVICETREE = "rockchip/rk3288-rock2-square.dtb"
> >  UBOOT_MACHINE = "rock2_defconfig"
> >  
> >  # This board doesn't support the combined idbloader, so resort to the older
> > diff --git a/conf/machine/tinker-board-s.conf b/conf/machine/tinker-board-s.conf
> > index 870b9bc..3a65613 100644
> > --- a/conf/machine/tinker-board-s.conf
> > +++ b/conf/machine/tinker-board-s.conf
> > @@ -7,5 +7,5 @@
> >  
> >  require conf/machine/include/tinker.inc
> >  
> > -KERNEL_DEVICETREE = "rk3288-tinker-s.dtb"
> > +KERNEL_DEVICETREE = "rockchip/rk3288-tinker-s.dtb"
> >  UBOOT_MACHINE = "tinker-s-rk3288_defconfig"
> > diff --git a/conf/machine/tinker-board.conf b/conf/machine/tinker-board.conf
> > index 8fe5f63..ef1a1c1 100644
> > --- a/conf/machine/tinker-board.conf
> > +++ b/conf/machine/tinker-board.conf
> > @@ -7,5 +7,5 @@
> >  
> >  require conf/machine/include/tinker.inc
> >  
> > -KERNEL_DEVICETREE = "rk3288-tinker.dtb"
> > +KERNEL_DEVICETREE = "rockchip/rk3288-tinker.dtb"
> >  UBOOT_MACHINE = "tinker-rk3288_defconfig"
> > diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
> > index 5b44257..52b4401 100644
> > --- a/conf/machine/vyasa-rk3288.conf
> > +++ b/conf/machine/vyasa-rk3288.conf
> > @@ -9,7 +9,7 @@ require conf/machine/include/rk3288.inc
> >  require conf/machine/include/rockchip-wic.inc
> >  
> >  KERNEL_IMAGETYPE = "uImage"
> > -KERNEL_DEVICETREE = "rk3288-vyasa.dtb"
> > +KERNEL_DEVICETREE = "rockchip/rk3288-vyasa.dtb"
> >  KERNEL_EXTRA_ARGS += "LOADADDR=0x02000000"
> >  
> >  UBOOT_MACHINE = "vyasa-rk3288_defconfig"
> > -- 
> > 2.34.1
> > 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62211): https://lists.yoctoproject.org/g/yocto/message/62211
> Mute This Topic: https://lists.yoctoproject.org/mt/103847371/900817
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [twoerner@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


