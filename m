Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web10.41658.1598617365373193412
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Aug 2020 05:22:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VsM2rDzo;
 spf=pass (domain: gmail.com, ip: 209.85.222.180, mailfrom: jeanmarie.lemetayer@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id w186so707126qkd.1
        for <yocto@lists.yoctoproject.org>; Fri, 28 Aug 2020 05:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=YG2XeXX1PE9OsNVNArJxIKJRAyTgRvMj/20OYLkmKdw=;
        b=VsM2rDzoICRuVOgRzCU/n5W0hVCqYI9xfL6rh7CuzEmuMGSyVmvNlK17kPoDNZqs+G
         rxcOsFPq71U8pd+XokhRiPUcg/X5sB1yRbIBiGJZCZse9v6LYn7JWrvgcfY2qWIpmwdj
         EkAa7CYwO6dlcVSR5BF+Kgle3D4Icn/YzvVLM+qCmypWPAx9/nVT3x5AxTlz+6D9LB0J
         XMQT+4dB8jVjSzpsEjYk9KOgqrDUWN6KmmT/EpKLU+8RsGSbELRQLYkPtsa6iGkWP5il
         716GDHiPt/I6L6Fvc1wkKJPlzgmkvQLW68cLf8SjGoIZHBKf2lzALPDGI4RWmkRihOHZ
         GWIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=YG2XeXX1PE9OsNVNArJxIKJRAyTgRvMj/20OYLkmKdw=;
        b=cLpJMIvz8iaqh2+ct4a2OyZN2pndQ4Pf9sggfWTwN5oxD1oo28JHTZ+3/Il9StXHRc
         mJsfV7egH1WPiwWU+d/lFTYTD3N0TOcqAuLfg7z6iVW83dM713VKefqBkF11uQiTfdDm
         wQhnMcOIi0RElt1NZiETgcrpJLirxXEsRk8e/KwD7ml/9jFwidA2jadLHLrgmhgcOexK
         /7O3q8kW2pTpM0yejJ1mfb8la0C3+mlSaZaf0O7Dc/qjv0asoAlyc/Ta7YUsBKoBtrSs
         UBmjnYtLbzeBuve2Ale69ZehNBcnrfi/nto/mUbzQidZgQgIWE82+2tc8vC/TbckrijH
         QWvg==
X-Gm-Message-State: AOAM531CP52EraJ/RnyQQJm6HKDLlidxl+aTcrVEB0zwwk9KR/SZWSOu
	M2bHKGpKqI3oPXie/wc0xsB9IKdKNMahetII2ieDp67TQvY=
X-Google-Smtp-Source: ABdhPJwk8BP7YBC/z5G9X5qC5mS4lhIPbGI+rDKodN3NbSpd+/PpRzr54NEwTLk/T8QZ0Z9rvz8DGkQ6IECRIiDugxk=
X-Received: by 2002:a05:620a:537:: with SMTP id h23mr827741qkh.181.1598617364212;
 Fri, 28 Aug 2020 05:22:44 -0700 (PDT)
MIME-Version: 1.0
References: <PR2PR08MB46513AE9AE69434AF6E860EB8B520@PR2PR08MB4651.eurprd08.prod.outlook.com>
In-Reply-To: <PR2PR08MB46513AE9AE69434AF6E860EB8B520@PR2PR08MB4651.eurprd08.prod.outlook.com>
From: "Jean-Marie Lemetayer" <jeanmarie.lemetayer@gmail.com>
Date: Fri, 28 Aug 2020 14:22:32 +0200
Message-ID: <CAAdc0hw-cRzUX4zHxgApvaUnR69TL9q_rZMtj3HoEQMZoU8-Mg@mail.gmail.com>
Subject: Re: [yocto] dist folder missing in npm build.
To: "Cardenas Jose Antonio (JCARDENA)" <joseantonio.cardenas@niko.eu>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jose,

Seeing your other email in the list, it seems that you are trying to
build an angular or react application.

Right now the build of these applications is not handled by Yocto yet.

For an angular application you will need to pack the ng native tool
and call it to generate the dist directory.

For a react application you have to run the npm build script but the
output files will be in a build directory.

Best regards,
Jean-Marie

On Fri, Aug 28, 2020 at 11:54 AM Cardenas Jose Antonio (JCARDENA)
<joseantonio.cardenas@niko.eu> wrote:
>
> Hi all,
>
>
>
> i=E2=80=99m trying to reproduce an older recipe that was built with npm.=
 It seems that the older recipe copied server files from a =E2=80=9Cdist=E2=
=
=80=9D folder that now is missing.
>
>
>
> I show the install part of the recipe:
>
> do_install() {
>
>     install -d ${D}/usr/httpd/zigbee-ui
>
>     cp -r ${S}/dist/* ${D}/usr/httpd/zigbee-ui
>
> }
>
>
>
> Someone knows what happened with this folder?
>
>
>
> Regards
>
>
>
>=20
