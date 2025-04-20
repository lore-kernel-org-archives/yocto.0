Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18F38C369CF
	for <webhook@archiver.kernel.org>; Sun, 20 Apr 2025 02:42:08 +0000 (UTC)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
 by mx.groups.io with SMTP id smtpd.web11.2161.1745116926624573206
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Apr 2025 19:42:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=xICuROuq;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.173, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e6dee579f38so2365366276.0
        for <yocto@lists.yoctoproject.org>; Sat, 19 Apr 2025 19:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1745116926; x=1745721726; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cd89wktufGmvgEoo5qvzepatSG5uoClcrhBaZKmNRYE=;
        b=xICuROuqLQpqe69zx4m0g/PyQ6+FooFTMcE+QZgi+51GC7jgljJimP4mFLNXSLEBol
         Wvp3Rr55KGDPkGGLN5tyMgMfzGudcLrN2LcRRwp2UYwhHNpEkLkah57a/yUwufMDnuch
         KSxiNaCPy/hNFGSUUy4oML1bkmb6EBXA6z8sAdaZLsgEDIePirqTLd7TRp4EznzanTSz
         YCvkVlAFgXpgXmFfZteMqTOUv16fMOtgapVSbPmJKCxHTfawIPxY8BJ3OoUZ2Sq8K1S8
         Ri/wrE/9Obl2zH7n9HS6zITLe6JYYJkFe0YIfrNEQUXKvIafTPz8zh/6P/5//7dJQ4oA
         x72A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745116926; x=1745721726;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cd89wktufGmvgEoo5qvzepatSG5uoClcrhBaZKmNRYE=;
        b=ZPEi26c4YoQpjVYF6UDo/boCRJASwN1BZEraGQcpJUJEeWO5YEHKRoOhdYyT2FdFiU
         16dw9FYqe6ou6aCEosfEwRK0P2Jj/+94PV+ppm0IHotoy08m/J3Efx1M6J9le/Epnnmc
         u9ASsmIApI1kydPLiQJScaVEtgXLqWTXfXJw6HjBZow46f1aq/AqLNddFUk885YvJtdv
         vuh9koalIs8p4/ia62tIsOTRN9SZDutCAajtQ1Y8whrhRNkV4tEIuFZ6YsnODTJ2xR/7
         CNoFDs1NMRgCc5MTUVXqFfdB//b+1f1MQf9+GsuToPOnhwzwSwAgsIP4fi2awDl3ipZx
         bmew==
X-Gm-Message-State: AOJu0Yw6cjMr5HymVyfUO5h+/DKYWs7X+W5j2QTEKU/NtfkMb0wMg04H
	XOatoz3e6ZHMlajZAd0vhbiziTZZ7ShsQVfYPQOEpg+q/If0yZp+1ZpgNX9djAy5cp8RsQmKTyM
	0S8G4iNYgs5Mya3yj0s6uCOBlGPDnFJBrsDKjkQ==
X-Gm-Gg: ASbGncv9Ajw10AUyYrgrZJzytD/DHrirZx/P62lAYY9l/aNoO0I3YMHhxkdCRzF0R6T
	8S+2AsvRYUETt/2d6er4PJ9DfwLUBXuto8I/BAqaBaFTeL3HlSy44EFM+JuOYswrwiCLr7Nqaqv
	OLkOeOlXshz09OFSVA2l8vjPtHTx4MvnSmeRpFkKxct2a4mo3wMavjsA==
X-Google-Smtp-Source: AGHT+IFKwnIr9gcgETfqzcWWGHpScay1hftEoODN9xSZlLSxfjPeGZXlWRzCOh1zPEr5iTbX1doUDR9DbyX0v7mN74o=
X-Received: by 2002:a05:6902:490f:b0:e6d:e2b5:eb29 with SMTP id
 3f1490d57ef6-e7297ea135emr10920539276.30.1745116925656; Sat, 19 Apr 2025
 19:42:05 -0700 (PDT)
MIME-Version: 1.0
References: <010101965100f948-c358e3d8-c280-4c1c-96eb-083f635841c9-000000@us-west-2.amazonses.com>
In-Reply-To: <010101965100f948-c358e3d8-c280-4c1c-96eb-083f635841c9-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 19 Apr 2025 19:41:54 -0700
X-Gm-Features: ATxdqUHImdW2E4uUQA89GGkNSL_kpPrtUusYujwJz3SfgKbTL4MFY0wlF0SIj48
Message-ID: <CAOSpxdasJnL0XiPpo1sDbuvoVXjv=o0UDHY9HbAU=KD_GvYKMg@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.9.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 20 Apr 2025 02:42:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65204

This was an "all green" build, so OK to proceed with QA.

Steve

On Sat, Apr 19, 2025 at 7:22=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.0.9.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.9.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/1423
>
>     Build hash information:
>
>     bitbake: 696c2c1ef095f8b11c7d2eff36fae50f58c62e5e
> meta-agl: 70d6b766edd16428e5a3e61c82b4bbb2dfea2de2
> meta-arm: f3640941c600d03ea53ce5b9254f0fead18f8bc0
> meta-aws: 66780aa4542c6603420b2a0c2edf9e15e8b99c40
> meta-clang: eaa08939eaec9f620b14742ff3ac568553683034
> meta-intel: 1a7ccdcaedc965f019a9263364437356b8a2ba29
> meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> meta-openembedded: 67ad83dd7c2485dae0c90eac345007af6195b84d
> meta-virtualization: 9287a355b338361e42027ce371444111a791d64f
> oecore: 04038ecd1edd6592b826665a2b787387bb7074fa
> poky: bab0f9f62af9af580744948dd3240f648a99879a
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
> View/Reply Online (#542): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/542
> Mute This Topic: https://lists.yoctoproject.org/mt/112356251/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

