Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59325C4167B
	for <webhook@archiver.kernel.org>; Mon, 27 Nov 2023 14:24:49 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web11.95697.1701095088305040712
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Nov 2023 06:24:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=UNYSYfxZ;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.46, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a002562bd8bso819459066b.0
        for <yocto@lists.yoctoproject.org>; Mon, 27 Nov 2023 06:24:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1701095087; x=1701699887; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rpIBEpm1hGIAUQ5WcsjQkQRKf/sSyEIdeTVqgwLFRXs=;
        b=UNYSYfxZjBHjLwjPmhig9mcbwcKRLjEVQoiCjlCGLyLbpkPdOjpvY0suhHs1bZsC2o
         Q0XyaKXni9Kl7jy48HwepeRhHd0NgbS2PT7UaFw/5lNz8TnLsc5XBnTJT2UwY3LrMEdI
         0MMhfrRYjbHjSCXtXn4LKyKWDHtR6RsADPz1oKWKxZdxA4351MkqVWTFGUAdiCcF58Sb
         3rSOMvcSoXqF0hvv8H9RcnCpm/4NmIQ7h6EFuoPrEdrauUmgoVVSA3bnZFiafbYp02+Z
         yL4HTnFmQB0gbZ65FRwt3THhquRHYnk53VNR4w9uadCzWegDYjWY7QWFshFfepOusSgo
         RZAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701095087; x=1701699887;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rpIBEpm1hGIAUQ5WcsjQkQRKf/sSyEIdeTVqgwLFRXs=;
        b=DlJlkHMGgfq7LLusFOfQgzBScgi/HADvDsL+x9G43wu7EgQ5j20/X5sANPjWdQA/uK
         xCCKl/TKt6h9vCq7qZJfvF1NSBSimEfYfFcZzKSlOYIjVbp+Yu6fZtcrpmzf/Imr/I13
         6qvjPevXcW1sL9V/Fk4Axd+lInwwiVdxSvpge36RTTtnrbURE4O/XTaIuPvW19RwXN/n
         vKAKND1EJnaZrcQIxEZ8iMm4G+KNaNmob/+rQe6pXLO+Q0JgcnjjSRFpWubr9aGf0qNb
         bhZWmsTILu7E55xwsidjQF64WwutxVNO0Z+xw6ZRa6/viPo1hCx770bUGso0kCXRgwYb
         ETuw==
X-Gm-Message-State: AOJu0YwDdUpf8iYwA5DUTZo/zZ51HQMR9y47i4eDwQ3KDJuQqX3MIiKo
	Pmn7Tgo/Q+hzwaBrEiXI2JOGPKueNgY9ITopXkN2KwzGF9ITRvsSKZwBTt5B
X-Google-Smtp-Source: AGHT+IEa+RyO1UDIji1WPsFgK82g+ym5Lbyo+9z6BcbH1JeKSZFGvM+Gmnxgg5rFWqSB1AcdkrDVD/JEiNdrGZGZCRg=
X-Received: by 2002:a17:906:b810:b0:a04:eac3:2812 with SMTP id
 dv16-20020a170906b81000b00a04eac32812mr13264904ejb.26.1701095086487; Mon, 27
 Nov 2023 06:24:46 -0800 (PST)
MIME-Version: 1.0
References: <0101018c03fc64d2-a204587c-6202-4a4c-b479-8413df9dd87f-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018c03fc64d2-a204587c-6202-4a4c-b479-8413df9dd87f-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Mon, 27 Nov 2023 04:24:35 -1000
Message-ID: <CAOSpxdY6iKrk7OoK11GSzP+qV9CGT+s1O1xk2-E8Onquv6q_og@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.3.1.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Nov 2023 14:24:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61759

On Fri, Nov 24, 2023 at 2:58=E2=80=AFPM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-4.3.1.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://autobuilder.yocto.io/pub/releases/yocto-4.3.1.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83=
/builds/6242
>
>     Build hash information:
>
>     bitbake: 936fcec41efacc4ce988c81882a9ae6403702bea
> meta-agl: 22ea97e52898c7ee3e32e0c683166c9071e37adf
> meta-arm: db658a77af7e15cdb8e4d9231bef8c48c5d327fb
> meta-aws: ac6f26f5707c51091ead00b26bffd3fa899dab71
> meta-intel: 52ce86a7f5f1ed751d80bc5e1d6b76db1c5b84c8
> meta-mingw: 49617a253e09baabbf0355bc736122e9549c8ab2
> meta-openembedded: 991e6852a53e0fcd40af8f0386d7f46bb318015e
> meta-virtualization: a215d8320edee0a317a6511e7e2efa5bba867486
> oecore: cce77e8e79c860f4ef0ac4a86b9375bf87507360
> poky: bf9f2f6f60387b3a7cd570919cef6c4570edcb82

I'm continuing to see intermittent autobuilder issues with nanbield
and this release build is a good example.

There were four non-green tests, three red (failures) and one orange (warni=
ngs).

Two are known issues and also present on master:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15005 (two occurrences)
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14311

The third appears to be new, and it is unknown whether it is also
present on master:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15298

I reran the failing items and all passed:

https://autobuilder.yoctoproject.org/typhoon/#/builders/127/builds/2489
https://autobuilder.yoctoproject.org/typhoon/#/builders/80/builds/6048
https://autobuilder.yoctoproject.org/typhoon/#/builders/87/builds/6113
https://autobuilder.yoctoproject.org/typhoon/#/builders/81/builds/5947

The above is a good example of how these intermittent issues are
impacting project testing and release.

Help in resolving these issues would be very much appreciated!  You
can see the issue list here:

https://bugzilla.yoctoproject.org/buglist.cgi?list_id=3D654877&query_format=
=3Dadvanced&resolution=3D---&status_whiteboard=3DAB-INT&status_whiteboard_t=
ype=3Dallwordssubstr

Steve


Steve

