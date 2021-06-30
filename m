Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
 by mx.groups.io with SMTP id smtpd.web12.326.1625069443875619793
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 09:10:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aot+SO6U;
 spf=pass (domain: gmail.com, ip: 209.85.166.175, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f175.google.com with SMTP id v5so3390477ilo.5
        for <yocto@lists.yoctoproject.org>; Wed, 30 Jun 2021 09:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0PfQWUOXo8I0bwbNcdMc0nZ5NKc7xXUK4kkZDuaGifk=;
        b=aot+SO6U9F/4p/QjQON5KTsbI+7q/4qL9RJDvDOZg+ZjpLJ7jd0379fKLqeLTF5c16
         zvrchrE3GkQpABzXpzAzgmZyIj/ejgK0KgnvaLorJNtdRp4lUTPPg33ezlJK/qU1Kn5r
         tmNGLtoSjVX+JX+OQOb9SeYnSQlxkqBOhJGyZYhondj8aP3P+ZLgIRTLG+KnlmHZoKw4
         oRF8wt4CiHVhUEfTM4HWkUDdrW/QjCF42Ivp4MU+vcPPNhzi67cHWrQSFglIjYQGkeOb
         t/8U4Xx0Y6WVeJo3XufmiVKmWc7NyfR2hbbl4OjV4vU6ZM5xi7azCqnxDD8+Qx6uH3rJ
         7jIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0PfQWUOXo8I0bwbNcdMc0nZ5NKc7xXUK4kkZDuaGifk=;
        b=M7uMdd3sBzT7bPyjmC2k4M/vrysVaY8XVlov03aOFBZffr7ccS5mYisJTi9IlglkPg
         q+nNTLv6ddSj5s8Rqwa7jeMx6r2976jOAnh53uUizKbXp0aIDN9+hcA8X5v7Q5sq6dFW
         mQUqpHxJUKf/lP+IohKvlf8HUzW+/QXMS3i7NfD0i7ZLkUzysOam7ME3Z/Vp0M22EGaW
         dGXOdgDmXEUG2KVTIFdxsoA7GSBDzHVu4kRlhkRCuKgOhf06LjJi86ShY0knr76TNYv3
         wfbDXr4UB64qbEUylApTms51z3SxVyH3CpprqJBbbbgRiOX+fGRdtRjmLChS1wwe/RyH
         RiLw==
X-Gm-Message-State: AOAM533hsc5vXhvhlWhbAUUzHUdnt6ls5lk+G5fnBB/vzDLL7CrIOwni
	MgOmvcVb6lUeflijTx0vpSZAHepA4qoYjA==
X-Google-Smtp-Source: ABdhPJyGMlnZd3VKW+oE0X1+ltLqXJpbPgdaOIBx+RXCrBUGYhqXaj9yRjGhMVi2qxQ02F1sVJEKPA==
X-Received: by 2002:a92:3647:: with SMTP id d7mr26639584ilf.231.1625069443068;
        Wed, 30 Jun 2021 09:10:43 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id q6sm4965739ilt.41.2021.06.30.09.10.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jun 2021 09:10:42 -0700 (PDT)
Date: Wed, 30 Jun 2021 12:10:40 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH 3/3] wic/wks cleanup
Message-ID: <20210630161040.GC9226@localhost>
References: <20210628151541.26092-1-twoerner@gmail.com>
 <20210628151541.26092-3-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210628151541.26092-3-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2021-06-28 @ 11:15:41 AM, Trevor Woerner wrote:
> By exporting a couple more variables the wks file for every rockchip device
> can be built from one template instead of having separate wks files for each
> board and platform.
> 
> The following BSP variables were checked before and after this change to make
> sure they remained valid/sensible:
> - WKS_FILE
> - UBOOT_SUFFIX
> - SPL_BINARY
> - IMAGE_FSTYPES
> 
> Built-tested for every MACHINE in this BSP.
> 
> Run-tested on the following devices to ensure they continue to boot correctly
> to a cmdline (core-image-base):
> - tinker-board
> - rock-pi-e
> - rock-pi-4b
> - rock64
> - nanopi-m4-2gb
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/firefly-rk3288.conf      |  2 --
>  conf/machine/include/nanopi-m4.inc    |  1 -
>  conf/machine/include/rk3288.inc       |  3 +--
>  conf/machine/include/rk3328.inc       |  1 -
>  conf/machine/include/rk3399.inc       |  2 --
>  conf/machine/include/rock-pi-4.inc    |  1 -
>  conf/machine/include/rockchip-wic.inc |  5 +++++
>  conf/machine/include/tinker.inc       |  2 --
>  conf/machine/rock-pi-e.conf           |  2 --
>  conf/machine/rock64.conf              |  2 --
>  conf/machine/vyasa-rk3288.conf        |  1 -
>  wic/firefly-rk3288.wks                |  7 -------
>  wic/rk3288-boot.wks                   | 24 ------------------------
>  wic/rk3399-boot.wks                   | 24 ------------------------
>  wic/rock-pi-4.wks                     |  7 -------
>  wic/rock-pi-e.wks                     |  4 ----
>  wic/{rk3328-boot.wks => rockchip.wks} |  9 ++++++---
>  wic/tinker-board.wks                  |  8 --------
>  wic/vyasa-rk3288.wks                  |  8 --------
>  19 files changed, 12 insertions(+), 101 deletions(-)
>  delete mode 100644 wic/firefly-rk3288.wks
>  delete mode 100644 wic/rk3288-boot.wks
>  delete mode 100644 wic/rk3399-boot.wks
>  delete mode 100644 wic/rock-pi-4.wks
>  delete mode 100644 wic/rock-pi-e.wks
>  rename wic/{rk3328-boot.wks => rockchip.wks} (64%)
>  delete mode 100644 wic/tinker-board.wks
>  delete mode 100644 wic/vyasa-rk3288.wks
> 
> diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
> index 138e840..3270bb9 100644

Applied to meta-rockchip master.
