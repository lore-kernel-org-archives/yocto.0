Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web12.16650.1603011728638770571
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Oct 2020 02:02:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MDoK9x/r;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id n18so8051530wrs.5
        for <yocto@lists.yoctoproject.org>; Sun, 18 Oct 2020 02:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=CYWNPgwSIaniHoeRiyr3aiAWBxfTQd9Ul1GM4rmUrCs=;
        b=MDoK9x/rl1/8eUsqhhSWBnGsZpqIvnbvFbWP0XisVZCf6UeaUNu6ESExjGe7IchkS2
         s9NUcXkcgSexOlfEqI4U935qSjMTZF7Z+hmhXb/X8kO3B4DqHD/IZgwAjmm9g5GflPYr
         6swfG1Pti7+ZyD7UvG7AdACgzd60yeML84vOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=CYWNPgwSIaniHoeRiyr3aiAWBxfTQd9Ul1GM4rmUrCs=;
        b=a6DM12AsECkqFC7AgKjOFSEOOFUgVP3emmXci8+rULRQKN+byc71Kgh9/JJqDehMO1
         nsBiFoMHPF4P5b4lH7z7lVdM47Y+1GOyFWwcV0P0mQKTTLCekV2PJGyPWht1MEWw3k2a
         TGwXKZItwTj9jAOmGR8Pi4IKjW2oxC1J5tHo/TnQ0mkzY4e9LsXh3Y8wIWtrRICAafv4
         5zTxgfvHiaDznj7TnO+Rf2b5BBd04Tn8DuhbNVAcKdxYMaq7M8Y9CU9GLY1v1cZfDJfB
         4T+yH91v+yGcn/8A9tj6hIL4u9oK0hTcWvKGTNr7NrxLJ+rC7BnUZYJ/QIquRHuVs3gl
         4uGA==
X-Gm-Message-State: AOAM530C1F/+8q2ujy9TXPFBbQlemgE2W3mfj/+YovGjAYCRScR6lw4W
	74f2qiif4PzSkcEGj5J+JLq9JA==
X-Google-Smtp-Source: ABdhPJySqFOZGFilUYWmIVdnomwcf+sbyvulrbBXPC3H6Uv1dzf5Y7dasTvTQ4xCZpIdSGIigHznzg==
X-Received: by 2002:adf:902a:: with SMTP id h39mr13981617wrh.59.1603011726853;
        Sun, 18 Oct 2020 02:02:06 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from f.7.c.a.0.7.9.b.6.d.5.e.8.7.d.7.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (f.7.c.a.0.7.9.b.6.d.5.e.8.7.d.7.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:7d78:e5d6:b970:ac7f])
        by smtp.gmail.com with ESMTPSA id u195sm11490711wmu.18.2020.10.18.02.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 02:02:06 -0700 (PDT)
Message-ID: <ca49c6f03a26ed2b7f0eebacedb713272b5e45cf.camel@linuxfoundation.org>
Subject: Re: [yocto] do_fetch error while compiling code
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: NIKHIL PATIL <nikhilvp29@gmail.com>
Cc: yocto@lists.yoctoproject.org
Date: Sun, 18 Oct 2020 10:02:04 +0100
In-Reply-To: <CAJw=dJ8=oxhUA0rRWkH+04Qu0mm8ewExUG+xd0hLki5ij1xfNQ@mail.gmail.com>
References: <163EBFF88F24F1D5.13652@lists.yoctoproject.org>
	 <CAJw=dJ8=oxhUA0rRWkH+04Qu0mm8ewExUG+xd0hLki5ij1xfNQ@mail.gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2020-10-18 at 11:48 +0530, NIKHIL PATIL wrote:
> hi ,
>     We totally stuck here , if anyone knows please let us know.
>=20
> On Sat, Oct 17, 2020 at 3:43 PM NIKHIL PATIL via lists.yoctoproject.org <=
nikhilvp29=3Dgmail.com@lists.yoctoproject.org> wrote:
> > Hi Team ,
> >       We are compiling a source code in yocto . but while comiping we a=
re getting following error . we are not able to find solution for these .=
=20
> >=20
> > ERROR: Task (/data/pradeep/inti_dmsv/yocto_build/meta/recipes-multimedi=
a/libsndfile/libsndfile1_1.0.28.bb:do_fetch) failed with exit code '1'
> > ERROR: libxcursor-1_1.1.15-r0 do_fetch: Fetcher failure: Fetch command =
export PSEUDO_DISABLED=3D1; export PATH=3D"/data/pradeep/inti_dmsv/yocto_bu=
ild/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/data/pradeep/inti_dm=
sv/yocto_build/scripts:/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/c=
orei7-64-poky-linux/libxcursor/1_1.1.15-r0/recipe-sysroot-native/usr/bin/x8=
6_64-poky-linux:/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/corei7-6=
4-poky-linux/libxcursor/1_1.1.15-r0/recipe-sysroot/usr/bin/crossscripts:/da=
ta/pradeep/inti_dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux/libxcu=
rsor/1_1.1.15-r0/recipe-sysroot-native/usr/sbin:/data/pradeep/inti_dmsv/yoc=
to_build/build/tmp/work/corei7-64-poky-linux/libxcursor/1_1.1.15-r0/recipe-=
sysroot-native/usr/bin:/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/c=
orei7-64-poky-linux/libxcursor/1_1.1.15-r0/recipe-sysroot-native/sbin:/data=
/pradeep/inti_dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux/libxcurs=
or/1_1.1.15-r0/recipe-sysroot-native/bin:/data/pradeep/inti_dmsv/yocto_buil=
d/bitbake/bin:/data/pradeep/inti_dmsv/yocto_build/build/tmp/hosttools"; exp=
ort HOME=3D"/home/pradeep"; /usr/bin/env wget -t 2 -T 30 --passive-ftp --no=
-check-certificate -P /data/pradeep/inti_dmsv/yocto_build/build/downloads '=
http://xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.tar.b=
z2' --progress=3Ddot -v failed with exit code 4, output:
> > --2020-10-17 09:20:20--  http://xorg.freedesktop.org/releases/individua=
l/lib/libXcursor-1.1.15.tar.bz2
> > Resolving xorg.freedesktop.org (xorg.freedesktop.org)... 131.252.210.17=
6, 2610:10:20:722:a800:ff:feda:470f
> > Connecting to xorg.freedesktop.org (xorg.freedesktop.org)|131.252.210.1=
76|:80... connected.
> > HTTP request sent, awaiting response... Read error (Connection timed ou=
t) in headers.
> > Retrying.
> >=20
> > --2020-10-17 09:20:52--  (try: 2)  http://xorg.freedesktop.org/releases=
/individual/lib/libXcursor-1.1.15.tar.bz2
> > Connecting to xorg.freedesktop.org (xorg.freedesktop.org)|131.252.210.1=
76|:80... connected.
> > HTTP request sent, awaiting response... Read error (Connection timed ou=
t) in headers.
> > Giving up.
> >=20
> > ERROR: libxcursor-1_1.1.15-r0 do_fetch: Fetcher failure for URL: 'http:=
//xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.tar.bz2'. =
Unable to fetch URL from any source.
> > ERROR: libxcursor-1_1.1.15-r0 do_fetch: Function failed: base_do_fetch
> > ERROR: Logfile of failure stored in: /data/pradeep/inti_dmsv/yocto_buil=
d/build/tmp/work/corei7-64-poky-linux/libxcursor/1_1.1.15-r0/temp/log.do_fe=
tch.19859
> > ERROR: Task (/data/pradeep/inti_dmsv/yocto_build/meta/recipes-graphics/=
xorg-lib/libxcursor_1.1.15.bb:do_fetch) failed with exit code '1'
> >=20
> >     =20
> > what will be the solution for these ?

The fetch error means it can't download the file. The above link:

(http://xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.tar.=
bz2)

works for me so it suggests something is wrong with the networking on
the machine you're trying to build on.

Cheers,

Richard

