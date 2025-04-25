Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80BC4C369D3
	for <webhook@archiver.kernel.org>; Fri, 25 Apr 2025 15:20:00 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.9060.1745594395656415716
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Apr 2025 08:19:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gDE0KB9p;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3914bc3e01aso1439515f8f.2
        for <yocto@lists.yoctoproject.org>; Fri, 25 Apr 2025 08:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1745594394; x=1746199194; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Apr2rshq5AwidJ8CIH9g9d3CfOJctRFqhkCDsHcMRPo=;
        b=gDE0KB9pxnk2M+TTcYSLhJfTqc8N4w0uhiyTEZzrLLr0fRVwft1PS6dv01b7SXZAe8
         0ESDuMOpGEv9QixMKFDfIgCGYeB8lnMQIWR4Ltt45lvWbxeV+BHcb49m0bcJCG6GUtmH
         WV4v26naJO6XRDJey1i7MOuZLpLlNZJjmLVaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745594394; x=1746199194;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Apr2rshq5AwidJ8CIH9g9d3CfOJctRFqhkCDsHcMRPo=;
        b=FEpTPAJXB7rSWYVxpRuK26BbN3vM4fmCTagjwI2P9G+OMlCx9YrBil3DxpVZTjQZgU
         6dwf7QJw5k+th23l8z2tXSDvXLracTpbJoGrIC4RLZnzdjfAYy2uOyWFqG4cal3ZhLsd
         LKVSIocs2D1uY7Ku0xFWxFWH+Mimvwf8OLVhwGrXbZ8F99+mzzWxAeAxybWWEf7A+99R
         ItW42lQLtKrBV+ZKYHr6YiuuFNA6NtuYbEYtob/CyLiwgK80WSJnbBb1WsBrOVqt5MeP
         dXRp/dJ7nSphp8zQ17ewN9NtosZGsgopwW7iYq5qrf319KUm84HR1SZM6U+QrtTDwwGj
         6Rvg==
X-Gm-Message-State: AOJu0YxKWy1f31aBEbEm1O6utKQtfHHLiMGjduK56ewtagU5/40pbvHi
	VRgvifQO2tJFZKyR1VJ3NWmCAiCwtMhhFiKGGwnktZ+hRRhESvLWXzc7WtEHS2I=
X-Gm-Gg: ASbGncvR5ycEyYG3fQGZPoeoHCppy/Mk/TkR/G3gU+Q4oMYGuyltR7RUrNsfnsnMNO5
	Oa16YYBgIECYUKAMPnRg5D6w8Z5+mpH+kK58IL576BaZBHKuEfSI4ISyprjtmMRf4Tk0xJBR0QD
	A+y6sa3q388OghmueGIy7f9l+bCvglufzSQher8nT0LaDJOSPiDIVXIAAW5wikkmhDnw8gq2Rly
	0LmewtiEl7hp4ewm97mJJtMgWsV92y7ww3CqLOLQtP2B63vHPnRW/4OVZKYn9vbE7H+pT7BxKUV
	thNZTXHvZspn5gPetO/vulAGKcX8uzjwt3IYdNtPWqZmWQBBQYcyKPtyPMIFFyvdWBYQWSAnAxb
	bmT3ljdceXV5UTHlhqH9ur9g9FfDZRQ==
X-Google-Smtp-Source: AGHT+IEI/gpSkZgBW59oWe/nkSq2KUcQYwHphpecs29vqicTUsAQyOWarY+QjXO3HsgAQQ3396FcYw==
X-Received: by 2002:a05:6000:2485:b0:39e:e588:672a with SMTP id ffacd0b85a97d-3a074e0f0c0mr2238792f8f.7.1745594393949;
        Fri, 25 Apr 2025 08:19:53 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:4b43:cc8c:5e78:12c1? ([2001:8b0:aba:5f3c:4b43:cc8c:5e78:12c1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073cc4025sm2685528f8f.56.2025.04.25.08.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 08:19:53 -0700 (PDT)
Message-ID: <e8cb10fbf0d0bb9e20241059fb75083501d7fa8b.camel@linuxfoundation.org>
Subject: Re: [OE-core][PATCH v2] send-error-report: improve debugging
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: thomas.perrot@bootlin.com, skandigraun@gmail.com, 
	openembedded-core@lists.openembedded.org
Cc: yocto@lists.yoctoproject.org, helpdesk <helpdesk@yoctoproject.org>
Date: Fri, 25 Apr 2025 16:19:52 +0100
In-Reply-To: <b422d462b12c51ac9f50eb0fe4f673ace665a29d.camel@bootlin.com>
References: <20250418133504.932848-1-thomas.perrot@bootlin.com>
		 <39feaeb4-a937-408d-9e2d-90d2460acbf9@gmail.com>
	 <b422d462b12c51ac9f50eb0fe4f673ace665a29d.camel@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Apr 2025 15:20:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65255

On Fri, 2025-04-25 at 17:02 +0200, Thomas Perrot via
lists.openembedded.org wrote:
> Hello,
>=20
> On Sun, 2025-04-20 at 12:44 +0200, Gyorgy Sarvari via
> lists.openembedded.org wrote:
> > I noticed that this (or at least v1) was applied on master - would
> > like
> > to call some attention to a related discussion[1] in a neighboring
> > list,
> > and some patches[2][3][4] that followed it - at least [3] is a
> > pre-requisite for this patch (error-report-web has hardcoded the
> > version
> > of the script to 0.3).
> >=20
> > [1]: https://lists.yoctoproject.org/g/yocto/message/65184
> > [2]: https://lists.yoctoproject.org/g/yocto/message/65188
> > [3]: https://lists.yoctoproject.org/g/yocto/message/65199
> > [4]: https://lists.yoctoproject.org/g/yocto/message/65200
> >=20
>=20
> Can you revert the patch v1 and then apply patch v2, at least after
> patch [3] has been applied to error-report-web?

It would be helpful to address that to the person who maintains the
repo. I've updated to the v2 of your patch.

I've queued your patch for the server but updating the instance is
beyond my access/skills. I also queued a django and python3 upgrade on
master-next there which it would be good to test.

Copying helpdesk to see if they can schedule in some help in updating
the instance either to master (easier) or ultimately to test master-
next and move to that.

Cheers,

Richard

