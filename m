Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1A2BC001B0
	for <webhook@archiver.kernel.org>; Wed, 16 Aug 2023 15:32:39 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.163755.1692199957514807885
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Aug 2023 08:32:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=Bcf8yCuW;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-4fe11652b64so10519422e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 16 Aug 2023 08:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692199955; x=1692804755;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/dPpEjhyfFyIXwBzAb6Yx32KAtmu+363rNFItO6qVWE=;
        b=Bcf8yCuWevQCtNkPCTXbtCJ/qjByrufm5eDREJhDp4wNxer0SG9OKUOClbogIXj60u
         3ml2cXqhcQSxCS0wy8AEZxZCHdRXVV82WX5hDRfXeFduduxK5S9T2WmR2jWvKYG4fjja
         E0abuJdXEa80JDEbPd49xsTUH7ODFZKDrJZh8Pki/ogQhugX2K17KQOHDMpJuNet4AH5
         EZEqmBfArNFEXmPzBdWbQ3XMMohRsSsW7B7QM2avlB3Z3e6NxzgIuhLw9VOqkrPRSgNY
         1fycRD1iMgVG8N1T0qrKGBi5urSdZkPt5iBgPbY7z5/mWQwybKkDIyVDQZ5kIHyFzrrY
         dDcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692199955; x=1692804755;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/dPpEjhyfFyIXwBzAb6Yx32KAtmu+363rNFItO6qVWE=;
        b=jf3HykefKZur66WNfK+15jrMjqzreq6ZqnW3UeH+VdyLQVQ0hoeEGxykZwSVWu7AQH
         vr63G2OS4Nc0YgTYkE+CdzSu5HsNqx6p3LmzHuDpOUOAuiYt7rMN6GtVlHT8tyZXcgqk
         hMPvM7Urd6o37WMSpQHA3wSqPBG9lotpw9fjrsLkutqXeaEcgJDJjXHnkrabCSbsvViQ
         0MJNaKc+Mf3j2v2SqirwMxn/MuijzFHHpGTSGUhOURdbUdaAwXGUX4ChcGELiec3b6Eg
         GtyWw6Yg5mLTg+3SAWRNw4sZYs7bIlCUQp5+xV0nqCSbkrhPn6e6gyzo6SV9TRKbP+Ts
         Pqfg==
X-Gm-Message-State: AOJu0YyWgQV0xs1VbB6n8I1aUr6JPBHihSMIKxpQvyH4LxgOe5zpOZRy
	uGMGVgLdTdpqMQosKNa/K+ZAoPTy3n6z9+m5RakNr8Bj
X-Google-Smtp-Source: AGHT+IHmhxaZkPrvTAUaUTKtOEhQcRPpEED7cC4lOtR4ulNfIMb2wRQxo4s6F6CY60lgPMS5jBmkpx6IAfjOFv094b0=
X-Received: by 2002:a05:6512:224a:b0:4ff:75f7:27ff with SMTP id
 i10-20020a056512224a00b004ff75f727ffmr1872764lfu.18.1692199955384; Wed, 16
 Aug 2023 08:32:35 -0700 (PDT)
MIME-Version: 1.0
References: <ZNyvYwadnDXBDsQm@nuoska> <19617.1692186953072162853@lists.yoctoproject.org>
 <ZNy7lBOvfDQheQ5j@nuoska>
In-Reply-To: <ZNy7lBOvfDQheQ5j@nuoska>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 16 Aug 2023 17:32:23 +0200
Message-ID: <CANNYZj8=WHe-oCJRqGB0Ux9qnE=ZH93=PR=Cw=OfZ0w6kArEiQ@mail.gmail.com>
Subject: Re: [yocto] How to switch between package version ?
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: nicolas.wirth@speedgoat.ch, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Aug 2023 15:32:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60812

On Wed, 16 Aug 2023 at 14:05, Mikko Rapeli <mikko.rapeli@linaro.org> wrote:
> There isn't much documentation. It's more about just doing it and resolving any issues
> you find. For example BSP deliveries from vendors frequently only support older yocto branches.
> These should not dictate the poky release for the full SW stack when for example only kernel
> and bootloader are needed from their delivery. Thus using older BSP layer with the kernel
> and other recipes with a newer poky is a matter of configuring the build system and resolving
> any build failures from e.g. newer poky and gcc. The layer compatibility setting meant to warn
> and prohibit from doing this, but this can be overruled in other layers by setting
> e.g. LAYERSERIES_COMPAT_security-layer += "mickledore kirkstone" in layer.conf of your own
> layers. If large parts of a layer (BSP) are not needed in your configuration and cause
> build issues, then those can be hidden by setting BBMASK for those paths.

Mikko, please. Yes, you can work around all these restrictions with
some determination, but they exist for good reasons. So can you avoid
giving newcomers bad advice, and instead dig into the actual problem
they have? Pretty please.

Alex

