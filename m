Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F5F6CCFA02
	for <webhook@archiver.kernel.org>; Fri, 31 Oct 2025 17:34:10 +0000 (UTC)
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
 by mx.groups.io with SMTP id smtpd.web10.1254.1761932040153040689
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Oct 2025 10:34:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=lOEA6mh1;
 spf=softfail (domain: sakoman.com, ip: 74.125.224.50, mailfrom: steve@sakoman.com)
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-63e336b1ac4so4231946d50.1
        for <yocto@lists.yoctoproject.org>; Fri, 31 Oct 2025 10:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1761932039; x=1762536839; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rKx4IwZJ7ICA4Tpdp2a3q/n3SwoAgwK1/kbWdnUCuIY=;
        b=lOEA6mh105W2FB6KeG5upplLfvi6jrcgLEJ2pz4abHW8ldSOcXUGYOrYAQWLnKdn/7
         iruwn5pSAE7KulH9txfBCQxFFGPyTN75IzviqQOcTl9YP4zuZlzeP6gBDv30UFDhH1EK
         OpLi2L6Ng3Xdg8+A43hBu7hYnDTo/enIe4Syt4/DUOllTTIenOLDUeNwEbIimOeY3taB
         0rC3G42UmwI+XcLt+YP9NV7s968ZXii4hra8GNoP5cx972K7g0PZWIT2jb8DT5tQd346
         fuY9agp2abjgzt/thqmzh5dLP4XrSSc0JWnGTgONZO9k5jV8YPMnpDt1yswGLvA3yoQd
         2cFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761932039; x=1762536839;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rKx4IwZJ7ICA4Tpdp2a3q/n3SwoAgwK1/kbWdnUCuIY=;
        b=dbb51ox1GVsPnXMMAC5dJzIEam1MeKmHglrA5fytTYIQIFU2SjgxaeZvozXlfC3pVM
         XoI4OAozV2xChQ+Vnd7iMjjY+m+KHLILDfOgzBeoVPKfboPZjc68A90cK+LXy0C5fTUG
         Cq1QyfYMoTSgfbT8pbUqlNVLef0mU082my7u+fyzUI7EK1Di/8THCi5TahPQYUB244sM
         mUjImQWseh4KkoQEd114uQfSTG4MIjgwttDLmfZh8aQhXUEAVGVbqoBgF9YpcdauCI0Y
         c4/uCbkZa6uKoAIOs0mkwpkTR+Kp6imnybyeBSZHXKvA1GTttFXFKcZJWZzdpd6WzyRr
         qv1w==
X-Gm-Message-State: AOJu0YzT7x2oo9OSpLkVwExTY6IHwrRj/D8M7sAWvf8Ht4u+tXnVXtQ4
	NHuZ0vev/qapGcBfzYBLgeOBzjI388s8zUGdTeW3BzMiDE0J26U4E5M7e0vSP2dXBFSnZnI6KbM
	2IPJLKmreUxNwQxwMXhcf9+c7pwUCC4aTyk7ftXaqnA7MOtPJJ7ia7+E=
X-Gm-Gg: ASbGnctDbUMfLn1IaywsCwu0j+XYRiMIRszpTKoKwWe+myOG9F8nQBIlipDqu255AGV
	cdshj1PvVPaiwwwsv+GKc8++KdLtdezXeVKMVx91xSObZ6o9fC25YMY9Gm43aRb9Q8T6c217dJ5
	3cCsDxT0FPN9aEW+GYbL4HpaVQPsVRSRyUT0O36d8NSeqQGOb4NzpKsd2Ujeu2o9MPaY9XipVtF
	FbtlN4axhS3J6CCZkhiHoC6LtGj+NO4xWWNt2Oe43EgWujDejS/MiTuE1BFODu6HPYLISUXCI61
	aBi0fv7aKu8QWPTiacs5LjfKHfI=
X-Google-Smtp-Source: AGHT+IEBYLi5aZTYw8s5rGgj8hVCgOZ1IZ57zEpesiv3JbFm7Z9dhXjefBi9iNR6JZrZGHOPWCbr98iI7+J8Kd1VXvg=
X-Received: by 2002:a05:690e:251c:20b0:63e:2246:96bd with SMTP id
 956f58d0204a3-63f828dc3cemr6267211d50.11.1761932039065; Fri, 31 Oct 2025
 10:33:59 -0700 (PDT)
MIME-Version: 1.0
References: <0101019a3b325e7c-4b25475b-ccce-4d55-8949-2fb05e38aa95-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019a3b325e7c-4b25475b-ccce-4d55-8949-2fb05e38aa95-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 31 Oct 2025 10:33:48 -0700
X-Gm-Features: AWmQ_bkneA7OZjYl6ChHbJKEpi1EYLjL5SplzdwGYiWFfLRtUK6P_x9cG9-mv5w
Message-ID: <CAOSpxdazjqzvaG2G9CO+TEvr-BcArup5Qh2s-QWNSLX=GMu0vw@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-4.0.31.rc1)
To: yocto@lists.yoctoproject.org, pokybuild@yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Oct 2025 17:34:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65987

This was an "all green" build, so OK to proceed with QA

Steve

On Fri, Oct 31, 2025 at 9:55=E2=80=AFAM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-4.0.31.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://valkyrie.yocto.io/pub/releases/yocto-4.0.31.rc1
>
>
> Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/bu=
ilds/2666
>
> Build hash information:
>
> bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
> meta-agl: bfd5d0fc6a155ffa4a84d6015f04ece38d709c37
> meta-arm: 10c27f061b22af78e17a23cf540b69501afc7160
> meta-aws: bbdc6d98250ff6f2338a55f5457329d57b851732
> meta-clang: 26de1c560ef3caf3cf641cd54ed0b7cbdc219ed9
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
> meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
> meta-openembedded: 96fbc156364fd78530d2bfbe1b8a77789f52997d
> meta-virtualization: 16155ae737d96f0f53721ad7270c3fe19729d496
> meta-yocto: 3b2df00345b46479237fe0218675a818249f891c
> oecore: 99204008786f659ab03538cd2ae2fd23ed4164c5
> poky: 04b39e5b7eb19498215d85c88a5fffb460fea1eb
> yocto-docs: 073f3bca4c374b03398317e7f445d2440a287741
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
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65986): https://lists.yoctoproject.org/g/yocto/messag=
e/65986
> Mute This Topic: https://lists.yoctoproject.org/mt/116051745/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

