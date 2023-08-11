Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E418C001B0
	for <webhook@archiver.kernel.org>; Fri, 11 Aug 2023 19:50:15 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web10.52287.1691783412631464824
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Aug 2023 12:50:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@teknique-com.20221208.gappssmtp.com header.s=20221208 header.b=QGUJwRP2;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.222.169, mailfrom: tom.isaacson@teknique.com)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-76d1dc1ebfdso161160385a.0
        for <yocto@lists.yoctoproject.org>; Fri, 11 Aug 2023 12:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20221208.gappssmtp.com; s=20221208; t=1691783411; x=1692388211;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3PwDaivj4I9bsl5V6VCpwl4i/KLCFeEWWtR3PPqbofU=;
        b=QGUJwRP2Hv/PvDlPZ2T24Gum8XFXbfuVA0n7t77cuXrLCwCEqOS4gmGjLWDqyp5mQ9
         9gjKs1RFRBMoeQI3GJeBwhqePormodOmXzbDO+wcjtT8YrLQ0kweSoT51iECUEGOmN6K
         grokIE2wUOH1KPGWQ+ZqqdqoYdL2rdKYvkb7DobrYNDj1MC3JKlh41dcV3MIv1vXPIJq
         WIuzq27rFDgBAU9z9ae1gLYZ6W0KMcda9dSXzkRvf5r2Abc2cbx6p7mrb0wRQtNrTcdl
         vhM0WTsYcQLXy45SQBnvBLN5hkCFiKQBq1lhL6S6RX2tUJH8Q6S6FGwz3QyR+irq8hsp
         e06g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691783411; x=1692388211;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3PwDaivj4I9bsl5V6VCpwl4i/KLCFeEWWtR3PPqbofU=;
        b=OdxfNsU3gYjjNAmcztz1uwBzqZka1LV/yzHALzfKw9fwwe8Hdhuny75G3QPgBRQR2M
         7ygjhZD4+u+Hkapof4+QFkpt2BSVti7WL9NlzhSByXskMX2CKo9WH0adgxSPakbRv5s7
         1/juVUsFn+vsTQB38+PYOAEW/Zp19o+EWCoMniX8uuQ7zGcMo/m8WM8GA8fh5013IDeH
         P0+9OSiQQlGi3e64GfDrSLRUkQJwpiEwGsbWKx+zBFcoUDqncLzeJU8zjMycgvbJSTb7
         UMw93+4Fby3Ysdu7pgvPMtEMRerShxuRIgShugJv1YqAgqwRw/t313f0rBfWNJuc1ckZ
         uJsQ==
X-Gm-Message-State: AOJu0YyOD/EeVXJickBRt0mFJNsAE0Vg6xrKXaCVxoWIWj04oZgbJoyv
	rhvnFCeQZ8RRQUYOJrFcvFcrj4hXFPpSOxaQtn1Tww==
X-Google-Smtp-Source: AGHT+IHDPjPa+x0jsVGGoPRhWDOISHsXg8OF9B3xXaR5sugqm0oSe2zZW3n5x1FgtpJYAW5kpnfNfJVnc5w///0oK6o=
X-Received: by 2002:a0c:ca84:0:b0:63d:246d:43e1 with SMTP id
 a4-20020a0cca84000000b0063d246d43e1mr3804220qvk.10.1691783411512; Fri, 11 Aug
 2023 12:50:11 -0700 (PDT)
MIME-Version: 1.0
References: <CA+EiEZ+k3eSZENj_ORU+-7rx99ed__pu7Ger2JpGm1U8gZ2WRg@mail.gmail.com>
 <c9cc305944c70a7f59e881e39d020d5e216197e3.camel@linuxfoundation.org>
 <CA+EiEZLbtCfDGyxA8kjwQkPjeJJ9vzwpKMKGSW6ABGq2uogg2Q@mail.gmail.com> <fd9c2bb67198be27092ed786908f100ab8393d38.camel@linuxfoundation.org>
In-Reply-To: <fd9c2bb67198be27092ed786908f100ab8393d38.camel@linuxfoundation.org>
From: Tom Isaacson <tom.isaacson@teknique.com>
Date: Sat, 12 Aug 2023 07:50:02 +1200
Message-ID: <CA+EiEZLQ5WNP_9wUFvoh33U_5J0Uys+0hXbn4UNrToV1HYuFdg@mail.gmail.com>
Subject: Re: [yocto] Intermittent build failure where dwarfsrcfiles doesn't exist
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Aug 2023 19:50:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60784

My bad. Ok, so:
* What function is responsible for copying the dwarfsrcfiles binary to
poky/build/tmp/work/oclea_cv25-oclea-linux/my-app/1.0.53-8c74bcd/recipe-sys=
root-native/usr/bin/dwarfsrcfiles?
* When the build completes the dwarfsrcfiles binary is present (even
if it got there too late). Why, if I rerun the build with no changes,
does it get removed and recopied?
* I asked before, but I've just been doing this by adding debug
output, but is there a guide on how to debug this directly? I can't
figure out how to step into the Python code directly. I use VSCode.

Thanks.

On Fri, Aug 11, 2023 at 6:56=E2=80=AFPM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Fri, 2023-08-11 at 09:22 +1200, Tom Isaacson wrote:
> > DEBUG: Checking
> > /home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x=
86_64-linux/dwarfsrcfiles-native/1.0-r0/sysroot-destdir//home/tom/Documents=
/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_64-linux/dwarfsrcfil=
es-native/1.0-r0/recipe-sysroot-native/usr/libexec
> > for binaries to process
> > DEBUG: Python function relocatable_binaries_preprocess finished
> >
> > This seems totally wrong - two full paths are being combined to make a
> > path that can't possibly exist. Is this something to do with my setup?
>
> No, those paths look correct. When it builds native sstate objects,
> you'd expect to see path duplication like that.
>
> https://docs.yoctoproject.org/ref-manual/faq.html#why-do-bindir-and-libdi=
r-have-strange-values-for-native-recipes
>
> Cheers,
>
> Richard



--=20
Tom Isaacson

