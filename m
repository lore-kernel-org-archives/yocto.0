Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A2CC2BD09
	for <webhook@archiver.kernel.org>; Thu, 27 Jun 2024 14:23:33 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.9188.1719498209222783804
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jun 2024 07:23:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JKc7Q4bf;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.181, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2ec52fbb50aso68180471fa.3
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 07:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1719498207; x=1720103007; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iLVYmzCRKPLHqgoetwLj0VOwgxGralNpNTrNkSHNthI=;
        b=JKc7Q4bfoAmydrZMAgTPRcQk+r+nNrZnEJAR5iXUAWgHYLaxJwtgGshgxDixLM5yS2
         Bglb4I5ALMNWTxiNOTCfZwG0SEYQGg0D5oY7gl9avpPaWOH2k42gxkdxwYod0x9WiKH+
         sKk0HanYNMGLCdE/Qt/3QPWOrhpnqUYws3rvY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719498207; x=1720103007;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iLVYmzCRKPLHqgoetwLj0VOwgxGralNpNTrNkSHNthI=;
        b=ccEXr4Pfkq4aG2wadPv9QMN0LmkZqvZeontgMPYZTku9hBku0Yl/FSvPl+ac6vtUJU
         QblXmLFNHRnmc8NHh9DRkT7akMRQs0/23hkJ4nWjYEpUa1gLHm6pbjgtjmOff40twBnt
         JXhZx+7K3ruItQ2KfTUia9+ctcLyCUCyDPc4CX8yBGcEAjiKIi46+ThgfXMuO8sS3pQA
         /PRAKNhgNWnNm3tjcX9n/1z1iaBMaWD/xGWgciyHxY07sInmMfaHt2S2S18cZJXlrPzP
         wgMxXqfOa3ibYvKao+8BX6wNDZHIIAzHM+fIKqBnU4IyZDyNjGLMOd+YOicM9O8Wb0ln
         5MTw==
X-Gm-Message-State: AOJu0YwJD3sFONGyMRyhAu3+oiNOHSuCmjJAQe331U4HxD7GiiX8tSDd
	3wjvdg1tqAumuYkffmqKUNWLp3po/Tyig1IwQ1FLXFMwlVEAyaRElW3iDMQonnB0Dngg5da8X2T
	ehw4=
X-Google-Smtp-Source: AGHT+IEfQG6pC3aRfkC1CWHoHUWtXpPEw1eJYNACj+VCTnqRw/3IL37nVaEqoIEiUN8z2sTh1Ldv6w==
X-Received: by 2002:a05:6512:158b:b0:52d:b226:9428 with SMTP id 2adb3069b0e04-52db22694e4mr4937096e87.6.1719498206934;
        Thu, 27 Jun 2024 07:23:26 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:edd1:8c91:3c15:8e70? ([2001:8b0:aba:5f3c:edd1:8c91:3c15:8e70])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42564bb6cccsm29210515e9.35.2024.06.27.07.23.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 07:23:26 -0700 (PDT)
Message-ID: <83b7b88acf6a2b3b1e2b3c42cf0c830535617bd4.camel@linuxfoundation.org>
Subject: Re: [yocto] Class file priority between meta-rust and oe-core layers
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, mcorbin@lunarenergy.com
Date: Thu, 27 Jun 2024 15:23:25 +0100
In-Reply-To: <CAPfD7w=LCH33=5C9=F83pGuwYSJFaaNap-eR48R9Mwzqg=XL-A@mail.gmail.com>
References: 
	<CAPfD7w=LCH33=5C9=F83pGuwYSJFaaNap-eR48R9Mwzqg=XL-A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.0-1build2 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 14:23:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63402

On Thu, 2024-06-27 at 13:35 +0100, Mark Corbin via
lists.yoctoproject.org wrote:
> Hello
>=20
> I'm currently updating my project from Kirkstone to Scarthgap and
> have run into an issue with bbclass file priorities.
>=20
> We are using our own modified 'meta-rust' layer, but rust recipes are
> inheriting the 'cargo.bbclass' file from 'openembedded-
> core/meta/classes-recipe' directory even though the 'meta-rust' layer
> has a higher priority. This wasn't an issue under Kirkstone.
>=20
> Is there any way to ensure that my 'meta-rust' classes are used by
> default?

I'd just note that the behaviour hasn't changed and that inherits
search BBPATH for the class. I suspect your BBPATH ordering has changed
or needs tweaking to do what you expect.

Cheers,

Richard

