Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A591C369D1
	for <webhook@archiver.kernel.org>; Tue, 22 Apr 2025 10:38:25 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web11.36829.1745318297696893244
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Apr 2025 03:38:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=S+VbK3dv;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6eaf1b6ce9aso56499136d6.2
        for <yocto@lists.yoctoproject.org>; Tue, 22 Apr 2025 03:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745318297; x=1745923097; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1AQyiluZi6uXfQeDVBQbRfS8w0pqn4/B1fdigAkQISc=;
        b=S+VbK3dvjgd1Pu69sVfBZo2uGp7uaWOgRFEC+fymYd1UOxrfmbfAejvNJcPCOyc7Df
         s1GSEr7MMVmsLapBwRk95zZDLs8KferlJE3psKsLsiYAQ1kRU4KigQdBfjH+ewgbzzJg
         3VhZf4H5MidiACMvdmjLidlv8H+XRgtV/2zxnGlGIvkSXcC56JVK+24QZATS7bumZi1R
         nf36hg4SYtsCrYdI+7DhHa42ndl5XEqlk6T2K9bXQPlWO8IOuu0cu6VUYTIfJTOrzNrn
         Ot8YgXFiilz9armwHloWKO2WNsVOwK3z+xjCNVFK+59L/I+x5NfIpoa8cIsvyz0wYul7
         CAYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745318297; x=1745923097;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1AQyiluZi6uXfQeDVBQbRfS8w0pqn4/B1fdigAkQISc=;
        b=AM6HPjBV5fxBT7mN0PPFYl4DNnDMGVg6Zo1IMzJ6EFEt8cvxciO0CLybwf7UORfU4Y
         2KIRs9QsJX+bTSS5CShncxOspEmhA60lknXvXrivpR5sTnPJTkOanNkmw+1Sn4o5O7L0
         9+H4/OuItJo2XkyQmTa1IGxngGzcqRIRO7yF2Q1670q419K4vZlpszRKdLR1ib2IKr1/
         dfj+mdkEcWem7eF/TW58/yeuXIkN/7TgHoztLqsNT7t1yRmt4p1pywh7THK83UNzLQAe
         P7UrlLOETU01aZjrbnLmsE4b0Ml+AoYDirEqJtrQi0xp/TTnHcSGcTbHkyue1Bpu8aIK
         l5mw==
X-Gm-Message-State: AOJu0YzBh7BsVboq+5tmANkS2yHuFxbfJ6ISmeoPKS4M85vv0oFjlGjI
	onfBET4FfDyrf1IgyVFonnufGz+WIJmJlv3uXtGeVA/td6qMWsd6w27DxJPT/ASFf5tQr8Tkh4+
	m6vW15N5eoN1caFO5sVBc00z14gog1w==
X-Gm-Gg: ASbGncuAHuYyj9i8TQH8LPPsRHX5Q+22DbdVNC3q+3t54NjVUpg1+x22bqIRfzRbvLc
	II7T7EI4PTGxjpYwSLcNZbsrTEvsfDZTvADTusw0wKCa0IF5LAJeUWYX/zD//WLMClrjMPNgzqb
	czembz7ytAV8ZMMmWiYEtSl+ys9m2Nd/6tS/RHWT5Fk5jfzG6IC3Wbz534
X-Google-Smtp-Source: AGHT+IFMVp6IkruArTF3w6WTKKHqq9TJWZBaGzXGe1Ou3yjBLjLm9klW0+6e7UwomgbBfUs3Nj4YZa/hcdNqpwP5pMM=
X-Received: by 2002:a05:6214:1251:b0:6e8:fa33:2969 with SMTP id
 6a1803df08f44-6f2c4539b53mr297936326d6.10.1745318296656; Tue, 22 Apr 2025
 03:38:16 -0700 (PDT)
MIME-Version: 1.0
References: <MRZP264MB2072F57ED0D5A64361708F5DA1BF2@MRZP264MB2072.FRAP264.PROD.OUTLOOK.COM>
In-Reply-To: <MRZP264MB2072F57ED0D5A64361708F5DA1BF2@MRZP264MB2072.FRAP264.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 22 Apr 2025 12:38:05 +0200
X-Gm-Features: ATxdqUFXsaAJ4wB-iWYUmtvqwthKIjVN4XEyktUymS2roYevS4Djo8g3KKrIbWY
Message-ID: <CANNYZj_1qrPzjtLL2QxYWvF0N2HPhzhO-ZC59Uq2tKkGctOf6A@mail.gmail.com>
Subject: Re: [yocto] sharing shared-state cache between OEBasicHash/OEEquivHash
 users
To: yocto@lists.yoctoproject.org, sbarthelemy@aldebaran.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Apr 2025 10:38:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65223

I'd suggest you don't do this separate s3 upload via proprietary
client at all. Rather set up NFS and make trusted builders write to
it, and everyone else access it via read-only http mirror.

The hash equivalency database has to be accessible to all, otherwise
machines that don't have it (or use a local, private copy via 'auto'
setting) will have lots of cache misses and unnecessary, long
rebuilds. Another option is to switch it off for all, which will also
lengthen the builds, but at least ensure sstate reuse for identical
configurations. Again, there are ways to set it up r/w for trusted
builders and r/o for others.

Alex

On Fri, 18 Apr 2025 at 10:19, Sebastien BARTHELEMY | Aldebaran via
lists.yoctoproject.org
<sbarthelemy=3Daldebaran.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> we are experimenting with sharing the shared-state cache  over S3.
> We would like to have
> * several gitlab runners invoking bitbake, reading from, then uploading t=
o the S3 bucket (concurrently)
> * several devs invoking bitbake, reading from the bucket, but not writing=
 to it.
>
> Setting up a hash server and keeping it in sync with the bucket seems com=
plex, so the runners have the following configuration:
>
> SSTATE_MIRRORS =3D "file://.* https://mybucket.s3.amazonaws.com/PATH;down=
loadfilename=3DPATH"
> BB_HASHSERVE =3D ""
> BB_SIGNATURE_HANDLER =3D "OEBasicHash"
>
> after running bitbake the do
> s5cmd cp --no-clobber --exclude '*.lock' $SSTATE_DIR/ s3://mybucket
> which uploads the whole local cacheto the bucket, skipping files which al=
ready exist in the bucket.
>
> It seems to work, even with concurrent writes, thanks to the way files ar=
e named in the cache.
>
> I wonder if the devs (who do not push to the mirror) are required to use =
the OEBasicHash signature handler too, or if they can keep using the defaul=
t
>
> BB_HASHSERVE =3D "auto"
> BB_SIGNATURE_HANDLER =3D "OEEquivHash"
> with
> SSTATE_MIRRORS =3D "file://.* https://mybucket.s3.amazonaws.com/PATH;down=
loadfilename=3DPATH"
>
> Put another way (and if understand the whole thing correctly), I wonder i=
f OEEquivHash and OEBasicHash share the same task hash as a key to name sst=
ate object files.
>
> bitbake warns against using BB_HASHSERVE =3D "auto" with a SSTATE_MIRRORS=
:
>
> WARNING: You are using a local hash equivalence server but have configure=
d an sstate mirror. This will likely mean no sstate will match from the mir=
ror. You may wish to disable the hash equivalence use (BB_HASHSERVE), or us=
e a hash equivalence server alongside the sstate mirror.
>
> but I suspect it is overcautious.
>
> Thank you.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65202): https://lists.yoctoproject.org/g/yocto/messag=
e/65202
> Mute This Topic: https://lists.yoctoproject.org/mt/112328012/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

