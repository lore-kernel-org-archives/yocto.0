Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7BDCFA1FFA
	for <webhook@archiver.kernel.org>; Wed, 22 Apr 2026 21:07:20 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.93035.1776892037798136540
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2026 14:07:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=b4zbh9eH;
 spf=pass (domain: smile.fr, ip: 209.85.128.65, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-48984d29fe3so53071695e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 22 Apr 2026 14:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1776892036; x=1777496836; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y1iKxqtEp7X4E7XoLa5nF2586PZwEvNH7+XQBUVe5VY=;
        b=b4zbh9eH8z4W7kPjAog9GqnXeVJ46iLYP6V7AFQtyiuBY6gktF9laZgVKlrpwLDgU0
         neRkUs5FzC/PJJ3mWWMTaDDdoPE7mT9hoownTKQofaHVwsnb7PWTCfOCtGoxbLJxiFRX
         rz0B57/pbWlGNQutGcsiZsWsnCUvLloxBjtcg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776892036; x=1777496836;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y1iKxqtEp7X4E7XoLa5nF2586PZwEvNH7+XQBUVe5VY=;
        b=oPJluii11UKIYIjks3jJGScNJmxOwCkEsO01Cmj1Ah3bbjQ7iQq1Q3MBe0M/UcPcW4
         OADXltugLKGS+JgR8K0MaoOmKF5i7P+SuX7vEqStE3wjUVaCcEDJEAjat06QHT19lWLP
         lbXz/qConcY5NPwrJC1LyfaNqglhRqn2y33PS+EPeGKLZgBIL6eBIJNcd+EkD4cvE6Tx
         li14Ige94ubu8YgNLrohZzzQMf2RsgSwb+pqtALvKXoVWxkgtT8AR+f7bjIlaAgylsle
         OvXFA2TgANs8Hgn4dLOsxJRdSw8nZNPMbmzTR1ZuEUkB+UhESJFCvyABfffCLz1m5eDa
         Wkxw==
X-Forwarded-Encrypted: i=1; AFNElJ/lLXRESJFhiR0M+mgGinNjGTUqN8bE8SOkNvGeywW5E0Ah3lGqujOTPrPGjDeNAgBGY22o4w==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwjFWweH7osyyzYVbxUMq5bWNKUTsHzswtFTrJRppukRNbpOblC
	88lIPQQvjctKUD8AbgV6o3KRIEA4kEjtKU4XXZyBzZmeYoYPlgsWo4kVtBfFTtPRv4c=
X-Gm-Gg: AeBDieui+gOrIBwdUlNswfsU4SXfKvyCpZebbldk6hvLddVAqdL6QEwvloXAGa1U+00
	XLO6IHt5acY0GW5bwZOk3DN2LP5AGhaXLOnqn/6O2PQKlBA7UjHZ7oOSR+phoZ1Gr6ZcUB3UlHO
	k0wlBWWVgsxuPkwMv9qyah5usfEWi+Pa6J1NP89mFmEho5pa//4rLs88mUW9lMkZq0g72/2tMEr
	G2yaqjed7ncZHecyS1NbrDSUBjEecNPtCfwFhgyEThrr8GnxrSunZ5VWaQ9R43J8/nRZEDTmqK3
	gPBv0c7A/PXLB4EXZmzavsiXJCEx+WINI2hLDynNXbarZgWynx1F0Mt2//z+3a+Jesa2YikL9A3
	xGm3dmOAzySTWPAahmrsNO+2gdlX8xHyMjLcArPLYesp5w9KcAqZdtKQLISrIVSfGnJoikRLwMa
	tHeofyS/aMSEnnQk/A7aX2o25RpRd+CasI2A24cTAo32TLOMdtD07PXvZpAHO2ooAs3lqtXC9Ni
	Z5lU39aEioemy3ylKg2XCTdhA==
X-Received: by 2002:a05:600c:3553:b0:48a:52f2:a0f1 with SMTP id 5b1f17b1804b1-48a52f2a5f0mr157249685e9.18.1776892035823;
        Wed, 22 Apr 2026 14:07:15 -0700 (PDT)
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fc177dafsm576079195e9.4.2026.04.22.14.07.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2026 14:07:15 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 22 Apr 2026 23:07:14 +0200
Message-Id: <DHZZNNQYHJS0.2WPK9FMDOROCL@smile.fr>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.3.4.rc3)
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <0101019db6d801cc-ff6f5500-d270-436b-9ca8-36ad2b5b62db-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019db6d801cc-ff6f5500-d270-436b-9ca8-36ad2b5b62db-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Apr 2026 21:07:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66434

On Wed Apr 22, 2026 at 10:18 PM CEST, Pokybuild User via lists.yoctoproject=
.org wrote:
>
>     A build flagged for QA (yocto-5.3.4.rc3) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.3.4.rc3
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/3713
>
>     Build hash information:=20
>
>     bitbake: 713fbbdb9ecc195ceb2216a2345e0d79dbee2135
> meta-agl: 335bfb321925d37675d45f0f869c446ded8972ce
> meta-arm: 4dc2a7bf29c1853b95dda53d9527f0a23049295f
> meta-aws: c570c7c325a60e4da29a28db014769be0f7f621e
> meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
> meta-intel: fc9bc44c9da5e7e7bae38313615aaff5873b843f
> meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
> meta-openembedded: 8bcdb0cc1dab116253b409e78fb868ced7d8397c
> meta-qcom: 96edf508b3f2b83c10cc2f80cee5396af360cff4
> meta-virtualization: 8f03a0cc8950ef5d5e4f11d9ae494946d1991e45
> meta-yocto: 3f2e6b6fadfa542f0fe3738375a2f9fcbd4c1f6e
> oecore: 8751ec83421192fc0f8495fb95798f9eb7be77a0
> yocto-docs: 10818445a22c524de0934901547cf676256c2b9d

This was an "all green" build, so OK to proceed with QA.

Yoann

>
>
>    =20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>     =20
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#697): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/697
> Mute This Topic: https://lists.yoctoproject.org/mt/118961674/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS


