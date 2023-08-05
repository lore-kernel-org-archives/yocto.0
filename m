Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06C7BC0015E
	for <webhook@archiver.kernel.org>; Sat,  5 Aug 2023 15:54:42 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web10.8405.1691250876466502795
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Aug 2023 08:54:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BmWUvxRg;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-317e14b0935so53634f8f.0
        for <yocto@lists.yoctoproject.org>; Sat, 05 Aug 2023 08:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1691250874; x=1691855674;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y11GXL1+O/fau9migtSDurNnztHas0Fwhb+dBVR3DJs=;
        b=BmWUvxRgIQ4GM7Lj+7CoMgDMQuGd59RZ0kX+/g6hyR7hKDxU+rxPCE/Aa8Spncyl6F
         QE2ZzeiQoeI26Ir8R1p+Sc2GdBzCSxI9Ol64W3OHvnZHssce+yoBg6+ty/L7+UQVt2MY
         l9ppySYfv0N+FWGX+mPnmlaA9YdGkNq/yVq1Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691250874; x=1691855674;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y11GXL1+O/fau9migtSDurNnztHas0Fwhb+dBVR3DJs=;
        b=M8KTU/LeJ74KFvDLO14Psup6TOfLBanRCeZjPBN82oGD8N8q2jfU5sGWaqoNNbiO1j
         +zHsiac7TeSV7cVSkBD500i4DyHGmEEHdomNnYGOmD9YV1hLp/gCaYC9ImOyVFQpMIi3
         j2/HTNM0zUE7A3zPmxzTEAZJ3Z9Vy5Rm1HdrgEy6JYKdXS3PXo2QD9dFWGmHqXAnwBsg
         5Ux/YLrAgJqS9QxFZx9rJM6uOvvWDXM1lYsxxpfZUloJxlyDnGW5dduugqXhZSN19OEQ
         FJxzC8QKZWlT9SJZmgXnP3+ZWbORTHvWjq8t7G2qgklWESMMoazWAsfEfRGmfIZcrSF8
         iwTg==
X-Gm-Message-State: AOJu0YySW6iVnASg+q2FV/LsU67LgNT5rt0/MS4x42mX6H7j5s1Giuel
	g6/Tdv3T/BC7EyV7iUgCjv9NyA==
X-Google-Smtp-Source: AGHT+IFFGnYrkqn30fnCEclcfo/Rcp9AJGXTOfufKTy3Mvapg91tH8utj6qjlfnScagAFi07fLYqAw==
X-Received: by 2002:a5d:6ac5:0:b0:317:6570:afec with SMTP id u5-20020a5d6ac5000000b003176570afecmr2193370wrw.3.1691250874306;
        Sat, 05 Aug 2023 08:54:34 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:1adf:6477:9da8:f35a? ([2001:8b0:aba:5f3c:1adf:6477:9da8:f35a])
        by smtp.gmail.com with ESMTPSA id e3-20020adffd03000000b0031773a8e5c4sm5464361wrr.37.2023.08.05.08.54.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Aug 2023 08:54:33 -0700 (PDT)
Message-ID: <2a629a98608740b32716d596ed0b4bc8a4892cab.camel@linuxfoundation.org>
Subject: Re: [yocto] Questions on multiconfig
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: =?ISO-8859-1?Q?St=E9phane?= Veyret <sveyret@gmail.com>, 
	yocto@lists.yoctoproject.org
Date: Sat, 05 Aug 2023 16:54:32 +0100
In-Reply-To: <CAFs+hh7nisDjEG2C0cF9i2gR+xVhtyBGSCr2v4xWRgQ1Cz-5Lw@mail.gmail.com>
References: <17775879C46AA70D.29484@lists.yoctoproject.org>
	 <CAFs+hh7nisDjEG2C0cF9i2gR+xVhtyBGSCr2v4xWRgQ1Cz-5Lw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Aug 2023 15:54:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60716

On Sat, 2023-08-05 at 16:04 +0200, St=C3=A9phane Veyret wrote:
> > First of all, I am spammed with messages like:
> >=20
> > NOTE: Deferred task
> > mc:initramfs:/home/stephane/Developpements/yocto/sources/poky/meta/
> > recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_package_qa now
> > buildable
> > NOTE: Deferred task
> > mc:initramfs:virtual:native:/home/stephane/Developpements/yocto/sou
> > rces/poky/meta/recipes-
> > devtools/opkg/opkg_0.6.1.bb:do_populate_sysroot now buildable
> >=20
>=20
>=20
> I am still spammed by all these messages. I=E2=80=99d like to understand =
why.
> And if possible, I=E2=80=99d also like to mute the messages I=E2=80=99ve =
seen and
> decided they are not important. It doesn=E2=80=99t seem possible, so I ma=
y
> send a patch in the future for that case.

https://git.yoctoproject.org/poky/commit/bitbake?id=3Debb8b39463cef3c3d0f90=
f054c433b2f5256cb1a

It is also possible to write specific log configuration files to
control the different messages.

That said, see the discussion on the bitbake-devel list about this
patch and why merging it will probably prevent us debugging some kinds
of build issues in future :/.

Cheers,

Richard

