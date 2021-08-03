Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web11.3965.1628020066852653079
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 12:47:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=j2HPckFN;
 spf=pass (domain: gmail.com, ip: 209.85.222.170, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id t68so503845qkf.8
        for <yocto@lists.yoctoproject.org>; Tue, 03 Aug 2021 12:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gwuiK6WLau0hEfPWLqCUFF8gDgmE1mrBPgbet8n1EIg=;
        b=j2HPckFNhlGVx+IA0aJa4bndGtM+oYOuYBOet64RWm6MUVfR1D8iXXZZ6DMbKHV7SD
         VeS+9/liijwcPuAf5cfN8qNnxiRyL5qBFPY02LvLGTRsNSYyFsideA6mkGZugoH5fatY
         5GeM9gQ6vo5R/AaWO4lHi/datG2twb/efFjcTjinPuQnOvaaiMU3ClLJWsBpczbcWGn+
         /spkMEfs8aDMGW2cVC5cZhUEj+ijiJe62PiIfpvpdQt23TBS7Xv7xo2fehyEs7SjKT59
         MC+xsvLTWzJZHHsJ7wIHtyaNIk0F978qf0gom4ImFo0zfUtT1MIBmLH2//AUrFkWfhQn
         aaDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gwuiK6WLau0hEfPWLqCUFF8gDgmE1mrBPgbet8n1EIg=;
        b=T3W6hGOu9wzObVGB1Z74rXQvBQqkeZxzfUWWlrE5QSTsTuyEucGrw73gveL1olHKqU
         7i8b8gnVdoN00zDUCNnN23SlFfS2AzqGx8i7y5hdw0HNhbzx8Ed7NLmdNV7dx0cxFrza
         rukxh/ojaLXJFm52biM7ZdQKl44fjp5uyGJm/ag4SSsSB4o6IR07ypIG8vwOYp1gZa7u
         gklV0nXXwPCzIxzddKLCCZqualDXfGPooaLgPfiV2paLiK9FZymA5f2sP93CB2mM/GvS
         Fv0qCPI3V4ykTLkQQkORY+XfveI1GgutlNyeldnAvZi3Tetksy1MpgrwNFwdwUFROu1R
         tx3Q==
X-Gm-Message-State: AOAM530j4VOBc/OjTOCOxdtsxFZAmq441nLz56Ov00tP6cJw41Y2jEC8
	lVA7n8jexYtKTbCIwwTBMQg=
X-Google-Smtp-Source: ABdhPJzyaO3mH80RlUYCM0/chmHaQUYSLpmV9+nZCZiknNF4xfwWSSKPa3v30ir4k+/ml7zqq5OGew==
X-Received: by 2002:a05:620a:2291:: with SMTP id o17mr4511212qkh.387.1628020066044;
        Tue, 03 Aug 2021 12:47:46 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id g4sm7966929qkk.104.2021.08.03.12.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 12:47:45 -0700 (PDT)
Date: Tue, 3 Aug 2021 15:47:43 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH 1/2] layer: Convert to new override syntax
Message-ID: <20210803194743.GA6386@localhost>
References: <20210803170230.2647035-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210803170230.2647035-1-raj.khem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue 2021-08-03 @ 10:02:29 AM, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  classes/rockchip-gpt-img.bbclass                          | 2 +-
>  conf/machine/include/rockchip-wic.inc                     | 2 +-
>  dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 6 +++---
>  .../trusted-firmware-a/trusted-firmware-a_%.bbappend      | 8 ++++----
>  recipes-bsp/u-boot/u-boot%.bbappend                       | 6 +++---
>  recipes-graphics/mesa/mesa_%.bbappend                     | 4 ++--
>  recipes-kernel/linux/linux-yocto%.bbappend                | 4 ++--
>  recipes-kernel/linux/linux-yocto_5.4.bbappend             | 4 ++--
>  8 files changed, 18 insertions(+), 18 deletions(-)
> 
> diff --git a/classes/rockchip-gpt-img.bbclass b/classes/rockchip-gpt-img.bbclass
> index 3ee46c8..4d22e3a 100644
> --- a/classes/rockchip-gpt-img.bbclass
> +++ b/classes/rockchip-gpt-img.bbclass
> @@ -40,7 +40,7 @@ do_image_rockchip_gpt_img[depends] = "parted-native:do_populate_sysroot \

The following two need changes too, don't they?

>  PER_CHIP_IMG_GENERATION_COMMAND_rk3288 = "generate_rk3288_loader1_image"
>  PER_CHIP_IMG_GENERATION_COMMAND_rock2-square = "generate_rock2_loader1_image"

There seem to be a few that were missed. I'm working on a patch as well. I'm
just testing the images on some of the targets now.
