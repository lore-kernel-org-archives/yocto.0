Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
 by mx.groups.io with SMTP id smtpd.web12.23365.1593615155125921295
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 07:52:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hLiGl6zY;
 spf=pass (domain: gmail.com, ip: 209.85.128.67, mailfrom: jpewhacker@gmail.com)
Received: by mail-wm1-f67.google.com with SMTP id g75so22723355wme.5
        for <yocto@lists.yoctoproject.org>; Wed, 01 Jul 2020 07:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=hs0pmFglk1ShmI3Np9/M4LvncMHw7nQ98Ml0U5PIbsI=;
        b=hLiGl6zY5R7jwDdXt1E0yPO6wgg21JIZolVxUTMOuGk5F69EZ5SkkfLlRKQIcvpZqX
         3ysdtDlBH356NMAfjxb0x3yv3CWvONxTXYrxa3N7x0GhHuneVqy1w9vSlJANhUiSg/W9
         YaO8aD92ZdD1edH30OSLiHVwxZAFlwQP2yw/ex6hnHFW+y/rB1ycl+KODL6HZSU6aBSi
         GP0eLATcDXvi9ag27+tnXj9w+AUJZLWdjBZy7pZ6IofgMgD1ARBBt36wogaOQEQ8dCZ1
         EPvA8Ad3wFx4Vds7+0IVSfiN4uE/2adz2WrSS3T29AO3izMHK3dz/5Hh2caA/sAMvyzu
         C2cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=hs0pmFglk1ShmI3Np9/M4LvncMHw7nQ98Ml0U5PIbsI=;
        b=pqkUgcWrpsDxtP0Ky92Q0hNoWHCAYODGiz450VtqrIUohqSPoIldL5Zi8MtCCJMEe0
         qZhIhs++XuxjVciiKLDi8P7DiMe7nuZuYw+JRH8dIoxQO+SbFGxdnIOu7mK52sOXffFc
         RQRM3s6yEmOFwgZVdMQlXUo2K9ZBERTQOn/i7B12yIYYehWdfy8GRSi4nK1CKh/Kzjdf
         wj06v26/NXIDqw7MBS/PfZWg9Z1HehGtVRuFdYbCCOed2FbNYxbVdAQCgFKwiwhgZYlx
         h56yUpoMhUm4k2P0I9pfiHAG/8O1qwYzYe8A6UNP0j2sObi2RcY+W1eaKhlGiJbhCH+E
         Z3lA==
X-Gm-Message-State: AOAM532PQkaan2yAV/TN2wV8Pm2WUVv4N6kcZ77/9YQJ97PoGHkE56mq
	Lievc8aF4Ez4GP7mRjRn6RYZNUYWGyo/pOdllr8=
X-Google-Smtp-Source: ABdhPJxvsp8XCSv707U3azgLgi2Z5TTST7WHUqd5qehjOoNgHRjSWhrHu8m3hUabIpAvtO/14aC3i3WAIlhGq3+6CiY=
X-Received: by 2002:a7b:c041:: with SMTP id u1mr28622250wmc.56.1593615153410;
 Wed, 01 Jul 2020 07:52:33 -0700 (PDT)
MIME-Version: 1.0
References: <dlSN.1593554206630147499.1cxR@lists.yoctoproject.org>
 <CAJdd5GYmGrZk3B5+2H9Ud=A+YWXJe_j4EN+AEM=e+QXxcmJGKw@mail.gmail.com>
 <CAJdd5GZ1ZEmA1CG2q4Q6Z94TF8wSCHhQf4hF0F9hA=ye6eJS5g@mail.gmail.com>
 <161D821F3054189B.29179@lists.yoctoproject.org> <CAOSpxdaGpkGBmTeH_pqmZ=g=pMhYDND3PGnzJ3bOj11nU=+Rqw@mail.gmail.com>
 <CAAuRgKCcgccNcPd3rggY5xhUgePi54FFPER6oQ02aep8Uj_eqg@mail.gmail.com> <CAAuRgKCn_wyZW6KCe2xQZPk+vN0MYZotY96XAfa83-w1tTGJZg@mail.gmail.com>
In-Reply-To: <CAAuRgKCn_wyZW6KCe2xQZPk+vN0MYZotY96XAfa83-w1tTGJZg@mail.gmail.com>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Wed, 1 Jul 2020 09:52:22 -0500
Message-ID: <CAJdd5GZhMf5nxu_dYLLc0F4ux_x_qZQb6WMEM4VjMMjBuQhcEA@mail.gmail.com>
Subject: Re: [yocto] Dunfell 3.1.1 gcc-sanitizers build failure
To: MikeB <mabnhdev@gmail.com>
Cc: Steve Sakoman <steve@sakoman.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 1, 2020 at 9:47 AM MikeB <mabnhdev@gmail.com> wrote:
>
> The rumors of my success were exaggerated.  If performing a fresh build f=
rom scratch, the image build succeeds, but the populate_sdk still fails as =
in the original post.  If I then do a 'bitbake -ccleansstate on gcc-source-=
9.3.0', the populate_sdk succeeds.

Ok. Are you using archiver.bbclass?

>
> Mike
>
> On Wed, Jul 1, 2020 at 6:45 AM MikeB <mabnhdev@gmail.com> wrote:
>>
>> The combination of the https://lists.openembedded.org/g/openembedded-cor=
e/message/140161 and a 'bitbake -ccleansstate on gcc-source-9.3.0' has gott=
en me back on track.
>>
>> Thank you all for the help!
>>
>> On Tue, Jun 30, 2020 at 11:10 PM Steve Sakoman <steve@sakoman.com> wrote=
:
>>>
>>> On Tue, Jun 30, 2020 at 5:08 PM Steve Sakoman via
>>> lists.yoctoproject.org <steve=3Dsakoman.com@lists.yoctoproject.org>
>>> wrote:
>>> >
>>> > On Tue, Jun 30, 2020 at 4:53 PM Joshua Watt <JPEWhacker@gmail.com> wr=
ote:
>>> > >
>>> > > On Tue, Jun 30, 2020 at 8:08 PM Joshua Watt <jpewhacker@gmail.com> =
wrote:
>>> > > >
>>> > > > On Tue, Jun 30, 2020 at 4:56 PM MikeB <mabnhdev@gmail.com> wrote:
>>> > > > >
>>> > > > > I recently tried upgrading from 3.1.0 to 3.1.1.  I'm not sure i=
f this is a bug or just my problem.  I maintain five different architecture=
s and all five have the same failure in gcc-sanitizers as I'm trying to bui=
ld the SDK.
>>> > > > >
>>> > > > > | cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/w=
ork-shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or directory
>>> > > > > | WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/t=
mp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31=
505:1 exit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" > /data/mabnhdev/exos-=
yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9=
.3.0-r0/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.=
h.new'
>>> > > > > | ERROR: Execution of '/data/mabnhdev/exos-yocto-dunfell/build/=
exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_=
configure.31505' failed with exit code 1:
>>> > > > > | cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/w=
ork-shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or directory
>>> > > > > | WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/t=
mp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31=
505:1 exit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" > /data/mabnhdev/exos-=
yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9=
.3.0-r0/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.=
h.new'
>>> > > > >
>>> > > > > At first, I thought this may be a dependency issue because I in=
herit "rm_work" to tidy up; but I tried a build without it - i.e. keeping a=
ll work around - and got the same failure.
>>> > > >
>>> > > > I've encountered a similar error just today when switching SDKMAC=
HINE.
>>> > > > Are you using archive.bbclass by any chance (INHERIT +=3D "archiv=
e")? I
>>> > > > just recently fixed a bug in archive.bbclass
>>> > > > (7a57e777597d7f66d065582cfb83cd8f9468f4af) where the archiving of
>>> > > > gcc-source raced with do_preconfigure and I'm wondering if it's
>>> > > > related
>>> > >
>>> > > I believe I have fixed this in
>>> > > https://lists.openembedded.org/g/openembedded-core/message/140161,
>>> > > please try it out to make sure it solves your issue as well.
>>> >
>>> > That patch came in after the 3.1.1 release, but it is present in the
>>> > dunfell branch so it will make it into 3.1.2
>>>
>>> Doh, I'm getting ahead of myself! I was thinking of another
>>> classes/archiver patch that Joshua sent :-)
>>>
>>> Steve
