Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F781D116E2
	for <webhook@archiver.kernel.org>; Fri, 28 Nov 2025 15:45:01 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.18921.1764344691338138240
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Nov 2025 07:44:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RP+YWqYu;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42b566859ecso1914895f8f.2
        for <yocto@lists.yoctoproject.org>; Fri, 28 Nov 2025 07:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1764344689; x=1764949489; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OaMVR/tWyi1kow/B4ca9c3FbVgD/nr5EBBnztKwZWcc=;
        b=RP+YWqYuE9IiQUxcR6khJC5pU7sYEDvNF3l/dcM5kA84CAc9HmLKFNWW0xmI/W7Otw
         l0xxWIdSG/YVh4891W3EKugBetPdj/U4FEIQrcykjwqtPIgyfaAtKMfV3wRpoN0WMuBu
         caAXWryWdIY/HfCaIlRfhjdxbiEJNMQyFYCaQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764344689; x=1764949489;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OaMVR/tWyi1kow/B4ca9c3FbVgD/nr5EBBnztKwZWcc=;
        b=VYXEyVUcG/ewmPG7n8IxsVwXkxo+NeLHRuTTJOmxtphM41Gth7lLYsJ1Ho6AoDjQHS
         JbBq1ZUWPbjvIbG/4yfTMhDB0q1zlxFFmy8evuDvgmXdKTW55bSXQmmggChWxDdWvG0u
         kh0miZEARjEg6pR4Sm1Pc2qlRZm+6pkVNXAihWKdiPy+WL84OVMMKVrH6Yq2WHKQysWy
         9PqtaAa+nnCpOHBL/P+v6cPa8D9uuzrVrD+763K7KBbaavVfRAgug3wNT2+GvdAQbyQX
         mcv56iSMnl5FQK+lBz6Wu8w/UDNx2fR+ZLbwpJ93IDOvT3Cz1QQ0cDDJeEixhOexu30S
         AUYQ==
X-Gm-Message-State: AOJu0YxxxBo9yINUtSKFiBfE23O114YrFquuf+JajCcQdV0P+TS3as8p
	Iorp5N0KkrOUku1iVwQWgb4NTsmo+7wMXa2wA/hgpG5aN1tGd2EZKADrWeyx8WCnQccC3kkpees
	QeHhC
X-Gm-Gg: ASbGnctfCrdDsm6O+kUW+YcUV+JtfH1iYZ6BEY5of61Q/rsLBHlfGtYrcJ1O4HEOq5E
	3UUEXBtdHfQTeHyEAPqseRABtZfQgrwAUvIEJKwuyAiA/6N4ialphleomnzZpwK4sXBw+wWUuqy
	dfeSO9v+C36/VFtXDqnXTjEutD8wv4VkvpJOPwHT+L5jfr7vPBSSeDRzIirTkp6mZAjq7eqOhXr
	lIY6q4NV4OlUOx8Mw4+l9rokpPmvMtBb8J/y5VvXbZT98DjkiUreOcD+bGO0eLJTukdXWJRSh3f
	nhDhu8zfBYkh7jAyWm9VNiSG41tiuMMDFMrCdCqWgYLJLtoUY/LenSfTcO6JaiAem4WGyHZPGAJ
	ky6hxSx2ZMVKmvLaLQNxS6i//dln4Ettk9zfHmeky/aow2KNOAyjBjS2evl5YqEGVWnB71V/vIY
	qGSWKq/5OVlBMWcr+gm9D/u05XBjMvLwf5Da3O7eRL9s/rRN+GQBbZ3R7iLOdHChvIBUQGa+f0L
	Gc=
X-Google-Smtp-Source: AGHT+IH62A3ntDBz/liQZGUakJPn1LqzakXyx3Il9O9KCWpPh9KGZ58BY2TYXNxrP1gVazywHd0PLw==
X-Received: by 2002:a05:6000:1446:b0:42b:40df:2338 with SMTP id ffacd0b85a97d-42e0f3623camr16890265f8f.52.1764344689196;
        Fri, 28 Nov 2025 07:44:49 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:3dcf:5b4d:ee74:653b? ([2001:8b0:aba:5f3c:3dcf:5b4d:ee74:653b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca1a4bbsm9838103f8f.21.2025.11.28.07.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 07:44:48 -0800 (PST)
Message-ID: <5567edfe9ba69de67e43afc33bb69570902cbff8.camel@linuxfoundation.org>
Subject: Re: [yocto] QA notification for completed autobuilder build
 (yocto-5.3.rc4)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, pokybuild@yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Date: Fri, 28 Nov 2025 15:44:47 +0000
In-Reply-To: <0101019aca98d702-1232ac58-8150-4171-beb4-d8721b8ea2b5-000000@us-west-2.amazonses.com>
References: 
	<0101019aca98d702-1232ac58-8150-4171-beb4-d8721b8ea2b5-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1ubuntu0.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Nov 2025 15:45:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66080

On Fri, 2025-11-28 at 13:13 +0000, Pokybuild User via
lists.yoctoproject.org wrote:
>=20
> =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-5.3.rc4) was completed o=
n the
> autobuilder and is available at:
>=20
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://valkyrie.yocto.io/pub/=
releases/yocto-5.3.rc4
>=20
>=20
> =C2=A0=C2=A0=C2=A0 Build URL:
> https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2800
>=20
> =C2=A0=C2=A0=C2=A0 Build hash information:=20
>=20
> =C2=A0=C2=A0=C2=A0 bitbake: 720df1a53452983c1c832f624490e255cf389204
> meta-agl: aa0d68572f54d2a4359d03c0e00446e91840c53e
> meta-arm: aff67cb5d748aafcba1ee589a758d51191f061c2
> meta-aws: 8e242eab3d44acab70f97a3c26fe9cfc4423920c
> meta-clang: d0a67c76b7a3b585dbe2ba8ad509dc0fe0e58af2
> meta-intel: af904290f574ee9b1f62aade9f55dacdd9fb6cdb
> meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
> meta-openembedded: 09c7f76c196876a4366f220b360f4bdb93ab95c0
> meta-virtualization: c2185cd5ef225c6606341745ad9ffb02efe364d9
> meta-yocto: d02d3faaf4d6075ea03e9eb47654ec7639f929a0
> oecore: 8519978592483bb096ed5192fff7af6c887b799e
> yocto-docs: 79cd33b06e87c04e4f873a5afd9d53714bc5047f
>=20
>=20
> =C2=A0=C2=A0=C2=A0=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org

This was a green build so we can proceed with QA, thanks!

The test results were not stored automatically but I was able to do it
manually and have fixed the script issues causing the failure so it
will happen in future.

Cheers,

Richard

