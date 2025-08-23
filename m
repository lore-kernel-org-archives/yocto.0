Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAE5CA0EE4
	for <webhook@archiver.kernel.org>; Sat, 23 Aug 2025 13:32:30 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web11.6577.1755955947881806814
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Aug 2025 06:32:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=n5Lzt+r0;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.170, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-71d60157747so24956177b3.0
        for <yocto@lists.yoctoproject.org>; Sat, 23 Aug 2025 06:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1755955947; x=1756560747; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VZ7l/na+5/QTVQI8T4QZdVMpk71yyp8/Esc+h1GTHYk=;
        b=n5Lzt+r0RU4mLXowQ3FqmFb9twxMcsdBGVPAbFPvCHT3pBIPcilQasA46zqoYFw5R9
         P5N3YQNYRlHOyeP8LS7KD2wSXRTyqjk64FzID/bVZ88aiDKl36ChVY7ALJStC6Gsjcmk
         /I5bweER7UlGHZB3QIEToxQSL/4wZ9SvsYs3xm6ww68izBgPxekGMYoFqCXvfUwE9BAg
         b5emRFIjT58LZHx/OXRScYkO5gcZTHBAPvLC7OgsKZHA5Yfs0bfQ8jbZQM5OvJQ4L4gh
         RwmpLVLeUo6FW2cqj1cX1BKpZVmvfr+azt3SZAfrBHDlXZTLBWV8DxlWqKkVTTRtYiTg
         gZRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755955947; x=1756560747;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VZ7l/na+5/QTVQI8T4QZdVMpk71yyp8/Esc+h1GTHYk=;
        b=Y/TvsULG3z8BclQq/wnss4Wo9xueKNP9fETbLOUagueKUXeL/yfa/giXo/mApjkqbW
         8BONntSJLIaeUsqXga7LUPCKerZBxuZYrJ62htMNQk5+9ji1t0d8d7mmrO2CHdub75kg
         PQNyyW3SQNT8xsSwa2zCeGs5O+p8c+iqrPZzuoF/hYUjJsycOB85K0uVcVPOPYmtRJMq
         3BIDnZzTcMqsq1y3eeb8CRiueZcAgaaNPUC+M0VoXhpoLe+FoKauTo+3e2PjUq6uPSUT
         LdnTJ7hOnZYgDGVpBTd9WTw+Z2B5t1df2uuSNMJAoUWSdELxxjD/lTYP89WGR9KYYEcR
         W5eA==
X-Gm-Message-State: AOJu0YyFWq4U8u2RwXrn2gWuOHj0z9ecYEAST9dIwuhSiWOAPwztdo0n
	ph5T3RXGIs4jNoJx0UczxcVC840BdGUfJzrk/uMI7FIMSA0jGp27fGFBcKpKNV8f8Lp/Jpma6Jb
	Kyrz4ETH9jqm5T6wKxBHuftd5F3vuibFaKTQ4N0++5/j9L5JK9Wzh
X-Gm-Gg: ASbGncvMdk9qjlxvkdjYED3yBI77XaNieOE0NjrpgepDfldPWFOk8oxrE3OpaWyxyAE
	AOb/ewTaWlDTMPAnsQOVtyWvKU3TlW7XsrPJMN1qaajqNNc8UdC3rf007SZ/0JPNHhjj2eNAZ2x
	hN2wxnvZRWDCXthh+/dFiAhh9P+l/vRKZ1sn6q3u+YA84XA9+MnGOq4xgNn9l7Xc4RKttVMgfCZ
	xlLcI52z4M6YCc+k+YxNQGRUinnxLtIW+llzRE=
X-Google-Smtp-Source: AGHT+IG5YdJY7k5qUF3kQNH6UOxJnfdv5pVzy5sS8tePXVO01xaLca2M1KakU3Ym/TQSVy2XBrmHdqxBxTPiYNu7UDE=
X-Received: by 2002:a05:690c:6f92:b0:71d:5fb3:8356 with SMTP id
 00721157ae682-71fdc2df2famr69433397b3.16.1755955946615; Sat, 23 Aug 2025
 06:32:26 -0700 (PDT)
MIME-Version: 1.0
References: <01010198d2b032d4-b6a1e13b-b204-4fee-bded-d398501a60f5-000000@us-west-2.amazonses.com>
In-Reply-To: <01010198d2b032d4-b6a1e13b-b204-4fee-bded-d398501a60f5-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 23 Aug 2025 06:32:15 -0700
X-Gm-Features: Ac12FXzs1-jLhdNdscW0k24rtv2icWJQ0gFoBKQrdKQr3Fi-Xj8o7rV-Iw46wvE
Message-ID: <CAOSpxdbRx_UTKUBEDKveGhfH9Wv=g84-Zsa0PBP_NAmWdFfaHQ@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.12.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 23 Aug 2025 13:32:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65784

This was an "all green" build, so OK to proceed with QA

Steve

On Fri, Aug 22, 2025 at 9:50=E2=80=AFAM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.0.12.rc1) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.12.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/2255
>
>     Build hash information:
>
>     bitbake: 982645110a19ebb94d519926a4e14c8a2a205cfd
> meta-agl: 435a9b13b8486cf7d51a86cebaa72ee382202a50
> meta-arm: 8e0f8af90fefb03f08cd2228cde7a89902a6b37c
> meta-aws: ee15a57cea8899e436c2c70ab8d2f18d07ad00b2
> meta-clang: f915bbfc71f7b58c38607b8407718bd8b5cefa44
> meta-intel: b065676a83371b34559f2077d9b2f6a6ac5652f7
> meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> meta-openembedded: c29a18fa39ede952f3f6108ec007c1906e2d9a0d
> meta-virtualization: 02f72c96bf9acd0bd3ae0463f482bce8feabe749
> oecore: 93c7489d843a0e46fe4fc685b356d0ae885300d7
> poky: ec220ae083dba35c279192b2249ad03fe238446e
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
> View/Reply Online (#589): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/589
> Mute This Topic: https://lists.yoctoproject.org/mt/114838825/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

