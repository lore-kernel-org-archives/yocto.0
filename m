Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3477DC433F5
	for <webhook@archiver.kernel.org>; Wed, 19 Jan 2022 12:52:47 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web09.5869.1642596766033731629
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 04:52:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=VxGLVr6n;
 spf=pass (domain: burtonini.com, ip: 209.85.128.52,
 mailfrom: ross@burtonini.com)
Received: by mail-wm1-f52.google.com with SMTP id
 az27-20020a05600c601b00b0034d2956eb04so5754518wmb.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 04:52:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uzqv8pk4vNAbppBN0+8aUu390XRKmpEvsj2AtUFDMiA=;
        b=VxGLVr6nuI62KZ6EYbqAd1QUp5iByKkvlbHOKfLCJxGkYL7PWT7pgJcmxMnXihAsv5
         h8n64XIaKyhW4wqmFTgxappmYwPeBGflKHWIlW9DoVCryMUm/PPn48rxgV3w/Oxcz1RG
         alWZX3LrxA4ouhAxCbReAkU/cI+iIlyHqh0DUG1DOfFuzeWOUKYGi0cXURZFf8L6gdKJ
         wZboab1C5+OGJAiv5Lwjc4YB9D+waeD+3/2lw04bAt+PAUD5DnW4IaNHGqytmfuOAIZ3
         0XrI5g7UKs+TdNnrcucRKwRhwg79iG9xMJH4TQe2v88SPZ9+83NV04E/zyo6LTWTlMXH
         W9Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uzqv8pk4vNAbppBN0+8aUu390XRKmpEvsj2AtUFDMiA=;
        b=nYDSYAuCkjLLCpUj6FDiOzfz/wkKrpx4CLiEueOv7Jn9EfMhjc0gxl4IVN9weQSnvO
         HrkS74dgXDdwBgb5cwEQVXKKQ9Tq26wqb+RN/2T0LmsD39YPc1S0N/Pvi11LBbY1ljcX
         fVoFRlSWO44ljYZRWJK1JDzD1FyPyCjXEHKnJMEtAxVWlpDpHzvrMiF+N47AeL/2qRVg
         uz3YqrvXX8X908Cwg/UW3jRF7geWwzjUuJrKLv9czO6Cp71B7Aqt8IAGrDqTpjxQwEuQ
         j/ToODmXS2Cs8PGBGPM/qaEUnmi/IcjXcqOtmSXG4UkfvDbluCJRtXZaCgJDGA7eameG
         1NUA==
X-Gm-Message-State: AOAM533jL8U5FTRKa24JVUNcrx4ScCqjQkqgvkoZ5mXHQqcQ5agp14Xm
	E1qRaFCqVHHKdXtzdq42bCpRiU3Vk6cFssJsfb69IQ==
X-Google-Smtp-Source: 
 ABdhPJwKLrxA2P6gtkh1M+KeSLBaipNk2XoOD5QoHUhSadBYTRmOyLS5CSxmwvO2OtLYiqKI33It/3CQtlz/b6Zv/FM=
X-Received: by 2002:a05:6000:381:: with SMTP id
 u1mr28210140wrf.451.1642596764205;
 Wed, 19 Jan 2022 04:52:44 -0800 (PST)
MIME-Version: 1.0
References: <f4fc69b8-7ead-d9c5-a52b-32bdf77b4143@bootlin.com>
In-Reply-To: <f4fc69b8-7ead-d9c5-a52b-32bdf77b4143@bootlin.com>
From: Ross Burton <ross@burtonini.com>
Date: Wed, 19 Jan 2022 12:52:33 +0000
Message-ID: 
 <CAAnfSTvcx-VNd66RN9jmoKAbZdLXP33GUiVtExMn3DNdvO-Yhw@mail.gmail.com>
Subject: Re: [yocto] Invalid checksums for SRC_URI ignored?
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jan 2022 12:52:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55910

On Wed, 19 Jan 2022 at 12:16, Michael Opdenacker
<michael.opdenacker@bootlin.com> wrote:
>
> Greetings,
>
> I reused a simple "hello" recipe and added a non-matching checksum to it:
>
> ...
> SRC_URI = "file://helloworld.c"
> SRC_URI[md5sum] = "34f0efd76b4f18888888888833cdd129"
> ...
>
> The rest of the recipe comes from
> https://git.openembedded.org/openembedded-core/tree/meta-skeleton/recipes-skeleton/hello-single.
>
> Why doesn't Bitbake stop, reporting that the checksum doesn't match the
> source file?
> Anyway, why does the recipe build without a checksum? Shouldn't
> checksums be mandatory?

Checksums are for files that are fetched via http:// and friends, not
local files.

Ross

