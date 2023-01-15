Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D322C3DA78
	for <webhook@archiver.kernel.org>; Sun, 15 Jan 2023 16:03:20 +0000 (UTC)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
 by mx.groups.io with SMTP id smtpd.web11.142831.1673798592005757743
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Jan 2023 08:03:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AacF9X26;
 spf=pass (domain: gmail.com, ip: 209.85.166.171, mailfrom: alex.kiernan@gmail.com)
Received: by mail-il1-f171.google.com with SMTP id m7so454229ilh.7
        for <yocto@lists.yoctoproject.org>; Sun, 15 Jan 2023 08:03:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PBT05atFfBThoRvNshg0I/Okyh7OeE5OK/MjNCKTaSA=;
        b=AacF9X26VbgbUhfnK3WH/xaOH9OQ5/RLD16XQCufwBP4K3hytL4+ZvaO3i2np1hHQb
         /q0yA1aTpVeqI4k14wxMfiRyRJa6Em1zt22vmMhGkD331VsuzW9dhTBHKx4JoCuFcg5M
         4H/nFYaFD9iBUUBxgSgp8wueqb9C08QVB0BYRCZlKYETqBQkZp4ErKu3EJ1WNDP9eZD7
         F/v3M8xCrCDVy/63zc2yIDR9O6l29+CVPOsbD2srSNtexo++xYhShlFpkmv8/Jhy5DKe
         dURBd9opq54VCGgOBvei+NZrR3l66tKx7X343Ca/mo/rhBYvBkgCFZmMhx40sR6eSNBf
         K+kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PBT05atFfBThoRvNshg0I/Okyh7OeE5OK/MjNCKTaSA=;
        b=b+fcfae5sHg/oGBzlTTz57ox7RhQsp3RbOTx67TVWegTpzrox+YnNsDaSmF0ns5CU5
         zHMasOrIfzyHqrTXXRZmBlHnnKTgO2WHHMYDS7lkj8DcQtYZsBluMY9kMTAX/Q6wNBT8
         nenfdlYV8+cCEqsPhly2F8PH5BdmSmCDMAQkPKfiAu7XEjaclFofz+M89k50JaQqYC8Z
         HwHv2OsmHcrjzLdUDhCezMEyTXYhEdpsACb0nJ4eHkHOnEcT0sUAxRYMV5DLAA+iL/ZS
         uQkCqfmWVdkkMSGkqrH9lPTmw4LC4emEga5ehnAZW+eqc+NhT757KwKhOpjEQxrY3tHz
         lggw==
X-Gm-Message-State: AFqh2kqrghUBaEuifC1+QBB+gxxOpjsXKA7Ij8JC09e/C+zF0HRcF7+b
	TwL8pTBe87gHKvdGp8IFHaM87wXtDoCfhpX3XeU=
X-Google-Smtp-Source: AMrXdXtivvpWuu4txPUgxYQCn9rUm1+GnK0N4hMkFOzugDh8wmpw6PM61yOfDSZU+DAJEEGyTq88uRTUlgSjQXj6L7Q=
X-Received: by 2002:a92:cda9:0:b0:30e:e796:23b7 with SMTP id
 g9-20020a92cda9000000b0030ee79623b7mr829906ild.23.1673798591198; Sun, 15 Jan
 2023 08:03:11 -0800 (PST)
MIME-Version: 1.0
References: <hR2p.1673667788793001815.UD1i@lists.yoctoproject.org>
In-Reply-To: <hR2p.1673667788793001815.UD1i@lists.yoctoproject.org>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Sun, 15 Jan 2023 16:03:00 +0000
Message-ID: <CAO5Uq5Qh9ZkKHCvmKK8e3cp2HPNrRcSv0WL1dYiyhaJA0ATACw@mail.gmail.com>
Subject: Re: [yocto] How to properly modify/patch source of a Cargo Crate dependency
To: jekefas508@tingn.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 15 Jan 2023 16:03:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58989

On Sat, Jan 14, 2023 at 3:43 AM Jerry Kefas via lists.yoctoproject.org
<jekefas508=tingn.com@lists.yoctoproject.org> wrote:
>
> When creating recipes for Rust projects, all of the required crates are included in SRC_URI. I need to patch the source of several crates. I've tried creating individual recipes, but that does not really help.
>

If you're just patching in later versions of the crates, this should work:

SRC_URI += "crate://crates.io/<target>/<version>"
EXTRA_OECARGO_PATHS = "${CARGO_VENDORING_DIRECTORY}/<target>-<version>"

or if you have them patched in a git repo:

SRC_URI += "git://.../<target>"
EXTRA_OECARGO_PATHS = "${WORKDIR}/<target>"

Only works if they're already in crates.io though
(https://doc.rust-lang.org/cargo/reference/overriding-dependencies.html)
and you'll probably run into
https://github.com/rust-lang/rust/issues/98185

> I've managed to get a hacky fix to work, however it involves having recipes copy source from the tmp/work directory, which is not ideal. It patches the Cargo.toml to replace the version of the dependency with a local path to expect the sources in.
>

I suspect we really need some standard machinery here.

--
Alex Kiernan

