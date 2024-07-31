Return-Path: <sdorigotti@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6B54C3DA64
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 11:19:57 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.40684.1722424795173930826
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jul 2024 04:19:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TExyhkbH;
 spf=pass (domain: gmail.com, ip: 209.85.128.49, mailfrom: sdorigotti@gmail.com)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4281abc65daso29248435e9.2
        for <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 04:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722424793; x=1723029593; darn=lists.yoctoproject.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FXJ3yqJegbbcxkSVqdBpXjDLRb5sENy15sJwhSTm+ms=;
        b=TExyhkbHdwMMjceYG5xKtWklugf1XTk/V5r7E1t7MTZEoAnGFU2sVJ3lTRDGKCD9zd
         8DB02Tl/rA6N1BdrRV73sHBHEtoFajvUch+1wwZ0ZHki8t0Wu7QaSt1/B0+vrVVaxh7u
         Xa1B+UeGXDc6mXQldr8McrmgRxfkWIUKCF5eZilJb3Syt4nivdN6c8kL2cNAK600rXoT
         0fLPM0JwFg75SkSeSQ+Z1j4uayf1fy64QVXlLZ3bwTRN+MouwvyCdGe3OxAbNHiOOzjQ
         EY4sOTV0oLqif6FxSeaL39j3/Ye1eWDBYXORaKrmH9SlGVGs5OkvEiwk1j7ae+n3YVYc
         gASQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722424793; x=1723029593;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FXJ3yqJegbbcxkSVqdBpXjDLRb5sENy15sJwhSTm+ms=;
        b=ZGZeyyskSM5N24JRI9OdYrST8NKlhwi8eTiuryLgmdiWm+BWN3BsiSA2pcrAe+ofk1
         fYpvbB8Ls/TBgu80/mFmxo5Jcwfts09uYl0t1oNev0QiXXRJciEpLsICMzeL8Gpeupk7
         yS9RaAKDZaSRwXqtCLnl1XHAkcdn/hwYzaMAxMHwzt0QH6YLiWKPP0+kr42tYaNyVLYU
         U6s5OSk+BfNfS2NPgU62r/X4uf4PP3lUQc0yWyhH2daDM3kH/0KDg+z++QcPMwDbAoIa
         7x0R9QanMKGYk/RQ27rLYWezCYrZGxUayn5E6tBSaP0GebDMmocxtZvu0J3m9fF1fBCZ
         tvQg==
X-Gm-Message-State: AOJu0YwFmKuKcWO130kP7vPHwFbg4T7QawmBKi8+1EKmYB0hpYKEPFXC
	4TOCYD49fzE7psP3Hbi9Xei0n2Ca+YaB6jEmrxUPD6GN50cOc0/6
X-Google-Smtp-Source: AGHT+IF65Uh4B8JQDIZpTLnMuGtoPVDBzt1qAMjGVb12fIcmJuuIghuS+askxlC8ZKSQxRTsvXVziA==
X-Received: by 2002:a05:600c:a03:b0:427:9db3:46ad with SMTP id 5b1f17b1804b1-42811dd1a29mr86072605e9.23.1722424793342;
        Wed, 31 Jul 2024 04:19:53 -0700 (PDT)
Received: from smtpclient.apple ([37.186.164.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4282b89aa9esm17994915e9.2.2024.07.31.04.19.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2024 04:19:53 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.500.231\))
Subject: Re: [yocto] CVEs and OSS info for nested dependencies
From: Steven Dorigotti <sdorigotti@gmail.com>
In-Reply-To: <AS1PR10MB56979196B6806897F45F88E3FDB12@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
Date: Wed, 31 Jul 2024 13:19:42 +0200
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <749E7C14-50A8-43D1-8D7B-D742B323E931@gmail.com>
References: <72C4369E-8A25-4CFD-B07E-D8D436665B38@gmail.com>
 <AS1PR10MB56979196B6806897F45F88E3FDB12@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
To: "Marko, Peter" <Peter.Marko@siemens.com>
X-Mailer: Apple Mail (2.3731.500.231)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 11:19:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63629


> On 31 Jul 2024, at 10:21, Marko, Peter <Peter.Marko@siemens.com> =
wrote:

Hello Peter,

> This topic comes up from time to time.

It=E2=80=99s nice to get confirmation, I was unable to find any traces =
of the issue.

> There was already a patch proposed for this:
> =
https://lists.openembedded.org/g/openembedded-core/topic/101991269#msg1892=
60
> =
https://lists.openembedded.org/g/openembedded-core/topic/102076964#msg1895=
01
>=20
> Maybe it wouldn't be that difficult to finish it, but it's possible =
that it needs to get a bit broader to also update generated spdx
> as there is ongoing activity to separate cve-check into offline tool =
processing the spdx file.

This does seems like a good start on the CVE reporting side.

Whereas for SPDX, perhaps the =E2=80=9Cdummy dependency package=E2=80=9D =
(e.g. nodejs-nghttp2) approach may be the simplest alternative even =
though it requires manual copying of license info/files and some extra =
maintenance overhead. How does this sound to you?

Thanks a lot for the sync,
Steven=

