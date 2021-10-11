Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8517C433EF
	for <webhook@archiver.kernel.org>; Mon, 11 Oct 2021 17:29:45 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web10.1696.1633973385058036933
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Oct 2021 10:29:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PBkkgQR4;
 spf=pass (domain: gmail.com, ip: 209.85.160.174,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f174.google.com with SMTP id o12so5297530qtq.7
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Oct 2021 10:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=stSzv3gCXgaL8H8Xep45gGDdUY7dViA0e7TR4WwA1NA=;
        b=PBkkgQR4H5MAdv963J0bBU3IWAYu3mtsZfpgk+FFUzl3QUEYzGpn4v5r9gjLS0enpc
         UJCw+JoibiEk10deZbL5rGJUleJq6Ln/CnQlY/M4Cz1aQsm9CeR+38LDM52+EfkelpgI
         7lDs1YPR4iZFAQ0ilFHLgLSctyD+NRUEsQtVIihNwtmT56AHrBn/zYQZ9vV1sEPVR5Vn
         sSqLB1ElfCfzIkGha+BaiviRpEnncmQdyALZZArRUuA+qcmdeYAZPAdG43FXgGhFh3M3
         SUSx/B8VXJ/ZNQ0xSfeS5dxkRaEc6lZQBjS37ZtWbYxvks7Ska3AQm4s6llTvx+3RFV1
         097Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=stSzv3gCXgaL8H8Xep45gGDdUY7dViA0e7TR4WwA1NA=;
        b=efg97yzDA438uOXPsgyHO9efV3+kRgRxyY/mFE/kR02PHANsB2WPvlLk+P2vzrgTmd
         mpjjbXmIjCuS0WXzhfZ99FG+ocvPu4Xxv/HTygdJJZMfClVly8Sxrf9VAHsKeDU2K4Iu
         CQAzlEXHaWGMJYaCwmrfzyNe3RyVz7vaXv4bnSgGW16WKqdsmLAjwFBeolFf1CpjmZ6F
         +d399Y5/mxpbYxUu//uG3F9YsP0fzrmaJGY0cwaUILnRtekpbyzNIMPPa+iTc1QwNXVI
         FfzGoVoMr1kbW8UVAwPCB+M4Wek017z+3IthRT1q4HQIuf7dUkVYBrMxdVHvlnprgUUo
         JhhQ==
X-Gm-Message-State: AOAM533PXTgvmbhx7RZPcBscTiek94Cx/joztTGQirykSmZhdmBePANA
	6unp5VBMHOukMnDPdGBAFqc5vG08NOVj2g7KbIk=
X-Google-Smtp-Source: 
 ABdhPJwfeouX0M+3Fkxuy8TvgABIjKvdr4aMR7FwDfWA6LhhfgHHi4bEtmsDvTG5DrDxsh5h9CscEcxYlaPlEpj+v/w=
X-Received: by 2002:a05:622a:316:: with SMTP id
 q22mr16275865qtw.225.1633973384179;
 Mon, 11 Oct 2021 10:29:44 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAA=hcWSPQbqv9MDuRKME=iK8NM3sJKOdAcS1hti2VW0iodGFbQ@mail.gmail.com>
In-Reply-To: 
 <CAA=hcWSPQbqv9MDuRKME=iK8NM3sJKOdAcS1hti2VW0iodGFbQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 11 Oct 2021 10:29:18 -0700
Message-ID: 
 <CAMKF1sp0HFuupXkYnF1mGPvtizfJreaPJumk9FuWz8t=ydAyng@mail.gmail.com>
Subject: Re: [yocto] Yocto build error
To: JH <jupiter.hce@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Oct 2021 17:29:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55019

On Sun, Oct 10, 2021 at 6:45 PM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> I have following errors:
>
> No GNU_HASH in the ELF binary
> /build/tmp-glibc/work/cortexa7t2hf-neon-oe-linux-gnueabi/solar/1.0.0-0/packages-split/wifi_signal,
> didn't pass LDFLAGS? [ldflags]
>
> So I add --hash-style=gnu to my Makefile:
>
> LD_FLAGS += --hash-style=gnu
> LDFLAGS = LD_FLAGS
>
> But that does not work:
>
> arm-oe-linux-gnueabi-gcc: error: unrecognized command line option
> '--hash-style=gnu'
>
> What is wrong about the error if the  --hash-style=gnu is not the right fix?
>

So it seems your makefile is not respecting the LDFLAGS coming from
the environment during linking.
perhaps you should fix that in your linking rules. hardcoding hash
style like this is not portable.

> Thank you.
>
> Kind regards.
>
> JH
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55010): https://lists.yoctoproject.org/g/yocto/message/55010
> Mute This Topic: https://lists.yoctoproject.org/mt/86227801/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

