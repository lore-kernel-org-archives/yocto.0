Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56543C47258
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 22:06:04 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.7548.1706047560214238562
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jan 2024 14:06:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AJSy//1S;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40eacb6067dso31462325e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 14:05:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1706047558; x=1706652358; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:to:from:subject:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tPP6nt662Jag29US78lPzGFQVrDLHJDENXFIIlPghso=;
        b=AJSy//1SQFdQ46x2971AiAiVVFrrXmpNcs9shrUWmv6+QWKNE0rSb8ANEhWdKkZAmV
         QKyCBwP5NmvND7Ey+SBuzBfXJmChBq2DvtmXIBOgl3aAXSGN5ZPE6xMpAoQUU96UV1vc
         g9SB8jFz4AVA/AjLDGSeE2jcNhvtaxkqr5PTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706047558; x=1706652358;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tPP6nt662Jag29US78lPzGFQVrDLHJDENXFIIlPghso=;
        b=eSGb8/sUSbmlpZ37xMA6sphmf9TpI3bKXXYwAqhOqO3QHj0aB7010vV/kBgqHJ685f
         gAbQIR8otPQUEDVpeosYvDCVXHqpAXQ4ZB/UP2ykcMGF32MUDqFOsLz4Tz2M8RPfw1rC
         ChqY+PS0gpD18e7OnyH2hm2M8fhhE6ouQRWj2dOu0eHPrVd3Eh1/khxW5Mu+FZtnwQFH
         jQYvDPle9aGndBRDmjE6zpwyDluP/S3fKiUQtZpOjkp6Ehxod1DD2rMgt4KU7rQT4m+N
         rGM/UAlWBxtP5Dh3ejgeLSrYR0LHXBy0Yy3aoeLF83+qTDhYhXfQzadC+hCge/2rJTkn
         qtRg==
X-Gm-Message-State: AOJu0YxMn9BTh7xm6wkFFqBYfvQuEfSkO5MjkzKla4NXIjbNHQBWqEwr
	DMyt1xRcTxAG1/CM8PFQjiZLVEU78ZVn7qqq4kDC5+9yI4NZ7qvfLcVn7x2/xRU=
X-Google-Smtp-Source: AGHT+IFDsCnyBrPoHfzLt0kZ5RwKUwqRmpQmT9jH7ST7x4TrzeHd+9xazYf/0Hkaua1Y0pM4bIVceQ==
X-Received: by 2002:a05:600c:5208:b0:40e:c3a0:594d with SMTP id fb8-20020a05600c520800b0040ec3a0594dmr175685wmb.370.1706047558389;
        Tue, 23 Jan 2024 14:05:58 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:9f8c:6efa:4303:47ea? ([2001:8b0:aba:5f3c:9f8c:6efa:4303:47ea])
        by smtp.gmail.com with ESMTPSA id u13-20020a05600c19cd00b0040e451fd602sm47425473wmq.33.2024.01.23.14.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 14:05:58 -0800 (PST)
Message-ID: <f7d1a2f5f9737d917b52c646fdaa799e0b3cd12d.camel@linuxfoundation.org>
Subject: Re: AW:  Re: [yocto] Remove Python dependency from target package
 only
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Sebert, Holger.ext" <Holger.Sebert.ext@karlstorz.com>, Quentin Schulz
	 <quentin.schulz@theobroma-systems.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Tue, 23 Jan 2024 22:05:57 +0000
In-Reply-To: <DU2PR01MB87177C601B1943557B44F8F4A4742@DU2PR01MB8717.eurprd01.prod.exchangelabs.com>
References: 
	<DU2PR01MB871782D4F3B6384568F20F99A4762@DU2PR01MB8717.eurprd01.prod.exchangelabs.com>
	 <07856f5e06ff5c9fc1ffa903b682426de2a32a65.camel@linuxfoundation.org>
	 <DU2PR01MB87178F9BB04E6D84F03AFE1CA4752@DU2PR01MB8717.eurprd01.prod.exchangelabs.com>
	 <f854dec6-5968-4b79-b8d5-6abfd8d75135@theobroma-systems.com>
	 <DU2PR01MB87177C601B1943557B44F8F4A4742@DU2PR01MB8717.eurprd01.prod.exchangelabs.com>
Autocrypt: addr=richard.purdie@linuxfoundation.org; prefer-encrypt=mutual; keydata=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
 YNvg==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 22:06:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62249

On Tue, 2024-01-23 at 21:58 +0000, Sebert, Holger.ext wrote:
> Hi Quentin,
>=20
> ________________________________________
> Von: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>=20
> > What does
> > bitbake-getvar -r libxml2-native PACKAGECONFIG
> > and
> > bitbake-getvar -r libxml2 PACKAGECONFIG
> >=20
> > return?
>=20
> Here is the output of the respective commands:
>=20
> $ bitbake-getvar -r libxml2-native PACKAGECONFIG
> #
> # $PACKAGECONFIG [6 operations]
> #   :append[pn-qemu-system-native] /home/hosebert.ext/data/poky-python-ge=
tvar/build/conf/local.conf:251
> #     " sdl"
> #   :remove[class-target:pn-libxml2] /home/hosebert.ext/data/poky-python-=
getvar/build/conf/local.conf:292
> #     "python"
> #   set /home/hosebert.ext/data/poky-python-getvar/meta/conf/documentatio=
n.conf:320
> #     [doc] "This variable provides a means of enabling or disabling feat=
ures of a recipe on a per-recipe basis."
> #   set /home/hosebert.ext/data/poky-python-getvar/meta/recipes-core/libx=
ml/libxml2_2.11.5.bb:32
> #     [_defaultval] "python     ${@bb.utils.filter('DISTRO_FEATURES', 'ip=
v6', d)} "
> #   set /home/hosebert.ext/data/poky-python-getvar/meta/recipes-core/libx=
ml/libxml2_2.11.5.bb:33
> #     [python] "--with-python=3D${PYTHON},--without-python,python3"
> #   set /home/hosebert.ext/data/poky-python-getvar/meta/recipes-core/libx=
ml/libxml2_2.11.5.bb:34
> #     [ipv6] "--enable-ipv6,--disable-ipv6,"
> # pre-expansion value:
> #   "python     ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)} "
> PACKAGECONFIG=3D"python     ipv6 "
>=20
> $ bitbake-getvar -r libxml2 PACKAGECONFIG
> #
> # $PACKAGECONFIG [6 operations]
> #   :append[pn-qemu-system-native] /home/hosebert.ext/data/poky-python-ge=
tvar/build/conf/local.conf:251
> #     " sdl"
> #   :remove[class-target:pn-libxml2] /home/hosebert.ext/data/poky-python-=
getvar/build/conf/local.conf:292
> #     "python"
> #   set /home/hosebert.ext/data/poky-python-getvar/meta/conf/documentatio=
n.conf:320
> #     [doc] "This variable provides a means of enabling or disabling feat=
ures of a recipe on a per-recipe basis."
> #   set /home/hosebert.ext/data/poky-python-getvar/meta/recipes-core/libx=
ml/libxml2_2.11.5.bb:32
> #     [_defaultval] "python     ${@bb.utils.filter('DISTRO_FEATURES', 'ip=
v6', d)} "
> #   set /home/hosebert.ext/data/poky-python-getvar/meta/recipes-core/libx=
ml/libxml2_2.11.5.bb:33
> #     [python] "--with-python=3D${PYTHON},--without-python,python3"
> #   set /home/hosebert.ext/data/poky-python-getvar/meta/recipes-core/libx=
ml/libxml2_2.11.5.bb:34
> #     [ipv6] "--enable-ipv6,--disable-ipv6,"
> # pre-expansion value:
> #   "python     ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)} "
> PACKAGECONFIG=3D"     ipv6 "
>=20
> So ... PACKAGECONFIG seems o.k. Notice, however, that the value of the PY=
THON variable is incorrect:
>=20
> $ bitbake-getvar -r libxml2-native PYTHON
> #
> # $PYTHON
> #   set /home/hosebert.ext/data/poky-python-getvar/meta/conf/bitbake.conf=
:575
> #     "${@sys.executable}"
> PYTHON=3D"/usr/bin/python3"
>=20
> It points to the host's Python installation and not the one in Yocto!

I suspect this is related to:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15361

and there is an explanation of what is happening there. I'm not
entirely happy about the behaviour of class- overrides and
inherit_defer but I'm not sure what to do about it.

Cheers,

Richard



