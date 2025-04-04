Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2A3DC36010
	for <webhook@archiver.kernel.org>; Fri,  4 Apr 2025 19:13:05 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
 by mx.groups.io with SMTP id smtpd.web10.5362.1743793982655923946
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Apr 2025 12:13:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=xDwbjMjP;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.169, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e5dc299dee9so2373578276.3
        for <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 12:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1743793982; x=1744398782; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y2saQgdBC1xxnJpnm/5NOGkUhS9ZrDFLmlOy+8brHH8=;
        b=xDwbjMjP/daZmAwwEhsYdwml+tnj0Hgnj6JRiWAbYPHU0LBE9A1M8vOJEeMLKEAQuy
         6dc1oFCwLpUpZa2MkBXRplBNvxQlmsq2+mjl/vMlG2P/CHR+vo+mZp4yrkfNUu7ew6eZ
         qxoloe3OjNPhK9APtTlEkRoaleP02kRlSo11jtBsrRjgTIfNM2CCittjoY2bht8n4Ffp
         VEZXu5VPtvrQ/cmHWeQJ1aQY7PoI4fw7F26lpeF16271ajyho4XTGHmzHblaHXiGSo5n
         mr5w6GW+NjRa0ACjQuet+mqfSw/1w/ZNBJ0AQFXy+v8CGOT08LXR44X65utosT11JR1L
         jR8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743793982; x=1744398782;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y2saQgdBC1xxnJpnm/5NOGkUhS9ZrDFLmlOy+8brHH8=;
        b=uP3EGeve2hiMnuTzrERqlMFuUOClGBZUekbKzTvMbUkTUOdSAhEnyp1bIdH+Dds6tS
         SbiqwBJ6qqLG/rLICcDfa48/RytBmZtMAbJ44JUQgkQdedmGgKraeYfvgwxtvtw2M4mN
         slnUCJiQUmrrk5jZTGd4cE5I+lnyYc2NyIQ3dfXQCAP5f6WHxqqYy+DraMCJGYyLYkHV
         kWCFy0yEX8Fr/h465ul4FOkmW1sc6jQlq1rdn++CxlkgcSm3MrCH6ZUpUvzlAMGr7gGl
         T05hM9oy1GpeVIhhv7uFXPS96CWwbJsQ3hT2wtz/k+yiWK0hvQIKzZNRrT/mWrvqbefi
         Q9xg==
X-Gm-Message-State: AOJu0Yxt0UU+4sfZ9PO5PVSA5Plg0EwxnB5L5EEnzXy+t63d+FYO48ax
	A/r1+ZVlZVESgRWuf0nL+i3cuEDBkolO6T9YNW/1fKCn2NtEBUTxPTAer8snUdX1G2MWEzo2hA3
	mKKMytXUOMc5HNzPTpTBNbDkxZSmgFRFMy/0vh/ZZriK7R9TB
X-Gm-Gg: ASbGncs3bgtGQho33rxamb+0j2Vvd+hn9KKbxkXvvEvheuRLoMHplucTWGatsNXCK4r
	fevrk19TljI2PEKMrAh6Klc/dlsdTLxAKRZRFekTEnETKTfxsjfv3DZd5AAaQJjmgzEaEz0+4Z6
	Dy9bDDPNQMS1EribaAwXVHoaDkKKxHVLBRSc50UKl+4STylWmoN0PuEXts2Q==
X-Google-Smtp-Source: AGHT+IG3jlwFvusxzyYtgkmuutSPJDxC2SxuIhJstsiud7ZR//jLrULnztQwzyElqk63FjOlHq7TgKrRi4z+gnFykqQ=
X-Received: by 2002:a05:6902:168e:b0:e64:54c:2260 with SMTP id
 3f1490d57ef6-e6e318b557bmr718861276.35.1743793981713; Fri, 04 Apr 2025
 12:13:01 -0700 (PDT)
MIME-Version: 1.0
References: <0101019602345387-94562609-3f1a-436a-8818-f68b1f3cfc1f-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019602345387-94562609-3f1a-436a-8818-f68b1f3cfc1f-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 4 Apr 2025 12:12:50 -0700
X-Gm-Features: ATxdqUFjrrfu7io4vC2eoQ-tYoNA5ItmRRdZ1ieR9bBRMgG4Pkz2gENvWUEl_AM
Message-ID: <CAOSpxdb7oNKgaTYY=JLP=rOekKb5sy+wV22-RfCZGFsv7hESgA@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.0.26.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 19:13:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65107

This was an "all green" build, so OK to proceed with QA.

Steve

On Fri, Apr 4, 2025 at 12:08=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-4.0.26.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://valkyrie.yocto.io/pub/releases/yocto-4.0.26.rc1
>
>
> Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/bu=
ilds/1341
>
> Build hash information:
>
> bitbake: 046871d9fd76efdca7b72718b328d8f545523f7e
> meta-agl: 296d62ad1e6c45c04739645401056bf172e736cb
> meta-arm: 936c02ec13661bd86a05f7f90e1b920d5092d670
> meta-aws: 4dcae212fd121b16c525f57ac7c7ee32df3650e1
> meta-clang: 0356fab9b788e6071471f82743964aec1775cd71
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: dc0948200594dacece4da91f4c501e9a9fb0394f
> meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
> meta-openembedded: f8dddbfcbfe502cb71375a7a907e61a92e8d4474
> meta-virtualization: 426530794bfc0df686566beed50e245f40565d6c
> oecore: 1efbe1004bc82e7c14c1e8bd4ce644f5015c3346
> poky: d70d287a77d5026b698ac237ab865b2dafd36bb8
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
> View/Reply Online (#537): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/537
> Mute This Topic: https://lists.yoctoproject.org/mt/112090603/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

