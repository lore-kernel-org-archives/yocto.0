Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web12.831.1615831854338027880
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Mar 2021 11:10:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iRRaq4L0;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id m7so15344779iow.7
        for <yocto@lists.yoctoproject.org>; Mon, 15 Mar 2021 11:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=SrQ4fjieBDmZHERM33nC40xJzvqS7P37YaVeNSCI8XU=;
        b=iRRaq4L0y707SwyNAg5ZLmW61OKsPgDgGWckpRoKTSZWxePv1O0wj4wt/93ykAHE4o
         wY6wmP8QeNjVqwzivPo/UZzb4hi6Glc+XaPo6f3r0ceCGjEsOZ9gFeSU4ytiwGJyNLrd
         qPKAGMKaIwOMNO1gEj9OexRtlM3lcQ1+hatbOmGSV2lf/Ba/tsl6ihxffMck506hg1pA
         a6wHwQmW9uLEtDQRxCL5Hf2NECza8j9/sh4KnkcR6gEUPUUewtazLWj8F30tLeAClEU6
         WNJqmZeUGC6PLjzsFDdB/e/aY87jclVkDlYStz2enQnJVNIGdpdzQtcW6hxZpoQnAl59
         9rYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=SrQ4fjieBDmZHERM33nC40xJzvqS7P37YaVeNSCI8XU=;
        b=IwN4NHCjUickUvQkCf/i4u87F476hPjl7Je4DspKJa2YrBZYGS/9NS7/0oUrsM/rhd
         TAwYSSU6AKjCLTYYhfLpz3Th3cX+4FNGTXId1tVgbUpAcq00jd9UErfBStxJZwVisWDm
         FeSXRKIOda86UtjqMz4QZyIDoAIiZICbrqL+dOrhPk7btoiTBI58RWwJ9JVbtYrqe9JS
         7gT1VQRSfm/0IfGR6wbk7ULsro3qDNCPc/KlCrQAerzFShkCunsaNZroIEIUGZsDU1kX
         NxMZLcVvCSvKcHoNaz4nhnFUOEGx/kpbPP6wgUr9rCGuX2rN2LcLXj8hwANN6iiK+g91
         6pjg==
X-Gm-Message-State: AOAM533e3IaJUu0bLD+3zg+Fd8u2xz4gtC7QJOGtVguZ6AFEDh4WeknX
	ccr8FVFhcd8g6YYK2QkVquUJCip5W635T63Hy2Y=
X-Google-Smtp-Source: ABdhPJxrRLAJa9oU4Cw4b4AeNlVf6qk1sIDb6ZQnj+FlD9k7QO5GBFMR1UItIpzbrQDOFpQeXojhPQNVu5WP6R2TNpc=
X-Received: by 2002:a05:6602:2156:: with SMTP id y22mr637381ioy.10.1615831853507;
 Mon, 15 Mar 2021 11:10:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LyKF9dAcPc9VVBTNcurVzNp3wgmgfVgDhMdK35fHtn_hw@mail.gmail.com>
 <29235.1615763811371292564@lists.yoctoproject.org> <CAGAf8LzJxFDXnf0T99oCEo7iN37p0K0_CZWH=2r1NHW=ypZNvg@mail.gmail.com>
 <CAP71WjwEzqU+E8hbWVZ8eWkrZJ2seaAJCudkEiqyP3zjFLCMdw@mail.gmail.com>
In-Reply-To: <CAP71WjwEzqU+E8hbWVZ8eWkrZJ2seaAJCudkEiqyP3zjFLCMdw@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 15 Mar 2021 19:10:42 +0100
Message-ID: <CAGAf8Ly83bT_4xjzhQB3_fg=W_VecUHK5Fro5bj0dhqLAJRLxQ@mail.gmail.com>
Subject: Re: [yocto] How can I create a truly minimal distribution that runs entirely from RAM?
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: p32@tuta.io, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> Please be aware that this is a community mailing list for the Yocto
> Project, and we expect everyone to be as pleasant as possible
> I don't think the tone of your last email is appropriate for our
> mailing lists.

Unfortunately, Nicolas, you are barking under the wrong tree.

Please, go to Ross Burton, bark there, and align the (?) views (nothing ag=
ainst
your attack against me).

Thank you,
Zoran Stojsavljevic
_______

On Mon, Mar 15, 2021 at 6:21 PM Nicolas Dechesne
<nicolas.dechesne@linaro.org> wrote:
>
> hey Zoran,
>
>
> On Mon, Mar 15, 2021 at 5:01 PM Zoran <zoran.stojsavljevic@gmail.com> wr=
ote:
> >
> > > How can I instruct Yocto to execute do_image_cpio first?
> >
> > YOCTO people are entitled to answer that question. Aren't ya, INTEL fo=
lks???
> >
> > Actually, iNTEL (IOTG) is responsible for that (since YOCTO support is
> > 90% from INTEL), and I assume INTEL YOCTO people are entitled
> > answering that///
>
> Please be aware that this is a community mailing list for the Yocto
> Project, and we expect everyone to be as pleasant as possible. I don't
> think the tone of your last email is appropriate for our mailing
> lists. Please refrain yourself from such claims, or we will need to
> use moderation. Let's make sure our discussions are about technical
> content and in case of any doubt, please refer to our CoC, at
> https://www.yoctoproject.org/community/code-of-conduct/.
>
> >
> >
> > Thank you,
> > Zee (Zoran)
> > _______
> >
> > On Mon, Mar 15, 2021 at 12:17 AM p32 via lists.yoctoproject.org
> > <p32=3Dtuta.io@lists.yoctoproject.org> wrote:
> > >
> > > Thank you very much. I figured out that you can have Yocto create a =
suitable U-Boot wrapper as follows (from the image recipe):
> > > IMAGE_FSTYPES =3D "cpio.xz.u-boot"
> > >
> > > Now there is only one last issue that I wasn't able to solve yet: I =
would like Yocto to not only generate this U-Boot file but also add it to t=
he boot partition of a wic.gz image. I tried to extend the image recipe as =
follows:
> > > IMAGE_FSTYPES =3D "cpio.xz.u-boot wic.gz"
> > > IMAGE_BOOT_FILES_append +=3D "${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.cpio=
.xz.u-boot"
> > >
> > > Unfortunately, there is a dependency issue here. BitBake schedules t=
he do_image_wic task before the do_image_cpio task, which creates the u-boo=
t file. I tried to fix it as follows (from the image recipe):
> > > do_image_wic[depends] =3D "my-image-recipe:do_image_cpio"
> > >
> > > While the dependency graph acknowledges this dependency, BitBake doe=
s not seem to care about it. Whatever I try, do_image_wic is always execute=
d first and, obviously, does not succeed. I think the problem is comparable=
 to the unsolved one outlined here:
> > > https://stackoverflow.com/questions/58954170/yocto-creating-a-depend=
ency-for-wic-to-cpio-gz-image
> > >
> > > How can I instruct Yocto to execute do_image_cpio first?
> > >
> > >
> > >
> >
> >=20
> >
