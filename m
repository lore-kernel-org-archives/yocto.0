Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CE96C4829E
	for <webhook@archiver.kernel.org>; Mon, 12 Feb 2024 22:53:26 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.1075.1707778397538405607
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Feb 2024 14:53:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SP6NrC/Z;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: jpewhacker@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2d0f1ec376bso21931181fa.1
        for <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 14:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707778395; x=1708383195; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z1+GUHcxD+cCG8MziwZsXGkHY4x9dsv3qVz7aZng7F0=;
        b=SP6NrC/ZAac/qmz+vgzAgo9XVUgJT+/7aznmBP+rRZ6mRnZ+VivGqx+wuqxVDUVwHI
         XYJFsbZYeym+QUWIIM8OQVu6tE919LrGuPWPYJZrdfvsDucXg/NPDO3QTnQoF+SdSJTF
         1VIog0YWrL1kPOP9ROiaHeUpi6aTWcxZ9YQGvBY/w4yFGrez9OcKNQ4n92bvtnhEbooZ
         GC/9mhUMvRm3qCtAtajQ6Wf/INeN8ZDTNRHkDlgwH8Szb7WN7qiFdnln9K0mCLOSq9ob
         LN4UPHIagbRZXemMJZfRezfwJgoK6IE3zgjbcrt9qembWigAbYKXqoyw7E3DVkr0bu74
         ZUPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707778395; x=1708383195;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z1+GUHcxD+cCG8MziwZsXGkHY4x9dsv3qVz7aZng7F0=;
        b=YNXro9fRPyeY621N/MDs9E41M7nyoL/5cyRnerMWo8YS/tT3opsKGp2ZPo2wQrAG3g
         9IOYKhWZIsi1kfE/edz6PUtbrxuV6slAKf5pLdPkI/tYtq+uebWOThO6cA5DBv6ZeLNI
         4v6RJ3z7NOp4xGEBQqysbjAs1aNQeYI4x7h6mMRv1mReNrGRs+++HExXrO7FOY6bhTvo
         QdoYmh5uKs7NGOajuO0UiI0Kmz2Lf4d673jwQ+FqKC0QdtV2Y9j64cb0/tCGusGfmKnT
         snSB3moM1FedSSSABX0s370BpnnG/G8Avg1CpVSQ82sALyfmZtBbQ6fVRE+sOHWLl+YS
         /RxA==
X-Gm-Message-State: AOJu0YxVYd0pmcIewLIchHnWlX6g8xWqP86UV0/cbmP4RA2sCPk7AQ4w
	zENoEx74zeC8Moj6CqP2/Xw33TcQsm6GovBQ92+EXoGkNFS7GdwAhiB10A66p7JC9yWJfLvTjNu
	6DegD5r+hZ5639reQHItGmQ5pXf5pU2XK
X-Google-Smtp-Source: AGHT+IH8pNKPHOMhapCWnWwGPiemsepVb2woqKq6whjjQgsfUF2s/OMPpwtRs73hMzbQ4bW8ssdq0ZIh3c0Ayct3s8g=
X-Received: by 2002:a05:651c:623:b0:2d0:7b53:9330 with SMTP id
 k35-20020a05651c062300b002d07b539330mr4877855lje.14.1707778394850; Mon, 12
 Feb 2024 14:53:14 -0800 (PST)
MIME-Version: 1.0
References: <5e58c6719d797be31ece8149535531036ae18a47.camel@gmail.com>
 <e6cefe4b20af2ef03793fd096f01482f9f69cf67.camel@linuxfoundation.org> <ebd3d2dfe7da20db63df6ae404c7198baf484953.camel@gmail.com>
In-Reply-To: <ebd3d2dfe7da20db63df6ae404c7198baf484953.camel@gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Mon, 12 Feb 2024 15:53:02 -0700
Message-ID: <CAJdd5GaOESrSMpuKr1ZJYYcjeMspqOG5SvKeQU7hpuEF0NnXAw@mail.gmail.com>
Subject: Re: [yocto] bmap-tools repository closes
To: yocto@lists.yoctoproject.org, dedekind1@gmail.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 22:53:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62468

On Sun, Feb 11, 2024 at 11:46=E2=80=AFPM Artem Bityutskiy <dedekind1@gmail.=
com> wrote:
>
> On Fri, 2024-02-09 at 18:08 +0000, Richard Purdie wrote:
> > Thanks for reaching out to us, it is good to do this proactively rather
> > than seeing it sit unmaintained. There is interest within the Yocto
> > Project community to take this on so we'd like to take up that offer
> > thanks!
> >
> > There are a few details we're working through but I did want to say
> > this publicly and also to say thanks for reaching out.
>
> Thank! Let me know when if you do this, I'll point to the new place from =
current
> bmap-tools github repo.

I think ideally we would use the GitHub feature to move the repo if
you have permissions to do that as it should preserve issues and such;
I think maybe it will also automatically redirect if we do that, but
I'm not positive because I've not done it before

>
> Artem.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62462): https://lists.yoctoproject.org/g/yocto/messag=
e/62462
> Mute This Topic: https://lists.yoctoproject.org/mt/103930262/3616693
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [JPEWhacker@gma=
il.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

