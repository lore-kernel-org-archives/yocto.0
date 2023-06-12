Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56249C7EE23
	for <webhook@archiver.kernel.org>; Mon, 12 Jun 2023 09:36:22 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.54425.1686562572791404504
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jun 2023 02:36:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Nc9ibIDB;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2b1ac373c9eso46954231fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 02:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686562571; x=1689154571;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u62lFcnSz6B11yK02dhrvnP3Fyx05D3GV2i/TBXYR2E=;
        b=Nc9ibIDBfxvMDh8RqlwpYcLpph5HKh5RKEQvJWlHf6xbiZcr52vyLdCCVFgVPaR0+W
         KohpdTu0P1Mx/O2VJGUy8ZkU+F5fxY/igXDNE4khvXHNIlDUxfA1vmy0J3CXE0T33Pew
         lL0IE9hTCdAMqLVf1I6w0LFjWEIsmnHzWfp/PhQPfFBbOW3zPQZejHKs013iAula5UQA
         P/Q6s5so/pK0Xat7NGKpRpeuXycQLXx4jLrDDFd8FOlk9arWXssLRmzh52+QFauWJwzX
         F1sAJXO6EaRmm+2MejYMU2/CEpJBNa1BSwTPMj1yCNvU/3HXwarie9QZbnzc6tNJQZ+F
         ASAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686562571; x=1689154571;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u62lFcnSz6B11yK02dhrvnP3Fyx05D3GV2i/TBXYR2E=;
        b=abNh5Xiv4xeiyrfymVeF6uS0saWNKL7wmPjYNVaJXoeLX9AvVR54MOpVcGNh1Fmvp6
         eOCIpDx1Us6Y+TaD/wutd7w+xq3IrdHa3emx3xWWlJ5w/QByd3VK7wyxhjO5XF01byEf
         AnFG7X4yQwW4R5TcH/+3q3W1H2kXNLaIdma96C7vEeIUPGBxZSJT+QGMCsGIliqU+HwB
         AxQa9TJt95OtuZUUHMEvpslmChdCshXsP1MLclTNQjbb/btDP0aLe27nEyXhW6dY/MwF
         vV1muwDUu+SbatXWaqyBDeMnCy+MC5TyJvXzXLRTfbOE1HUFUaOUKMkXU6xTo3Hx2/Av
         0Vmw==
X-Gm-Message-State: AC+VfDw1t5QxNhcfOMeTjBNtbUnsCrnyaR6wkoXSBVDMEHRGqr7e/T6+
	isa8esATvkvitkBVFn3AW7gv8aYXPuNozzdneFU=
X-Google-Smtp-Source: ACHHUZ58HfbGxgcwmibKkDia3sraVGx46V3eXKX0cdFD405e954N5rK6+uwRJPWnXxAnS3v/S31leq4REi5P92sUnok=
X-Received: by 2002:a2e:8019:0:b0:2b1:c8e2:531d with SMTP id
 j25-20020a2e8019000000b002b1c8e2531dmr2341717ljg.16.1686562570635; Mon, 12
 Jun 2023 02:36:10 -0700 (PDT)
MIME-Version: 1.0
References: <ZIB0W0oQNaSQ7oxi@aglaia.inside-m2m.de> <CANNYZj_qehN1O+wCswYOhgQGrZGAaf1bBkHGQAkv7gynMRykVA@mail.gmail.com>
 <ZICaghNXJaxmdIIZ@aglaia.inside-m2m.de>
In-Reply-To: <ZICaghNXJaxmdIIZ@aglaia.inside-m2m.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 12 Jun 2023 11:35:59 +0200
Message-ID: <CANNYZj99EbfjLjVg8p_jOMpCHZNPRJNagomyTBZv-Eagt-_LkQ@mail.gmail.com>
Subject: Re: [yocto] Approach for generating two WIC files at once
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 09:36:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60249

sdcard-base.inc is better, because sdcard-base.bb is a recipe in
itself, but you don't want to build that (or others to get confused
about its purpose).

Alex

On Wed, 7 Jun 2023 at 16:56, Konstantin Kletschke
<konstantin.kletschke@inside-m2m.de> wrote:
>
> On Wed, Jun 07, 2023 at 02:15:30PM +0200, Alexander Kanavin wrote:
> > The easiest is probably to make two image recipes pointing to
> > different wic files, but sharing everything else via .inc.
>
> You mean moving my current meta-insidem2m/recipes-core/images/sdcard.bb
> to something like meta-insidem2m/recipes-core/images/sdcard_base.bb,
> creating two new ones like sdcard_d.bb and sdcard_y.bb among the
> sdcard_base.bb, require the sdcard_base.bb from sdcard_d.bb and sdcard_y.bb
> and having the latter files overwrite the variable WKS_FILE with
> different ones?
>
> According to preliminary tests the search path for wks files also
> include meta-insidem2m/recipes-core/images where the sdcard*.bb are
> located and could ne put right there.
>
> This way? I will test, that sounds convenient.
>
> Kind Regards
> Konstantin

