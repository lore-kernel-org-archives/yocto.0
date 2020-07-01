Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
 by mx.groups.io with SMTP id smtpd.web11.13417.1593572912792008223
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 20:08:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=gP+t2su4;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.66, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f66.google.com with SMTP id dr13so22908043ejc.3
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2020 20:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Qzr1U7qcMMmE3A9nvkD55Vd7eG+NPQtQbbh0HUnqCDQ=;
        b=gP+t2su4O8s3o06Ke9RhfJhQPeRPAmItiqKnJauX6DM0RVSQ2V0qiO6gGDrupr82PU
         TAzc8mVNxn//joS17u0knzxk5BuSyYTwkYGFrf9ozTC4+6l5XK5i93k/IU7hOWi/VpYF
         8FHZ8ujeokMXrutvtLrl0L1Yr8Iq06cYSX/9unLqyhkMw50l2jncAPgKi7isCDhoIPRt
         +GuGGdPRU1NZpFZb4hmYIZ3/n3ifaMoh2kJq15SaxIcT7XRj8lAjpAu09qnV3wXLFGg3
         dz+CG+oQGV6GIMEcUuV4tsKmlYXAmiAJ8EHgsql64itLD0H12F+Zwp1hc/tXSGNRmp3x
         a/eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Qzr1U7qcMMmE3A9nvkD55Vd7eG+NPQtQbbh0HUnqCDQ=;
        b=RGNDrwfQj6Jwe80GqGfJxHfWO5Joij0Rrn+7Cdlf117A0Gh1Xx6jp66dghK4xqRBx3
         p+FHw4bw3HlzHJpPsjYGqBz1mu8lYH8fImJfb/hryCZ7RTutt3QiX9hWWeXLCrgz3Vrg
         l+fsI2y7Q22EdFkJ3IG9B8wPcYhn2lG4i5DJayr/7a5GU4xN9R9Nc2YPoUu+qD21p9gj
         XZbLRgoxMWow1p4xYSZK489FlMYIuQC3zz+Xbat+s51Oep4MVFRfQ9YUBYgK5dsnmPst
         pUHNcju2+Kk93ShItzk1mp/d5eS92N6H4DDVXN/boBRCcMqH0ne1tUW/diTMK4+RprPf
         hHUQ==
X-Gm-Message-State: AOAM530Y64cv2fPpglI1p4anbLWDb7uMn4jajISFlqlzmFTxO3jz9xv5
	lsiPs4Iq3AcRAi76BTXsnCoMJ16FIVLFhjdmHxhW+w==
X-Google-Smtp-Source: ABdhPJwPYjLBPiAqf/uvIjpD3z094gbcfY4PNBRrJLYIENcn6ttLBGR6vs4HsnpFQ25GGE6UKxI7jbN/QQTVIRC3xOA=
X-Received: by 2002:a17:906:c285:: with SMTP id r5mr20481102ejz.153.1593572911190;
 Tue, 30 Jun 2020 20:08:31 -0700 (PDT)
MIME-Version: 1.0
References: <dlSN.1593554206630147499.1cxR@lists.yoctoproject.org>
 <CAJdd5GYmGrZk3B5+2H9Ud=A+YWXJe_j4EN+AEM=e+QXxcmJGKw@mail.gmail.com> <CAJdd5GZ1ZEmA1CG2q4Q6Z94TF8wSCHhQf4hF0F9hA=ye6eJS5g@mail.gmail.com>
In-Reply-To: <CAJdd5GZ1ZEmA1CG2q4Q6Z94TF8wSCHhQf4hF0F9hA=ye6eJS5g@mail.gmail.com>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Tue, 30 Jun 2020 17:08:18 -1000
Message-ID: <CAOSpxda3+0q8n2ZHKK03+AXTibd_1Bu5Fiiw72EkCfw-rn9j0g@mail.gmail.com>
Subject: Re: [yocto] Dunfell 3.1.1 gcc-sanitizers build failure
To: MikeB <mabnhdev@gmail.com>
Cc: yocto@lists.yoctoproject.org, Joshua Watt <JPEWhacker@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 30, 2020 at 4:53 PM Joshua Watt <JPEWhacker@gmail.com> wrote:
>
> On Tue, Jun 30, 2020 at 8:08 PM Joshua Watt <jpewhacker@gmail.com> wrote:
> >
> > On Tue, Jun 30, 2020 at 4:56 PM MikeB <mabnhdev@gmail.com> wrote:
> > >
> > > I recently tried upgrading from 3.1.0 to 3.1.1.  I'm not sure if this=
 is a bug or just my problem.  I maintain five different architectures and =
all five have the same failure in gcc-sanitizers as I'm trying to build the=
 SDK.
> > >
> > > | cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-sh=
ared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or directory
> > > | WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/wor=
k/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1 =
exit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" > /data/mabnhdev/exos-yocto-=
dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r=
0/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.new'
> > > | ERROR: Execution of '/data/mabnhdev/exos-yocto-dunfell/build/exos-a=
rm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_config=
ure.31505' failed with exit code 1:
> > > | cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-sh=
ared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or directory
> > > | WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/wor=
k/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1 =
exit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" > /data/mabnhdev/exos-yocto-=
dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r=
0/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.new'
> > >
> > > At first, I thought this may be a dependency issue because I inherit =
"rm_work" to tidy up; but I tried a build without it - i.e. keeping all wor=
k around - and got the same failure.
> >
> > I've encountered a similar error just today when switching SDKMACHINE.
> > Are you using archive.bbclass by any chance (INHERIT +=3D "archive")? I
> > just recently fixed a bug in archive.bbclass
> > (7a57e777597d7f66d065582cfb83cd8f9468f4af) where the archiving of
> > gcc-source raced with do_preconfigure and I'm wondering if it's
> > related
>
> I believe I have fixed this in
> https://lists.openembedded.org/g/openembedded-core/message/140161,
> please try it out to make sure it solves your issue as well.

That patch came in after the 3.1.1 release, but it is present in the
dunfell branch so it will make it into 3.1.2

Steve
