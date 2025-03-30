Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 412A5C28B20
	for <webhook@archiver.kernel.org>; Sun, 30 Mar 2025 14:03:04 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.30698.1743343381160568583
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 Mar 2025 07:03:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GpgGkqVF;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3913fdd0120so2003209f8f.0
        for <yocto@lists.yoctoproject.org>; Sun, 30 Mar 2025 07:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1743343379; x=1743948179; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hyfZRx8t/omFOvx1DeIBr9k4wKPIiCmykG46Po23SB0=;
        b=GpgGkqVF0/Ya9PyoAkpvzTOWHKTT4N71rcxjoigaQ2GFDGfZrKyUcjD/0Rq6W//3SL
         1z0x6bdlDBEAojxjqgvEGHzBM16XJd+Oct9wSA1m2XKOMcHezPDsDor40KwKDZdjf9bS
         50ns9KD1B074UIJxoqinsOyPv5J988+uy2+Q0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743343379; x=1743948179;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hyfZRx8t/omFOvx1DeIBr9k4wKPIiCmykG46Po23SB0=;
        b=Zm9Op6CwPFoVt6gK3aOSJIfqDgEGemtwKVcZdsZFJLnQTM5pmegpZjcxhuFuy81Mx1
         8uwbaCAkLBXtxjzjmpfUfFOl5oMrNhaUkhJfYmK1B1nWv31RaUuN1PO2xewjmdtvUf+H
         jCpgvpJloyVpgVbFoCdZ1esHB6n26QEqDJJgznYvJVxZMYZ4Csn8FDpioW9aVxfhlscw
         rheOVJVbwjZkth19gkwyWDOFO80ZaZIeX4CJ02/QhzvBVOln0Doa4by1wS+NgGaliKnm
         /eMoBAkJKC9yzgxLr7kNbQep1L+1jywkDpfoPaWUFB0OR4x/su+bgki8XNsS50CAyrjx
         QUVQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4+X1Irmx8NKpsTTZtEt3ZOIsWkknmwW5/XOyVozSENLzYtDtoa3HYmyPXegWE96XLuBBXvA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yws383xDaFUOATx2ct+DFKrHYnCMujm5aNCblh47qz9wlhc6qkA
	gCfZY7JQcjOT9vlCOrv+409RCtEK1S0qmWEeh5s4/TxYlYvoqJMIivSgf2F5kWc=
X-Gm-Gg: ASbGncuAz6OjIkpqSTpqpsRq2Eg+J3T/Z+sp+/LXFRuOaE0r1r8vowgZJdWaoerVh7A
	XKfEH7qrIPOqkgyfr7rl2juD0PGpXfcfMqJO6qJVaU0VrdHY/tzDqGiwcr5ILGf8ZJS2YZnh+Hh
	LPArLs5Sgl2lwAcbf9bqTjsMj2WsvtADDizi/nlQ1TG5q1kqvlOEKx9QZy4Oe9L1HvrkaoV7fr9
	7NCyzwCdMzjSeS5dnRAnRjTWN7ILqLojvNeWKTpYq9tBDFcFssXPpIeJbGoV/X2D7ycoz6TZrM+
	AXphNs8tH917XGcdesSO4p8mQh2bhVDlpdnalReBB3xdvWOyjZcRJKgwsSqpOrcllQk2314QeTB
	XEWcLFFZ6igomPj1M8AguU3mvhAJBccMZHVhNvn6DHA==
X-Google-Smtp-Source: AGHT+IFb4vSsZvZmkcystT4JCqvgln4mTii/Ij+oydeiHpHmdYeI5uEgat3TWiyhaIIJ1UI6iQd7og==
X-Received: by 2002:a5d:5f45:0:b0:391:2306:5131 with SMTP id ffacd0b85a97d-39c1211b902mr4449746f8f.45.1743343379527;
        Sun, 30 Mar 2025 07:02:59 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:7ae:7c46:3aa2:eb70? ([2001:8b0:aba:5f3c:7ae:7c46:3aa2:eb70])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b6589e4sm8771271f8f.10.2025.03.30.07.02.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Mar 2025 07:02:58 -0700 (PDT)
Message-ID: <bca68c664d706b783dae5bec8c6ef6f03a17ca8d.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.2.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Date: Sun, 30 Mar 2025 15:02:57 +0100
In-Reply-To: <01010195e3602375-1bca3d69-ade5-4ae3-aae9-8c6d381adffa-000000@us-west-2.amazonses.com>
References: 
	<01010195e3602375-1bca3d69-ade5-4ae3-aae9-8c6d381adffa-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 30 Mar 2025 14:03:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65034

On Sat, 2025-03-29 at 19:28 +0000, Pokybuild User via lists.yoctoproject.or=
g wrote:
>=20
> =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-5.2.rc1) was completed o=
n the
> autobuilder and is available at:
>=20
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://valkyrie.yocto.io/pub/=
releases/yocto-5.2.rc1
>=20
>=20
> =C2=A0=C2=A0=C2=A0 Build URL:
> https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1293
>=20
> =C2=A0=C2=A0=C2=A0 Build hash information:=20
>=20
> =C2=A0=C2=A0=C2=A0 bitbake: 5b4e20377eea8d428edf1aeb2187c18f82ca6757
> meta-agl: 17fd501fae2361588f2af72c229d56612cdca40f
> meta-arm: 49cad31d10e6a3d4539c171205254e1ced443e33
> meta-aws: 703760eff82035093ccb89b73ac9a6f272b3539a
> meta-clang: 892380133becb17d95ffae95de1df025c9d72088
> meta-intel: 79b1fd3430ece279f14903ebf5d34527fb80b027
> meta-mingw: edce693e1b8fabd84651aa6c0888aafbcf238577
> meta-openembedded: a2a531a61b779fc666cb161be029b8ff801d2c97
> meta-virtualization: a309b738e73860781ee9099de5fc9df7ee22950c
> oecore: dc2ef2cc1183a14cd3a05d388a1d0485a1bc8d20
> poky: e894acce6ede8bedafc1859ea0345ee6d80e9c74
>=20
>=20
> =C2=A0=C2=A0=C2=A0=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org

There were two failures in this build, meta-intel and meta-
virtualization. Both failures were due to layer.conf compatibility
listings not being correct after I updated oe-core for release.

These should get fixed quickly (I've sent patches) and I don't think
these block release or QA.

Cheers,

Richard

