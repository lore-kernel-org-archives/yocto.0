Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E62C07E9D
	for <webhook@archiver.kernel.org>; Mon, 26 Sep 2022 10:00:56 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.26515.1664186455449436140
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Sep 2022 03:00:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Wvy5jEt3;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id s14so9456375wro.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 26 Sep 2022 03:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date;
        bh=dSe6q4/ySCPA7uVMF47zOaLswPG0lrAdIpGR2cDxjs0=;
        b=Wvy5jEt3Esea0xoZQAKO4l6oJC96ZJzock89tuvSRWGpHVbC8S2gXh/m/jBqwkdRO5
         rATJKeE8CU1X4OKNW9n0Z693Cws6AHWffarc7y179Rh9N4aG6ebDNGvbix86kTIHif8e
         bBw8loWGBFSmcH5zyjl3CDSlmQTPjUxbjQKFQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date;
        bh=dSe6q4/ySCPA7uVMF47zOaLswPG0lrAdIpGR2cDxjs0=;
        b=Wl5yNY2CGTqAHayZoXsIeH+30On+PGiCUhjhpCKGEcwNYYQrHed7HfWFKluOf8Va+d
         nBKNiMoFYn5TUP5t5NUn7ZnXp6nuODNnIVczfONrrFkiXbsEjI+PvWkvjbvxMagMmg38
         GGL41hCrHKvbGeQc7ouR7gMOe7FlWJ32tHPYU6IVLgjeLe6VoXhO7XDlNvwl3Ui9yAQG
         XVKKKtoGMqT9OjuDHwFBV+OLGi9X0KRy7t9ZF4KddBpUEGl/5N3GQaCBv+cIHsUJSojX
         KU9YzZu1Ft6mQsBhm2kFlJyQdbbiHloUI/8DU9wPMuxJB/Xb86WooH5WrzC87B5c2p2g
         Erhg==
X-Gm-Message-State: ACrzQf1QV+rmS5dIyt+hiez65+1RNoopIyv4q21vWxVACj+Mo9e1eiqC
	LOUDCQ9t8pn1HQdyzcCgkLm1bxgbiL3Nig==
X-Google-Smtp-Source: 
 AMsMyM6jcyqSV5VQ7iPBTIYwraeG7W0BLWiajBM5jUkUbqp0wzs6kwdT8VB0tAoWlJedgRNjnsAB/w==
X-Received: by 2002:a05:6000:68c:b0:22a:bde3:f8cc with SMTP id
 bo12-20020a056000068c00b0022abde3f8ccmr12715323wrb.556.1664186453485;
        Mon, 26 Sep 2022 03:00:53 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:684e:1a2d:5b94:2c12?
 ([2001:8b0:aba:5f3c:684e:1a2d:5b94:2c12])
        by smtp.gmail.com with ESMTPSA id
 a5-20020a05600c224500b003b4fac020c8sm10452953wmm.16.2022.09.26.03.00.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 03:00:52 -0700 (PDT)
Message-ID: 
 <262fa9d8697d03cd501bf985135a679e8100f9c6.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.0.4.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org,
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>, openembedded-core
	 <openembedded-core@lists.openembedded.org>
Date: Mon, 26 Sep 2022 11:00:51 +0100
In-Reply-To: 
 <DM5PR1101MB23481E2C394B7257B569B59BBB529@DM5PR1101MB2348.namprd11.prod.outlook.com>
References: 
	<010101835d2969ae-38f29d77-d301-465f-a510-8ba455d8ff88-000000@us-west-2.amazonses.com>
	 <DM5PR1101MB23481E2C394B7257B569B59BBB529@DM5PR1101MB2348.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Sep 2022 10:00:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58162

On Mon, 2022-09-26 at 09:22 +0000, Teoh, Jay Shen wrote:
> Hi All,
>=20
> QA for yocto-4.0.4.rc1 is completed. This is the full report for this rel=
ease: =20
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree=
/?h=3Dintel-yocto-testresults
>=20
> =3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
> No high milestone defects.
>=20
> No new issue found.=20

Thanks!

Since this is a point release with a clean build and clean QA report,
we can move straight to releasing it and don't need to obtain approval
from the whole TSC.

Cheers,

Richard

