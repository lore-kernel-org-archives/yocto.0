Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14FA8C433F5
	for <webhook@archiver.kernel.org>; Tue,  3 May 2022 12:53:25 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web11.10599.1651582403409335321
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 May 2022 05:53:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=b7X6kydD;
 spf=pass (domain: konsulko.com, ip: 209.85.160.174,
 mailfrom: scott.murray@konsulko.com)
Received: by mail-qt1-f174.google.com with SMTP id hf18so13233259qtb.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 03 May 2022 05:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=xan/2+sAWRfygy9kPgGk2qVgZtczHcAunxpYBvQJNPs=;
        b=b7X6kydDGYzgkezU+OE3R4e/wE3zJi3g112oRjUo37d6nlCwbrcKnjgmW7FbU0hE/R
         kmlMJCWMl7N30T5X80yYBuixlnKdUapCiBV9OFtp0hfqQ7FyTo5HQhByS/Jd7Rlxznn7
         f5A/pLxG7fBVrAyfcG8v275pk6JDGxntfS0RI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=xan/2+sAWRfygy9kPgGk2qVgZtczHcAunxpYBvQJNPs=;
        b=u77wbR2bSfVPKnwZJ9c6ezXPXx3mQKSygEwosVN8PNxh5tOKgcki7dO8vqDq9Dfv5k
         imm9JYK3cQyceupyBaV/RSuw6zRduNrfEcPQ7JIlx/RkR0MTtUj5TubAJ0OQ4zwl6oJl
         92UQIzJcIOCbo7E84BngZRHjVSb8rh/kMv7h6WUZcpTndtDWwoiwQqgH9ifRMyfyGD8a
         l+iCwEupKHHOtC06B5Du2iz7w/ZrN8VXjg+re714HJ9c3td3wR/zMSbRP9+417yNK+va
         UGNE6kvOz9DfA9MBR0Ji01Dlkh62LRZxi5QnhvPZ4rr73oCNHinuey+T2pSTZh0MrNAU
         m3vA==
X-Gm-Message-State: AOAM5307XZYmrfqXR8QLiJ70WbgpWA/hsYCDElBPK/Z7UdLndqMe28QC
	0PVFK17kXx6CM+2zIVn28eHejw==
X-Google-Smtp-Source: 
 ABdhPJy5VHxZBaMUU5qyafaiaAFa9OKIwxW8cUjl4rn2+Pt4cn2Vl5FgAc+6YMBNILvn5zsv3k2hEQ==
X-Received: by 2002:ac8:5913:0:b0:2f3:a402:1054 with SMTP id
 19-20020ac85913000000b002f3a4021054mr9127808qty.513.1651582402425;
        Tue, 03 May 2022 05:53:22 -0700 (PDT)
Received: from godzilla (192-0-174-222.cpe.teksavvy.com. [192.0.174.222])
        by smtp.gmail.com with ESMTPSA id
 e188-20020a37b5c5000000b0069fc13ce225sm5089372qkf.86.2022.05.03.05.53.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 May 2022 05:53:21 -0700 (PDT)
Date: Tue, 3 May 2022 08:53:21 -0400 (EDT)
From: Scott Murray <scott.murray@konsulko.com>
To: Edgar Mobile <heideggm@hotmail.com>
cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding systemd to yocto
In-Reply-To: 
 <DM8PR16MB435760E81DEDC46DA1B570B9C7C09@DM8PR16MB4357.namprd16.prod.outlook.com>
Message-ID: <a334894a-8336-4e38-f2e2-b71d3b2dc4c@spiteful.org>
References: 
 <DM8PR16MB4357BA2349F9D42C1786A5E8C7FD9@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CABKMkPLwm1e_S+pdqw4j_J-oVokVWphdXiMAkiaME3MZvnyg3Q@mail.gmail.com>
 <5c7ccb89-5af6-78f8-f6b5-416d8e83369@spiteful.org>
 <DM8PR16MB4357D696EB8115CD320E035BC7C19@DM8PR16MB4357.namprd16.prod.outlook.com>
 <DM8PR16MB43575294B7F770E74634A9D1C7C19@DM8PR16MB4357.namprd16.prod.outlook.com>
 <ff0fbda-7955-d0f1-4dc7-a78f34359768@spiteful.org>
 <DM8PR16MB435760E81DEDC46DA1B570B9C7C09@DM8PR16MB4357.namprd16.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 May 2022 12:53:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56977

On Tue, 3 May 2022, Edgar Mobile wrote:

> Apparently, this is not enough:
>
> bitbake core-image-weston
> /usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: can't resolve package from __spec__ or __package__, falling back on __name__ and __path__
>   return f(*args, **kwds)
> Loading cache: 100% |############################################| Time: 0:00:00
> Loaded 1472 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'pam' (but /media/user/SSD1TB/yoctoqemu/poky/meta/recipes-graphics/images/core-image-weston.bb RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'pam' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['pam']
> ERROR: Required build target 'core-image-weston' has no buildable providers.
> Missing or unbuildable dependency chain was: ['core-image-weston', 'pam']
>
> These are my current additions to local.conf:
>
> INIT_MANAGER="systemd"
> CORE_IMAGE_EXTRA_INSTALL += " mesa-demos gdb"
> IMAGE_INSTALL:append += " pam"

^ This line what is causing your error, remove it.  With pam in
DISTRO_FEATURES the required packages will get pulled in via dependencies.

> DISTRO_FEATURES:append = " systemd wayland pam x11"

If you specify INIT_MANAGER = "systemd", then you do not need to add
systemd here.

> VIRTUAL-RUNTIME_init_manager = "systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
> VIRTUAL-RUNTIME_initscripts = ""

Similarly, with INIT_MANAGER = "systemd" these 3 lines are not required.
If you look at meta/conf/distro/include/init-manager-systemd.inc you can
see what INIT_MANAGER = "systemd" tweaks.

> IMAGE_ROOTFS_EXTRA_SPACE = "38048576"
[snip]

Scott

