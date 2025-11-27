Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE9FACFD2F6
	for <webhook@archiver.kernel.org>; Thu, 27 Nov 2025 17:57:03 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.552.1764266222665992036
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Nov 2025 09:57:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=d5erlkAq;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47774d3536dso9141225e9.0
        for <yocto@lists.yoctoproject.org>; Thu, 27 Nov 2025 09:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1764266221; x=1764871021; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=44VcOk/lTlk/ZKFLjGeHIc37vpjfx++Q+mtWk6PO+xk=;
        b=d5erlkAq8nPBGcAxmYvYUAHZ9E/Uqas4g6Zs2Ky3ApILCrSKG6DMhpq7AgmD7Ei80q
         ETMOt4vzj74f6+EE9cqIBwB4sqgnz2JXYPI2j2sl4XXsh3Y5xjys/dRlXpT03gBzXhrj
         g+qAwwl8lx6wDYMnmnKUdkbQmR1VoUu4fwGJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764266221; x=1764871021;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=44VcOk/lTlk/ZKFLjGeHIc37vpjfx++Q+mtWk6PO+xk=;
        b=SkfpHffmZSDEP0W7XpmWVCHDr0DgaXFGgAbe59g4nOQQCJUdHyz7bulzPOSnygEKn4
         65HigmPs/ZUHQEh5t8YAz+3k4iai/Nk/mZLPNxzn6ILetyfrZExgql28aaHNUV5EXQED
         3V3nL1pMaVYqwDjGtXOHsqcCjQ/ECO/IdkV0mtV6XwD2B8z49YcgwTur+KL0eh82zCAq
         0gQOgH4aegU9tC3S+86YN2PbhkfByxjYKrpRWs1cLqXSqlvBEyKQToMxLS+pjnJR7dIP
         HbMe3a7a1uv6kAkf8MTxVtyebGv1n1ZhikjVuYVCzKTZACh3riTMQ6oS8y73o4Be7Fgp
         zyvg==
X-Forwarded-Encrypted: i=1; AJvYcCXDrIrG/H8+Jag0c/iYhRnFZw/TzBrOTweTx0aO8Ygv8zPI03iIpZquomHyAN9SMvuNPmK+iA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyeLI0jflHl+i5hdAT+XC4XrfmLwJTMlF2FMD7OMciYJzuoOBPB
	IwRJDr3nbuRQzaV51n2pDwm4yfkGBA6XoKfe28wLClH2IARjA/S18unh0EPxhob3B0MY6VKDjhg
	mtqX/
X-Gm-Gg: ASbGncvQAmfcpbsjyTeXsmW5kutW+DeSN3I02Q7MZQeYyorbjvlfgpI/s0+2b7+6/Kg
	lzdjzpwjTbh9IvODH/EF1vXVOyKUTMBjE4PwcvEVKIYU/8cXc7LNfBlJKwxrN4jjIe1ALKZqHvp
	D9MxbOL/vMq6uiK1qWeSvp/JynE3LKoWxm7DNxg5rPFi58d/nJNEoF0WTlxDCkn8uCuMwR6HZCa
	ulUPpcvIfOhVq18vjHsPU97yEs0d6UZqt/Tnd5nMRnW18fddVVBVjjePSVLf2o+P0JfmmjmBUFP
	wFmrZofwL/MMGhc1poouqdChMIw2LFsfIdIJ+MFyOZQJfLXWg0fIMjFUxD1hYuhhYTcr3GVqUXT
	pXdLh+yQBuhCh9P1v+8eIxadjRDTR9k6EJfINUlgi7xm3/s+exQDsN/+0MEUPaR757NVaK64TC2
	+wbzK9XElwQZ50uK3X8WMQnnYpru0q974Z+2q3vRMMTWkOuDC2DEhQ8OC8++nc1LK7z1bdjWKiM
	fs=
X-Google-Smtp-Source: AGHT+IEnotLobCurJk7HjTQ6a97WloLLTgRcA8uB/GftKBb8HfMhUrwAK9N8cyeVZLbGEGykIIhNWQ==
X-Received: by 2002:a05:600c:4eca:b0:46f:a2ba:581f with SMTP id 5b1f17b1804b1-477c0540a68mr275968005e9.16.1764266221000;
        Thu, 27 Nov 2025 09:57:01 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:49e4:7f15:9d56:4465? ([2001:8b0:aba:5f3c:49e4:7f15:9d56:4465])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca8bae9sm4464898f8f.33.2025.11.27.09.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 09:57:00 -0800 (PST)
Message-ID: <ef9aaf44d988d91a341c9a7984221a2eb3e5621b.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.3.rc2)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Date: Thu, 27 Nov 2025 17:56:59 +0000
In-Reply-To: <0101019ac205ffad-5a7861eb-0d81-4881-aab8-28e6382b6a7e-000000@us-west-2.amazonses.com>
References: 
	<0101019ac205ffad-5a7861eb-0d81-4881-aab8-28e6382b6a7e-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Nov 2025 17:57:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66076

On Wed, 2025-11-26 at 21:16 +0000, Pokybuild User via lists.yoctoproject.or=
g wrote:
>=20
> =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-5.3.rc2) was completed o=
n the autobuilder and is available at:
>=20
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://valkyrie.yocto.io/pub/=
releases/yocto-5.3.rc2
>=20
>=20
> =C2=A0=C2=A0=C2=A0 Build URL: https://autobuilder.yoctoproject.org/valkyr=
ie/#/builders/29/builds/2784
>=20
> =C2=A0=C2=A0=C2=A0 Build hash information:=20
>=20
> =C2=A0=C2=A0=C2=A0 bitbake: 6ee4df8ab58e0175b43106d8a6cbac1f6ab8d022
> meta-agl: aa0d68572f54d2a4359d03c0e00446e91840c53e
> meta-arm: aff67cb5d748aafcba1ee589a758d51191f061c2
> meta-aws: 8e242eab3d44acab70f97a3c26fe9cfc4423920c
> meta-clang: d0a67c76b7a3b585dbe2ba8ad509dc0fe0e58af2
> meta-intel: af904290f574ee9b1f62aade9f55dacdd9fb6cdb
> meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
> meta-openembedded: d56cd727c73a53627827080f664b31cfa19581fb
> meta-virtualization: c2185cd5ef225c6606341745ad9ffb02efe364d9
> meta-yocto: d02d3faaf4d6075ea03e9eb47654ec7639f929a0
> oecore: 8519978592483bb096ed5192fff7af6c887b799e
> yocto-docs: bcb6a7c8a401ceadf69a4c0c14dbc89f85ffdebe
>=20
>=20
> =C2=A0=C2=A0=C2=A0=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org

Unfortunately there are issues that have become apparent in this build
which mean we should not put it thought QA. The performance test builds
failed due to the use of the whinlatter branch naming and we also
realised we need whinlatter configs in bitbake-setup.

Please do not QA this, or any rc1 which may get posted as I'm using rc1
as a placeholder for test builds. Please wait for rc3.

Thanks,

Richard

