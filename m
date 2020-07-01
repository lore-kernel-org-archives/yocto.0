Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
 by mx.groups.io with SMTP id smtpd.web12.13262.1593573053421807999
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 20:10:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=cAH4NX3e;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.67, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f67.google.com with SMTP id a1so22883019ejg.12
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2020 20:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ColP6HfzKI4OP+wY2eL3H4+e29Ze0Os2Zfhlw93kokk=;
        b=cAH4NX3eJ3ZsAj/tuQLIyO+3HxvuAt/9dGBG3lW6upMoizOCNdIddp64ZMcJxuwrWa
         53y6pmUdo9izEWCrUt+oFR1KlPCL71wqcz+rD1QTERxUFPgjXw9W+4Jz9PXgcjE3GOqu
         LEwJtFvJ7v6CFUprPoGDqzbIcmpaPC7cOc0TRDc0Rorul8i8QpYeNIAFEgtk0y+0eiTP
         mUcgpCzksDKPi3l1IpI/nASoT3+qKuGSaiFe9g0q4Denggqi85WddfpnmvECr3ljYCVN
         2KUDDNYG9Yt547A3dPhZjWJO1G6bVjEe8tNl+MmPLU8cGntT2j/eAE+jSB/pLqrUZcia
         G6DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ColP6HfzKI4OP+wY2eL3H4+e29Ze0Os2Zfhlw93kokk=;
        b=ns6B9L/m9gfq2/q/umzmiw/Fhx5ouqX9OmileB2+hMV8CWhNUbJmPtIA0BQPQp1yZ6
         ldZvHLGBeNewSILhFiWGyDdhbQg63Puq5RnUYSHEj1nG6Pom/Hhu43my6VvH6XW+Q/XT
         262QiODNis7yOmc0B78cS0E/MlfwNux7Y43OX6B3169v5GpsEvTzjefQcsXgu4Hs/BJx
         Em3x+wxQxFzTKNtEgo2r0wqZzkkUc0Frt8bq5BvP1IijX5iQSrk5jekZxcL7R2fXo5A0
         GlHYEvKf2CmOFVLvojoK9ZBUBXdN+VSspIxFnLmopikP9WZrlYaZC2bTUYBsV7UH5XbS
         6mng==
X-Gm-Message-State: AOAM532Z0eYJWmtyDwdRdIUUyLfNaGz4OYj/UsnT1PWnBV9EjyZkBKCp
	5BBdDYoKzWooAlCLyTR51hnrFPimyWkqAs+McWVt5zqU3tY=
X-Google-Smtp-Source: ABdhPJyugGgkUtroUxMv7EWbdwD6aK0gzbX0GOTybKT5jYGKTeIZaWd65KL41UgGBuObR3Vsz47XDbHLgyQCSIm3h2M=
X-Received: by 2002:a17:906:e2ca:: with SMTP id gr10mr20242220ejb.81.1593573051851;
 Tue, 30 Jun 2020 20:10:51 -0700 (PDT)
MIME-Version: 1.0
References: <dlSN.1593554206630147499.1cxR@lists.yoctoproject.org>
 <CAJdd5GYmGrZk3B5+2H9Ud=A+YWXJe_j4EN+AEM=e+QXxcmJGKw@mail.gmail.com>
 <CAJdd5GZ1ZEmA1CG2q4Q6Z94TF8wSCHhQf4hF0F9hA=ye6eJS5g@mail.gmail.com> <161D821F3054189B.29179@lists.yoctoproject.org>
In-Reply-To: <161D821F3054189B.29179@lists.yoctoproject.org>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Tue, 30 Jun 2020 17:10:38 -1000
Message-ID: <CAOSpxdaGpkGBmTeH_pqmZ=g=pMhYDND3PGnzJ3bOj11nU=+Rqw@mail.gmail.com>
Subject: Re: [yocto] Dunfell 3.1.1 gcc-sanitizers build failure
To: Steve Sakoman <steve@sakoman.com>
Cc: MikeB <mabnhdev@gmail.com>, yocto@lists.yoctoproject.org, 
	Joshua Watt <JPEWhacker@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 30, 2020 at 5:08 PM Steve Sakoman via
lists.yoctoproject.org <steve=3Dsakoman.com@lists.yoctoproject.org>
wrote:
>
> On Tue, Jun 30, 2020 at 4:53 PM Joshua Watt <JPEWhacker@gmail.com> wrote:
> >
> > On Tue, Jun 30, 2020 at 8:08 PM Joshua Watt <jpewhacker@gmail.com> wrot=
e:
> > >
> > > On Tue, Jun 30, 2020 at 4:56 PM MikeB <mabnhdev@gmail.com> wrote:
> > > >
> > > > I recently tried upgrading from 3.1.0 to 3.1.1.  I'm not sure if th=
is is a bug or just my problem.  I maintain five different architectures an=
d all five have the same failure in gcc-sanitizers as I'm trying to build t=
he SDK.
> > > >
> > > > | cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-=
shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or directory
> > > > | WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/w=
ork/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:=
1 exit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" > /data/mabnhdev/exos-yoct=
o-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0=
-r0/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.ne=
w'
> > > > | ERROR: Execution of '/data/mabnhdev/exos-yocto-dunfell/build/exos=
-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_conf=
igure.31505' failed with exit code 1:
> > > > | cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-=
shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or directory
> > > > | WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/w=
ork/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:=
1 exit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" > /data/mabnhdev/exos-yoct=
o-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0=
-r0/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.ne=
w'
> > > >
> > > > At first, I thought this may be a dependency issue because I inheri=
t "rm_work" to tidy up; but I tried a build without it - i.e. keeping all w=
ork around - and got the same failure.
> > >
> > > I've encountered a similar error just today when switching SDKMACHINE=
.
> > > Are you using archive.bbclass by any chance (INHERIT +=3D "archive")?=
 I
> > > just recently fixed a bug in archive.bbclass
> > > (7a57e777597d7f66d065582cfb83cd8f9468f4af) where the archiving of
> > > gcc-source raced with do_preconfigure and I'm wondering if it's
> > > related
> >
> > I believe I have fixed this in
> > https://lists.openembedded.org/g/openembedded-core/message/140161,
> > please try it out to make sure it solves your issue as well.
>
> That patch came in after the 3.1.1 release, but it is present in the
> dunfell branch so it will make it into 3.1.2

Doh, I'm getting ahead of myself! I was thinking of another
classes/archiver patch that Joshua sent :-)

Steve
