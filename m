Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web12.4776.1619148191817903692
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 20:23:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DsXjq6+n;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id o2so22100867qtr.4
        for <yocto@lists.yoctoproject.org>; Thu, 22 Apr 2021 20:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=1WxKdVNZGqhNJiKNwCJv6aoRLYyfOgLtPsGUv9xAQpw=;
        b=DsXjq6+nHfqdN9JsJk4UaUMgmM/YSGj8bnip0COaK+uDX3l1KrwDpwgO9C+4wuquoe
         4NS2u1LDIbbqrevC0Jtn5lzllnT/dGdKGiTR1DMupvnjz4QXPukp/Rjf7MVD3kpbL3N2
         lWAWtOWxX5b00dF65WK1QffwBw+7paC4jGj8m1UzcFYcVZizzOAXOHdMc92yGNGomGBl
         827YrkXTxw799xkbyde4Cx8PTM/AjVANXvvBBoLH7j/XzH3/+I3GlZM9iBaPRgeUvt9h
         4XxpBGDScTF33u6CJH8u9v3jY653YrCubhG10KMkNLv19qH4VePe/61fYcRFV8OlnIZE
         idSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=1WxKdVNZGqhNJiKNwCJv6aoRLYyfOgLtPsGUv9xAQpw=;
        b=diun2kT11bFGc+C7k0WKfALUrYZwc/ahZhbJ+bNbYhXnAE75PQmgCyeQHoTa5kSOOI
         HxG39VoJ+5tgUXwF5tp+4Bn0af4HGkVe+a9gtr1A0ralIVPZE4NFNcSv6Cbn07P4sZbB
         Af8LeF3AKTAr5STWU0SAAjAjA3rSl++AiEDq6ysLpn1aOmFyLfptYNrrXNlLo05IaeyY
         dguvwm3BuTseJ6OTicsDHpIRGCU5TfBTyx05L6IB/wINS3j6KQDW9bodrAGpXRv6W4DX
         lAN2Qof8dEabpkKceols5RyLwFLV5M20hHy6H6u6qVgLGACqNetMnlPoNF8r3tsCqZr9
         dN0A==
X-Gm-Message-State: AOAM531NBwENdyT6HdlfDHfOru7stjo2jRT1awWS6wRuIcnFWCymVrrQ
	e/caey9DrNbODeImm3ZK8CVw4l7GWiBIHHbNscw=
X-Google-Smtp-Source: ABdhPJyAT1tjG4TNwe5l6pRz5hL0itSjinFU/w1KkVgqzJVgNZHl6IuLXhEPUan0CUDn6+jaS2999q4tDGkFDrVzv9c=
X-Received: by 2002:ac8:5cc4:: with SMTP id s4mr1690374qta.214.1619148191028;
 Thu, 22 Apr 2021 20:23:11 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.167842C5B6229391.407@lists.yoctoproject.org>
In-Reply-To: <MADEUP.167842C5B6229391.407@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 22 Apr 2021 20:22:45 -0700
Message-ID: <CAMKF1sr3OFPvt_EQ=MweO7MHEw+qm5977zGsfR67=K9O4Penwg@mail.gmail.com>
Subject: Re: [yocto] #yocto #sdk #cmake
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

take a look at
https://github.com/kraj/meta-clang/blob/master/recipes-core/meta/clang-env=
ironment.inc#L11-L19

perhaps that can be something you might find useful

On Thu, Apr 22, 2021 at 11:51 AM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> When setting up an SDK, (standard or extensible),  build which will be u=
sing cmake, is there a proper way to pre-configure OEToolchainConfig.cmake =
for ones env/applications ?
>
>
>
> Currently I build the SDK, install, and then manually edit=E2=80=A6
>
>
>
> Thanks,
>
> Steve
>
>
>=20
>
