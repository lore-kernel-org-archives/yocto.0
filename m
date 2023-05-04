Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21535C77B78
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 17:40:49 +0000 (UTC)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
 by mx.groups.io with SMTP id smtpd.web11.1370.1683222040091032955
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 May 2023 10:40:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@konsulko.com header.s=google header.b=dbxGCI6E;
 spf=pass (domain: konsulko.com, ip: 209.85.166.171, mailfrom: scott.murray@konsulko.com)
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-33119abae99so23705285ab.0
        for <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 10:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1683222039; x=1685814039;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tKhquoG+e5glvUz2WxATot3szS4QMnTZONSRrF3puxw=;
        b=dbxGCI6EAwNCSzHx3+y03Z7Swc6tS9NE9K0PVsfSX4GGpD49HLpn4/HgjJ+ta5LGOI
         FQrzaTJeyCtY6VLjS03o3zj0Z8XMDY7vgPgaXFsAinUX7sqZjfcF41GfSX3P42dVXzB2
         MZE7qgNagAxhfM6dvs6jxKZ4iEVBOQjBzxxkk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683222039; x=1685814039;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tKhquoG+e5glvUz2WxATot3szS4QMnTZONSRrF3puxw=;
        b=NaoThU9ByMBrEJ2cr6MFUpxbnPDUAK24lZaZQHUCbZkc2gxwQpaeOS3N/aZF65Vc1B
         Mimu3t+xpVPPKV7PR+WQM/HI4Ba5j+qm5bXD4+hQw1yMXwV5g0Gpz3/gjD3WunoqeFSV
         tycdvVDhIS/mb9qJjL2M2lG1BYQX7gEyMXQKpPiasQAV4A8YjZymkbUmWhFRq2m0gVWO
         n+cl32Zwny9naTv1RLxI19VgRGlBnkM86xZc8ZnQKFYY0oBfGOu91C9EHM/E1pVfG5dt
         Vbc55ZDhQvGLxLpKFIW4CsS/CDGVfRaoyknbron/R9y/MwLlEwmFfDiQeuaAt0QoXB5l
         8VBA==
X-Gm-Message-State: AC+VfDw6ZCy4IFbeaLvYaEb6xQRukkLEejt5lwdW6E8aFwVXddH/Lg0/
	utuMqg2dYFPckoipHvVTt47+vJ1wrj80C/zVPa0=
X-Google-Smtp-Source: ACHHUZ7J7hs3/bBiZKhV2vGJl4yTHp6I3ZtEzdwbVjFLqbPmnkq9JKwLi5U91jn3lEFTzWIBwZgmiA==
X-Received: by 2002:a5e:9411:0:b0:760:e776:18c0 with SMTP id q17-20020a5e9411000000b00760e77618c0mr356084ioj.9.1683222038963;
        Thu, 04 May 2023 10:40:38 -0700 (PDT)
Received: from godzilla (192-0-174-82.cpe.teksavvy.com. [192.0.174.82])
        by smtp.gmail.com with ESMTPSA id r17-20020a6bd911000000b0076978505ea8sm2643139ioc.20.2023.05.04.10.40.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 May 2023 10:40:38 -0700 (PDT)
Date: Thu, 4 May 2023 13:40:37 -0400 (EDT)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-lts-mixins][kirkstone/rust-1.68 RFC PATCH 0/4]
 *** SUBJECT HERE ***
In-Reply-To: <175C01138068D044.898@lists.yoctoproject.org>
Message-ID: <201f51-1c78-cf4c-e468-98b4129a924f@spiteful.org>
References: <175C01138068D044.898@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 17:40:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59881

Oops, too quick to send, subject should be "Proposed Kirkstone Rust mixin"

On Thu, 4 May 2023, Scott Murray via lists.yoctoproject.org wrote:

> These patches comprise my proposed kirkstone/rust-1.68 branch for the
> meta-lts-mixins repo.  The initial check-in backports the Rust 1.68.1
> support from mickledore branch as it stands in preparation for 4.2.0,
> then I have separately ported the recent Rust-related fixes from master
> that I expect to get officially backported, including the bump to Rust
> 1.68.2.
>
> The README in the initial check-in provides some details on the
> backporting of the librsvg recipe versus not doing so for
> python3-cryptography.  I did double-check this again, and I do not see
> a way to retrofit the librsvg recipe with a bbappend, as the bit to be
> changed is in a do_compile:prepend.  The other recipe that I've
> discovered with a similar issue is mozjs-91 in meta-openembedded; it
> effectively needs a replacement do_compile to pick up the RUST_HOST_SYS
> change.  That could possibly be handled with a bbappend in dynamic layer
> in this mixin, but I have decided to consider it outside the scope for
> now.
>
> Alex Kiernan (1):
>   rust: Upgrade 1.68.1 -> 1.68.2
>
> Alexander Kanavin (1):
>   meta/recipes: ensure all recipes have a SUMMARY
>
> Khem Raj (1):
>   cargo: Fix build on musl/riscv
>
> Scott Murray (1):
>   Initial check-in
>
>

