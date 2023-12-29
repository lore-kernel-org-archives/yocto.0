Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C2DC46CD3
	for <webhook@archiver.kernel.org>; Fri, 29 Dec 2023 07:58:44 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.141334.1703836719225813916
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Dec 2023 23:58:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CxtuN7Ga;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2cc6b5a8364so65864421fa.2
        for <yocto@lists.yoctoproject.org>; Thu, 28 Dec 2023 23:58:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703836717; x=1704441517; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nRRVMT+bNSUk84WsnoTPeK0c/bJPEkJIJ9C6j5Ft5nI=;
        b=CxtuN7Ga18m4ZtlhHg+5YLn2MGlVnRJIoGWRPAIUuo5LOiBaatF9GmAt5LffECh/PF
         0tAbktayYxhbERq7VAZ0hAz1Rd1FAr0xJdEimpFl4+ay44je26GK/DaHOhMO3mLSbqkh
         4X0r3CP44NalPRzTsyJAR4YGConysZ3L40Cc4q0jM3yVV6u9y7eeyjeam4WDGykCubJm
         5ZZHKJb3+iqCvyom7VL2tO6UzH1DHsU8IRKJV6cOeGJSKKp/xW67oFja6k5CxS5bR3e1
         RSritD38qA9ZfURR4gJTFrzDTFgtDbrkMzIfTufAFPUz1ugWs4x8M0thTBKU7Baefw8Z
         su9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703836717; x=1704441517;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nRRVMT+bNSUk84WsnoTPeK0c/bJPEkJIJ9C6j5Ft5nI=;
        b=S/d8PyrB8pZPfhoQ9i9gzotRZl1xM8Bj0zeZ3VUHK0zPcel827EvT4SY32XnmuMtQ8
         DDZ1EUY83MeADYv/klcPv1mPx7jnD35u92CZkEr80F4gHUyyZKQXC90FYASeXENre/ta
         1slJ7R+lgyj6mTqgeMDumFYdK3sI8MuPDt0X+J5Kw50G04fTVEc/zsFulZ1Xy0WTGoSo
         dPjgglNiM3qTqZilplw76ol5VUhxdug8Cb6GZ1Ac85W3ZTBmLZhZrVHo/WxN67+e/PWg
         oKXQdWegA+J3DtR9kFtWbcwgjHyLrs77o8hcp3ll6F18jAcNVtv+uTdei0WNt5SC63ct
         XpyA==
X-Gm-Message-State: AOJu0YwnlXd1OVKiVvzSIXUTQamHDXUfLLnsTf2cmd5ikHIFK3zXxMAq
	9pcgAQyY7gLGjZIBdvzrmFc8heEEUeOW96HCBfqzW9gDk8k=
X-Google-Smtp-Source: AGHT+IESmsnIBa92wH2Im4toxYhCJomx6QsBirAnBbnTjSLknOmuIT1ciT2RlgHgLbsNSw05LAPTnrBrgegoNUrzfMs=
X-Received: by 2002:a05:6512:374a:b0:50e:3169:f184 with SMTP id
 a10-20020a056512374a00b0050e3169f184mr3833888lfs.126.1703836716828; Thu, 28
 Dec 2023 23:58:36 -0800 (PST)
MIME-Version: 1.0
References: <CANzPQ-CLdx1y_skPWVvQBSpZpYEQLGvOsNJn5smG2P0du=t7Cg@mail.gmail.com>
 <4dd9ec90-0b93-9f69-2b7d-0466f05122e0@windriver.com> <CANzPQ-CF5gpPkQc8kMn71ZLvP75kh6p5JtnKE4wuD=0MP=1ELA@mail.gmail.com>
In-Reply-To: <CANzPQ-CF5gpPkQc8kMn71ZLvP75kh6p5JtnKE4wuD=0MP=1ELA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 29 Dec 2023 08:58:27 +0100
Message-ID: <CANNYZj8tPHaazLweiY2F+_g=sDg8sbKQG9kMe_Gy9sxnvTqBKg@mail.gmail.com>
Subject: Re: [yocto] How to generate a random number for all recipes?
To: yocto@lists.yoctoproject.org, tyrocjl@gmail.com
Cc: ChenQi <Qi.Chen@windriver.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Dec 2023 07:58:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62049

It helps if you provide the context. What is the end goal here, what
is the number used for? Maybe there's a different approach altogether
for the problem you have.

Alex

On Fri, 29 Dec 2023 at 08:39, Gileon Chai <tyrocjl@gmail.com> wrote:
>
> Thank you for your reply.
> HELLO's value in two bbfiles is same when using ':=3D', but it brought ne=
w errors:
> ERROR: When reparsing a.bb and b.bb: the basehash value changed from
> xxxx to xxxx. The metadata is not deterministic and this needs to be
> fixed.
>
> What could be the reason? My guess is that, during reparses, bitbake
> also calls the random_number_function multiple times, causing
> different random numbers to be generated each time and thus resulting
> in different hash values.
>
> I am a beginner, and this issue is a bit complex for me. So, I took
> the following approach: I wrote the random number to a file using a
> recipe, and other bbfiles use it by reading the random number file.
>
> Is there a good idea? Thanks again!
>
> ChenQi <Qi.Chen@windriver.com> =E4=BA=8E2023=E5=B9=B412=E6=9C=8829=E6=97=
=A5=E5=91=A8=E4=BA=94 14:12=E5=86=99=E9=81=93=EF=BC=9A
> >
> > How about using ':=3D'?
> > e.g.,
> > HELLO :=3D "${@random_number_function}"
> >
> > Regards,
> > Qi
> >
> > On 12/29/23 13:49, Jiliang Cai wrote:
> > > I define a global variable in config like this:
> > > HELLO=3D${@random_number_function}
> > >
> > > Then I print HELLO's value in two bbfiles. I found that the value of
> > > HELLO is different because the random_number_function was called in
> > > every bbfile. How to fix it?
> > >
> > >
> > >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62048): https://lists.yoctoproject.org/g/yocto/messag=
e/62048
> Mute This Topic: https://lists.yoctoproject.org/mt/103413529/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

