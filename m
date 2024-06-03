Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3536C25B74
	for <webhook@archiver.kernel.org>; Mon,  3 Jun 2024 02:10:23 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web11.73804.1717380613777318119
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jun 2024 19:10:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=LzCTFIM9;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.171, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-df771b6cf71so3731970276.2
        for <yocto@lists.yoctoproject.org>; Sun, 02 Jun 2024 19:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1717380613; x=1717985413; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J4xC6GQ1zoyq+URb54U/kx9noHeQQA9tfFcMp6EdEcE=;
        b=LzCTFIM92S1wsRE4ZEShT/Pv24mhp2A2m3cZwT6jqOYFT4oV6OF9vloQEym2EYzL2s
         wY9hidwF3QeFs3cBzSAg5aFRO48nCbFv1j9zvauuRu1QDWVM+rgEQ+h1CqVizX62Y9Un
         K0HJqi2x9wPGgX2rj1ER9WzTExLOtaepCUtEBGYWXglKaR8NQ5TIiSrxcKk8w2LMvCtK
         xD3J/EiWUtFR1d7mhCPXkc9tv/0As8LIth39QERW9b+4iM7ah/xXkZdFWVzyDa5R3XAb
         stsLxUH021YMQAxOLMMXhkPs34orOzfpwP805ZNu0c1syDxRiNU+4pW+R0wy8xprw3sY
         LMHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717380613; x=1717985413;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J4xC6GQ1zoyq+URb54U/kx9noHeQQA9tfFcMp6EdEcE=;
        b=mmgvQSZh6pw2pyLYTyGTgnI9BYMc9+onL4LfMJB3VT1Bl9HII5AdKpueUzPOeguz/w
         7I4FRPKSwalpgsZGemdFSGW46zyjgeOoa16U2rG9eajQS9MRuFLW+JK3xGna9vvfFkji
         lHWhKR9uhktPoLKM3lYPpiQ26PY+YJVJdsOnAvD38dCDLJByLjAat5gp7tezjlcv/Anr
         U/a+h68qNKwlFmIqTswwk+nOwNGcpMWOzOw33bBJ4Uh8FuQfNOOne69I6ZqICEd29J70
         ZLPyv6Tew1dYBzBdbjzNMsagNq0z/kIZMOFZo0UIYfflHMBEuj4i2rtRbDIu85lec+GY
         KKJQ==
X-Gm-Message-State: AOJu0YygJjCwTxc0lQfThpiFp5RjPc2SLxOV2mytzfMfsSnsY/eYMFyW
	DZ+OYcm0MyWNrVQwwchLBlB+xxGNdUu4O3oldrj7UYeH2d/KeJQlujm+kIn4qQ3EIsGByeJ5Vxb
	vvMIuT3gmCfBfKIOTfxA38UgAXErqtdhgpYTsLNpeCmESujUscqo=
X-Google-Smtp-Source: AGHT+IEMTTAB3WtU7VwSAQgNF51rNFONCv7rrJxz9LEDn1+r5Nk0jWP+NvCtTq76777VTExJ0+HHsrEqCOIwJEpzVE4=
X-Received: by 2002:a25:8688:0:b0:df7:93d4:61ff with SMTP id
 3f1490d57ef6-dfa73daf719mr7696588276.42.1717380612627; Sun, 02 Jun 2024
 19:10:12 -0700 (PDT)
MIME-Version: 1.0
References: <0101018fdb752dcc-d3076ef9-329f-4d77-b545-d13c54e3282c-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018fdb752dcc-d3076ef9-329f-4d77-b545-d13c54e3282c-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sun, 2 Jun 2024 19:10:01 -0700
Message-ID: <CAOSpxdb8x84o3ozq73vqB2FPTzRKeVm20dicKQo0efcybkexNA@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.0.19.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jun 2024 02:10:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63256

This was an "all green" build, so good to proceed with QA.

Steve

On Sun, Jun 2, 2024 at 5:17=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-4.0.19.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-4.0.19.rc1
>
>
> Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/bui=
lds/7000
>
> Build hash information:
>
> bitbake: 5a90927f31c4f9fccbe5d9d07d08e6e69485baa8
> meta-agl: cf2cc9392b12466fb3bd72eb9171577c4b2d24e3
> meta-arm: 260e3adc2bf322f52d81c0642c825088a88bb051
> meta-aws: edb80a35af5e68a5ed6db31a61d9ad7a2350c39b
> meta-clang: ce7d354da7a498f90ba260c006d29a4d23e3b4f7
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: bb7c7b0f448ab6541ab42a316dfeff1f7726252f
> meta-mingw: f6b38ce3c90e1600d41c2ebb41e152936a0357d7
> meta-openembedded: 0560b848996a0feb410a8cd8ca07c60fe2f3b5bc
> meta-virtualization: 8b356b91ed0d4bcab72350a2ddcef880f4fa5c26
> oecore: ab2649ef6c83f0ae7cac554a72e6bea4dcda0e99
> poky: e139e9d0ce343ba77a09601a976c92acd562c9df
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
> View/Reply Online (#435): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/435
> Mute This Topic: https://lists.yoctoproject.org/mt/106453670/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

