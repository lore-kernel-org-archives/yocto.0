Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 637DCCA0EE4
	for <webhook@archiver.kernel.org>; Sat, 16 Aug 2025 13:57:33 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
 by mx.groups.io with SMTP id smtpd.web10.34849.1755352650510436396
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Aug 2025 06:57:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=04lvXNjD;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.171, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-71d6051afbfso25012017b3.2
        for <yocto@lists.yoctoproject.org>; Sat, 16 Aug 2025 06:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1755352649; x=1755957449; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0TQgU2n6pZA6fnQXHfuAlNips6l7zSECjG6gc2pYTZw=;
        b=04lvXNjDEOULZdoE+BiHNRU1mK6JduSdXxTK7imEJaiFPZLco2nD6bfLIYALIFFCrL
         JjEvuMbAlnvr0lAbwO3pZMH3QlbJQ+EgFRe84ze3Qfu39LjYFneEYs357y5fs66JZ43L
         MU7t8vJ3Hn5xZGWR1t5Q//9aDkCAWM0p9mN2xpUrYxF1i5pPVX/ewTO6nYso4sQgYEAt
         cDGkCL0bYg9MobjOiQedRuKjp8YucH11OkMC3N3kh/I8nf40kIdgMQ0Wcdem3ew+Phyi
         qTW495b2fUlgKe03S7EVBXvCdFWhUJ1ohMK0AEie7WSvbXWN1jijQNmbvCovPbZ3eyk/
         g1+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755352649; x=1755957449;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0TQgU2n6pZA6fnQXHfuAlNips6l7zSECjG6gc2pYTZw=;
        b=wuMF3Iz3lzZh7iu4emEozuBdVIVuk9oimW61+nNY/5F+TIHOt2UkOSpGC8pe5X2EIl
         /p2UoW3/Br/+p+KigiyoPzitAH1FihjdMvVuha2WZvBncHBWW38a6J3n1MFeJgECWYm5
         SIPHSxSsidLRl1huZirGu1Qy7EO5X+pf+becCOE0m7G+mRVnI5IqgGaMDaCdHeM6utpp
         qdl4EJ0fXM6TDOL18m64TlNk1kvuFQSssn+1q6CTkzWqWzcDL88ipQcGeK5z040njJYX
         SmrZveSVKmlvs9DMmftDNgNZr6lDGV2ABLIu92lyQDY8Yyx3BCb71x905maz/HDJacjX
         m4Lg==
X-Gm-Message-State: AOJu0YxBk387V0osEQMyxrBnGru0kHDeIzIOCA1VGOgaR7ExySrzeEyb
	jcfwgTRaNOYWhholW/jc3jkrBbf17pl9bDM7imujvs0xIwal7QxRVMDRd7NYjnMCUGDbkFh/ruw
	tt9rYVuiNUFI2tDDvOPl2HbZ70GHq6A5IM61OlF02cokIEb1qystk
X-Gm-Gg: ASbGnctm/IHw8tNu+BGLgVddO0/G9rHMSEygjONCBZitipv/TelbSAZals7A6nD69Nc
	OZJnjofw4JxQW5MzRn3fs4XNn18b1FxpuCv/3DsTlYFZ+sSyDiPdwv4x6A1RpKKdDX8PLjZIy7P
	XjN2IDQx7gznz76JB9kz1q9qjtpakXO9ng+MfEESAwyv2vWCijOFPAwLR+BHZ2LMkTw7VZeps5O
	alyjuDTDm/tp/MTO6lyDuk1Xn1yoRDSTCoGrNIoN0WDA1RQrQ==
X-Google-Smtp-Source: AGHT+IGLk3wmRENDDVBk8Rqy6LgnfKnNylSa87SlxGe33k5EQLvy9PH9905Ql6qbcVG2m7EdJxdYvaUxPRbAJ6/crxI=
X-Received: by 2002:a05:690c:4a13:b0:71a:730:12b3 with SMTP id
 00721157ae682-71e774f4cccmr31994817b3.21.1755352649498; Sat, 16 Aug 2025
 06:57:29 -0700 (PDT)
MIME-Version: 1.0
References: <01010198b06b7c42-51779eb9-71a7-412c-b303-16a3ba0a4eb1-000000@us-west-2.amazonses.com>
In-Reply-To: <01010198b06b7c42-51779eb9-71a7-412c-b303-16a3ba0a4eb1-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 16 Aug 2025 06:57:17 -0700
X-Gm-Features: Ac12FXzDsa7CE-2Y5GFGVjkR_v6Tg-P0-wJvhm3pDCCRnbXOihdU3YzDhVDyx7M
Message-ID: <CAOSpxdbMTQ-SsaBzD3Jjg0BcLWTC7TwFSQcddSb=j64XpyubMQ@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.2.3.rc2)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Aug 2025 13:57:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65760

This was an "all green" build, so OK to proceed with QA

Steve

On Fri, Aug 15, 2025 at 6:08=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.2.3.rc2) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.2.3.rc2
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/2213
>
>     Build hash information:
>
>     bitbake: 710f98844ae30416bdf6a01b655df398b49574ec
> meta-agl: 435a9b13b8486cf7d51a86cebaa72ee382202a50
> meta-arm: 2de04c3d31e119d4bedbea24b9c63a8c113a1ce3
> meta-aws: 3cd3b809390120059d89cde45b21615bb8948be2
> meta-clang: 003cba92e982bdd565a6889f28799f8bba14957e
> meta-intel: 5640f6592c984f4832ff5f2ed1a35a607e5d21c5
> meta-mingw: edce693e1b8fabd84651aa6c0888aafbcf238577
> meta-openembedded: dca497d728792e3cb655c78455c2d649af312ce8
> meta-virtualization: 898239e810acbb7db93299f20deec8afe434f11b
> oecore: 347cb0861dde58613541ce692778f907943a60ea
> poky: db04028d9070f05c3b5dee728473fb234bd24f05
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
> View/Reply Online (#586): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/586
> Mute This Topic: https://lists.yoctoproject.org/mt/114728690/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

