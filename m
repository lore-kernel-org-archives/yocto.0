Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1C68C55ABA
	for <webhook@archiver.kernel.org>; Tue,  4 Aug 2026 19:47:22 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.25122.1785872835629320790
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2026 12:47:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Lr6SLiE2;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4957eefd361so1343355e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2026 12:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1785872834; x=1786477634; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=8QYVkTZUkeLbqvX/kzUB3kmhyJ4UBMDd7p+e7SjmXBI=;
        b=Lr6SLiE2VMEXLem0dLThwcvMM5ihzMh31GiDtlbwZbCIEgZeYuFigMQMIffRpz4GmB
         ua8eZjpjgcRcoCFJaYuLtYKD9jZ5AuLmNeRinP3GXdnBw2Id2f/IOWPe0LwTbNlyAVmW
         ZssvS0IC3CzuxvTboQ84w3knRBe1oUTRwELlM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785872834; x=1786477634;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8QYVkTZUkeLbqvX/kzUB3kmhyJ4UBMDd7p+e7SjmXBI=;
        b=AREqq5zADIDlQN6diIqaNQPdnz+JxekXRvj3PGsn0mzM129tEsIAHcf6zoARvGEbD2
         kzVBshkg60Meuo3fO54NdFIv9gbLbGAvqXXeu82Y1zucUhdzg4LRyDvtUQfkydPW89Nj
         D7ekOq3NA3r2Jo4VIdJuxXHFWfVU0yrJWVdZgC8w6TqKZm3Y9ZHoRdC66xYyHeN5u/X2
         bmCqHRsBFqw62U/GExDTlzhCB9NvaDuwdTWRlBZs2fms4H6Dp6LQ2PHn1k88UO1BvrSF
         mw1a2V0S5tK3c2PiCScLxWiARzkfmD1h6sId0NKaKxnZDTJS3WdODom59Rv44Emvk8fz
         v0MQ==
X-Forwarded-Encrypted: i=1; AHgh+RrRJce7WIQLPdrTkrw8J0c2WnKvhg7XqOv2uPHnEsMyipw9LtpDQJ6heYn1pEife2SJ8ZAT9A==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwJFNW6mOArgtqGYpT3/f/sfZU+OEuD1QD6FP/WPu4YVWTdTNnr
	ezYXzeO/7Buw3mRrg7xH2CLwb1l8+d59ox79t6GpMqOx8OPbwGHJsAqQ+yC4iY0kHhY=
X-Gm-Gg: AR+sD10wvSaCmCfk+2nxyPBiqfn56R+soBKb+QfOb3CsWV0qt8xUPEqnnE+zU8dZpi8
	U6x1smdywAUoOOuplW+lb0v2UYTHs4ZHVHqmm125tEcQ6PIeVc0DzGn/CsNRrqFln09Bxmfy60w
	fxzVu6MjCFT3/emcoBI9kmyajZIPbU5kqCi2xotG7Nhl7804CNzWIHLEAq/BYY/zpMsKuRudm3f
	bWXbtNeAVqGJWNdCsX2lVBVG6Om3Tc5KUp5FiRjO2/ON1t+8Q8RHon2qVZuxWcjPa/YViEJFsyM
	o9pU4timL9ByFsByOqqLhx87gSZ9Ag/i/0aSptWNd4Y0OAyiRHOcQEQ7rKeDY1lv15EsvHY9IjW
	/hAWVtZlPyaOph9filQnG5vRJviQ8bd/zNE78iERr8znJ7cwvH85s4Sag/aBlBfAFB5LZGEj6hT
	FEIM40kYH46nFlGxkbLcrojYhA8+cWtuJIxUgeeOUV/V0rSZloI6ycLPS82GRspYpi7ZtPU4VrG
	N252xwmBkhhGRnL3sscRVLMgHpbkCDG4Y0FFEMM9VVxV+PzYj5wGg5xMWXsIHn9
X-Received: by 2002:a05:600c:524a:b0:495:5890:8f6c with SMTP id 5b1f17b1804b1-4994e71d349mr9308915e9.7.1785872833700;
        Tue, 04 Aug 2026 12:47:13 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:cf1f:6744:c6dd:c3ab? ([2001:8b0:aba:5f3c:cf1f:6744:c6dd:c3ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4994dfe8973sm25902685e9.7.2026.08.04.12.47.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 12:47:12 -0700 (PDT)
Message-ID: <1b70709c446652ffb1b1e3078512997eec75e96e.camel@linuxfoundation.org>
Subject: Re: Default to isolated Python virtual environments (venv)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Michael Halstead <mhalstead@linuxfoundation.org>, Yocto-mailing-list
	 <yocto@lists.yoctoproject.org>
Cc: Paul Barker <paul@pbarker.dev>
Date: Tue, 04 Aug 2026 20:47:11 +0100
In-Reply-To: <CADfgfoaBH7L+505aFdn69wvW2PaSPA=bneDN2CfFBgEpduuN0g@mail.gmail.com>
References: 
	<CADfgfoaBH7L+505aFdn69wvW2PaSPA=bneDN2CfFBgEpduuN0g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2026 19:47:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66678

On Tue, 2026-08-04 at 11:49 -0700, Michael Halstead wrote:
> I tracked down the persistent issue on the autobuilder setup where
> worker builds were failing after maintenance specifically on systems
> like RHEL8-based hosts where we don't run the system python3.
>=20
> We had `virtualenv_site_packages: true` configured across the cluster
> to better test distro-provided Python packages and stay aligned with
> current docs. Setting `virtualenv_site_packages: false` for RHEL8 and
> OpenSUSE 15.6 based workers resolved the issue.

Changing the config "virtualenv_site_packages: false" on those older
systems should be fine.

> I propose we stop using site packages on the autobuilder in general
> to avoid similar issues in the future. I already have the changes
> ready for the next maintenance window.
>=20
> If we do so our documentation should probably be updated to match so
> developers avoid these same environment edge cases. We could
> update=C2=A0ref-manual/system-requirements.html to default to standard,
> isolated virtual environments and pull host Python dependencies via
> PyPI rather than assuming distro packages.
>=20
> Let me know what you think or if there are any edge cases I haven't
> considered.=C2=A0

If we go this route, we may as well drop several of the distros from
testing and mandate buildtools tarballs :/. I really don't want to go
down the route of prescribing a venv when we've gone to relative levels
of trouble to make bitbake easier to run on most systems.

I am a bit puzzled where we're running into issues as our buildtools-
tarball does include python3-websockets so on those older systems, we
should be using buildtools and that should have websockets in there?

What are we running outside of a buildtools env?

Cheers,

Richard


