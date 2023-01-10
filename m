Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF35C54EBC
	for <webhook@archiver.kernel.org>; Tue, 10 Jan 2023 17:58:44 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.256.1673373520742756755
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jan 2023 09:58:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Uh95+8Ja;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id m3so9430342wmq.0
        for <yocto@lists.yoctoproject.org>; Tue, 10 Jan 2023 09:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BKEDjRG9RGgVRD9QeCHTy1kyY/oiLO//Y3+cNDhPQZQ=;
        b=Uh95+8Ja2xCgdCWXJZcpKJm4Z//8ZtMaHksVWv54l6fNAGX0axnPmbZZy/+ZD6ARhA
         QJkBnBLL0P+eBLs1MxzqAi/P3oBO3jbwM2eNySGh4j7Dv+QnRqLz3tTxl/xVYGQRRYZQ
         3aUdbLQwTvIYNWzJ6JXoeBz/m5rZUC/kU4VNQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BKEDjRG9RGgVRD9QeCHTy1kyY/oiLO//Y3+cNDhPQZQ=;
        b=jZyi9pgc97K6R5sOC/20GMaBM2DEe3Oa3LJhYxTM3Z7pXv6ToBxBmxO0hki6KG7hmZ
         rMDlsqd4/jJWkZO6o1LfDclwIKuiAJg6lET9/USIc92bx8rSwERNe4E11rcqdTqo7LY6
         e/sFu5Npr7tJq31bycvH5RlUOI41pwji8SvastR66s+E/UpuVqeZeUZ9wQRhSmXS9c1c
         oRKRGJYHfBlw5k5YlVs2EE1Qh9DV5SFPWWxy3HJINw3BL6worM15AUU91XI1GZW/TKau
         pVFXBrwGK3kBkknLiyKgN+UzzFiNQTVWLEMW3YgWBON/vna664yWV7mjLs4VIXY/A7I4
         sz+w==
X-Gm-Message-State: AFqh2koOFpxKbYL4SCiH73bY1bXD6CX3zg4ypD456ScTDAyb8cMJTWve
	1D6f9sU04oJAHXsGylc1NzOHIg==
X-Google-Smtp-Source: AMrXdXvFv4Ac7lRf+ICkaZ7fM3tGLLi0Gnypm4DXCCav3EVdTRr2X1s43QopKjSEWlNc2fbaFagpqQ==
X-Received: by 2002:a05:600c:4d25:b0:3d3:5b7a:1791 with SMTP id u37-20020a05600c4d2500b003d35b7a1791mr60732783wmp.41.1673373519141;
        Tue, 10 Jan 2023 09:58:39 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:ef35:464f:aac3:7a? ([2001:8b0:aba:5f3c:ef35:464f:aac3:7a])
        by smtp.gmail.com with ESMTPSA id az20-20020a05600c601400b003d96bdddd3dsm16215478wmb.15.2023.01.10.09.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 09:58:38 -0800 (PST)
Message-ID: <c34963f1dec1ac3660df8415c2809a3e825056c0.camel@linuxfoundation.org>
Subject: Re: [yocto] Can't find go-helloworld in my image
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: michael.opdenacker@bootlin.com, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Tue, 10 Jan 2023 17:58:38 +0000
In-Reply-To: <ebcbd116-7fd9-bb09-588e-c851139b33ea@bootlin.com>
References: <ebcbd116-7fd9-bb09-588e-c851139b33ea@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jan 2023 17:58:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58960

On Tue, 2023-01-10 at 18:48 +0100, Michael Opdenacker via
lists.yoctoproject.org wrote:
> Greetings,
>=20
> Using Poky master, I added go-helloworld to my local.conf file:
> IMAGE_install:append =3D " go-helloworld"
>=20
> ... to build the recipe on=20
> https://git.yoctoproject.org/poky/tree/meta/recipes-extended/go-examples/=
go-helloworld_0.1.bb
>=20
> I then built "core-image-minimal", but though it seemed that the recipe=
=20
> was built, I found no such binary in my image.
>=20
> What could be wrong?

IMAGE_INSTALL or IMAGE_install?

It should be the first one...

Cheers,

Richard


