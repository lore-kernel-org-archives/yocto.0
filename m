Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3953C433F5
	for <webhook@archiver.kernel.org>; Tue,  5 Oct 2021 21:43:21 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
 [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web11.3415.1633470200565669417
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 14:43:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ArdUxeZ1;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id jo30so618361qvb.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 14:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=4xdpH3XNWxBdh46V4nb0mc0aYvZWtRlmndfIf7Am+oI=;
        b=ArdUxeZ1sHupGESuswBm+qNgswiepMWhimUjPUxKpSgrnynJ3R9lAaewmLifh9zLFe
         MCNQbMoWUVqsIW0oYpdWHn+ZgAjQaLSdY5aYa+5ONksyaYY839sx3jP+HiB2Hoe6nzqS
         t199tBs0BjVqDcF0KUoihAWXqK9KCEGs0xD8/nUsWjZwiwRXyYzE6uJhTUPLF26VfuUK
         w0b9qSCb++i/mmqQQLPbd59gZfTvan/5FFaf7wtP7vWgjavuzDvQZCa/hwOqRjXLYOUZ
         nLjPF67encpa1D5TteyvpwxhuwxiYqo+nELzQ8DB1mxcbBqJ59fC1XCzHCynXxN5sBAg
         fEgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=4xdpH3XNWxBdh46V4nb0mc0aYvZWtRlmndfIf7Am+oI=;
        b=HQhjt3/vGFgUbCBiTyri1WS/FggZ4An0MoUIlNDBp1ApuLJCBleKDSF8joKhYJh7lc
         eK9232kE1MdRNwR06jDnDxpU87nMRjPFpe8Cr7FtRE0kxs+cQCGqncsxXJP6Uig/IYBW
         2AGBLEDLr0soBF02CiDgbdMkxOLOeXCToLU9IaO5QCaOdHZS44QOuIuJZ5X/6XMT3Ser
         LeaewESnBcyisUV9jX3GaZ20YXgT/ZiLAmvATZf4FEeQ6xpovSGvxo9bXb96M6lEV1WD
         Z3x4juqk9BUmgl+qNtHFdgc+0G2QxGKWdjl7vcFB+jy1z6GqH7uEpXMhXm3cgE7c7fxu
         OpFQ==
X-Gm-Message-State: AOAM5303a0ymxE264jIEz0+r/FB+b+Zt/KAA/J8g3iXX1kpE6T3JqrjL
	9kmeHp/C0sWOIlHIj4Di0k+7pmkXDzjeoRACGSU=
X-Google-Smtp-Source: 
 ABdhPJwKSaPGMX4lGJzMQo4iUwrbNtLuGw4OemEeu/m8HVfVSnXfF4JCjAqVTcwr6QcVXthFv84OuCk0VYPBThR/Gi8=
X-Received: by 2002:a05:6214:42f:: with SMTP id
 a15mr11457565qvy.41.1633470199707;
 Tue, 05 Oct 2021 14:43:19 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CABKMkPKrjB5Wb9MOb74qzeqx7brs9Em3dmk1h5Zxm1CKKJmYkw@mail.gmail.com>
In-Reply-To: 
 <CABKMkPKrjB5Wb9MOb74qzeqx7brs9Em3dmk1h5Zxm1CKKJmYkw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 5 Oct 2021 14:42:53 -0700
Message-ID: 
 <CAMKF1srTpBs-cZOqbLbFxOpkowxjH9-Q9NgYoMX3eXiAoUo6fg@mail.gmail.com>
Subject: Re: [yocto] Google GN support
To: Joel Winarske <joel.winarske@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Oct 2021 21:43:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54972

On Tue, Oct 5, 2021 at 2:34 PM Joel Winarske <joel.winarske@gmail.com> wrot=
e:
>
> I'm looking into best practice LTS support for Google GN based projects. =
 This includes Chromium, Flutter, SKIA, etc.
>
> The weakness I see today for GN projects is that it's a build system with=
in a build system, and doesn't  support idiomatic download caching, downloa=
d vs patching isn't clear as it should be, etc.
>
> Two approaches to resolve this come to mind:
> 1. Do something similar to how meta-rust does it.  Pre-process GN build f=
iles and generate Yocto recipes using a hostside tool (similar to cargo-bit=
bake for meta-rust).  This would skip usage of gclient entirely, and the tr=
adeoff is to incur download performance penalty.
>
> 2. Implement build parsing in a gclient/gn fetcher class.
>
> I feel the first approach would be easier to maintain and provide better =
flexibility.  It would incur a new host dependency, and require an addition=
al step to generate an updated recipe.
>
> I suspect the second approach would be an OE maintenance headache, as com=
plexities would be directly exposed in OE.  Is this why gclient fetcher sup=
port came and went?
>
> I'm figuring/hoping there are a few opinions floating around on this subj=
ect.
>
> Is there a better approach?

look at meta-browser/meta-chromium as well.

>
> Thanks,
> Joel
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#54971): https://lists.yoctoproject.org/g/yocto/messag=
e/54971
> Mute This Topic: https://lists.yoctoproject.org/mt/86105559/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

