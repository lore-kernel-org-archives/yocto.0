Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C423C3DA4B
	for <webhook@archiver.kernel.org>; Wed, 17 Jul 2024 11:36:24 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.13137.1721216174030645742
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jul 2024 04:36:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AAcle0Hv;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-427c4843840so3041515e9.1
        for <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 04:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1721216172; x=1721820972; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3LjOoQaWxzsf0TTtwCJVJDNAs2bTwPtVTEHugcQ+9To=;
        b=AAcle0Hve5b7afLz0KyYwcQ+aa2LardAVfWEG388b8mIl3OJh8r4V6b4xYtGnwia4f
         /yG9AFP/Qi4LNYGWdDFkbJ+UqfYQ6yj2pvS1+u3F+uFhxV0C9gSAwkgVJUXuDjZBio3I
         Gf4FwxyryqXD3/fi6VhZK6E/r2Yg0v2emsQ+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721216172; x=1721820972;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3LjOoQaWxzsf0TTtwCJVJDNAs2bTwPtVTEHugcQ+9To=;
        b=FCaEgzoa0tZp8O1fh5NDHzTSKdMcxdI+SqGalCJGsyPs5VYIWZp7X2cFW1zyGnknBo
         /SIoBnqpiRag4ApdyGxOMbZLKzhhkJL6+SlPEnDjYYfGyx9gadVWq/Kvsh31iAdHoWvH
         RPbsWsSGqCQRnepswuyMX9WvTaM0IYdIEQKMrLmrhNcT6MLUcRQwO/KjFm3e7LLBiHJk
         R2TJOvvIoLmnfxO+b/NozlDRvZRiSETacsK3PpDwf8iKxWcgsXZhvTYOp5HjAkImnIcj
         BBUJb6jiRGdWIVznzA/MsJZrO8w2qYPPYcPWASVoszNGLDOTjWKp3y1gE1VAWo1HlheN
         rMFQ==
X-Gm-Message-State: AOJu0Yz5Xq0lOsgVbF54cgtAELnexnel+aSnw8pETKFEdwCuVWJIY51W
	CbHwmfik1dU2Mb2XP9jYpMk9YocimgB90D/CjkZg5Eb/2k9ISzDGYMx5+jLeOFgQCDSeHowTc+/
	U
X-Google-Smtp-Source: AGHT+IFfNgNB5HlIAqAlfxc9Eyui2nYfUAVw1tGIhEa1ou90BC8JD/o0hJcp00LdB1HeroXEYwn+2w==
X-Received: by 2002:a05:600c:46d1:b0:426:647b:1bf7 with SMTP id 5b1f17b1804b1-427c2d0bd4amr9912355e9.32.1721216172013;
        Wed, 17 Jul 2024 04:36:12 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:9a16:3e6:efff:89c6? ([2001:8b0:aba:5f3c:9a16:3e6:efff:89c6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4279f2cc42esm203633405e9.32.2024.07.17.04.36.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jul 2024 04:36:11 -0700 (PDT)
Message-ID: <c5377108b266126f61c0ae43a7b22a9f0b6b3c90.camel@linuxfoundation.org>
Subject: Re: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.1_M2.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, 
	qa-build-notification@lists.yoctoproject.org
Cc: Yocto TSC <tsc@lists.yoctoproject.org>, Jon Mason <Jon.Mason@arm.com>, 
 Ross Burton <ross.burton@arm.com>
Date: Wed, 17 Jul 2024 12:36:11 +0100
In-Reply-To: <17E2F29F6631DFC6.13037@lists.yoctoproject.org>
References: 
	<01010190bf027a1f-d75a0402-7be5-4a91-a98e-e1905f9e0340-000000@us-west-2.amazonses.com>
	 <17E2F29F6631DFC6.13037@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.0-1build2 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 11:36:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63525

On Wed, 2024-07-17 at 09:26 +0100, Richard Purdie via
lists.yoctoproject.org wrote:
> On Wed, 2024-07-17 at 04:45 +0000, Pokybuild User via
> lists.yoctoproject.org wrote:
> >=20
> > =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-5.1_M2.rc1) was comple=
ted on the
> > autobuilder and is available at:
> >=20
> >=20
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://autobuilder.yocto.io=
/pub/releases/yocto-5.1_M2.rc1
> >=20
> >=20
> > =C2=A0=C2=A0=C2=A0 Build URL:
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/7144
> >=20
> > =C2=A0=C2=A0=C2=A0 Build hash information:=20
> >=20
> > =C2=A0=C2=A0=C2=A0 bitbake: 1d7360031164f04887c792fb0b2dd86c6ccfcc23
> > meta-agl: 3f3bbd3871e5a7a4e9e275e2c957b98515cc30c3
> > meta-arm: 14d24b5526298cdfd6db65b6e11b54804a6a553f
> > meta-aws: 4d048eacb5cbdaeb3f37d0427cc8a810a8ba7b69
> > meta-clang: 1fdde55d951b7a8f1e537ccf56aca2dc90c40091
> > meta-intel: e97386254712047f27f5554da6470fe3fb65d07a
> > meta-mingw: e4d377d5ddb62b265536bd33dbccfbb0904f8701
> > meta-openembedded: f8342855a440fa5c4194fc57285e8db9e034fcaa
> > meta-virtualization: c138943fed29e768df990061c30d6f071b98ffc3
> > oecore: 758508614541c68dd6a2b7084e07287c71f40a8f
> > poky: e18d60deb0496f7c91f2de900d6c024b45b7910a
>=20
> This build had three issues:
>=20
> ubuntu cve-check database issue in oe-selftest:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/87/builds/6974
>=20
> qemumips ssh test failure:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/102/builds/6318
>=20
> meta-arm systemd boot issue:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/113/builds/5756
>=20
> The ssh test failure on mips is likely load related. The meta-arm
> issue
> was seen before and appears intermittent. The cve-check issue has
> been
> seen periodically and needs investigation.
>=20
> I'm not sure if any of these should block QA for M2 or not, input
> welcome (TSC esp.). Sadly, I feel relatively powerless to do much
> about
> them.

The meta-arm issue is confirmed as intermittent as

https://autobuilder.yoctoproject.org/typhoon/#/builders/113/builds/5759

passed and is the same config as the above failure.

Cheers,

Richard


