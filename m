Return-Path: <tyrocjl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9FBC46CD4
	for <webhook@archiver.kernel.org>; Fri, 29 Dec 2023 07:39:44 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.141456.1703835581345038269
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Dec 2023 23:39:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ifvrGxmB;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: tyrocjl@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ccb923c4d2so40361601fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 28 Dec 2023 23:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703835579; x=1704440379; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+gIjGrmYuonmi9yrDOeTgPymsGs+ZQC2aOkm5DOv1EY=;
        b=ifvrGxmBndwBY3UFVfkrkSY1K9kUO49qAA7UxXXHHspVQr+yQ0BkHNKSYNPt3MGpe7
         cM/ljIYAhBZe7FH6nPBMPrp5+lcI7EbHV7j+a/HdPOlrH7T6HS5roIl9WO1TfMoPcWBy
         juot5BtQHH7tOIHd0Rr9Z//apYgX+R6/Sc0HbJB3Dff+nANknW67oQn2PTqB3oNbd1eM
         HonIshTN60LW0syDfNjdKtw6Cu3pnIz34scqKWl8h4a6QrmLBIsfz2uiVGZPReVB7Tnk
         5lsRGpu9zbcDvleRJj7VL+ZMvq+Nhey6dviOIk7l//19J7es+3tfSZK5lYqKY0C1T6tY
         P32g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703835579; x=1704440379;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+gIjGrmYuonmi9yrDOeTgPymsGs+ZQC2aOkm5DOv1EY=;
        b=o5GYm5syBk02Tsh5vulrfuk+8d5AAcHYmGCFt7NlbYkEU8RIpU3vmt6WR5Qw0tDD1R
         QdRmMKjP/nn1MFO3cbiUjJZX+Cwq/Fu5MaCP/Qw3s3OKiquXgR5rxuyy1RCM6C2731Qn
         PzIyt01kyunf4jCm4yHU6tCv8FuLEkjxZWpqSaRR7kA9nPruhgs0Nvledwn4E+Sxvue5
         SMWayTv0jBGLNY+sLQvdNqM0wxoHhJ1W74y5aFQkfs+yB9c+cJUcZiHcvFgkFQ1lemPn
         RLBURYlIVSVznZcNGTZ/3xxxOrNNLB1+FGPcjXPramXTOm1HHwpXJ34/BlJhXX2EmkD6
         TeWA==
X-Gm-Message-State: AOJu0Yx/yEfd/98ynZ5pu5kaw5bBIJnzMBUJBKhIYP2fKsA7uHLAKqsx
	lxNxK4YVuYGpyM6E7bPT/4wTXk88iXKKeyprixA=
X-Google-Smtp-Source: AGHT+IGJanI4am5HcrGAAssOghMFSipoPjuMBWhxA+h5AuEKYLmswV+mTfBKVOdHCi7faaaFNnyAdFrFhP8uuPgdxfM=
X-Received: by 2002:a2e:9684:0:b0:2cc:61c6:466e with SMTP id
 q4-20020a2e9684000000b002cc61c6466emr3682124lji.58.1703835578857; Thu, 28 Dec
 2023 23:39:38 -0800 (PST)
MIME-Version: 1.0
References: <CANzPQ-CLdx1y_skPWVvQBSpZpYEQLGvOsNJn5smG2P0du=t7Cg@mail.gmail.com>
 <4dd9ec90-0b93-9f69-2b7d-0466f05122e0@windriver.com>
In-Reply-To: <4dd9ec90-0b93-9f69-2b7d-0466f05122e0@windriver.com>
From: Gileon Chai <tyrocjl@gmail.com>
Date: Fri, 29 Dec 2023 15:38:17 +0800
Message-ID: <CANzPQ-CF5gpPkQc8kMn71ZLvP75kh6p5JtnKE4wuD=0MP=1ELA@mail.gmail.com>
Subject: Re: [yocto] How to generate a random number for all recipes?
To: ChenQi <Qi.Chen@windriver.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Dec 2023 07:39:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62048

Thank you for your reply.
HELLO's value in two bbfiles is same when using ':=3D', but it brought new =
errors:
ERROR: When reparsing a.bb and b.bb: the basehash value changed from
xxxx to xxxx. The metadata is not deterministic and this needs to be
fixed.

What could be the reason? My guess is that, during reparses, bitbake
also calls the random_number_function multiple times, causing
different random numbers to be generated each time and thus resulting
in different hash values.

I am a beginner, and this issue is a bit complex for me. So, I took
the following approach: I wrote the random number to a file using a
recipe, and other bbfiles use it by reading the random number file.

Is there a good idea? Thanks again!

ChenQi <Qi.Chen@windriver.com> =E4=BA=8E2023=E5=B9=B412=E6=9C=8829=E6=97=A5=
=E5=91=A8=E4=BA=94 14:12=E5=86=99=E9=81=93=EF=BC=9A
>
> How about using ':=3D'?
> e.g.,
> HELLO :=3D "${@random_number_function}"
>
> Regards,
> Qi
>
> On 12/29/23 13:49, Jiliang Cai wrote:
> > I define a global variable in config like this:
> > HELLO=3D${@random_number_function}
> >
> > Then I print HELLO's value in two bbfiles. I found that the value of
> > HELLO is different because the random_number_function was called in
> > every bbfile. How to fix it?
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#62046): https://lists.yoctoproject.org/g/yocto/mess=
age/62046
> > Mute This Topic: https://lists.yoctoproject.org/mt/103413529/7304865
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [Qi.Chen@eng.=
windriver.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

