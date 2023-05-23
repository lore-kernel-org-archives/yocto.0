Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3066CC77B75
	for <webhook@archiver.kernel.org>; Tue, 23 May 2023 09:58:09 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.18041.1684835882324621267
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 May 2023 02:58:02 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=gPjN+XqZ;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-4f3b4ed6fdeso3773407e87.3
        for <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 02:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684835880; x=1687427880;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nAv8mjoInG6srWJjiCXjCirUU3MVyh4N/2aFifCZHck=;
        b=gPjN+XqZU2xEl6ngMjEmGmk/lJ0NEJKstLFQjljtVShUDG5uPsHK/ccVFqxMvXZ6++
         qTvkEKsDJcjN/q5MDQIB7XsFkHTvwAEZGDtXtolh1DL0Wpi1nEd8CvS2sc8/mp61VzWw
         S05PH4RrGLnR9/s7QmCcrBe4CdSUETsXuMzCqbS1xsfLJt2k802jrUt5RGrca3H3lmHO
         Ib6CaFW5PIecXBiKgagZU6RkylYiFXQfdb2JcVCjCOAm/angJKZ07JQLKWrc5iLJt1UX
         gXVQxBVShoYzHcDfmmKKqb82F4/hWYi7gTuThJYvbwmjBzwwIGM9yM2ZcUWQrgdGxyKD
         9z+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684835880; x=1687427880;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nAv8mjoInG6srWJjiCXjCirUU3MVyh4N/2aFifCZHck=;
        b=XeBxFtbI+afrSMfCx9i9sAda8BlK9OHwAATmU+2Bfpx23uItRacH7zOhZymMQ9VGvx
         NKVfS0qGa7n0uyWNQTH84Nc0lRmvdaTbM9EKDQ5nyFdHiL3KVQ8d7Q/JRVy8UBJZMTeS
         0wfyk4deEYK3e6bGy4mZNEMlatIjSq8Nv/2Acgh2h2fwSdhqzpl0wFcsx5hpwvjEOFha
         pSvV/Ic9+bQ3CqJ8B/zYkPj0Clp/pUCZfllJ94CcgE+vnyTTSWpRi+UF1WxAQUK9NcBP
         R7S3XaMuI7a9tAunAbpBLsMpzrqxQAhP8xxbIETcyPBXo4aONjZmVV8JRfpUwHNuvdM+
         DwvQ==
X-Gm-Message-State: AC+VfDywMtZUrYs38yi8OUOuDkSjo9VED+RrBdvAGwICtMbrSCF7JsYZ
	JnHvJCEX40tyhXctljQvg4scYiyHfhWjt0IY6nY=
X-Google-Smtp-Source: ACHHUZ4h7Y5RxqJaPTO3C8DPmBf8TTcsZPBTZ91bhpkvmlJSH85JQI8Plj9jxKQGYpu571K8WNrUuyE5eM0BXCuvi3U=
X-Received: by 2002:ac2:5544:0:b0:4f3:8260:f18c with SMTP id
 l4-20020ac25544000000b004f38260f18cmr4081734lfk.57.1684835880279; Tue, 23 May
 2023 02:58:00 -0700 (PDT)
MIME-Version: 1.0
References: <CADAXeK3VHedPPbrCUB4JQFJU+DAeRV0DeykN2ERMmvhOqmLmDA@mail.gmail.com>
In-Reply-To: <CADAXeK3VHedPPbrCUB4JQFJU+DAeRV0DeykN2ERMmvhOqmLmDA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 23 May 2023 11:57:48 +0200
Message-ID: <CANNYZj8WMaUEVz9fHv0DFypbiTuBhBS9e2g6BAS26P5aA8x1Gw@mail.gmail.com>
Subject: Re: [yocto] Package feeds between different Yocto releases?
To: Ivan Drobyshevskyi <drobyshevskyi@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 09:58:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60092

No, it's neither tested nor expected to work between major yocto
releases. In embedded world the typical way to update a system is to
overwrite the whole partition. Some setups use filesystem snapshot
approach like ostree.

Alex

On Tue, 23 May 2023 at 11:22, Ivan Drobyshevskyi
<drobyshevskyi@gmail.com> wrote:
>
> Hi,
>
> Are package feed updates (e.g. deb or rpm) between different yocto
> releases (e.g. dunfell and kirkstone) expected to work/supported? I've
> tried it briefly and package state differences between the two seem to
> be a mess. But still, apt somehow managed to update most of the
> packages, but not all.
>
> Thanks,
> Ivan
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60091): https://lists.yoctoproject.org/g/yocto/message/60091
> Mute This Topic: https://lists.yoctoproject.org/mt/99083671/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

