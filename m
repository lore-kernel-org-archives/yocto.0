Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BC29EB64DC
	for <webhook@archiver.kernel.org>; Thu, 29 Jun 2023 10:49:05 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.5384.1688035737318535397
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jun 2023 03:48:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=ZsG9usbJ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-313f61890fbso536729f8f.3
        for <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 03:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1688035735; x=1690627735;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=scbV851xRnTkY8UKG2u0p4k8LUZdUiQGxdOe0a/0EFE=;
        b=ZsG9usbJ6TEn3f5qLARKP2bYA+sdjuNZ0JL3HKR/ACrKDQan4/he3qCUMBUl3kjngh
         jqP0yejpzjhyIq2J2A4yEwKjw1M1aRXQJ0mNKDxvdXq09lw7v3PHu6KsU1jdCvNxzNbQ
         KyY0+kojhgOv9vdN+drv93A2oLWr5evyW4nnc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688035735; x=1690627735;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=scbV851xRnTkY8UKG2u0p4k8LUZdUiQGxdOe0a/0EFE=;
        b=Kd60xj2aHG+iXD9e02kkenKi3Q3WHSESJAheS5U1BYjaoov+ANoWrto3RabgOskQi6
         pTT59cplzuxrW6SeLFCi0PqVCRbriKPRqQ53abDdsifd5whixXsHdRI4Vulbz/YDrpIq
         1aAJApOHwnzQkmTpP9kwUighmz1mMliSgG+/zOYKXTAa2rmCApJptGy1vQs0jrhk8xAQ
         39FeHZ5Q71BCcO4Qu+rz1uK/zDJsrt48cPY7/FwvlNDP9l0ssm0PM3FDCV421bEWKIgu
         4AUU56vkek7mNIQvBCsiXZNuc7T+WTiK+TapldLa2UKw/FXsGCrKvObyp/JXsSpmFPTl
         wSug==
X-Gm-Message-State: AC+VfDwQYOHZ6Da1bkdZVctLDlXblbPyN/pw135IgQpgBtHaiqoHOjul
	NvlhCXZibTdj5hPWtYTn4CFM0w==
X-Google-Smtp-Source: ACHHUZ4O4uwms/yx0OfaJ44+GTWu+vl/uR3/0uHO74XugxQijDULIe66od57Kd18wEROWM0+fH54hQ==
X-Received: by 2002:adf:f7c2:0:b0:314:e16:3ca0 with SMTP id a2-20020adff7c2000000b003140e163ca0mr2951815wrq.53.1688035735611;
        Thu, 29 Jun 2023 03:48:55 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:5a50:d5ad:bafb:a717? ([2001:8b0:aba:5f3c:5a50:d5ad:bafb:a717])
        by smtp.gmail.com with ESMTPSA id d13-20020a5d4f8d000000b003063db8f45bsm15577122wru.23.2023.06.29.03.48.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 03:48:55 -0700 (PDT)
Message-ID: <cf6536b59eec4abada038929268afacca483f30c.camel@linuxfoundation.org>
Subject: Re: [yocto] [meta-security][PATCH] layer: add more memory for Qemu
 machines
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: Armin Kuster <akuster808@gmail.com>, yocto@lists.yoctoproject.org
Date: Thu, 29 Jun 2023 11:48:54 +0100
In-Reply-To: <ZJ1g1eUyuI28nSbY@nuoska>
References: <20230628125609.1327477-1-akuster808@gmail.com>
	 <bb92fedccd554006ed61fdb765c6655b7d9eb539.camel@linuxfoundation.org>
	 <ZJ1g1eUyuI28nSbY@nuoska>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 10:49:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60474

On Thu, 2023-06-29 at 13:45 +0300, Mikko Rapeli wrote:
> Hi,
>=20
> On Wed, Jun 28, 2023 at 05:47:21PM +0100, Richard Purdie wrote:
> > On Wed, 2023-06-28 at 08:56 -0400, Armin Kuster wrote:
> > > Signed-off-by: Armin Kuster <akuster808@gmail.com>
> > > ---
> > >  conf/layer.conf | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >=20
> > > diff --git a/conf/layer.conf b/conf/layer.conf
> > > index 334a945..5f289cb 100644
> > > --- a/conf/layer.conf
> > > +++ b/conf/layer.conf
> > > @@ -28,4 +28,7 @@ INHERIT +=3D "sanity-meta-security"
> > > =20
> > >  QB_KERNEL_CMDLINE_APPEND =3D " ${@bb.utils.contains('DISTRO_FEATURES=
', 'apparmor', 'apparmor=3D1 security=3Dapparmor', '', d)}"
> > > =20
> > > +# We need more mem to run many apps in this layer
> > > +QB_MEM=3D"-m 2048"
> > > +
> > >  addpylib ${LAYERDIR}/lib oeqa
> >=20
> > Putting that unconditionally in a layer.conf is a pretty poor thing to
> > do for usability IMO as it effectively forces that decision on anyone
> > including the layer. There has to be a better way to handle that, at
> > least conditionally on some override?
>=20
> Currently these belong logically to machine config but what about generic
> machine targets. Could an image config define how much memory is needed
> to run the image on qemu?

I believe Armin did move these to the image recipe which is what we do
in core in some cases for this too. I think that makes more sense.

Cheers,

Richard

