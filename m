Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D14CD37BB
	for <webhook@archiver.kernel.org>; Sat, 16 Sep 2023 11:41:39 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web10.9926.1694864496035728140
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Sep 2023 04:41:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UYS7MyWP;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6562330d68dso13118696d6.2
        for <yocto@lists.yoctoproject.org>; Sat, 16 Sep 2023 04:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694864494; x=1695469294; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J1bLVxqXaov7WU+fYKTnNh5a21O74tZGJZASLOGr/+8=;
        b=UYS7MyWPsBpvyrX7PIHB31s1trY104Hn3ogBqxftT/x/eTbdeJXUWp56LtKJengq+l
         SnkKOCZKeGKKYM5l87AuOuujlPOFgO0JmTJIYBRqSYHs5wtEKWbfVr7/vNGJi+Uv6Fdl
         XchXrunzmGrdr4SyQTPW1CZaut2+c3Mx+jF8bYMgGp8/+2pRAXxDJXN7vzA14uKza0Lm
         uW1ZWtWGFw1x7KnudPbgCuE/Qhl1PHwhKP4Zn49SBKrL/EEXIqioRNMPKQTnNEfEVRpZ
         NmU0D8yERKy/KyGHKE8yqSdUgy0P1DjhNMJqaWheFPY0/dzpR1p6ohf6Cyid6k4UwLYI
         WCSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694864494; x=1695469294;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J1bLVxqXaov7WU+fYKTnNh5a21O74tZGJZASLOGr/+8=;
        b=NGd/M5NLb7O8kN893QRY6AaZvKLk25rTO9LhPOq7Qj9aIvoo1BKjG3U0B1XZ1a5Ik8
         kCo1LSDNSo1QBmn5INFewEy0lvmolzMx8HGXPJhfXKeo5Ukn0K9VOyLDBfuu5PjXcSSh
         jEICKE4ER+Nxzkaz42P6tOM/qKWogeuNDWhT6Acl6L0wOXaOKn/ARCTXs+p7AFUuZ3Oq
         UfSD35jCXSBlMuqnZWVkpjx++1+NyMT3/YU3XbyueV+2i+l/UrzcWmkvrcIhLv1viTp8
         csQpXIml8GX341P5YPoI8a0/WJZRQQHhehr0Db9Ur4jsz5tTLqbAET78DUnStNSu8lDm
         tqOA==
X-Gm-Message-State: AOJu0YwpSys29SbPqYuESnXsu8yhnEk9TNK8ATBa+pGuQzgT2JKMRM9s
	EIBfUKqcDe2NHDYvs3p40G29vFFp/J4CBw==
X-Google-Smtp-Source: AGHT+IFFK/D0FsQcZqp/56+h5jun96mPIZ8oefI0PCkq096qQaDN+3J5rlsacD88upV5/vfhRRPFtQ==
X-Received: by 2002:a0c:b4c9:0:b0:635:f899:660b with SMTP id h9-20020a0cb4c9000000b00635f899660bmr4123247qvf.36.1694864494324;
        Sat, 16 Sep 2023 04:41:34 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id w26-20020a0ca81a000000b00655e2005350sm1967157qva.9.2023.09.16.04.41.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Sep 2023 04:41:33 -0700 (PDT)
Date: Sat, 16 Sep 2023 07:41:31 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] linux-yocto: remove non-rockchip
 archs
Message-ID: <20230916114131.GA8220@localhost>
References: <1783A740046F9DC9.23877@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1783A740046F9DC9.23877@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Sep 2023 11:41:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61020

On Sun 2023-09-10 @ 05:36:12 PM, Trevor Woerner via lists.yoctoproject.org wrote:
> Remove the non-rockchip architectures from the kernel build since these are
> all a waste of build time, filesystem space, and runtime memory.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/rk3066.inc               |  1 +
>  conf/machine/include/rk3188.inc               |  1 +
>  conf/machine/include/rk3288.inc               |  1 +
>  conf/machine/include/rk3328.inc               |  1 +
>  conf/machine/include/rk3399.inc               |  1 +
>  .../rockchip/remove-non-rockchip-arch-arm.cfg | 85 +++++++++++++++++++
>  .../rockchip/remove-non-rockchip-arch-arm.scc |  1 +
>  .../remove-non-rockchip-arch-arm64.cfg        | 62 ++++++++++++++
>  .../remove-non-rockchip-arch-arm64.scc        |  1 +
>  ...yocto%.bbappend => linux-yocto_%.bbappend} |  4 +-
>  10 files changed, 157 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
>  create mode 100644 recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
>  create mode 100644 recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
>  create mode 100644 recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc
>  rename recipes-kernel/linux/{linux-yocto%.bbappend => linux-yocto_%.bbappend} (79%)

Applied to meta-rockchip master branch.

