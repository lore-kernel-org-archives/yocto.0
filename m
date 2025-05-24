Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11385C54F30
	for <webhook@archiver.kernel.org>; Sat, 24 May 2025 17:50:56 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web10.11682.1748109048268871434
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 May 2025 10:50:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=0EsOCYH5;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.181, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e73e9e18556so791647276.0
        for <yocto@lists.yoctoproject.org>; Sat, 24 May 2025 10:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1748109047; x=1748713847; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q+OD0c2k6R46wepWXbWUuIDlnsL59T2ManMkFD+uq/U=;
        b=0EsOCYH57sRYWqk21HB2Vq8Oa6Kc3WuDMi+xTpfrf3oI1YvCsAYZl+AooY1JuZ/D7s
         wIvAD/v1KnZT4FWftlANZEt6S7kpsuzUl/AcoDmKaJGJk2NQLT9KX5Jbtj/0Cl17GRwc
         XiutGPZs8cd4SomG06VLc7/a8gGggpLsIuFPAFLFxrxWvFCCgjuh1ypNJ993srIJ0oW+
         24HzF/ddE5UdSOWQPA0gG1a2mX4aol0fkN+4iLFlHOCWRiUnq9Boo+1cm5ynP42YbMix
         VVeViI/MLJlv/Khy9nUtiaV0C4T5LYuy+FgimcmUdEVkuR4firb4cDdtTrZ2MFyoAGsp
         c04Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748109047; x=1748713847;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q+OD0c2k6R46wepWXbWUuIDlnsL59T2ManMkFD+uq/U=;
        b=EIaL33tcgCfyDT5RFaG2Sv2BuQtTmJmAWVaCBanZKOiziu6vqWcMLXoFhhHTyq/YwV
         IEyGVAvqQXfDHQkfALRDA6ZudGc/W0dqcowwBqfc6N+bNOGgZE5XgSiATqsv0NEPiMHk
         8zTSJpCissR8BrTixPYIn5ThWEFyyAvYVjGvrEZWBMnN6cPU2FVK275wj7nt39r83s/4
         0KhYEOAzuy9o47cYRAmFDpK+DYYmjB/gNij7PMsYjXcMTXandvd7l/lEVp6WTwNlMmvQ
         wz2+eIKdQvrpAtdMf/lAzkg5m1YwuBLduM5Ntp8jUkYU7yfLPCYQsjPZBRMKi+rnOiz5
         ibrg==
X-Gm-Message-State: AOJu0YwQGF8xUcvizrLnyaC7L/80dYvF7SCaHE9CGnVdelYIrSk15+mx
	LDK1G+4fhP9BgVPQLxUwy+ZqEMgg+HOEelSiFpZM+79vneubbkTOBy28q3G4Xw8YuCWojxZyCmQ
	SuqmBelJNW2pbqCpoLoQkl1Z9hNpJDWKGDu4v10nMuKnDxN+H7tUyDp0=
X-Gm-Gg: ASbGncuavque5TcVkgDHjRmtuMqCB4zsJ6R31Qq2izb1EZ2SSjnarQoKnx9yUwncd3d
	LYAGunvpndTf32+goN1hBkPApNF7TmFQGvQeeBX/XE9jDkpMhc/gYvrk/KIbClzJzYhKOQuMGzr
	3uNgOyvxjsO2OfYlL9Fb637UzYB7Jz84SKl2QJzBVkvgUvL8JegzO/R5TtZhos1Fxu
X-Google-Smtp-Source: AGHT+IG8QhuqAJ3mDurAQHloTfw/9UCq4upOH4dZ6R8JFo7CyMVqNMv0ZYpEkFzVGGdBpr1oLAIUewciaV39I920PtU=
X-Received: by 2002:a05:6902:2b0d:b0:e7a:3d4f:6355 with SMTP id
 3f1490d57ef6-e7d7ce62b1fmr7894514276.19.1748109047270; Sat, 24 May 2025
 10:50:47 -0700 (PDT)
MIME-Version: 1.0
References: <010101970344de7e-a0658898-c111-477b-b2ac-093e5ac89415-000000@us-west-2.amazonses.com>
In-Reply-To: <010101970344de7e-a0658898-c111-477b-b2ac-093e5ac89415-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 24 May 2025 10:50:36 -0700
X-Gm-Features: AX0GCFu9MrdObDMXj7LRu5tcfQrYC80NmU1CelflXYU6wbmhDjesEaKQcaPoJBs
Message-ID: <CAOSpxdbkGa=26L1WX+KPJmNykq6sKLr6x4A_mMR7pq_Rcf0Uvw@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.2.1.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 May 2025 17:50:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65417

This was an all green build, other than a few HTTP Error 504: Gateway
Timeout errors in the Source Mirrors selftest (a known autobuilder
infrastructure issue)

OK to proceed with QA.

Steve

On Sat, May 24, 2025 at 10:08=E2=80=AFAM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.2.1.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.2.1.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/1654
>
>     Build hash information:
>
>     bitbake: 5b4e20377eea8d428edf1aeb2187c18f82ca6757
> meta-agl: e66db9b71ee6566d5931f590e5491661e94b5e13
> meta-arm: 4f8d2f4b2fa23b89098a8e7347d6bb26228acd68
> meta-aws: a28a159b336db6531e5482ca5c6f92b25231b184
> meta-clang: b3e5449f0156884d18c17efff99654cde8251411
> meta-intel: b5c65864faeff4ed95f4f75daf5535a95a809e5e
> meta-mingw: edce693e1b8fabd84651aa6c0888aafbcf238577
> meta-openembedded: 2169c9afcc0945045bea49f58011080942d4ddb4
> meta-virtualization: b54f05a85be5e2b80c111506b7c4d35d7d4eb54d
> oecore: 17affdaa600896282e07fb4d64cb23195673baa1
> poky: fd9b605507a20d850a9991316cd190c1d20dc4a6
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#553): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/553
> Mute This Topic: https://lists.yoctoproject.org/mt/113283781/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

