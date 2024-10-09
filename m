Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB986CEE35B
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 22:10:34 +0000 (UTC)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
 by mx.groups.io with SMTP id smtpd.web10.29937.1728511826506011497
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Oct 2024 15:10:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VUvzc60R;
 spf=pass (domain: gmail.com, ip: 209.85.161.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-5e803a607f3so109206eaf.2
        for <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 15:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728511825; x=1729116625; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OebFSLCmIRJf9QNta0GdYtn138RF+k5UUISyQRCHgVk=;
        b=VUvzc60Ry8rkYASxTjkTCjk2BuJetvq0Ulfin7CxmuUFVGtm8C78HgQfmbqU4Zx9wM
         fNdBw07cg/f3oCsP8Dm5mTmkylHJmvqavXU1xAC7BPatn9JLECOJCesv6GfVROowjuPQ
         153yJgCZQoS18HZiEc5/na06KqHjp1fNT2XSWxFRrXXCz1m+Njn9plhcBWsU2gRwlmZd
         wST0CgiB0I2kzZq42mT0GsJm95eZ9OccGBruAoGfoVFwq2qWp0YBcNSZVgdvOZRfUX6z
         HoeHSxf2h4NOyMzZ+5Ufs+y+UeTuekbHe+KUMGfmJV9bIlzpYdIZz8qprw4IcU440Plk
         6yOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728511825; x=1729116625;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OebFSLCmIRJf9QNta0GdYtn138RF+k5UUISyQRCHgVk=;
        b=Y7oOAqqIKCHuJ4mBAhgJk/Vh0NdqfQcsWvRTUotu2f+f+p6aZ9CzFtLhLrOTq1IYwq
         6RKzZK6DgQJiEQiOAC8ONAP/IZzYKcoDBfvfPa2dkQuBwUFDmihJPaSrwInraRT5xbOo
         WZGNzR9L4RygGICCjKK/Q9asLEuaRD3RZWUc3JwZIvkuF/G956xT6Hmvo0G+dXZmChgF
         +hVkIOrqbV5+fCFC65n628hpSl38UWRCxZXhe2LQI5gj1UeP5hgMT/Bs37WYZx5xNryi
         D83I9ZCI689o+GfYKRKR+7m/4+J3yppAcLHFRSJ7Uye9nA/w+yTYw0DbKRsqMski2dHJ
         xzWw==
X-Gm-Message-State: AOJu0YyLRHC7zkv0vp5XkkzOuqHsGnxEWdCKeA9yCq4zxZiqN4eOLAM6
	GxSatAbo38hYhgrGs1rxZ9QHdnTZTkZ+3wLLb4sl1/Ufo9SyPe+5SeVRu2JKFiQILR//24yIT9H
	2+6VsZRBJuHqo+nP74NCBEgMU8ToJtKio
X-Google-Smtp-Source: AGHT+IEYcepU2O1y4C1AD4ejc7L6XwMhPZqqZECbjk3MLW7Y91hOiHRQxIWM6l0BE02Ujwatzz/i2JNSM9AyLwd63WI=
X-Received: by 2002:a05:6871:7422:b0:288:2b43:e0e3 with SMTP id
 586e51a60fabf-288344abc51mr2833297fac.35.1728511825350; Wed, 09 Oct 2024
 15:10:25 -0700 (PDT)
MIME-Version: 1.0
References: <CANx9H-AxeCQZiXuwiLj5CXCN107dT_69zHUC0hJAUnHQ_rz9BA@mail.gmail.com>
 <13199.1728483175795897777@lists.yoctoproject.org>
In-Reply-To: <13199.1728483175795897777@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 9 Oct 2024 15:09:59 -0700
Message-ID: <CAMKF1soShpJZAtQcv_fPb6zRhYT8sy6sbiukQGRkO++1DDrB_w@mail.gmail.com>
Subject: Re: [yocto] Input for FIPS openssl to be added in yocto build
To: yocto@lists.yoctoproject.org, emailaddress.ashish@gmail.com
Cc: Tim Orling <ticotimo@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 22:10:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63995

On Wed, Oct 9, 2024 at 7:12=E2=80=AFAM emailaddress.ashish via
lists.yoctoproject.org
<emailaddress.ashish=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi Tim & Khem Raj ,
>
> I was able to get the openssl-3.2.0 using openssl-3.0.8( fips.so  ) follo=
wing openssl documentation.
> So at-least we know that functionality wise this is doable.
>
> The challenge now is in bringing this to Yocto , fow which can team pleas=
e suggest me :
>
> a) After enabling fips in yocto recipe , i can now see that the fips.so a=
nd fipsmodules are created in build.
>     But they are not installed .
>     - If i try to manually add logic in do_install of openssl_3.2.2.bb re=
cipe , it created problem.
>     - That is because the same do_install is being used by :
>            openssl
>            openssl + classnative
>            openssl + classnativesdk.
>      Any suggestion here or any template or any pointer how can add insta=
ll steps only for openssl
>
> b) The logs of fips after configure step.
> project/tmp/work/cortexa8hf-neon-mvdistro-linux-gnueabi/openssl/3.2.2/bui=
ld/providers$ ls -al fips.so fipsmodule.cnf
> -rw-r--r-- 1 ashishm ashishm     221 Oct  9 14:01 fipsmodule.cnf
> -rwxr-xr-x 1 ashishm ashishm 4526092 Oct  9 14:01 fips.so
>
> c) Please note that the compilation went fine after enabling fips .
>
> But since the do_install routine is used by openssl / openssl+classnative=
 / openssl+classnativesdk , any thing i do in do_install effects all three
>

I would suggest to cover fips stuff under a packageconfig called
'fips' then you can check for that in do_install before acting upon
it.

>
> Thanks ,
> Ashish
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63988): https://lists.yoctoproject.org/g/yocto/messag=
e/63988
> Unfollow This Topic: https://lists.yoctoproject.org/unft/106795437/199791=
4
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

