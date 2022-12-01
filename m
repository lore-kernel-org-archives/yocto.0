Return-Path: <zoran.stojsavljevic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05434C43217
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 12:38:22 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web11.41901.1669898295605622478
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 04:38:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NU7YMoh1;
 spf=pass (domain: gmail.com, ip: 209.85.221.44, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-wr1-f44.google.com with SMTP id h12so2466471wrv.10
        for <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 04:38:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qPzTPxCTZMn6CHxfxJOaB8ANbZkzoXry8w2l0PWqFjQ=;
        b=NU7YMoh1ee792O4rXFUO0eZ9XE4le1pRF+fabLLtcOE2PG1CLWPzKoVODjjbX492Id
         Lw68Tu8iu3Iw4yDOkOX+KOX1mJI8U7HPD5RxbkX1ld1zCh04oX0O/KYOogghEgMAaL3V
         ajJKrBe9SASYE+kufdmkD0cnIeZ/46Hmsr4ZQkiwhlBruCPGyrNEOv2E2oiV9I9iziQO
         2aFyh5Kd2SsuH7/TZZ5sOeu/0gxKmMPuge2y6oWyIIJysZn5Wf7Omrm3LkV8/Hq2qGEE
         FUQpivIhHRLYoyaIBdVR7j7LRv2kAatfjoCHVRw9nMOrpViDXEKmvyFbVMBKjkhm9nqa
         8BZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qPzTPxCTZMn6CHxfxJOaB8ANbZkzoXry8w2l0PWqFjQ=;
        b=svRhupi1e5AxjdGYvMt4pjRHPSokrOLLNr435tRin0JMCrYO3C5Zifa9khCA4bbnye
         eXIDKe+wTIHau9CbbiMr2+sHlcX1j/8yWDLbonReJtPMsivrAay2i3BNJGfm4+XYQegL
         uRkyMfYzE5M8v9Wwz4zKKyhxEWlX9lNojcO606hPkOEF0j94kou8Skh0Lf7Y35Nh9eZZ
         laeDy9z1v5p0Br/weQOo1/UlVcPW5CPZr1WSvJCM5W3Vy8AQ5aaj5bBvbpHJD5L4XW4A
         3Lmb4RVe6rcSy+TuJs5+TOjzcOr06KVwy3/MQyRqKy75dl7CpssvZEJtMrPTA1xVJXtl
         Aj6Q==
X-Gm-Message-State: ANoB5pkN9M5eRfXYOeSbhveoef80/4sp3DZ32iMD+PmW0cU2Pi3qrrEQ
	kN/8zaF7zIDHg7mwPlj4G7Og5N0yFLam0/feRMY=
X-Google-Smtp-Source: AA0mqf624UJQSmZx/jVXnoZSuvJ4dLpssGWnjJ9ASPeq++TTCGPnw8sekqjvEKatfZJh3kE6YT2/22cikyFIoRoazSQ=
X-Received: by 2002:a05:6000:114f:b0:241:c80c:5f54 with SMTP id
 d15-20020a056000114f00b00241c80c5f54mr36601110wrx.15.1669898293793; Thu, 01
 Dec 2022 04:38:13 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
 <9D944DA0-C890-4E71-A82A-3E30892E8684@arm.com>
In-Reply-To: <9D944DA0-C890-4E71-A82A-3E30892E8684@arm.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 1 Dec 2022 13:38:02 +0100
Message-ID: <CAGAf8Lxz2V7CnnVubZ3UUCKRhwJ7QmcMC4sc79Nq_fay_-MDFQ@mail.gmail.com>
Subject: Re: [yocto] LAYERSERIES_COMPAT_ variable in the layer's recipe
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 12:38:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58701

Ross,

It is now broken even in hardknott. I tried it, just as I tried it
before (it worked before).

I have no idea what the ERROR is:

zoran.s@NBK0005U:~/projects2/yocto/bbb-yocto/build$ bitbake -k
core-image-minimal
Loading cache: 100% |
                                                                | ETA:
 --:--:--
Loaded 0 entries from dependency cache.
Parsing recipes: 100%
|#################################################################################################################|
Time: 0:00:23
Parsing of 814 .bb files complete (0 cached, 814 parsed). 1438
targets, 41 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'cannelloni' (but
/home/zoran.s/projects2/yocto/bbb-yocto/poky/meta/recipes-core/images/core-image-minimal.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'cannelloni' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['cannelloni']
ERROR: Nothing RPROVIDES 'can-utils' (but
/home/zoran.s/projects2/yocto/bbb-yocto/poky/meta/recipes-core/images/core-image-minimal.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'can-utils' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['can-utils']
ERROR: Nothing RPROVIDES 'socketcand' (but
/home/zoran.s/projects2/yocto/bbb-yocto/poky/meta/recipes-core/images/core-image-minimal.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'socketcand' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['socketcand']
ERROR: Nothing RPROVIDES 'core-image-minimal'
No eligible RPROVIDERs exist for 'core-image-minimal'
NOTE: Runtime target 'core-image-minimal' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['core-image-minimal']


And my /home/zoran.s/projects2/yocto/bbb-yocto/poky/meta/recipes-core/images/core-image-minimal.bb
is:

SUMMARY = "A small image just capable of allowing a device to boot."

IMAGE_INSTALL = "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL}"

IMAGE_LINGUAS = " "

LICENSE = "MIT"

nano meta/recipes-core/images/core-image-minimal.bb

## IMAGE_INSTALL_append = " kernel-modules"
IMAGE_INSTALL_append = " \
    kernel-modules \
    cannelloni \
    can-utils \
    socketcand \
    "

IMAGE_ROOTFS_SIZE ?= "8192"
IMAGE_ROOTFS_EXTRA_SPACE_append =
"${@bb.utils.contains("DISTRO_FEATURES", "systemd", " + 4096", ""
,d)}"

Zee
________

On Thu, Dec 1, 2022 at 12:09 PM Ross Burton <Ross.Burton@arm.com> wrote:
>
> On 1 Dec 2022, at 04:27, Zoran via lists.yoctoproject.org <zoran.stojsavljevic=gmail.com@lists.yoctoproject.org> wrote:
> > I do not understand why we need to explicitly name releases for such
> > simple generic layers?!
>
> The compatibility is because over time things change: override syntax has changed, classes get added or removed, functionality may appear in bitbake.  Sometimes the breakage is subtle, and a layer may parse and appear to build fine, but be broken.
>
> Your meta-socketcan layer is broken in honister onwards despite claiming compatibility, for example.
>
> Ross

