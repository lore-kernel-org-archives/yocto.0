Return-Path: <anthony.t.davies@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605C7E7D25D
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 08:26:10 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web10.14349.1695716769185977340
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 01:26:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PpcfIVVh;
 spf=pass (domain: gmail.com, ip: 209.85.219.170, mailfrom: anthony.t.davies@gmail.com)
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-d7ecdb99b7aso9303073276.3
        for <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 01:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695716768; x=1696321568; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=P5nlL+hmePiNUM6fHUaTMbQWyGXEjiA0ubVa+Cwp7mU=;
        b=PpcfIVVhTjbIRgIPILbk7pKRXd+8SDt+p56nRbfqS8fvVZZ5wgrXR3LsRXXSjZDOle
         v8l9u5zmx34akBclH6uRmwkdqXZ0ykLHsNG4/aGS8nljk6qxeLKjk2vQZ7R/PkT7VMa/
         hsuDx4pHR0PlkQl1Kis4/iU3akH4Y1tszq5nv1E+XBjqCWqe3s77ny+e+NjnespFklJd
         tHiVOoVlldeUeGPuNDj3jFvUuLmEc4S3sNej2iwnGPLlttyjkmpAfgWtQIVpZTQLq0Un
         r3YnkeuOFTdR3gBLtA7GIOOKtid+bOgpz6f/vgeqazE5h6pXTFmeBQHcKb+vD7s5DJTK
         X64w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695716768; x=1696321568;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P5nlL+hmePiNUM6fHUaTMbQWyGXEjiA0ubVa+Cwp7mU=;
        b=RXxknHtvjuvhiWNF1C92ZKlqWi//3UM40It5kzsQQ7XGJJwymnxwM1s9x7rK4ZpTB/
         68gQpa2U79VD1U89CVg/EVHRdZ/ldaVJ3zXg1A26r9pDbgKbl7HRoCaIGSDzMfBHfc2y
         2t+9fHBm89yENc+g/zf9Iddf75InjKWrz2aVV9zFJdk5Wzj/qold2VmF2k+8U/ry9DOT
         gNce+rnDhVWpbVjH9bhZ0CwpOW865GMbwhi5uaf1nZtwMQ8pBFyVkZfUKBkR0CFQ4kpf
         jfC5Eb189GDFapSBLI/b4jsS4ghk1BxGwTbB8G4jd3y7cuLKLjbVd7/HCtySDKtSOc+w
         cJGQ==
X-Gm-Message-State: AOJu0Yx4uaY+R6hydz9sF13MzIyMb5dulKxrvr7VDv2eCmyWbC9JsX+x
	PrGbP/Ydv0YE2Xev7qnGU9Xi0E6aYS6Zct1SgdA=
X-Google-Smtp-Source: AGHT+IE0N0zkNDsujlnUQlTzrvQzfWON+e4jw+rpwlE2H7ori7rVO+EB7EpVkcpeQXLIkm0XFmyn73ECvSY6LZrrmqA=
X-Received: by 2002:a25:9949:0:b0:d89:4829:6a63 with SMTP id
 n9-20020a259949000000b00d8948296a63mr2483172ybo.65.1695716768158; Tue, 26 Sep
 2023 01:26:08 -0700 (PDT)
MIME-Version: 1.0
References: <20230926043657.3897658-1-anthony.t.davies@gmail.com> <afd35866-a2e1-a9ea-d8ee-12b14c93f2bd@theobroma-systems.com>
In-Reply-To: <afd35866-a2e1-a9ea-d8ee-12b14c93f2bd@theobroma-systems.com>
From: Anthony Davies <anthony.t.davies@gmail.com>
Date: Tue, 26 Sep 2023 18:25:56 +1000
Message-ID: <CAL5F+oLrLnF3MsxuGjKQQwFN8BD_j1OCZy5T4AMkHd-KM_NwSw@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip] [PATCH] Allow KERNEL_IMAGETYPE override v2
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org, twoerner@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 08:26:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61120

Hi Quentin

Happy to contribute but not all that familiar with emailing patches, sorry.

I lumped them together because if you modify the KERNEL_IMAGETYPE you
trigger the bug.

I agree moving it out of the include file would be the best way to go
but if you dont have the directory in the KERNEL_DEVICETREE it will
fail to compile, quickly searching other layers are handling it
similar to how I have, probably just in a more robust way.

Regards,

Tony


On Tue, 26 Sept 2023 at 18:08, Quentin Schulz
<quentin.schulz@theobroma-systems.com> wrote:
>
> Hi Anthony,
>
> Thanks for the patch!
>
> On 9/26/23 06:36, Anthony Davies via lists.yoctoproject.org wrote:
> > [You don't often get email from anthony.t.davies=gmail.com@lists.yoctoproject.org. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
> >
> > From: Anthony Davies <anthony.t.davies@gmail.com>
> >
> > Apologies, this is the correct patch
> >
> > Updated inc files to allow overriding KERNEL_IMAGETYPE in local.conf
> >
> > Fixed bug where dtb couldnt be found when generating KERNEL_IMAGETYPE
> > other then fitImage image due to KERNEL_DEVICETREE containing the dtb
> > directory which is not available in the DEPLOY_DIR_IMAGE directory
>
> Here we are missing your Signed-off-by.
>
> I would highly suggest to split this into two separate commits, one for
> allowing to override the KERNEL_IMAGETYPE through local.conf and another
> one for the device tree thing.
>
> On another topic, I really feel like this is more of an issue with the
> class handling KERNEL_DEVICETREE when we're not using a fitImage don't
> you think? Otherwise all layers will have to fix this one up and I don't
> think that's the right way to go.
>
> Cheers,
> Quentin

