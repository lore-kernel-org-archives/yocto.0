Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
 by mx.groups.io with SMTP id smtpd.web10.6854.1576646303808563911
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 21:18:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ihTVSBY4;
 spf=pass (domain: gmail.com, ip: 209.85.210.41, mailfrom: learning.yocto@gmail.com)
Received: by mail-ot1-f41.google.com with SMTP id f71so900431otf.2
        for <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2019 21:18:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=MpyRedZ9vv42kdhRnpqJaqDm69c1ozvFitn0OCee5MY=;
        b=ihTVSBY4YMUXv7yUQdJI9kNsaP8abBs8dAOMZyLP6ee9kBW+GicAUrn0cqwcCZe7Qr
         zIjHG03eOI9hPdvFyxs7FFWsI6rTzvSA4un29NoYyv7+tDQ++kVQkkZDNbI2s20/dRCB
         DMife46kgNo2rG6L3tyKmDKvdT17mjlf+9JX68wLlOkORV8HdIHPwzcYzEaSg5tMa025
         OkEFOSkj7saJCIRSmKU4VXw4hthxv5oEwu3Ol28WvajEf/D40uSQIGk5tOfhhUwMaLtH
         u6VrlYYcMigtJLc1nptwJgIZBg+8ylzq+EUagHb6kYzrekP5D3iMtVKZKRG9XDSRTmq8
         NvPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MpyRedZ9vv42kdhRnpqJaqDm69c1ozvFitn0OCee5MY=;
        b=c9Yuq08Xm6DuFX59RVbx2hBILKU5g58qMmnn3buQ9eAC5R19s4XVCQUD+XACg7CWv3
         0JM2zuiE59sS8enovyVgm67xKdhgpeOEwGZyHEAbeziKnqvUFh5UWkKSs0JYLk6oZHP5
         jU8g7jdFxLlXsHYnosg3cMjRq9vlJ0+3sPIyWXjsjz9i+KchsjwpehRjT95MXZOObT5Y
         3l6tJEDA0A7yYuoT1kjgDs9FLd1SEdqhOYtAL4RpqXMc7gYqFsjqgVrT0xbXitfZsLLo
         BWh+iOUniNK7qhUxgR6mgTvdz3iu1UuV+BeyYVckEnlrxgaW7PGvOZUbXKC0kfcunIhq
         UVFQ==
X-Gm-Message-State: APjAAAVj68f+xAZ/YSyDHd0RWDb1aoZACr2M4n0hcJSEKkYVFLb46Ebb
	ABTUd/Hq/t4+QANVR8x3it6G/jyOezw/HL6IMW04Ibu9xU0SSA==
X-Google-Smtp-Source: APXvYqySCYAMPc4FUfMI5i5z8LpTj2bKNLEOz/vPBpLT16Mi4xvCJr6naxu0BDA0sBdnMciMUdfLcxH6LnRZcRBuKXQ=
X-Received: by 2002:a05:6830:2154:: with SMTP id r20mr684298otd.66.1576646302796;
 Tue, 17 Dec 2019 21:18:22 -0800 (PST)
MIME-Version: 1.0
From: learning.yocto@gmail.com
Date: Wed, 18 Dec 2019 05:18:11 +0000
Message-ID: <CAGWAjavc4GjY7bE4hKQ033sLU7nyN9b33tgKdODbnofBzhRV3w@mail.gmail.com>
Subject: go tool dist: unknown architecture: aarch64
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hello List,

I am a newbie to yocto world, trying to build poky (zeus) for
 qemuarm64 machine on an arm64 board.

When I included meta-virtualization layer and add docker-ce

local.conf
-----------
DISTRO_FEATURES_append = " virtualization"
IMAGE_INSTALL_append = " docker"
-----------

bitbake core-image-minimal / bitbake -c configure go-native
throws the error

---------------
DEBUG: Executing shell function do_configure
# Building C bootstrap tool.
cmd/dist
go tool dist: unknown architecture: aarch64
WARNING: exit code 1 from a shell command.
ERROR: Execution of
'/mnt1/yocto_kb/build-rpi/tmp/work/aarch64-linux/go-native/1.12.9-r0/temp/run.do_configure.31724'
failed with exit code 1:
# Building C bootstrap tool.
cmd/dist
go tool dist: unknown architecture: aarch64
WARNING: exit code 1 from a shell command.
---------

Not sure how to fix this error.  Please advice
