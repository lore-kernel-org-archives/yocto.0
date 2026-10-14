Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC981CC6B1A
	for <webhook@archiver.kernel.org>; Wed, 14 Oct 2026 10:55:50 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.10758.1791975346564276718
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Oct 2026 03:55:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MGKnC95M;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-48b0946c2c2so2521619f8f.3
        for <yocto@lists.yoctoproject.org>; Wed, 14 Oct 2026 03:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1791975345; x=1792580145; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=oHbJDyM5QyD/ZnIzEi9nhlagARa4ev1rj8G7JdnAJXk=;
        b=MGKnC95MgT/NMNVUbIa4OvJ67x2VwDawOi1zZWMtI4Ql5pd9amui0ixEXNOQTklkbB
         ZAoybMynGEi8j4xQPDJvywP86h7mLtYTb8MygyZmD6z/OzjAZ3TgaZsetnpSlECMlWwy
         HlMiQZ1XQ6nTvd5pSphG+/2eRC7VTUa0LpDJM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791975345; x=1792580145;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oHbJDyM5QyD/ZnIzEi9nhlagARa4ev1rj8G7JdnAJXk=;
        b=gkMARV9r45544B66Ef7jyOh7jYR4ZRWjL/OCsuTjKFy9/yHCpwIsQKUGMMTNezR8Oh
         1i6CnNtWwZ/KyTQ8oMKaUDfiqmjAuhqfdJyfyoP+tBfb2Ls7hjeh8F3u3fleVd0ntIKc
         RUaoTvD/fRdB23fveNYEVCwEXlPJkyV1eswA14iVmr7hETsuqzi6EdWDsU/oZxAn0rN7
         hYaTg2sOsr3pHq25ZF1nzV7P3ibgD96TW1wrLkVdwAEPxw2UYhSY2aC4QxodAhZbv51U
         BkBfhDmySxsMh736PY/m6isFTGtzsyv0Du26HOEr2rnJKSWyM81iUXTVUuNAMaX4I8EI
         Vx/Q==
X-Gm-Message-State: AFq9FYKvpsgPJXSYgBbDuTFQksNqdyn2TIQak48oQkkpcAH0I4GSGhU6
	s1nC9A8RBFTtvv6CWDujXq8N07oWoQeOM8kFVhWhnDhqxxduXWpS0JTiuiVrWZ55pCeVfKrc3ZB
	oKpgHtFw=
X-Gm-Gg: AYBFou2RO+a4TQ6JvRpJytA8hPugcEAbbRfgN40/T79CxvBR0XE6ODqkSltu1RRIk00
	SC6FKSWz9NzB8omhuCN6RRoZD0+pCtcgt8+wLqHTODFFMaM2zUQnZW7j+Bo6FIdaVyLq1M5ikzy
	yqURYS1Qfh2Rv+okPhliAR7P+J9fAZnRhNvSnOghMfG7+Oq4vaqiTRKKp/ftH9ccagtSSi40G69
	rPhfk38rX/ZYiI+R/KcgOXA1nl5AtS3ux2wtNN9o08K6s6ZHDMQ6/MMyqf5uz5HeAhd0fg3XO6I
	KRt9Sc5b3kXAqhFUrusjE4EniO8qLuH37qu8Utt46LP+tsAwm0dcJ1Uj3t92+Kw0PpOKMgRZliY
	HapobEDhGzQs3+jfXRm2c9IDmLaPBDWGz0IfS9kQOuGfAt6c7qQq0s/PbIYyvuyw+Q8NhVjs84q
	9Zk5LSeWGyqSZfwV4ZS78KnIeZbLLAyf/0C2d2v3y/i4F+ymFwwQjYumfKv11TmEt7gY9V/4iqL
	V81ybyW1NALZ/Edj9823vE+/Uuh08g9wwpNon2MvqIDXmNyg3Vn0Egyh2ddxx8=
X-Received: by 2002:a05:6000:46da:b0:488:8437:b8b7 with SMTP id ffacd0b85a97d-48dba7b3557mr21356079f8f.7.1791975344629;
        Wed, 14 Oct 2026 03:55:44 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:2e7f:c3c8:963e:7859? ([2001:8b0:aba:5f3c:2e7f:c3c8:963e:7859])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48de0ac37acsm11002438f8f.34.2026.10.14.03.55.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 03:55:43 -0700 (PDT)
Message-ID: <f94087f42d38cbc466f925fbb65f1391f6cd9d36.camel@linuxfoundation.org>
Subject: Re: [yocto] [meta-yocto-bsp][PATCH] yocto-bsps: update to v7.2.8
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, ross.burton@arm.com, 
 "bruce.ashfield@gmail.com"
	 <bruce.ashfield@gmail.com>
Cc: Yoann Congal <yoann.congal@smile.fr>
Date: Wed, 14 Oct 2026 11:55:42 +0100
In-Reply-To: <0FEA1651-4720-40F0-937D-482BE1CFA97A@arm.com>
References: <20261013162846.1260225-1-bruce.ashfield@gmail.com>
	 <0FEA1651-4720-40F0-937D-482BE1CFA97A@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Oct 2026 10:55:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66757

On Wed, 2026-10-14 at 10:49 +0000, Ross Burton via lists.yoctoproject.org w=
rote:
> To clarify, we need this in both master and blacksail branches, right?

We already have it in master so it is probably just blacksail?

Cheers,

Richard

