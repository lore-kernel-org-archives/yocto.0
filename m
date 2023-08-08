Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64785C04E69
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 17:28:41 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
 by mx.groups.io with SMTP id smtpd.web10.68089.1691515717983483682
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 10:28:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=ZOM8hh9F;
 spf=pass (domain: gmail.com, ip: 209.85.167.181, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3a5a7e7cd61so60010b6e.0
        for <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 10:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691515717; x=1692120517;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AVsHfOu/NNqOFCArXhK+cL/nN1fizR+2wMBkOqYOTLE=;
        b=ZOM8hh9F52Kb7Hm0ZREL6Y9K7fAvOCVJA2aui4IfnyCwg2GM8HlE5fadx3cPkAYfdl
         Peprf9gCbuCfzPdYz4bsua07d1/R2rkFyxp0B7OzWobr8zXh5WAKgPmdcebQLoAxRLDd
         e96eaTKnZ3JRHoE6KKcdABUL/YOPdVAyycggSuK5hp+0KFGdxT+Nb6CxaLRWoYSaTL6E
         eYp01yoZ0kJeS36wXoz3D2lbGMrJg0cCrM/t9sHrdntwremLgC+PBOcZ6aaXou2Fv5xB
         0IQ1IXuagWH+nzcOcln8ePjOTmpET00o5iQxccUJeGjrf4Fobxg/p3q5chOJYpZwlbQN
         nxfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691515717; x=1692120517;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AVsHfOu/NNqOFCArXhK+cL/nN1fizR+2wMBkOqYOTLE=;
        b=Wpiihs/iVosS0ZCvKUPdV9lZT4YmS6+vZSAmKchQtUitnxnZPyen59/DsJ7SRpQUp+
         drwCGBKUgREU5Vl5LpGQbcbuee5yZj8aCQUVWWUAFjL7awdA8kIGL0H8+VhK+cDn8hdu
         UK6wQY6yUXf+kaPXR7Gcj3/NYg05PF/5mT8hdhDr6sjYb/aA1/INgetxwRS8/1nA+QkG
         t5ZoOyYKWE+47J7NMKBZowD/nV5vKbbFv2a4WDtuyjEGhvAURJKu98rymXCYx/PZYc3v
         MfAhNGTH1v0rK4uEk7wJmtqjm2SHdC4EgBhwsaWQ20AQKJ0XGxrK2OsxCZmenMwiSA2V
         irbw==
X-Gm-Message-State: AOJu0Yw8B3uFI9CUomljIkBczg7W42TXPrv+4XKiKf/YYKjg1GJngvC7
	tARLc4r+g7JNzGmItR0ISp0XID2ogndSJmFCAFDJWvlJk1BNfA==
X-Google-Smtp-Source: AGHT+IHR6jX+xY/oWRou9Okip8NZm8Z3xeh/+cgWm6ny6ESeQ0uJwxeflxXmvW1XXTbR0VCnkAUcsLLpxoGVDQDdr4Y=
X-Received: by 2002:a54:401a:0:b0:3a5:ad4d:ee16 with SMTP id
 x26-20020a54401a000000b003a5ad4dee16mr7627623oie.14.1691515717160; Tue, 08
 Aug 2023 10:28:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sqpfaR8Wx+N7oCQ4q8M2TVgaunE01ZLSi=8NTJA1465jQ@mail.gmail.com>
 <5592.1691514161056059340@lists.yoctoproject.org>
In-Reply-To: <5592.1691514161056059340@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 8 Aug 2023 10:28:11 -0700
Message-ID: <CAMKF1sr5OviPhVrJvm3t3_tk4N4hP=kkSdP7PWH_aPgvBCNsFw@mail.gmail.com>
Subject: Re: [yocto] How to add a few lines in config.txt in Yocto project for
 Raspberry Pi
To: Crane <crane2018@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 17:28:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60740

where does 0001-disable-bluetooth-and-enable-uart0.patch exist in your
layer? can you show the path ?

On Tue, Aug 8, 2023 at 10:02=E2=80=AFAM Crane <crane2018@gmail.com> wrote:
>
> The error is this when bitbaking only the recipe for rpi-config:
> "WARNING: rpi-config-git-r5 do_fetch: Failed to fetch URL file://0001-dis=
able-bluetooth-and-enable-uart0.patch, attempting MIRRORS if available
> ERROR: rpi-config-git-r5 do_fetch: Fetcher failure: Unable to find file f=
ile://0001-disable-bluetooth-and-enable-uart0.patch anywhere. The paths tha=
t were searched were:
> ....
> "
> The listed searching paths don't include the custom layer where the patch=
 is placed.
> The complete error info is in the attached file "bitbake rpi-config.txt".
>
> When bitbaking the recipe for the image, the error is the same.
> The complete error info is in attached file "bitbake image.txt".
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60739): https://lists.yoctoproject.org/g/yocto/messag=
e/60739
> Unfollow This Topic: https://lists.yoctoproject.org/unft/100614184/199791=
4
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

