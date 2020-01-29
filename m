Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
 by mx.groups.io with SMTP id smtpd.web09.3947.1580267721761246455
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2020 19:15:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uyMVPsHL;
 spf=pass (domain: gmail.com, ip: 209.85.217.44, mailfrom: kent.dorfman766@gmail.com)
Received: by mail-vs1-f44.google.com with SMTP id a2so2276051vso.3
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2020 19:15:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=WieUasFKm4byzvhXeMTtGkbp96Frv4XzqjhOhx+5vMQ=;
        b=uyMVPsHL4Fk3qplLca8f/tcqrMgsz+Fnauj5pMSiky27lClyoOo4ZvUA0hh2rTJLFC
         z5lJPlSm6nmVMJgRcxoZfCzpEtPaF4S4BJlLaVQVaXqJeqxD9VgbQKXZ06Wm5xlfsDEW
         gQCtgKzuk8Kk3t8Dh5pb/AYQquQXGzrDxa13Q1bn0tTngokiprTu3z/UjomtApOAmeQo
         fmN571dNarmbptLR9Oa3z2d3dLniE18bHhu5zqDMlfd5lDrEfuN0yunZeL75A+QOzIKG
         UzF2+zrx+4e8kMCbTM6bKcyVmmOhFLNZqSUaLNb5ru1+SRylv+oixgpe1K4XuJhon3XP
         vw3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=WieUasFKm4byzvhXeMTtGkbp96Frv4XzqjhOhx+5vMQ=;
        b=egcDgrM3cD2JNcZPj7s6jyfHo2OT3ffs1Nxxp5EI3RIozGXupedANskUjIxxf79Ih9
         1n5N+pqvMSd4N04yzKfTiXBoyCXFWhH9GdRXbXgyr1l9Huaz/xwe3jIm+7dQJZO5w1Il
         moXFss0nWxfmrhuBskylId8OAkqU/1CcPvnaDR4SaSUEjkiSqWoFK5CNPscsCwXDFa8Q
         ib3jI8IGsAhycmJKYDA9ye6r3zDxy4s2ZoPg2+ZaLHgRhC6ZCjYbK1mcgzUtqNUxo9mP
         31VYe6GHUQ9uL91M8V/uT9whaP0+qDfZ8+WXhKXqIBna1C+J11myHkgEcD3mrN/VI8ie
         34Lw==
X-Gm-Message-State: APjAAAWuBCwjB91SGr2znZgprOWa0KT4HtVDnVa4m5xK7+6IaEdRi4xJ
	iN7QBgsPhnWvYZ8yWPGc9tmXRvufsQMHreHw9rGowU3w
X-Google-Smtp-Source: APXvYqztP64AnZvTZ2iUEaSKb9U+a1/m8klL+CXPvB64aeIlSwmpdNM46GdTAqDsSMLf2UXtCSiln7Hr/8KHRyR97uw=
X-Received: by 2002:a05:6102:72b:: with SMTP id u11mr6833747vsg.69.1580267720618;
 Tue, 28 Jan 2020 19:15:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:4186:0:0:0:0:0 with HTTP; Tue, 28 Jan 2020 19:15:20
 -0800 (PST)
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Tue, 28 Jan 2020 22:15:20 -0500
Message-ID: <CAK4PFCXXZS3ZbU8PWXUX2b_Pw661SVfj8dO0CQ-GjNM3Zo+k=A@mail.gmail.com>
Subject: permanently supercede kernel config with one of my own creation
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

I have a yocto generated sdk that includes a customized kernel.  I do
NOT want to play with incremental config files.  What I want is to
insert a .config file of my own choosing (generated outside of yocto)
into the kernel build, have it use only my .config, and then have that
.config remain as the persistent authoritative config as part of the
yocto layer.

I have tried a variety of different approaches:
* using devtool, then loading my .config into the expanded source, but
"devtool finish" throws out my changes!

* doing "bitbake menuconfig", can build a kernel using my config, but
it doesn't stay persistent in yocto

* doing elaborate sort/merges on the yocto .config and my prefered
one...undefined behaviour

and the build always seems to revert to either the original yocto
config, or a kludge of my options with a bunch of defaults I did not
specify.

How can I take my existing .config and force yocto to use it, and it
only, forevermore?
