Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71CFC678D5
	for <webhook@archiver.kernel.org>; Wed,  8 Mar 2023 11:25:00 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.4496.1678274698798260605
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Mar 2023 03:24:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ChnUmvpI;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id n2so20849886lfb.12
        for <yocto@lists.yoctoproject.org>; Wed, 08 Mar 2023 03:24:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678274697;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/fZe6uIlpeFjUCVxUb30WO8E0ryL9BkcNWE0g5/s4pc=;
        b=ChnUmvpIaL+OK34waFz6cFEUBdRyjnSWfi6ybbczVH4GVUqs2YrlgO8daqGUjYc1aN
         F9KozMRGxOhQl5se/UoIo6iSFJQZohABYGRtAy3vbPmocd6BgNdw2IP9S9MRA1Wl2fuh
         4sgwh3I8X4Mt+EOrKt9h/2xffuhYIl0JsSGW1EDeyF6YlHTVHNa6WzhZW6GxZ9HJtOZC
         38+RLTbluoTRm8VScSiM16e6QmIKDvhViUMJAetk7HqTiRjDQhMef32lc5Pd1ZN4K6kg
         0omHz7rZ7v5sulsbJf+9+P6+ganbWB7+I8GC3dWJHu5zz0qYpWV7cse0FTbTeBwagL7S
         9ADQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678274697;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/fZe6uIlpeFjUCVxUb30WO8E0ryL9BkcNWE0g5/s4pc=;
        b=EOc1gCco72q7CtCWW9hk03ag+qTn9Z6fVgOiCxePBg/XQNkueChDJBtdBXM/4z03zX
         3BqfGKIi590naQ9jogmThi4Bjs5GlazTGfNJ7v8fwxlEL7p5QMR3RwW7cXx3Rzqt0Z9u
         QlUauUz9iBXpX8mJ/TAr3ovYzaQW/jk8JBaOKlcNJoCJ3MQW5GJw5+P3nlYqBQUrO7IK
         +1JLzBJHosZpwIw5HAHn5sKy/8vkSf3gf4QcKNjQCSNtCeTlZGJ/p1QHQZN/HQzLyfJZ
         h9803K7rE2GpX1zxVJqwXW93CVTmQfg6PPZEVHpniSAg7chO1SW8iVPrR9LjRcWrFqMk
         ND7A==
X-Gm-Message-State: AO0yUKXTKsJhYbHPGlXnAus66wHOSoSh/470CySOIpdYnXlY4TJ1ixaB
	e+YXuevQkw74Z0WL56XNtjyGSnOeAOqXIwXHPT8=
X-Google-Smtp-Source: AK7set/dC3FWr6dx0bI/Hpu3SwQMyDMz/swAFnzfbFS84Uc8y+O70ADLm0wYLrIJjPsMNsnYfD0uSh5S1GVGIKbfOq4=
X-Received: by 2002:ac2:53b7:0:b0:4d5:ca32:6ed6 with SMTP id
 j23-20020ac253b7000000b004d5ca326ed6mr5629203lfh.4.1678274696598; Wed, 08 Mar
 2023 03:24:56 -0800 (PST)
MIME-Version: 1.0
References: <UnGr.1678259358220053838.ErtG@lists.yoctoproject.org>
In-Reply-To: <UnGr.1678259358220053838.ErtG@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 8 Mar 2023 12:24:45 +0100
Message-ID: <CANNYZj-XHuy5p9SQZTaAxfxbHL4Z7ksWcD0UhKgoxyY18-mr8w@mail.gmail.com>
Subject: Re: [yocto] How to install files to custom partition?
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Mar 2023 11:25:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59365

I think it goes like this.

In your recipe you need to install files into the root directory of
the partition itself and not its mount point, e.g. strip the
mnt/custom prefix.

Then you need to create an image recipe that will install one or more
of the packages that contain the files that should be on the
partition.

Then you can compose a complete 'bundle' containing all the needed
partitions (created from image recipes) that can be written to a disk
of the target device, using wic for example like described here:
https://git.yoctoproject.org/poky/tree/scripts/lib/wic/canned-wks/directdisk-multi-rootfs.wks?h=master-next

There's a manual for wic too:
https://docs.yoctoproject.org/dev/dev-manual/wic.html

Alex

On Wed, 8 Mar 2023 at 08:09, Sourabh Hegde <hrsourabh011@gmail.com> wrote:
>
> Hello,
>
> I have some files which I need to install them to a custom partition (to /mnt/custom). But, I couldn't find any installation variables to install files to /mnt/ (partiton other than rootfs).
> I want to do something like below:
>
> do_install() {
>     install -d ${D}$<mnt>/custom
>     install -m 0755 ${S}/sample.sh ${D}$<mnt>/custom/sample.sh
> }
>
> But I think this is not supported or not easily possible.
>
> Can anyone please let me know how to install files to partition other than / ?
>
> Thanks in advance
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59363): https://lists.yoctoproject.org/g/yocto/message/59363
> Mute This Topic: https://lists.yoctoproject.org/mt/97467970/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

