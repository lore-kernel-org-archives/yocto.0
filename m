Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E0DC4828D
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 22:47:04 +0000 (UTC)
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
 by mx.groups.io with SMTP id smtpd.web10.9767.1706827620494298138
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 14:47:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DNCotVkI;
 spf=pass (domain: gmail.com, ip: 209.85.161.52, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-595b3644acbso1248922eaf.1
        for <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 14:47:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706827619; x=1707432419; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JH5ES8+p6rSDXU4jpIHX7lWJAqlkxvLo3cioJex1Ty0=;
        b=DNCotVkIzYzEX5fexjVDA403RffiZkn5Up99mdGwAZCIq7dK8RlHDCmqx4lEe24eIS
         n5kN9v0NNIMGWdkZCuuh2DdlPvvyxyUiu4FGjIRBI0LFNBZJ3hyJrM3HD/TMBzTDslId
         95e3C/8YHKmMoOT091gCYqh/elN85V2zVB7eWquL8jI2Gkha1GbNen154ye4wkNckV4F
         ZBRaWzJzfEHMjHbwPp3Abq7a1vik7xBwIAVTWlCztqJ1bBqTAntAqJstWhMtdvAdemsr
         JmzUcYSNRzyLkZxvXnFF8/QSHD2VYwh4DSCmwHGmLLAmO8KFoQHPY1IiY1bJmoaLwLFD
         QwaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706827619; x=1707432419;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JH5ES8+p6rSDXU4jpIHX7lWJAqlkxvLo3cioJex1Ty0=;
        b=ncjQELmSz7vWQiF9iMr7wzRuqKSM7D0AATwCQlgi3PFUm//O/kyU8m72nhbe5VaLaJ
         1EY126xAKeHR0yHnKdOwZh2oKUz+/v3/3xx6Kpl16p0GKV/3LEHQuo/nXvwg9jJtZr4l
         BSE27D1p90zqbp92ovWE9J6O+mPbuv+HFzNaqaXxKyB4PxQ71ISIIAVrB1pmt8K8xx+8
         LAInK/PCoLWdpo3tAPdJr8BvYwneHcyWFJ1D5UZOgWW5qWDqby1CMWJLeBRLrzmRlGZ2
         kQPt5YCjnMPXcju1zNhx/MQTFQsR4sfWqA8yFUL5bYZ/MUGHjweTueF9JxrURRuIlaJm
         FjYw==
X-Gm-Message-State: AOJu0Yye8PrHVQ6NHVg+VM7mDlvgXMpgbU5GrMy0I3woahspT+pXEQBY
	ZGYTa6YH/gF7sCeu947u6nGz99gfVWj8A/Bh090Y+aePF3rDNal7DDG3N36J2LmU547cpReKK2N
	OjPkXSPZpVJWJSoGqX3dnuhnuitLq9C2nl0tMpw==
X-Google-Smtp-Source: AGHT+IH85fO95y0pUJmVr8dKY8DZoasxBDl7kMNjI7JNZhSwXZl49v/VzNIW+7DClPd2kuiEGDXqC5kPniFHR2Mb3Yk=
X-Received: by 2002:a05:6870:968a:b0:218:5413:5495 with SMTP id
 o10-20020a056870968a00b0021854135495mr200660oaq.17.1706827619517; Thu, 01 Feb
 2024 14:46:59 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv35xxBau9cj1e6d-a-ggoQmvg=5Fjw2pxm9MXY6Z4hhZgQ@mail.gmail.com>
In-Reply-To: <CAAfyv35xxBau9cj1e6d-a-ggoQmvg=5Fjw2pxm9MXY6Z4hhZgQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 1 Feb 2024 14:46:33 -0800
Message-ID: <CAMKF1sqDg45WYkrp8QSOpd7oV70oT_CYxpO7thOizykV0SVcsg@mail.gmail.com>
Subject: Re: [yocto] kirkstone bus error golang
To: yocto@lists.yoctoproject.org, marek.belisko@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 22:47:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62375

Can you try compiling with -mno-unaligned-access

On Thu, Feb 1, 2024 at 6:34=E2=80=AFAM Marek Belisko <marek.belisko@gmail.c=
om> wrote:
>
> Hi,
>
> I'm testing following code on rpi3 board (taken from https://github.com/g=
olang/go/issues/58548) :
> main.go:
> package main
>
> func main() {
> }
>
> main.c:
> #include <stdio.h>
> #include <stdlib.h>
> #include <dlfcn.h>
>
> int main(int argc, char** argv)
> {
>     void *handle =3D dlopen("./libtest.so", RTLD_LAZY);
>     if (!handle) {
>         fprintf(stderr, "Error: %s\n", dlerror());
>         return EXIT_FAILURE;
>     }
>
>     dlclose(handle);
>     return EXIT_SUCCESS;
> }
>
> I'm cross compiling using yocto sdk:
>
> go build -buildmode=3Dc-shared -o libtest.so main.go
> $ gcc -g main.c -o main
> and when run main on target I'm hitting bus error:
>
> $ ./main
>   389.087824] Alignment trap: not handling instruction f9420a1f at [<b6e5=
caa6>]
> [  389.095171] 8<--- cut here ---
> [  389.098249] Unhandled fault: alignment exception (0x811) at 0xbeaca374
> [  389.104881] pgd =3D d43e80f0
> [  389.107602] [beaca374] *pgd=3Dbe8ba831
> [  389.134496] audit: type=3D1701 audit(1706797456.639:2): auid=3D4294967=
295 uid=3D0 gid=3D0 ses=3D4294967295 pid=3D2544 comm=3D"main" exe=3D"/home/=
root/main" sig=3D7 res=3D1
> Bus error
>
> I've tried glibc2.34 and also 2.36 (in kirkstone is 2.35) as described in=
 golang issu but no luck, it still behaves the same.
>
> Any ideas what else to check please? Updating to the latest poky is not t=
he case unfortunately.
>
> BR,
>
> marek
>
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62367): https://lists.yoctoproject.org/g/yocto/messag=
e/62367
> Mute This Topic: https://lists.yoctoproject.org/mt/104098375/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

