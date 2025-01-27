Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E678C0218D
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 02:42:47 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web11.43455.1737945765718371923
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Jan 2025 18:42:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=sl2RaLua;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.180, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e46c6547266so5752516276.3
        for <yocto@lists.yoctoproject.org>; Sun, 26 Jan 2025 18:42:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1737945765; x=1738550565; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iAm26Bzz96W8MYXkRaEh067Z4ISqXiZy/bugRVwmm9E=;
        b=sl2RaLuaVGb/D+bTRFK9XxNvfXT1X9Pm/tcrwP5vmx4DmBeQhihP/KP6guoMzQ4vpg
         dhW7SjnlELuAbw/HodTZ0tAl+73UakTNFGZR16Ndz9GCoAu9hV1CiyZX6FrAf3bTenzo
         kjmNZarBvGrOtMxI+lw2fQjjKa3UCHaKHFCDqNaaPNCvwmk21MTFNYDfrXVMifSHELNT
         JICcJv7+6KFnTLN1coHkTHkY+iQrYJ2N6U1bZ80f9rR35xTqbi1o6zPelRPSGAiy1A9W
         69wvbqOOf9FrH7z3shRKdU4MfkKoVU18UGw/mmFRvmQlUZLmMJAr12ECSgJ0m2Q91Zkd
         hRBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737945765; x=1738550565;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iAm26Bzz96W8MYXkRaEh067Z4ISqXiZy/bugRVwmm9E=;
        b=MPh6t9/vl7xP5qMzpuhzfYFd9EaF3aQswA6z/6a0Mql5yWVN9gYkOuXkmL1drUMUHj
         Ynfh8sCXD4pMnExs7JyashlJHBcaZ5fFRkFOS0kDCZjojcH0d92gKPETrr8VGa4dj+yW
         wOwVI9Yjw15f2OEFNLQ5opffDeAHyqcS7sSDgP4hHJlD36HqzI9dsAI6Iye+seM+g/oD
         m9TClbmWhPpTd0eizCpqju90d+62SWZdl+r4/Atpk47v86fBtJ3Wqz66qwFBBtDtqfAH
         C5BNbfDIviMkDDC1y+St/iod4tFTaqASQtuv6Nc/0ioEO9bnj509U1ldJsLufMFvw/tA
         hJ5w==
X-Gm-Message-State: AOJu0YytLYI94epXZgKHcOi34ElB+mq6Vprpu50eHYr3gDjYysDoeGUB
	ZiVN1WqHJDm/cxzddSEo+OYYJcQPSxR5n3hdjqaR+w5plqeERO1++UDB3jpmVyCxu9tEqEItn1u
	WTOPfIv+H5zUQ3Kr5mH5pZp14jlQchflOilyCKA==
X-Gm-Gg: ASbGnctEAWY9hX+2K/ZR0FeZPzGDXIPS9BUaSKqp0fDQxi0MbcaAmkBBt6SWCFU+Z5P
	2pJv/rpvtVKHCLNSp9BCtYSAqVHK4w9DtLwoIhP5NX8IUhXInMn0Njf5nhKQoUg==
X-Google-Smtp-Source: AGHT+IGrwxQSIEdani0e5Plrt3Ul+hha6h1WQJJGhPqPyAZSoemcbgZf3o5F7bwnBzyU2S90lLypXtK4QD7oUSfSCGg=
X-Received: by 2002:a05:690c:6f8d:b0:6ef:579c:38e6 with SMTP id
 00721157ae682-6f6eb90d626mr302993627b3.28.1737945764640; Sun, 26 Jan 2025
 18:42:44 -0800 (PST)
MIME-Version: 1.0
References: <01010194a5634f05-e6e0d901-d559-4bfc-9eaa-2ed66dbf896e-000000@us-west-2.amazonses.com>
In-Reply-To: <01010194a5634f05-e6e0d901-d559-4bfc-9eaa-2ed66dbf896e-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sun, 26 Jan 2025 18:42:33 -0800
X-Gm-Features: AWEUYZlBSOuRJ9XA2oA3iyEsQlsqHslayoJguxW9donYIUoLzOPxQ7aOFPsq-Nw
Message-ID: <CAOSpxdY7wmQXqax2ReFLEJm_YYZHn2ztCvPDVqo=86D3DXCG0A@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.7.rc2)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 02:42:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64630

This was an "all green" build, so OK to proceed with QA.

Steve

On Sun, Jan 26, 2025 at 5:32=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.0.7.rc2) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.7.rc2
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/893
>
>     Build hash information:
>
>     bitbake: aa0e540fc31a1c26839efd2c7785a751ce24ebfb
> meta-agl: 45428e8d626b06a809686fa0db8a3892498b96a4
> meta-arm: a8fe9d22eaefc294f91096c6a32663e2f4ab3b10
> meta-aws: 4f45b4b2a940577bef4301a69dcafe743af1826b
> meta-clang: 8c77b427408db01b8de4c04bd3d247c13c154f92
> meta-intel: 0be954e82f09d235d2b5e5ea01bb62ffa8d0b5f7
> meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
> meta-openembedded: dda0d53326017d6758ec6bdfdaf2f484c089d13f
> meta-virtualization: 2ec66285d050ef3cd29a5ea57c71341e6b17b36f
> oecore: 62cb12967391db709315820d48853ffa4c6b4740
> poky: 7dad83c7e5e9637c0ff5d5712409611fd4a14946
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
> View/Reply Online (#505): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/505
> Mute This Topic: https://lists.yoctoproject.org/mt/110832130/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

