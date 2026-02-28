Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99145FEE4F2
	for <webhook@archiver.kernel.org>; Sat, 28 Feb 2026 15:56:00 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.121154.1772294154249375618
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Feb 2026 07:55:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=1LxGihlb;
 spf=pass (domain: smile.fr, ip: 209.85.208.42, mailfrom: yoann.congal@smile.fr)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-65f92a597a1so4494473a12.0
        for <yocto@lists.yoctoproject.org>; Sat, 28 Feb 2026 07:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1772294153; x=1772898953; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=361sjAw7ofbv4cekG9r4kO+ZZJflAP4dOPvdoo6JMc8=;
        b=1LxGihlb5Xm+zd3jN6ItpPTjDSVmCWZSwu5Wgz0qnJxUQYuj2luF7foSNFYGUvZfsc
         xBsXJ4QohbpX2bKjfJ53ucHJ+XV5NYjCVVHtWdhzqIDhv6g4EqZiwDTSjRILhUFF2j7b
         vM5TAupzgUtsmMu8ix2DvFPV2v4pD/O/Gkjs8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772294153; x=1772898953;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=361sjAw7ofbv4cekG9r4kO+ZZJflAP4dOPvdoo6JMc8=;
        b=DfU6kw0/NK7aE9uQEwFtmom9AxX8zhntepfN1Pbfwu+cy+I3IdGVaaN+nVkb4SXmbd
         191cvFsgtxeLDIneFDMsULcZ2GXEMP4cDexDb6CHymPTx/1EtbcDCw7gB1y8Ih+aU0RT
         0eafhDnqbEq5iocBJVLsZ4hXAY+Gprhf6WUFgxH3MCw6ryjTzX+4cGFJVxoZ2JqwVzNY
         VzqjOd7BKv9D2pzihpLr2txB5LPtBM2UIQcWBflmXfmHc4sPl8ySjTLXT0hZ+OKY0x6/
         P1V62gw8YNa3Ojz+jEueqTqoU56INC5ql/Osl3Jl7AlNGMSF7HHF6u6z+0ucvgyVULBn
         8Q2Q==
X-Forwarded-Encrypted: i=1; AJvYcCU87IZ5a71ineWcTDVQNCRCtKs121rHMrp+BEjxmaHmSwVCDL/PX6HnvqB+NHlEEe7ARgsFFA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxUgQgbfIEckwZVrH/UgGLpJN4vTp/D7u1/jlQMRF2yEZuGfELQ
	K0gM/wRTChQzHSZqJV4y6PZ1/mVsFUgYuITu98SNj1MQJFe6zNdFhQA58Qa1blNVJAsYqZZ231L
	r+YDT
X-Gm-Gg: ATEYQzzTgwiQoxYo2jG/dK0S2bxYo+WQ8qduU+agAzEPunttCflUuXYwS2pLpf176Ej
	J7Xv+8Ouo+jTnk/F06kccdgc36PTGqwp6d275Aej2qiOUK+O3P2SobN1X7fZN9TlFSfYDH4y+1v
	SIztsajHu8gxddP4jutM/7zmHqBEmm2wFnSlh+CutsWDSAfA2+F+ycsqVwrnGBLv2lfVU5PemMC
	6535klu4UhwOmUwJZaFh0+dP8o51QpenSQHG39eBibj1U4k2PAWn4sVAhPszIhTsrfrJtwTv+lP
	vObEkZOGD9TO0TTzIRTOBriXujepHcuwOh0oFMUpjmGqUpFrEKENhvKH6bBivTaSkpsWewUEKhk
	nkC1nz4FpbnD505OktLzraRjgFh68GYZf0EWeqVhcAKN+VWMyLtYzTZmmrPNTByDU0xMavAFAG9
	DOzqpsOZcfx6vDtkSVG3Ckud5YWVtHd7pbpLkn+BixRR1/LoZ0FUPx3/gLzTlI8evXiLwaErano
	79SQLZTB2z4J1YZ
X-Received: by 2002:a05:6402:1e8a:b0:65f:8b6e:e1e0 with SMTP id 4fb4d7f45d1cf-65fdd6e2ed8mr3613182a12.14.1772294152320;
        Sat, 28 Feb 2026 07:55:52 -0800 (PST)
Received: from localhost (2a01cb001331aa007f1b644d71d78354.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:7f1b:644d:71d7:8354])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabd36219sm2033141a12.3.2026.02.28.07.55.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Feb 2026 07:55:51 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 28 Feb 2026 16:55:51 +0100
Message-Id: <DGQPUD64XHPQ.1E2EUOICI49YY@smile.fr>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.0.34.rc2)
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <0101019ca4cc139a-4cfb220b-7fdd-4ba0-8591-32dfcd501502-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019ca4cc139a-4cfb220b-7fdd-4ba0-8591-32dfcd501502-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Feb 2026 15:56:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66285

On Sat Feb 28, 2026 at 4:09 PM CET, Pokybuild User via lists.yoctoproject.o=
rg wrote:
>
> A build flagged for QA (yocto-4.0.34.rc2) was completed on the autobuilde=
r and is available at:
>
>
>     https://valkyrie.yocto.io/pub/releases/yocto-4.0.34.rc2
>
>
> Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/bu=
ilds/3309
>
> Build hash information:=20
>
> bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
> meta-agl: 12daee6a859f48d3d65545d4fe79849fc312fa21
> meta-arm: c3e9fb12aa31d25e33d8392c4a233ed1275a3278
> meta-aws: 8f7bf66699789eee7afa907b9513b0709ef79a01
> meta-clang: eafdaa3cda9000c6d9bd1819ffe1219c7b66e4b8
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
> meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
> meta-openembedded: 8a598a2bc9199a4fbb9008a32ab143fb509a0933
> meta-qcom: 8d273808334daef5922000c8e0548b7ff2b3d72c
> meta-virtualization: c474ae21b11a816be607eb7b44d2cf77d1125bce
> meta-yocto: 1d3874a383023a5e2433e0fcfd87ac5d1e6d341d
> oecore: 7b6c9faa301a6d058ca34e230586f6a81ffa3ffb
> poky: 8334e82e1d85e50557bd3da64054fc9e3eafc495
> yocto-docs: 7c348dd67cfd169b1a56bf969606b03dccb76c56

This was an "all green" build, so OK to proceed with QA.

Yoann

>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
> =20
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#662): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/662
> Mute This Topic: https://lists.yoctoproject.org/mt/118061580/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS


