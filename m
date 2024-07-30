Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9627C3DA7F
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 20:02:22 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web11.23301.1722360275492046018
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jul 2024 10:24:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=C/qSJ6Kl;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: patryk.seregiet@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2cb4b7fef4aso3685930a91.0
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 10:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722360275; x=1722965075; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Vglm3tbu24ZaHGPQkKfSlwHxdoYQJiyBfPdlgr4AZb8=;
        b=C/qSJ6KlD+s45foDJ+kr/s26dS4ojE51/CH35Zt+K+buuhY7AkP5wbaZUp+KOUtrOZ
         cmSAR3ait3wtSmjInSgTvaC6PyqlChKK1ytTXa19Kxc/VHJaJn590G5wBKmZhrlnYkRf
         IoE7RqL2nkJ51SXpiEdU7yf3tyjHlzk4TYjMCYndcsjHOWnqNAXJ03InKUiABxo5fF+V
         MZe/UvlPI9/+FJECaJTYTi+kS8jCu38CSxQ1mSy8BZzs2c8z53wxt0Meg77+yHfIxXB/
         tO0T16xNYG8jroqXcocO4m1SPR49eaICG87oKnIxdmfg0xKCdCyYM+Khr4XkWbiObbl2
         COkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722360275; x=1722965075;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vglm3tbu24ZaHGPQkKfSlwHxdoYQJiyBfPdlgr4AZb8=;
        b=BHXMaOgbqUP+KIj2bbg0upSg19oK4GJfE4m5PaxNWmAOePcUf1OqgEBsO5bXBzfJ0M
         HG8PVIMGYKfVU5O8LRuc7UY0c7pAoZf+If5casTmfZKtKYPDEaO0QFqSJbBLA0u5g7RO
         bFsR7637os+619dS+vrmYF1XsfE/K/2ajzfm2CuXBKaToKq6SwkR6MYFk270p/t8xjxa
         DIGmPHLXKpL12MXqnhqeYRZe+6/Hw/PudjFz5si4d4GkOqmP/kIsdHQBBbJxGw5a5twS
         z/fgtewNqf68AZluPzdl9bg4N/JfiMDLwBkwiRL8L8uMOm01mjZa6U0pZefq+4aEeojB
         OugA==
X-Gm-Message-State: AOJu0Yygrz8TPEupHwngb+q86agmdER49xBGZ/e7+hVqwISs8APdHQ5C
	vAlYpMpj9s/h/l3rmDsfGTHuBwAcKATCTpk7dejXSwt3LnYfFM5a9flI7abBWzMZiScbmEq+RjP
	ie7eNJ5MCXQKRqFdjNGBW8HN3Uo4O9/ZbOXiTgQ==
X-Google-Smtp-Source: AGHT+IFZEefqpDQbZsshsmey7GrTs3yU07nhqj03o3kuGKlwMXNrFfYqdwdgKQWpsojmoifW4wYKEk+KuFkd4JDPziA=
X-Received: by 2002:a17:90a:6fe5:b0:2c9:cbdd:acd with SMTP id
 98e67ed59e1d1-2cf7e835b53mr13481692a91.35.1722360274701; Tue, 30 Jul 2024
 10:24:34 -0700 (PDT)
MIME-Version: 1.0
From: "patryk seregiet" <patryk.seregiet@gmail.com>
Date: Tue, 30 Jul 2024 19:24:23 +0200
Message-ID: <CAOf3PZwgrx7jo7mjuQGJZ8YXxHaDrRi8mOiDY5JL-Zz92xx+sg@mail.gmail.com>
Subject: Diff / Delta file between two rootfs images.
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 20:02:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63613

Hello,
I'd like to create a diff/delta file between two rootfs images. I
thought it would be as easy as using diff / rsync with some options,
but it doesn't seem to be possible with just that, at least I couldn't
manage it. So I wrote my own tool and it works, but it requires root
to manipulate the files owned by other UIDs and GIDs (especially
root).

I know there's fakeroot, but my images have files owned by root and
another ordinary users, so I cannot just make everything be owned by
root. Here's the breakdown of my program and what I tried. I'd like
any suggestion on how to achieve this easier and without sudo / root
account.

Oh and btw I am using ext4 images because I am using Mender (the over
the air update software - https://mender.io/) and their final "mender
artifact" is just the ext4 rootfs image with some extra metadata. I'd
like to make a system that can produce a delta between these images.
But if that's not possible I can just use the tarball created by Yocto
(I'd just need to keep both or maybe Mender can be configured to use
tarballs... not sure).

Mount ext4 images at dir1 and dir2 (can be done without root
using fuse2fs, but in that case no files can be listed when using
sudo... strange)

For all files in dir1 check if it exists in dir2, if not, write its name
to ".deleted" file

For all files in dir2 check if file exists in dir1. If not, copy it to
output-dir

If both files exist compare them (size, uid, guid, st_mode, finally
calculate and compare a hash)

if any of the above is different, copy it (using cp -a, which preserves
all attributes). Also make all the directories for that file (mkdir -p).

For all directories in output-dir check if it exists in dir2, if yes
then copy all its attributes (stat -> chmod + chown).
This is needed for all the directories we created using mkdir -p

This leaves us with all the files that were different in output-dir
and a list of files to be removed.

Here's what I thought of doing:
Do this in a docker image as a root (without the docker itself having
any privileges). Can't make it work with ext4 being mounted, docker
container can't access it (mountpoint is owned by root).

Pozdrawiam / Best Regards
Patryk Seregiet

