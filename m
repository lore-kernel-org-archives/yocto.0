Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81AF4C433EF
	for <webhook@archiver.kernel.org>; Wed, 18 May 2022 14:36:47 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web12.5768.1652884600243808252
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 07:36:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=aNWDUlZy;
 spf=softfail (domain: sakoman.com, ip: 209.85.208.49,
 mailfrom: steve@sakoman.com)
Received: by mail-ed1-f49.google.com with SMTP id eg11so3252818edb.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 07:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ql1Omk9lLGh1VRnvvOluHsTXMMiuBUJoD4VFatPR7oE=;
        b=aNWDUlZyX2ikX2Tjt/PJRWp001P7gAD6PkVvNlQJGLWcdTLqxvNGdUj+B6BudOK7CX
         V2+GtBtJYKr50T93kMgVbUF53ShJxuKJBWfU1/PZqvnwj2WAMnhlZbOx/52VLlcs4lYf
         pjIj40ocbt/tIkyAOz6EeGTpNUI91VM7GL2RgHi8bb7Y5E24zKMru4iqmnRhy71bLtq1
         MJVOtlty9mljsk5z36zlbQ2SKYFlVAIEDtOGEErYGeQFSg6A9AgsE/H8htLaQrb3s6EI
         YgfaUG1pJa3eQEeGzf9i2wS22bQ5/xvFqJuKpj/rnfZTjrOHKpTrQUZqSF3HsZSbZbk9
         HKKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ql1Omk9lLGh1VRnvvOluHsTXMMiuBUJoD4VFatPR7oE=;
        b=ppJZm1oMZtL029RWVdfziBAV2Cll1RW6ajbv7KPY12tVWE6VmuVm+Hic7FQ8GGJl3E
         GGXsgIcgmTaQv5vK6LBCZnfBXmvZZDd/vJ4jBZlMgjP23i4efOK577Fy/t+nqpiDeB0e
         oOc1cYg3KgcrDAOkd9U3J28PSu6kWCzlqqvsY+CUFxpPTSZ9cn6sn0+W+9LE8ZnBtV9M
         X2vOK1BRtu4dyJXbUqyZAI5L8SIMPBQpIjE1YHQdQjoENmu1AWhZzFloBG3vgEf6T39k
         zpQRIxfRBcSj/6sg4YOsAoXAxJbu+qSatYcxydFmqDwbgRqOjHWpo8DYsJmrsoiGFXnW
         fd8Q==
X-Gm-Message-State: AOAM530Fbj6NO9bV5TawTuiH2MwXxyhN9XugrMvHGSd+pbxMcCWZjUaH
	X2JBlMaBmlElnl94bcM//dWYxIXAP3bVxdC/k9JJyQ==
X-Google-Smtp-Source: 
 ABdhPJz0E7V5hJeHe/BYCrfl8ouoR0ae0j6igvoAp+TlEdicjOZQYiP12JeOj0IwJqDOaaUzkt0Mb6EStkOidbw6+bQ=
X-Received: by 2002:a05:6402:44e:b0:42a:6266:3f15 with SMTP id
 p14-20020a056402044e00b0042a62663f15mr24241edw.418.1652884598206; Wed, 18 May
 2022 07:36:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220518101429.339410-1-daniel.karlsson@actia.se>
In-Reply-To: <20220518101429.339410-1-daniel.karlsson@actia.se>
From: Steve Sakoman <steve@sakoman.com>
Date: Wed, 18 May 2022 04:36:26 -1000
Message-ID: 
 <CAOSpxdZ3Yf3dzwU+H2rmaq4n9dqu+iaazERren7Seg2qpi3JFg@mail.gmail.com>
Subject: Re: [yocto] [dunfell][PATCH] openssl: update from 1.1.1n to 1.1.1o
To: Daniel Karlsson <daniel.karlsson@actia.se>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 May 2022 14:36:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57130

On Wed, May 18, 2022 at 12:14 AM Daniel Karlsson
<daniel.karlsson@actia.se> wrote:
>
> This update fixes CVE-2022-1292.

Hi Daniel,

I've already taken a patch for this update and it is in the set sent
out for review yesterday:

https://lists.openembedded.org/g/openembedded-core/message/165788

In the future if you want to check what patches I currently have under
test, you can look at this branch of oe-core:

https://git.openembedded.org/openembedded-core-contrib/log/?h=stable/dunfell-nut

I appreciate the help with CVEs so don't let this discourage you from
submitting future patches! It's a never ending battle to keep up with
new CVEs :-(

Steve

>
> Signed-off-by: Daniel Karlsson <daniel.karlsson@actia.se>
> ---
>  .../openssl/{openssl_1.1.1n.bb => openssl_1.1.1o.bb}            | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>  rename meta/recipes-connectivity/openssl/{openssl_1.1.1n.bb => openssl_1.1.1o.bb} (98%)
>
> diff --git a/meta/recipes-connectivity/openssl/openssl_1.1.1n.bb b/meta/recipes-connectivity/openssl/openssl_1.1.1o.bb
> similarity index 98%
> rename from meta/recipes-connectivity/openssl/openssl_1.1.1n.bb
> rename to meta/recipes-connectivity/openssl/openssl_1.1.1o.bb
> index 8538bd5a18..c9cfc759c9 100644
> --- a/meta/recipes-connectivity/openssl/openssl_1.1.1n.bb
> +++ b/meta/recipes-connectivity/openssl/openssl_1.1.1o.bb
> @@ -24,7 +24,7 @@ SRC_URI_append_class-nativesdk = " \
>             file://environment.d-openssl.sh \
>             "
>
> -SRC_URI[sha256sum] = "40dceb51a4f6a5275bde0e6bf20ef4b91bfc32ed57c0552e2e8e15463372b17a"
> +SRC_URI[sha256sum] = "9384a2b0570dd80358841464677115df785edb941c71211f75076d72fe6b438f"
>
>  inherit lib_package multilib_header multilib_script ptest
>  MULTILIB_SCRIPTS = "${PN}-bin:${bindir}/c_rehash"
> --
> 2.25.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57127): https://lists.yoctoproject.org/g/yocto/message/57127
> Mute This Topic: https://lists.yoctoproject.org/mt/91183012/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

