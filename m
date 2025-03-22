Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDC52C35FFC
	for <webhook@archiver.kernel.org>; Sat, 22 Mar 2025 20:18:30 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web10.3701.1742674709925953409
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Mar 2025 13:18:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=jKmv81PR;
 spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: sakoman@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5dccaaca646so5790652a12.0;
        Sat, 22 Mar 2025 13:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1742674708; x=1743279508; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RD7KY+l5zUePjyTsyXfCAe0d9CgAOucEOk2/zKygle8=;
        b=jKmv81PRMeMNGOWtTjwNfd+ePG9k0wOjhCQVMAVe1UF9mL9DHfuMc1cweAeFvQvWrS
         85Rr95M40o/Erv/a7l92iZ/SaL88VN668ae0YSg9Z+BuTkbf8ukLNPdKOHikwaSgozeu
         9VWnzvxIXa1khhZd38+LyHvIK7xhAJH2vrrILJKL0pAVWUWFZFuZWqNOUs7bvTyOji9g
         0b2lzc/1LSY+h43BzoZqmmmiInwu6s228QhZ8MNVXsqnw+ek5JUewLugqFkc3ioKcxcF
         fv3vDfdYrAJHWYJqGbi+easnSXvIBZZsTqm2p6VxbZikryiGQ3v7Ju6nJVfEs5n1QCMW
         Pl7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742674708; x=1743279508;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RD7KY+l5zUePjyTsyXfCAe0d9CgAOucEOk2/zKygle8=;
        b=WKl1yyVFudeS15Qb9Z2pcI0wsueyMBOYSKoyttj4cq6QX/JeF7RHJL/5HMmr/huRvH
         HJFvqC9EzWUvUFTLpSuh0nQZQMGgf28Ra6diKIh8jm6u9M1qsQwQwCWbcdJ4mfUZE1WH
         fx3VmmCvitRsh7PTyEUNZqblKaaXPLYqJAye4vMQSCJiqzc0SdujmiaujZwy84TNJ6+g
         VKgtpyOXVUOkKg/2PLKXSkzbr9MVBZZrmu61H9abjml7H+qjZKDPBGrQ4oHoh2CevfbD
         Dl8sZgk8VXQ4FMUSPzmgwIEmc+zyKsPE+qqX12a1t4TcrTSbaq34HSM6dCF7NvLYrruN
         eRXg==
X-Gm-Message-State: AOJu0Yzf178IF8dcEEBZ8D1FuSjCzycoaIlYcs5XOe7OvevIFNzRPqnh
	3ACs639cy+UctddhnwnHpdnx2XzAVtkLAVjmHrc/J5Z+n8YbbSySuCxxqWxJKRQFktwt9ny5kp+
	qgH39eUn2HYAn0NszraVTaE5Bt0WKyg==
X-Gm-Gg: ASbGncs7FRX9phMmxW3EaltSNgqIuRXNG98PP3u6nTSn+D7DwPJN0dMn3m4Spo8kduI
	DF1+dVpeAvPz8+zannz8CEKrVFJNP1a1InN3vRiseC3kSwcBF3UT8zUzh6XL7s1oDkwXPBIoIzV
	BFLPb94m10WYtUxiAhDMjk7sjx3yZ8G0uTlyc5QxXjlkwf9szOaI+4bKMx5A==
X-Google-Smtp-Source: AGHT+IHxLAlaylb/rhwnHh8XPPdyR7gqGlfJPL4DFuUh8wb8LnRKl3LPGcLHdUXIRdnpnwRKuKK12NMS4wx3UrSItFk=
X-Received: by 2002:a05:6402:2793:b0:5e5:3c1b:c0ff with SMTP id
 4fb4d7f45d1cf-5ebcce07a08mr8478107a12.13.1742674707343; Sat, 22 Mar 2025
 13:18:27 -0700 (PDT)
MIME-Version: 1.0
References: <01010195bf101499-b217168c-175a-4107-a1d6-31b7a4428ba2-000000@us-west-2.amazonses.com>
In-Reply-To: <01010195bf101499-b217168c-175a-4107-a1d6-31b7a4428ba2-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 22 Mar 2025 13:18:15 -0700
X-Gm-Features: AQ5f1Jp8IoIr4M2EJwMwA2Slcf3N48AJGmTm8PE-qrUtq39Paz1T2a7gRyVpoGM
Message-ID: <CAGDS+nn25nLm4drT86EX0YMzZ0FnVosUXvjhyBcNDcS_s578Eg@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.1.4.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Mar 2025 20:18:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65009

This was an "all green" build, so OK to proceed with QA.

Steve

On Sat, Mar 22, 2025 at 11:14=E2=80=AFAM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.1.4.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.1.4.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/1244
>
>     Build hash information:
>
>     bitbake: 82b9f42126983579da03bdbb4e3ebf07346118a7
> meta-agl: 005d2b0a27ebdd21fb2aaa589c8672650474b055
> meta-arm: e56a0cd6fe5e796aa59bd0d4bcbbb585ea626199
> meta-aws: f9dd433234fc42f1b4cd6d5f3dd2ac2e06ac9c02
> meta-clang: c709a5196f1e8654425b43b478064395386c36d4
> meta-intel: 0ee9e8454cd41dcb0f49df7dcf2182b4d5e7cc96
> meta-mingw: 77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
> meta-openembedded: c93994f1bb601c57548b588d4f77a044d90822cf
> meta-virtualization: 247ea9c3880a257003ce2cc566fcdbb307ea4374
> oecore: 2d94f4b8a852dc761f89e5106347e239382df5fb
> poky: 70dc28ac287bf35541270cae1d99130a0f6b7b5f
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
> View/Reply Online (#529): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/529
> Mute This Topic: https://lists.yoctoproject.org/mt/111849126/3617601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627246/3617601/811314736/xyzzy [sakoman@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

