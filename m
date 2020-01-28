Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
 by mx.groups.io with SMTP id smtpd.web11.899.1580255130588104505
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2020 15:45:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HJeBe0Ju;
 spf=pass (domain: gmail.com, ip: 209.85.167.177, mailfrom: onea.alex@gmail.com)
Received: by mail-oi1-f177.google.com with SMTP id q81so12251219oig.0
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2020 15:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=5K/FfFbXukeu+/qiCmZDQIu0OqMDIbsSBs19TPEqjkc=;
        b=HJeBe0JuMicj2S68z+gka0ooRYbEtlUu7ksuKuDqpwvJizeTRxAPcZ9OINfX6tNN2H
         xYfuQSg5EmNu/GWQjTnu59CqkPJPbgMWeP52e9mAs4IAjW4pVvpSy++t2feNxmyqdqTG
         7iviHx0RkRBJOjM3iK6igOMpAtLsrBQgcJWGjBV4CSEXA5coQSVNF8JKRe2+fmI616sv
         3pCZg8MIJUbN2wK6DhEi8zJs+QUlcCcpd85GgG1x9gamyASUL7WsVe1+jPfT1nEs+i3M
         mX1YXonbUuUVM9gUEn7QzTW2LzSlGSGibIJYznF54fl4rBK6gsMCnnqKFPyHe0re/4Gs
         IfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=5K/FfFbXukeu+/qiCmZDQIu0OqMDIbsSBs19TPEqjkc=;
        b=hOAAFzRFCKQGXb5I1qOTCciLAUULS2BV9fl/9I2lNW3VSH19l5shmAoOYaH3iaWhs8
         zoB7sCphf94vY+123xz/w59GKtr1WJbQ8OttqbrB2m144NbIlRrS4tG+519mO3SxI7Uu
         JKLFpi5JPP+a3At1RWyE8TwEOJw8q39shAWFHu0loRvSt4vDDTkqulsYs8/90v2AVboE
         +UPxkrmFQ6jQl8DBexrV6zzuahV3spOJSlcra+l+vGaJi174JkyhNYxkj+dVsV3+BV0N
         CrzszjXHkZH949WZjKL10lyTFgLj7xwTxtpTp66MXQwElhMCCVTwXTvORGodzOG6RR5u
         sPXw==
X-Gm-Message-State: APjAAAXlukorYY5WfHCnsqsMUjQfyyKNMwxR7ujM/EkdMqzAYOOUFlHy
	rWM4iJEuf1kOy3VFlCNZvMp0B1UJ6k7CdTsoK7MnAmSh
X-Google-Smtp-Source: APXvYqwO3Tlik0Ads8Y4+T8LqfFSvChYC8oaHM0Iwk/CNgY6AOz2ItfBdDM/r6smCIUePiy3cT3XdP8Vz0BgJK+wvL8=
X-Received: by 2002:aca:378a:: with SMTP id e132mr4535107oia.31.1580255129698;
 Tue, 28 Jan 2020 15:45:29 -0800 (PST)
MIME-Version: 1.0
From: onea.alex@gmail.com
Date: Wed, 29 Jan 2020 01:45:18 +0200
Message-ID: <CAJgSc4wdfwu4-3ttb1hN-EydG4n788=cHB6kxahLSGjP-zX4Ug@mail.gmail.com>
Subject: [yocto] what does DEPENDS have to do with do_build
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a9064c059d3bd1c9"

--000000000000a9064c059d3bd1c9
Content-Type: text/plain; charset="UTF-8"

Hello community,

I have a recipe which DEPENDS on ncurses. It is clearly a build dependency
since do_configure cannot execute successfully without finding the ncurses
headers. It might also be a run-time dependency but I have not specified it
so I expect that bitbake will take no action in that direction.

When I inspect the dependency graph with

bitbake -g myrecipe -u depexp

I notice that all of a sudden, the do_build task of my recipe now depends
on basically half of the world, including stuff that has nothing to do
directly with either the build or the run-time dependencies of my recipe. I
understand that those are the recursive dependencies of ncurses (my only
build dependency), however, my understanding was that DEPENDS only puts a
dependency between myrecipe:do_configure and ncurses:do_populate_sysroot.

What does do_build have to do with build dependencies and why is it
necessary that my recipe now depends on the do_package_write* of all the
recursive build dependencies?

Any help is greatly appreciated, as at the moment I am lost.

Best regards,
Alexandru Onea

--000000000000a9064c059d3bd1c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello community,<div><br></div><div>I have a recipe which =
DEPENDS on ncurses. It is clearly a build dependency since do_configure can=
not execute successfully without finding the ncurses headers. It might also=
 be a run-time dependency but I have not specified it so I expect that bitb=
ake will take no action in that direction.</div><div><br></div><div>When I =
inspect the dependency graph with</div><div><br></div><div>bitbake -g myrec=
ipe -u depexp</div><div><br></div><div>I notice that all of a sudden, the d=
o_build task of my recipe now depends on basically half of the world, inclu=
ding stuff that has nothing to do directly with either the build or the run=
-time dependencies of my recipe. I understand that those are the recursive =
dependencies of ncurses (my only build dependency), however, my understandi=
ng was that DEPENDS only puts a dependency between myrecipe:do_configure an=
d ncurses:do_populate_sysroot.</div><div><br></div><div>What does do_build =
have to do with build dependencies and why is it necessary that my recipe n=
ow depends on the do_package_write* of all the recursive build dependencies=
?</div><div><br></div><div>Any help is greatly appreciated, as at the momen=
t I am lost.</div><div><br></div><div>Best regards,<br clear=3D"all"><div><=
div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature=
"><div dir=3D"ltr">Alexandru Onea</div></div></div></div></div>

--000000000000a9064c059d3bd1c9--
