Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2701BC7EE29
	for <webhook@archiver.kernel.org>; Sun,  4 Jun 2023 12:51:42 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.16283.1685883100894284764
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Jun 2023 05:51:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=cru7TVny;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-3f6e1393f13so32274095e9.0
        for <yocto@lists.yoctoproject.org>; Sun, 04 Jun 2023 05:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1685883099; x=1688475099;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VaJZNtgT/Z3mTTx0qYom0+L9NbOrXs7Kc0ZKkksbrdo=;
        b=cru7TVnybulpCVKzsQAEMeivIsUSkTYhf6nUdvEyRE8cjgb+P6sVi7gm3tX+0TA0MJ
         U8frFoNQ3gBFPkErs0KySn1z6ISEqoMbbLtoeHeQj2k/epIMLkvNElzDl5dd5+FMoL+h
         LGH5Ktbhsdcau2zlISZ9D7O4/D9Gh89mFmXKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685883099; x=1688475099;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VaJZNtgT/Z3mTTx0qYom0+L9NbOrXs7Kc0ZKkksbrdo=;
        b=cnvgXnHzxQ8JbAD5otw4dUathzMGRDh0YlIaORVOZbpM/bjCLTBMWC9Q4XApuvAlCi
         Z72txYh0GWKC1zndacJsXoKJTIbToTh68Wx3B3fSklhRwJCtY+N/5O1exM188qEfeEKL
         kXh1Witem2WFcaWo0ZX2yyA5He4eC0wlLMXqWUcJxMvI7WC3RH9aLsTHUCZ6Zy0EfNdN
         v9ijlJJ1UFoEphg1rftSq0AKpncnX5d+gUps7aJf+ZLRT5KBHdN/jJPSEbUbUZHlk1nu
         hxVm5xfuF1iLuLpIyZKRS3VoSmDIynJd5iRU9y8omzEeiRyBsVENl/xJuxaWNZetcj89
         oniw==
X-Gm-Message-State: AC+VfDwrdhhDw0ZXILR0S9nrBL3M2o09raHOEBhyiBO9nDGxb8BAkNj+
	Y5lwf5gZRB4VNPIZCHgGpw/cRA==
X-Google-Smtp-Source: ACHHUZ66sOCeiCD6cVeIQsFBb/cDG9zLgZGPnEq+iWE7uH1LZdC4F7erI25a9AvRz4G8chUm2QyRKw==
X-Received: by 2002:a7b:c3d0:0:b0:3f6:1a3:4cee with SMTP id t16-20020a7bc3d0000000b003f601a34ceemr4993549wmj.14.1685883099232;
        Sun, 04 Jun 2023 05:51:39 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:88e3:5f9e:2ee0:22b? ([2001:8b0:aba:5f3c:88e3:5f9e:2ee0:22b])
        by smtp.gmail.com with ESMTPSA id 4-20020a05600c020400b003f4268f51f5sm7864954wmi.0.2023.06.04.05.51.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jun 2023 05:51:38 -0700 (PDT)
Message-ID: <6fbff5c83efad2f5379778dd1442ac248cc67f82.camel@linuxfoundation.org>
Subject: Re: [yocto] Register out-of-tree fetcher with devtool
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Weihmann, Konrad (Avnet Embedded)" <Konrad.Weihmann@avnet.eu>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Sun, 04 Jun 2023 13:51:38 +0100
In-Reply-To: <bf178b45e66f404094d05cd4e1d524a2@avnet.eu>
References: <bf178b45e66f404094d05cd4e1d524a2@avnet.eu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 04 Jun 2023 12:51:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60174

On Fri, 2023-06-02 at 04:47 +0000, Weihmann, Konrad (Avnet Embedded)
wrote:
>=20
>=20
>=20
> Hi all,
> =C2=A0
> we do have an out-of-tree fetcher that I would like to make use of
> with devtool, for instance for upgrade checking.
> Within our recipes the fetcher is registered by this workaround
>=20
> python () {
> =C2=A0=C2=A0=C2=A0 import foo
> =C2=A0=C2=A0=C2=A0 bb.fetch2.methods.append(foo.FooFetcher())
> }
> =C2=A0
> Which isn=E2=80=99t the nicest possible solution still does the trick.
> =C2=A0
> But that doesn=E2=80=99t work for devtool, as it seems to not take any bu=
t
> oe-core lib-paths into consideration.
>=20
> For devtool check-upgrade-status <recipe with above code snippet>
>=20
> I get something like =E2=80=9Cno handler for foo://=E2=80=A6 found=E2=80=
=9D.
>=20
> Is there any way to register this out-of-tree fetcher module so
> tinfoil/devtool can =E2=80=9Csee=E2=80=9D them?

Currently, no, there isn't a good API for doing this. It is something
I've wondered how to fix for a while.

The addpylib directive we recently added does go some way to allowing
layers to pragmatically add python modules. There might be options to
buildup upon that extend the fetcher from there?

Cheers,

Richard

