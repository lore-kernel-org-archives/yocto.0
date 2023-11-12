Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08A8EC4332F
	for <webhook@archiver.kernel.org>; Sun, 12 Nov 2023 22:57:05 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web10.25409.1699829822570676054
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Nov 2023 14:57:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=Mwdss++s;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.47, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-9e1021dbd28so591899466b.3
        for <yocto@lists.yoctoproject.org>; Sun, 12 Nov 2023 14:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1699829821; x=1700434621; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CKARljpr9yyBPCNnrSbzOnKCtH0J5uoMcWxWA2ZP0F8=;
        b=Mwdss++s0el8YKhFmM3btt4hGzWxvDAU+YCYEm/WalTlmILt+nXEXNDL9XloXuAXTI
         p5VUgSc9kGDZBLuvyL6haieypWoQojxltPsReTty9jGUMJKF0scg+Amin9M3k+XvOUtv
         QzGpZaw19zIKk6cN1CWVmK7jtxkigx5//QABVfvwR53Fja6QEomyh+M2Os/6hQHGNIp4
         EMKcNuRaKt72NObfIn90sNG2BFIHXlZDAINdQkHyPsc8JVXOYSwiTGTUXXbTGS/9ou47
         BiazHJwLgdtuF+SxVyss8YaF9qcKWvmH3IfyNYx3q9q+6Zj4BfIeGVgadXrOI4bKejMC
         NppQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699829821; x=1700434621;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CKARljpr9yyBPCNnrSbzOnKCtH0J5uoMcWxWA2ZP0F8=;
        b=MXOhXn1DWB1XQWXgtysybDnMeU0peJRQvsf0nA8n4H5XguZw+O99BXmvlvKUW7MhLM
         MgjI7pDXb8CeLOb9SvK3owXqj1cPcwbuTKnHs89DtcJuAmYsXVUkY3jkZkP+kkyOLDNQ
         yB3bmh1EzpNgkOU5cSWKgCjvQjLJcgPhxanrJp9DZzaC5xfHl0N2Uojq9vs71JcpS4ak
         Fk8uf1ww5By6Wj4CgmVF0SW3OOo1S3+xfBQNYjG5OUohEJqJsE7dYTb6U3KpJAefBrrQ
         eusge6pQkrWmupRfmmSTydXPuYeLbXDEW5tMQQiyiYPn0SZZJrGnzbPtKIUNDZ3Kl5aq
         qz1w==
X-Gm-Message-State: AOJu0Ywx/ouIZGi1Vo1+A2rIUk7UvjSFWxaiuf9sJdh0ljlO4sbXIZle
	Dwart5pFG2ZGAZQx9vlGIwzju9DqCHIwoh3bkCF1oQ==
X-Google-Smtp-Source: AGHT+IFslm5joD73LuQoSjbQqCUx4iGwLOxCzx+VNDDNcCQnEPfryushYY+yAyf121JWj/Oy8TILo+meOj9QMBNEoX8=
X-Received: by 2002:a17:906:d9d1:b0:9dd:f00d:c4e5 with SMTP id
 qk17-20020a170906d9d100b009ddf00dc4e5mr3294260ejb.53.1699829819729; Sun, 12
 Nov 2023 14:56:59 -0800 (PST)
MIME-Version: 1.0
References: <0101018bc0be9b5c-aecf258f-6a4e-48bc-8bd6-019d6b46e46f-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018bc0be9b5c-aecf258f-6a4e-48bc-8bd6-019d6b46e46f-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sun, 12 Nov 2023 12:56:48 -1000
Message-ID: <CAOSpxdayz3JOQ0y7+XFjeqFO_fA+=6WQpB97Z_xtOSDA71MrsA@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.2.4.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 12 Nov 2023 22:57:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61662

Due to a buildperf issue on alma8 I'll be building an rc2, so please
ignore this notice.

Steve

On Sat, Nov 11, 2023 at 1:36=E2=80=AFPM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-4.2.4.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://autobuilder.yocto.io/pub/releases/yocto-4.2.4.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83=
/builds/6178
>
>     Build hash information:
>
>     bitbake: c7e094ec3beccef0bbbf67c100147c449d9c6836
> meta-agl: 66c5dcefe81d04e4c7ef4c0f1a205faa9cfbbae9
> meta-arm: 9bcc166bd5bb717aa86bb0464621a36abc51fa19
> meta-aws: 671fe1ee75037d5b3b5e5b1cf46467148a0d62dd
> meta-intel: 0ed9b8ed178782bbbb74b80dbf713f50aa253dcd
> meta-mingw: d87d4f00b9c6068fff03929a4b0f231a942d3873
> meta-openembedded: 39968837196cb48209b71e8852dd04a2f8ccdca8
> meta-virtualization: b8db7002764712f2902fe9dea098c171b1128076
> oecore: ae69823d9439ba1995ef48676a2d2236a50fe665
> poky: b8bb4e6cb0b531507ec26d569f1f6c3e7a5aeaf0
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
> View/Reply Online (#342): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/342
> Mute This Topic: https://lists.yoctoproject.org/mt/102535084/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

