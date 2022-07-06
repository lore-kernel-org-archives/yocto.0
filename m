Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE619C43334
	for <webhook@archiver.kernel.org>; Wed,  6 Jul 2022 21:54:08 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web11.489.1657144439918236160
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jul 2022 14:54:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hcxhe/L0;
 spf=pass (domain: gmail.com, ip: 209.85.222.175,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id z7so12077234qko.8
        for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jul 2022 14:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=olSsrN1jhgBSL0Mn82agNs/QyGFjTjnx1M6FxodwigQ=;
        b=hcxhe/L0fhM0TMN5ag7CaXo2vucJuPf0fFHeJjQm2WD8N4pYuKTYKjR7SutSqU/KLz
         KEI1EmcwWUve0OEH9fOCeqZz8ipclKvQwnr45pb4k1KkFYuuZC4rAlBH6sm2DdYFQKri
         hIz9SHKpcdMx+036xhZzXq1+aTd/nzbI6u2jJBYlr8bq+UNZgJouH6jMha72tug7yoMD
         RHMKCc75jAOtVsRIfvRPqTmOMeshpGOnw6agfkjkIboDNwhJrM9qAwkxSplcWYC3igIu
         VqMcu06GDV8/EBaRXOS7YdD6JZ9gWZVyOo6onv+DdoyuaNnkOTQgiU8DlEQ795r5FQMR
         FqWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=olSsrN1jhgBSL0Mn82agNs/QyGFjTjnx1M6FxodwigQ=;
        b=tZncIOyGjebmt62Itpa8QRcN4Zenn354L0lQRx+OYlWvHQauJ/xTGXz32F6xqh1SMo
         djPpbebG9j7/NF3xkdxHcnlMi1Vbul9LnT+Cl2X21h4m/Xjdo1b37i9AnaitXnX46POw
         T5xJNreCmSgQ2CGX77z8hGAU4uaNDVGp/pND3IRXC3Lc4vMIWnxd8JptlxL+3GEo/FT1
         fen3YuUTt3Gvm4JKkz7wgoB6cG8lNG9wZEaVrDrcqAmkLykcBW6SC6d8/V5pT7z5oUl6
         63ivaU9SFcTDPPwoQ2DBlJH7TtbbrMAS696r46nRlCqkOPbQ7MyOag1e6E4SD0jk+LzY
         1kEA==
X-Gm-Message-State: AJIora+yDb6z9bxpq3z33fqd9y4HOnnq5JFAgfCW/HsuuQX8zbZWDWu/
	Hz5FXf70mqpuoO9IBotooZBucOsymKB1WMq0GtsQpapi2eZBQg==
X-Google-Smtp-Source: 
 AGRyM1vk0qH6hizjT3rQa3eVhnyTHxaId6TDvmcX4m715q7v8ub7MYtHKFZTYDJHz2faRsChQbnWMl3Lc9BnV8k65OA=
X-Received: by 2002:a05:620a:448a:b0:6af:3a05:f73c with SMTP id
 x10-20020a05620a448a00b006af3a05f73cmr29980599qkp.72.1657144438921; Wed, 06
 Jul 2022 14:53:58 -0700 (PDT)
MIME-Version: 1.0
References: <AWI7.1657141765119571734.Ou9q@lists.yoctoproject.org>
In-Reply-To: <AWI7.1657141765119571734.Ou9q@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 6 Jul 2022 17:53:32 -0400
Message-ID: 
 <CAMKF1sp8bh-Y+gyKYuB5K8GvRZa_wOKW2+Zeo3eN+R9ZJJQAFg@mail.gmail.com>
Subject: Re: [yocto] Installing gfortran into native sysroot for libgfortran
To: Gregory Anders <greg@gpanders.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Jul 2022 21:54:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57468

On Wed, Jul 6, 2022 at 5:51 PM Gregory Anders <greg@gpanders.com> wrote:
>
> Hello,
>
> I'm trying to compile libgfortran for a Xilinx Zynq SoC, which uses the arm-xilinx-linux-gnueabi toolchain.
> I have added
>
>     FORTRAN:forcevariable = ",fortran"
>
> to my local.conf, which causes libgfortran to be built, but it fails in the configure stage with an error that
> it cannot find arm-xilinx-linux-gnueabi-gfortran. When I check the recipe-sysroot-native directory of
> libgfortran I indeed see that gfortran is not there (but -gcc, -g++, etc. are).
>
> Now I've been poking around the gcc recipe files trying to figure out why gfortran is
> not being installed, but I am coming up empty. I'm hoping someone on list know how to do this.
> How can I have gfortran installed into the native sysroot for libgfortran?

in your fortran app recipe you have to add DEPENDS = "libgfortran"

>
> Thanks,
>
> Greg
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57467): https://lists.yoctoproject.org/g/yocto/message/57467
> Mute This Topic: https://lists.yoctoproject.org/mt/92216663/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

