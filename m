Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D9B5C27C77
	for <webhook@archiver.kernel.org>; Wed, 12 Jun 2024 15:40:58 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web11.1759.1718206848521202679
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jun 2024 08:40:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YA2D4vhn;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-35f188e09a8so12040f8f.2
        for <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 08:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1718206846; x=1718811646; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n9omUKRoWBTRZnk9h0lM1JBcGFXSZ6bWNFyfwNwe/Tw=;
        b=YA2D4vhnToUV6jV+5cUkZZdPmgxXMFs+Ij+HGaxFKiz4ayMSgEPmcXEqN12f9UToW1
         GlpfOyeHAtKxIuxaEZiwCh//gC8LudFQXF75cdtbp2OUjeZJEPhv/0VxbUgyvQ9anRXd
         A2OM37kMfKlmCiUMaKJ/1+DIiTfuZhY2hryic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718206846; x=1718811646;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n9omUKRoWBTRZnk9h0lM1JBcGFXSZ6bWNFyfwNwe/Tw=;
        b=VbWFKjvcIbGophOuq3VkwBXUmMV4/tnNBMCUoXH/Iar86tT7xW0sZUyPNuIMrXp5dc
         JnsD5BBDCcM/mTMlpxONXyuuCooimoq4aFW01TXGlU+inpcTcTm5WMFI1pLE0CGtE4Z6
         8g/S30miV8D63QMhICiPjoTK+EIZZos9oAiSToDr9fsx6Gxyvq+4cr1pF5uRAO14SwDv
         5WmDhFH4elItNaH+psD1Vnew7e+4kEHutHA3jFRLFzNJvQpqg//NuIsJDsaQebedzMkA
         QdGwn/gb8vHdaNseIzyxQuUN4S3muLBK4YyCZs3RlIrHbld1+1vlyjBgVN9aG/35Iquo
         0dtA==
X-Gm-Message-State: AOJu0YxPfyBZ0u7pHDkZMFqwEvS68u3Z/fBR4/IJDctN6FL2n/Jgqwy5
	GDSohFdRy0BV34+rSzn1egROk7s2+ujMLLjs/nQkAUaUEuL9Q0oheYJQ/ekDSCtDdO+yivjpQ97
	G
X-Google-Smtp-Source: AGHT+IF1cGabJPSe1ubPSLICH910lQGa4adIq8IiNIxSw+WGeRAPfPNGlBFCf5zXziPOUIeMB9SdWA==
X-Received: by 2002:adf:fe01:0:b0:35f:2054:f3cb with SMTP id ffacd0b85a97d-35fe892806emr1849233f8f.65.1718206846546;
        Wed, 12 Jun 2024 08:40:46 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:c2e8:7191:b6d9:616d? ([2001:8b0:aba:5f3c:c2e8:7191:b6d9:616d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35f0f2b0d85sm13130490f8f.42.2024.06.12.08.40.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 08:40:46 -0700 (PDT)
Message-ID: <cd480f54e6afeb3d1332e854b59ded891018cd5f.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper] config-json: use master
 branch for meta-agl
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, scott.murray@konsulko.com,
 steve@sakoman.com
Date: Wed, 12 Jun 2024 16:40:45 +0100
In-Reply-To: <c304afdf-e085-d81d-c317-4d89d5823571@konsulko.com>
References: <cover.1718202342.git.steve@sakoman.com>
	 <e9bb457701c3b1878bf236e2b13cf4d17fd5c9c8.1718202342.git.steve@sakoman.com>
	 <c304afdf-e085-d81d-c317-4d89d5823571@konsulko.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.0-1build2 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 15:40:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63334

On Wed, 2024-06-12 at 11:30 -0400, Scott Murray via
lists.yoctoproject.org wrote:
> On Wed, 12 Jun 2024, Steve Sakoman via lists.yoctoproject.org wrote:
>=20
> > scarthgap is no longer supported on next branch
> >=20
> > Signed-off-by: Steve Sakoman <steve@sakoman.com>
> > ---
> > =C2=A0config.json | 2 +-
> > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/config.json b/config.json
> > index fbf2e6c..2089fa9 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -1853,7 +1853,7 @@
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 },
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "meta-agl": {
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 "url" :
> > "https://git.automotivelinux.org/AGL/meta-agl",
> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "br=
anch" : "next",
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "br=
anch" : "master",
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 "revision" : "HEAD",
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 "no-layer-add" : true
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 },
>=20
> Is this patch missing a "[scarthgap]"?=C2=A0 I ask because it makes sense
> for the yocto-autobuilder-helper scarthgap branch, but master AB will
> need to keep using meta-agl's next branch.

It is and I did check that with Steve on irc. It only merged to the
scarthgap branch.

Cheers,

Richard

