Return-Path: <stephan.muehlstrasser@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A979C83F11
	for <webhook@archiver.kernel.org>; Mon, 28 Aug 2023 09:22:58 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.9699.1693214576629270944
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Aug 2023 02:22:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=Rl3U5tyT;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: stephan.muehlstrasser@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2bcde83ce9fso44470421fa.1
        for <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 02:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693214575; x=1693819375;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8G3tH24/z+36lfcJK069Naa+gJIwabbXgYOrqU6bMAY=;
        b=Rl3U5tyT1blxlOUsHGIaMliVs0RUwl0lp+yFgqOFzS6jxutHZhboIsvl+l4uFKGRUz
         N/CPKiJF3k0RMd2vkWcAlFFlJBQN6f5/tQ+GZxrtBeS6lMjabCneUnLe1xxbe681/n96
         mReWLWSPgv7jVrrSe1DbOP8OR/UL8ygdzDKBjyCx0XZnxo8LE+Zd53CF3LJ1FvifyNE5
         /wQLx43UXHb+brEckXz+0X4XAc5bW7WXMgaZ4XO/1MRYovrgm/JH8aaMCYGbpeVQueT6
         DTMuh01an4B/tlwgTkitL2EQp5rAl4J9+yfOaL4VH/HR89s18Iqy7eC9rASslWpkw0Q7
         9qyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693214575; x=1693819375;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8G3tH24/z+36lfcJK069Naa+gJIwabbXgYOrqU6bMAY=;
        b=j/oKqsTyI2wk4Mh2uAmNC2xTrQNxktQj68+Hf+itN6EW8Hh7TqiRD/C2rVszGLEfVy
         hLrJ/avsiTtYXFTW9Ae/24f6lGM1MbrfxCHEft4C4ZL9Ydxf/NdUpVoOrLtt9abR52Q8
         JvBjEiR+HI6fmKPt4lT1WfHBD/l9T5iQyjbywIDZKo5CTX3wfMTOCb5rycc70hb7P+xZ
         kRyzLLwe7ItIF2/z3UqdfmO8zjvFr64DWAr0aTpzZEprMo03mzu4lyEo7zEcD8cxYBJu
         OZZK7tA5QdNLUha5tOoDPmVhyncMbnPdhp4igrajlKnBR6ocGct1Wka+VsV6b4nJX4FO
         yFdg==
X-Gm-Message-State: AOJu0Ywvuzi6KLtAVVmjAhZeVHS/S4MvFQKeobvf9rHgz0KOmnp6yB0E
	RcUE9MHOEoUrXDBExfQ8yA5CKidZufRldWMXHVc/mtQ=
X-Google-Smtp-Source: AGHT+IHqdX3Dk7Tf3374t8m9iacWOvpkR9ApNEgN7d71r9cCkgoYSHFeT7jSv+I+1sIvvgtTra5Jz9JMh+ur6tR+3Mw=
X-Received: by 2002:a2e:81d3:0:b0:2bc:db5a:9545 with SMTP id
 s19-20020a2e81d3000000b002bcdb5a9545mr11154614ljg.14.1693214574340; Mon, 28
 Aug 2023 02:22:54 -0700 (PDT)
MIME-Version: 1.0
References: <o2S3.1692955198371059896.EMq5@lists.yoctoproject.org>
 <CANNYZj9=HgFoctp0=_soxF6Wv3R8G5Og0SpEFL0y7CbbXRxJuw@mail.gmail.com>
 <CA+_BhBzFjDjrmWW6y22kHc_s1EkXa7ee9REMBDTDQMP+eDXidg@mail.gmail.com> <CANNYZj8Hv2YETSNd+uUmffSEA1Tv+q-gK7-u-WUOsrvqALr7Hg@mail.gmail.com>
In-Reply-To: <CANNYZj8Hv2YETSNd+uUmffSEA1Tv+q-gK7-u-WUOsrvqALr7Hg@mail.gmail.com>
From: =?UTF-8?Q?Stephan_M=C3=BChlstrasser?= <stephan.muehlstrasser@gmail.com>
Date: Mon, 28 Aug 2023 11:22:43 +0200
Message-ID: <CA+_BhBwcqRNfjZbFSGuie5dyiTjXCCW9wsOfM4fw1xU7w=_=Ow@mail.gmail.com>
Subject: Re: [yocto] "Replicating a Build Offline" not working as expected
 when Git data is removed
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 09:22:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60900

Am Mo., 28. Aug. 2023 um 10:25 Uhr schrieb Alexander Kanavin
<alex.kanavin@gmail.com>:

> It's well possible no one knows the definite answer, and the best
> advice is what I said: don't touch the downloads at all. In any case,
> if the documentation is not accurate, patches to make it accurate
> would be appreciated.

I certainly do not know the answer, as I'm just a beginner with Yocto
and I try to follow the documentation to get things done.

It may be a bug in the documentation, but it may as well be a bug in
the implementation. It is certainly a desirable feature not having to
keep the Git and other SCM directories in the downloads directory and
to retain only the tarballs because of disk space. I assume that it
has worked in the past, otherwise it wouldn't be documented.

If it is a documentation bug, it would have further further
consequences. If it is not possible to rely on the tarballs only for
an offline build then the functionality to generate the tarballs via
the BB_GENERATE_MIRROR_TARBALLS variable is probably useless.

I filed a bug for this: https://bugzilla.yoctoproject.org/show_bug.cgi?id=15202

Stephan

