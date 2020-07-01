Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web12.13077.1593572008827744908
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 19:53:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jiAYr1HB;
 spf=pass (domain: gmail.com, ip: 209.85.221.44, mailfrom: jpewhacker@gmail.com)
Received: by mail-wr1-f44.google.com with SMTP id b6so22182786wrs.11
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2020 19:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=aDMCIK5Ejgjg3Rh3Tea0jAI7j/scF/kSOYuU2ktTsDU=;
        b=jiAYr1HBiaWunDmZiO2y8UAVcnGw3X/4hvp72SZ5qyXoU8UwvAyNtG+SnbkEUWWqdU
         TsgP2nVczYSTTUN+DJXzqwRtTWtgARmY/J/TnumlhWe6iwLxHTQeEK3Rbdnb0FVvRnn0
         kZR8YlPbzkQR4h2O98eyZP4Mlx7PgtRWvS/1EOxGEijJGcuVMOZZQ4NK1vBw6i/d4hHB
         bZYfkJRjccLNvC23lnTSO4JHEZ1OTEi0dJSOdsj6JEsIil8OMuMvWGXh/FkviUKkKOX3
         8PVs3trc27G+O/26ve33ekUrcPH8x4+1Xj/lABQn9/FkIw27kbxsjZpfCwwN6wXSCYj+
         fR5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=aDMCIK5Ejgjg3Rh3Tea0jAI7j/scF/kSOYuU2ktTsDU=;
        b=WdzghcS9+Nr+lsyIP2vxYkFM5ikgIgLsDmEvaHUGt0JAq4WKUQ2QfHfEZxp4YgBNy5
         TQJ8t4dBF5u7e5cVxFnIaz8MXblJoH/wT/mjxsvn4WihI4ZOl1SkrambRmjipVL7g6zr
         CER/qs9TABs41lenzCy31hezNbS/t3j6V1EIpxzeQssUVVi5m8czfAUfaKcIvFWhceSJ
         KO9pP8YV3cSuqc+KUCEzZ5gRCcj0QFWfky89LPuqsPT3uvJSQKt6cf8JZHhPEP3FhxHn
         tVPpicaTr6cTA6LQu/PuKObxqO21AiUJP60nbSJ5asNA25s5lvqKoUC6idSD2VZ7tiA0
         Jx4A==
X-Gm-Message-State: AOAM5323jInob+Fe0Nvzp2wyTc4EwdEUgKyule1pddz7F6AiLih1HkM7
	4FDhLfBv8nkzvFdDC80dqUSHAGCCceyK+GnKrak=
X-Google-Smtp-Source: ABdhPJwO+HF2C16xaNdENgiwcxRD7UXcL9+0QpEY0KrIRb9bWyHipfQdedAIimZO1tkhfUJInbWNiELDe2LBWijnhaY=
X-Received: by 2002:adf:9286:: with SMTP id 6mr24586649wrn.361.1593572007348;
 Tue, 30 Jun 2020 19:53:27 -0700 (PDT)
MIME-Version: 1.0
References: <dlSN.1593554206630147499.1cxR@lists.yoctoproject.org> <CAJdd5GYmGrZk3B5+2H9Ud=A+YWXJe_j4EN+AEM=e+QXxcmJGKw@mail.gmail.com>
In-Reply-To: <CAJdd5GYmGrZk3B5+2H9Ud=A+YWXJe_j4EN+AEM=e+QXxcmJGKw@mail.gmail.com>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Tue, 30 Jun 2020 21:53:16 -0500
Message-ID: <CAJdd5GZ1ZEmA1CG2q4Q6Z94TF8wSCHhQf4hF0F9hA=ye6eJS5g@mail.gmail.com>
Subject: Re: [yocto] Dunfell 3.1.1 gcc-sanitizers build failure
To: MikeB <mabnhdev@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 30, 2020 at 8:08 PM Joshua Watt <jpewhacker@gmail.com> wrote:
>
> On Tue, Jun 30, 2020 at 4:56 PM MikeB <mabnhdev@gmail.com> wrote:
> >
> > I recently tried upgrading from 3.1.0 to 3.1.1.  I'm not sure if this =
is a bug or just my problem.  I maintain five different architectures and a=
ll five have the same failure in gcc-sanitizers as I'm trying to build the =
SDK.
> >
> > | cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-sha=
red/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or directory
> > | WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work=
/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1 e=
xit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" > /data/mabnhdev/exos-yocto-d=
unfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0=
/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.new'
> > | ERROR: Execution of '/data/mabnhdev/exos-yocto-dunfell/build/exos-ar=
m64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configu=
re.31505' failed with exit code 1:
> > | cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-sha=
red/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or directory
> > | WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work=
/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1 e=
xit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" > /data/mabnhdev/exos-yocto-d=
unfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0=
/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.new'
> >
> > At first, I thought this may be a dependency issue because I inherit "=
rm_work" to tidy up; but I tried a build without it - i.e. keeping all work=
 around - and got the same failure.
>
> I've encountered a similar error just today when switching SDKMACHINE.
> Are you using archive.bbclass by any chance (INHERIT +=3D "archive")? I
> just recently fixed a bug in archive.bbclass
> (7a57e777597d7f66d065582cfb83cd8f9468f4af) where the archiving of
> gcc-source raced with do_preconfigure and I'm wondering if it's
> related

I believe I have fixed this in
https://lists.openembedded.org/g/openembedded-core/message/140161,
please try it out to make sure it solves your issue as well.

>
> >
> > I've attached the full error log.  Any troubleshooting advice would be=
 appreciated.=20
