Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web08.12600.1624893134355296321
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Jun 2021 08:12:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WsYtacEq;
 spf=pass (domain: gmail.com, ip: 209.85.222.178, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id f6so3368277qka.0
        for <yocto@lists.yoctoproject.org>; Mon, 28 Jun 2021 08:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ERh+IXUW8aaIctO5f8hVcZfTBgJubF3wbzYikCx0ZFo=;
        b=WsYtacEqV+hzNGp6R8qZ/UPwIPMqtHDvbJM2sV5GIakI7g0rKWw9sWzrhnYIvrJ1SI
         JiAu6e/md67ROs+vnPyGSxt/T/c5zXGnBkz0DyZ81QXEfPXDACVybxdow0NncgQArkMr
         yTKA1da6mf0u5OOlfcr3YXdTMOv5twfF1rH8jx9AFxsPKXWg8O2t0UkX7/5XvWa2KZpr
         c0yxMp7BPCJcWWkJyP53EwE4X8wX/It0vDdCcef9VUQWsOnccacGN/NIUrHye6V1wHTm
         3OJjIBkTalebF+pO1LV5d190zsiQ1TctvCOvLbyVMb0m1R6Zz895ukNEneb2+mzrSJNj
         JWDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ERh+IXUW8aaIctO5f8hVcZfTBgJubF3wbzYikCx0ZFo=;
        b=Lgt2GXk4Fum6aKRx9KXKSB8AB17IXX64poQjieWQLkYTQZtiXOoRqWZ/bh8TmaWV6z
         /wkF3y3HGv16piDpAgIvFg87aJdxqbbTRcxXEsstDBxBqmiDkWJxVmfUFcy3LkjHEjaR
         0pmXmsuKJ/ELlJ3sumMltD338TiTYK6ZQP1wfK6VzClqwViLXKJC4hjmx5LaSRTHnbMD
         RAp8tK9wrffd5j7Z299S2fy5B3yMV7M/8XfA0PRWgGqNQivtNMbTIdiBYXpqzHJ0LsCD
         8f8mP9zs+X640th6LdHCUIziwI8DcS0NkJRhfnJMKQZqw0HtXcui7x3yQMcq8buvuYdq
         iTRw==
X-Gm-Message-State: AOAM532Vhp7koJkrdwEXWR7moMmkcBws9utTslyGBDItwr0C3exjhCap
	L7ocWT/gdsJi4fZD8LBXmr/ZU3agXdggig==
X-Google-Smtp-Source: ABdhPJwqpQey4aulNbwJIX0g/yKLnSwylobR/YSk9C7ZRsWhSvOOOka+QGCfHz20CpFZCuo75vPWjw==
X-Received: by 2002:a05:620a:4493:: with SMTP id x19mr1094635qkp.246.1624893133266;
        Mon, 28 Jun 2021 08:12:13 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id d14sm7067347qkg.123.2021.06.28.08.12.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jun 2021 08:12:12 -0700 (PDT)
Date: Mon, 28 Jun 2021 11:12:10 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] conf/machine/include/rockchip-wic.inc: create
Message-ID: <20210628151210.GA24721@localhost>
References: <168BD7BC68811D33.3492@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <168BD7BC68811D33.3492@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri 2021-06-25 @ 09:54:46 AM, Trevor Woerner via lists.yoctoproject.org wrote:
> Create a conf/machine/include/rockchip-wic.inc file to contain all the common
> wic/wks things for easy inclusion by any MACHINEs that use wic for their image
> creation.
> 
> NOTE: the wic image type of rock-pi-e changed from "wic.xz" to "wic" which
>       matches all the other meta-rockchip MACHINEs that use wic
> 
> The following variables were checked before and after to make sure they remain
> correct/sensible:
> - IMAGE_FSTYPES
> - WKS_FILE_DEPENDS
> - IMAGE_BOOT_FILES
> - RK_CONSOLE_BAUD
> - RK_CONSOLE_DEVICE
> - RK_BOOT_DEVICE
> - SERIAL_CONSOLES
> - WICVARS
> 
> Build-tested for all currently-defined MACHINEs.
> 
> Boot-tested on the following boards to make sure they continue to boot to a
> console correctly (core-image-base):
> - tinker-board
> - rock64
> - rock-pi-4b
> - rock-pi-e
> - nanopi-m4-2gb
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>

Applied to meta-rockchip master.
