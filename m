Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4475CF3ED5C
	for <webhook@archiver.kernel.org>; Sat, 11 Apr 2026 17:57:25 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.204562.1775930241706370669
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Apr 2026 10:57:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JAEmh9WF;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-488a4bc360bso16668755e9.0
        for <yocto@lists.yoctoproject.org>; Sat, 11 Apr 2026 10:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1775930240; x=1776535040; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H2h/H/cYXaKT9lzdVwUQWt0gQ847O0p8cVmtDJO/seY=;
        b=JAEmh9WFqpgQ2/dSH/CV2SMwK7Krr5tz2t81A+sHMARyVPfy5BiIMx8lhoTx3EgTTA
         AAi2eg1xIZsTSP8fbqD6JKz+kplCNBhUyUrmb1r2cEO2ZEzf8PAcrCcKHFfe/wQelJ/y
         yl+pLTdr1CpODaKlD3sREiqEYfTTBvzPeS0Hs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775930240; x=1776535040;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H2h/H/cYXaKT9lzdVwUQWt0gQ847O0p8cVmtDJO/seY=;
        b=YDM/8FTJ7OLozKyoEqG0I2KwyJfzGzbMXRlxcrn3RVcRL/5msgnL9LGiZpTmgom2TK
         H8z1OU18OLeVZ1G7XHYB7Au1gaDT04DDwyLAkk0gRps0uuFBlOKQ1yojzdItoWIXtz3d
         ogUlLgbUEQRbIcRZO+ZOfczgV0GlPSaF87oYt0bjqImcfhZ5bfSAUbrMchtlJ1SNnLLu
         uYAN16Iupn0jTkjp9pH1rmcXiCTeXCs0nz1qPN/E7qY8u6vf4Ns59xbJgKr6mIxn9RGj
         Sy59sWsAY92FAFukbof2hrTLqHWgbS6tk7CX1X7HV3T2pH12aeyQ/FJcHyh8aL8DHCTD
         ABfg==
X-Forwarded-Encrypted: i=1; AJvYcCU3H3lY3cm69pGRLEqcsAscTppD6G03rwD5ZlCfeuze8NNzcVOXBoos0qC/Cps32IMuyL+55w==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzLWGQILFgcU+JCNDvSVmORbZQZGOXbSrYZvPwTYYzJmnhJcJwN
	eTokB5QTFa2Hun7/zPiJNOyCoA2QlugvE9RRkD4EKw8XokpNcxZmazByFsOwaxFaThM=
X-Gm-Gg: AeBDievNPzCAEb/fvCfDa1cVUvs5AlOIFpfSgNQhU58CwcnNTudG9cVUfRTwjkJpJrd
	CrKuccwv3jKIvSl0GZFX75Z311GimDAAmrZFvGxEBf40S51R9QFekVwVKljD3o8hdoQipV61WzO
	DTKIDG/9QSnCruaPn6r/jVSFHAmzjD18Yk6wURl22ybauYP85Do7CSyRG/L5z94PeWQ96c9k+Qg
	9kQcVDY5iWVcXu7h9nbGmUoHgAqj4VQQFHOG/3lpm8Uyw2xYgBZYU/Mh7cK1MqlU88yYolnSsBW
	uZdpQj61bdoZQz0rUd9Y6E6cDs15N2x3ywxajDJjA6TihCGvtuZAC7TwD4KcT4LU0OgFIfkYUvc
	OjPwfosG+Tkk7bnhG3hq7HFqPgJKK62M0FHDoyy9rkx4OL40Xf8RDL8WXLUk1TqvFHk2O4YpMq4
	ocFP4qRozPTAAZdMeBFS+J8E1rTcrCtoEoIPLDn6w29hX136TIR/LPcCn9uznQVc/u5AOEaCS9s
	Z7xm/U5fCXlNCYF
X-Received: by 2002:a05:600c:c088:b0:488:a98b:b891 with SMTP id 5b1f17b1804b1-488d67bf75amr74284215e9.3.1775930239515;
        Sat, 11 Apr 2026 10:57:19 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:99d1:9089:a726:87e6? ([2001:8b0:aba:5f3c:99d1:9089:a726:87e6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488d58a8438sm177175275e9.5.2026.04.11.10.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Apr 2026 10:57:18 -0700 (PDT)
Message-ID: <7b412180b8ca45501a33c3d1c369e54e6c4ad496.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0_M3.rc3)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Date: Sat, 11 Apr 2026 18:57:17 +0100
In-Reply-To: <0101019d7d1e66ed-2b939a78-45d0-4b89-9c9f-9b37efa1d8d6-000000@us-west-2.amazonses.com>
References: 
	<0101019d7d1e66ed-2b939a78-45d0-4b89-9c9f-9b37efa1d8d6-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Apr 2026 17:57:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66400

On Sat, 2026-04-11 at 15:17 +0000, Pokybuild User via lists.yoctoproject.or=
g wrote:
>=20
> =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-6.0_M3.rc3) was complete=
d on the autobuilder and is available at:
>=20
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://valkyrie.yocto.io/pub/=
releases/yocto-6.0_M3.rc3
>=20
>=20
> =C2=A0=C2=A0=C2=A0 Build URL: https://autobuilder.yoctoproject.org/valkyr=
ie/#/builders/29/builds/3643
>=20
> =C2=A0=C2=A0=C2=A0 Build hash information:=20
>=20
> =C2=A0=C2=A0=C2=A0 bitbake: 5d722b5d65e4eef7befe6376983385421e993f86
> meta-agl: f5590359796fc6453a17849904a281095257ee38
> meta-arm: d987a5945802dcbbc06be91a0d34f00431ea840e
> meta-aws: 172c1f12366c50f58c317a4ed58d6de79e7afa1c
> meta-clang: 78c5e12f08198f4f257a9348516d2103cd617c1d
> meta-intel: bf06e8360baf2c84257e82f4153e13e62708568a
> meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
> meta-openembedded: d793c367e067c49956d38caf6eb84cb112c9c9b7
> meta-qcom: 5d1eabf99f52bc5ed4c629ba4a28f567ee69e564
> meta-virtualization: b59fb87c0e991aa95f62627c3b2a606956ef6377
> meta-yocto: 49cbb01d52521bfe557395c9ebfae6b1c162581e
> oecore: f235ffc43c7783a84e1ac0dce8489fcba8354e12
> yocto-docs: 560bc33c0c2ecd60d68ba06a2edff8c25b9a3f90

This build is good for QA.

There was a failure in meta-qcom which is a known issue and being
worked on and a ptest failure for python3 on qemuarm64, which is one of
the intermittent issues we sometimes see.

Cheers,

Richard

