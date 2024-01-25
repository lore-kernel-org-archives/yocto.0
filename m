Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5E9FC48285
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 09:56:13 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.13888.1706176568267346266
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jan 2024 01:56:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Nr9JFKas;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5101f2dfd97so276819e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 01:56:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706176566; x=1706781366; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9tTBmBzDmlSyNio43SLPsok9rWflQTUyZruhjl1NWM8=;
        b=Nr9JFKasOztpHd2U2KJXtQzZd95OkPAJaSvyaPmWS7a6NV4RMYBv7XV6wyqG+PvU4q
         MpBBTsI4X545VdhcB7UAbQTq0IizRnmG9MKZWjStFCkFudJ3cdixgKGZoDxytfzwFDUz
         YqwQpPvBn4h5PfCGVzyOdw/Zq8Jo7STPq5wYM+e2Xq99D+W2lDWOD44Jzr18wayz9fuu
         UqkmIPIHKzkq+qSHx7+Fbj6ITVAhFvwcBBoYYo19jx7An1IzCAHzJ1M0zaYlDzmrPVAu
         Js3+q3FLN8iUzNkr4jfENl8FEZhX+Let1NGqSfMeWAQ7HIw6ohZioNrWc/jqaEEV76Oo
         Mwug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706176566; x=1706781366;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9tTBmBzDmlSyNio43SLPsok9rWflQTUyZruhjl1NWM8=;
        b=XG3Vjb/33JzmWI4+oZmDPO49LZyu6nnrBfv2NtX0d6TYoMsluXhNk1JM27VFwovJ9L
         CtG//ssfOFnjhMKPUKsdTh9qMKNpWfrD+wtlECB5aXhLE2B/rWwDCUufb7WRvmDiBAN5
         2+KzUkz3q+BA2X5zboy5OQlV0Fv4EbCuNgHXP1jLYH0lUXMimv+BlwAh67mM8oYqE7xS
         HVrYk2B+eFAi9uDI0WvbkpjgaSL6rX0VHrmnSqyn0PKZ+BNLCTLnUoMgxgxDYtQUgJ8e
         x8eOh7OzDKYpu4kO1/BwodVPGWcIoCg20jI4KfSPI46gtBf2duFWeKG9EjeB2BTmNSMg
         GEtA==
X-Gm-Message-State: AOJu0YxkfLPjUYw/unWXd5QYjfWKy2jM9Sszk1yprDBQERfB6Lwx/xOU
	xcUpMjaKjAO55YOrNfV0pRtiWnQJskhwp4xPRnPyLj5dzMGbDG6O/FcV9qXj7MmZlllQ87vhFC+
	X+GXI8UXBT2avwE2MmoHzne3NsSN1W8hm
X-Google-Smtp-Source: AGHT+IFBF3jc9HwVe0jqY0QiYUzs9fgfZIuMH7h06S7PKXf8W/8AsjXfwW2JHOZ/8/x68APTvfJvF293myKamgHPmaM=
X-Received: by 2002:a05:6512:3294:b0:510:128b:4d8e with SMTP id
 p20-20020a056512329400b00510128b4d8emr322139lfe.7.1706176566291; Thu, 25 Jan
 2024 01:56:06 -0800 (PST)
MIME-Version: 1.0
References: <jhZy.1706175515414204391.TrnM@lists.yoctoproject.org>
In-Reply-To: <jhZy.1706175515414204391.TrnM@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 25 Jan 2024 10:55:54 +0100
Message-ID: <CANNYZj-T2Aj7=KGsAoe78-y3BBzJ0+Hfz0puj3VntD2hBqE7OQ@mail.gmail.com>
Subject: Re: [yocto] Multiple images on the same hardware
To: yocto@lists.yoctoproject.org, an010@live.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 09:56:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62287

Multiple machines has a heavy cost, as you effectively double the
amount of builds (and build times) just so you can enable or not some
features in the kernel on the exact same hardware. I would suggest to
keep the same machine and same distro, and just make multiple images
(maybe even in the same bitbake invocation) that include (or not)
needed kernel modules and userspace packages.

Alex

On Thu, 25 Jan 2024 at 10:38, Aleksandar Nikolic <an010@live.com> wrote:
>
> Hi,
>
> I know similar questions have been posted before, but still I have a few =
things to clarify.
>
> We are using the same hardware for multiple projects, which means some pr=
ojects support some interfaces (e.g. bluetooth - Y, WiFi - N), while others=
 some other interfaces (e.g. bluetooth - N, WiFi - Y). Of course I don't wa=
nt support for bluetooth in case we don't need it.
>
> AFAIK there are (at least) two ways to address this: [1] with multiple MA=
CHINE configs and [2] with multiple IMAGE recipes.
>
> For MACHINE_FEATURES the Yocto documentation states the following: Specif=
ies the list of hardware features the MACHINE is capable of supporting. I a=
m reading as: [1] there is only one MACHINE conf per target and [2] MACHINE=
_FEATURES does not change. This leaves us with the second option: we should=
 have multiple image recipes and each recipe should define for itself what =
package groups it will include (e.g. bluetooth support, wifi support, etc.)=
. However, this doesn't play nicely with e.g. kernel fragments. If the prod=
uct does not need to support bluetooth, I also don't want the software stac=
k compiled in my kernel, however, I don't have a variable to use in my kern=
el recipe. Any thoughts to this?
>
> Aleksandar
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62283): https://lists.yoctoproject.org/g/yocto/messag=
e/62283
> Mute This Topic: https://lists.yoctoproject.org/mt/103951016/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

