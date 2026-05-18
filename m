Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B9FCD4F52
	for <webhook@archiver.kernel.org>; Mon, 18 May 2026 10:45:17 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.5775.1779101110334706121
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 May 2026 03:45:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=brBS951Q;
 spf=pass (domain: gmail.com, ip: 209.85.222.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-9125284a8ecso263828985a.1
        for <yocto@lists.yoctoproject.org>; Mon, 18 May 2026 03:45:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779101109; cv=none;
        d=google.com; s=arc-20240605;
        b=XznCz5ybcWfIYd89eQ3Z7XPtkEzmE5Y3sXpVct4lxohQ2hhRGklzs02Tu2+s8jx0q4
         2BKzUfWxde/Ok8ADAEagKEsk/z3DdONX1dzg6nIheO3ECjotiaxAZ6Wo5dBRLtdqIffO
         md7nKVvEWOvHf4LUet6AkzJyLkSHiuMV0xGTUpBCj0aI5fArxToNtXEtTOeOjKOkyXRZ
         jwS/7vdhMbpQKwGv6Gx3+tF8qOCvkVeHGM6aZF91cJovipq0vMFJuhGoUMcIM1lINsyf
         cZ4L36siYCKdTTks6UL54vREjUXY8FZ41hc5VXb6g0ml0d1OETYlQQwCVNYgtSIr4teZ
         4r1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=m0cF7Ws1r1Dx1PE9N/BAsq8mSrLMxqug6Obsv6ukwqs=;
        fh=PaCoefWFmkFLxT8cExE+3jqAoVAW1g5QHgRIWAFRCJU=;
        b=Htw0NlwMP0uQWeNjAQ+NlrutLsJdYDLX1H6N8D09ZxUmmY+bFtH5h6Frfx6tKPquBW
         T9w2vC/w7ZiqfHFEi9heZ5vUpQ+UlXAmnENK3KBWmlvPaOcz61u1sdKu1bGFOOXSbeKP
         O1WX9r4byUWGZiy5II7ToqCpUXfg0a34J0OdoumT9A359MmAVEuw6Ke4lQT7dVhIOqo7
         p7TOzWe2d0IgC2RWzurDEidaB+BdLW6exiTZEfZJvuLH8+40WzGVCeHU00BUcWpHxHXm
         T+NqBlvoM6PEl4EQ8zhiFv2lgf3wXEPRI/Ip4muQ6UnVZBaersZ3M2N4IuTojVES2Msz
         HEuA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779101109; x=1779705909; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m0cF7Ws1r1Dx1PE9N/BAsq8mSrLMxqug6Obsv6ukwqs=;
        b=brBS951Qb4KfZzidaaVkWgH+2P/fRv8Az26807W2SeKZDVEc7gMQM1k/MBAx0sH+7/
         FdbNHYaOgoY/YEj53L6zAJ5UEKcUNwupGGJ8QmUOeFAX6ktbGBvWNJiHK01g9SNvvEuY
         DMKuEHIA/hXGx/Zu5wmbksMrDnbPEq7gTJ75L783L3/tAA0+bawlh2XE8z6W84T3F95d
         nLMFKF0+RzRyzpDsFCK/CbzqYzhooy0V0/dosjAwLhxbITix6YOSEoQotyUGwXpZ5lca
         U9qRtHVrNBwKLMRXshSA/4GKOKV/G+arDATfcXJzXTdYNlRk7GYTDapp3ymdIdYUafTP
         aA4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779101109; x=1779705909;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=m0cF7Ws1r1Dx1PE9N/BAsq8mSrLMxqug6Obsv6ukwqs=;
        b=SvNCBot3hr3YgngkANCoPXhHxuBeW6QXlvD1EyPCGg7SzRHeddhVCPmQUkr6yYMDLO
         KmybnuQkXmbqqfCI0Sa3ar61tKvkC9GeltwWAqC+vaLwQe8Oip+6qwbEAiFOj5o81DaX
         oFogvIyWAfq4aZ6ZmnK8OmNz0dh/OqarXKn6Mhs8JYsn9hZ1XVxlE3m9E+zBv8zMDKzI
         fH0JvrN6yfYST0JOWInb/vrkkCD+69m0OWfn8F2IjCpvsj4KNzutzsuk10y2PKUDtcMa
         Q/YluTgwRvkrVj7u7XD0LNgeCKJA6nZqEQcoqAhneAWW64kat1t9yWtOtEh7RA48ceug
         uQrg==
X-Gm-Message-State: AOJu0YyJhs8WsmxgFh/PbfTIA0Ok+BDtr7Nb/kq1s4nf88R7Nf7Hhspq
	SZUP9zUcJDLpYHczWTKfKgDvv+gtAo1qtKkxbn5Zo1Yp9C9NJhNyJzcDBgtTHgJ2pptFynqIsmT
	2Aq+ewORZIRuzviTFALH0P/9Im8kBhLr00A==
X-Gm-Gg: Acq92OE6A/CeLgMHdWtdSgyD9HGYGyCDTQQq/G+NBsWx1+JnlK+zAHJcg6xw1rHMJAC
	rY+7ob36HOQJIz8KBMVhdoKaTUjduxi8y9WLfC67lK0HuuCNIey0zgi6nIVJ1VjYa3B/cpAlFfK
	8hq9C9iPmj8GvcW+/fohvVlCTshA/MOrovEp6ZBR6f3ZMkMaSFVW2XO83lGQiVcFjwayFnr6iSM
	n5L52w0P4YeozNXDc4ISczdx+GdTk/a+9rIzX6SsUHydNLD6V+pIyGyk9TZlE5N/YiOncd5h4fE
	HDDJwRQKyY2AxRSR9YGVnFoRnwcd3p3PquPLKxEJKQ==
X-Received: by 2002:a05:622a:144e:b0:50d:8792:b6d1 with SMTP id
 d75a77b69052e-5165a0df5famr213806471cf.38.1779101109255; Mon, 18 May 2026
 03:45:09 -0700 (PDT)
MIME-Version: 1.0
References: <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
 <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de> <AS8PR08MB72519BF260608361FE603E29D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj_VGh3G-b6mWPqJO6WukwRhkh3Gvjffk3GXG8D05ezeOg@mail.gmail.com>
 <AS8PR08MB7251A410724D0D006312018ED5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj_7Q_aS8yp+ZR3=9xTjHUsJyxL8ep9K2qO3RwSMnFUvoA@mail.gmail.com>
 <AS8PR08MB7251477F2671A0E8F6E86B49D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <7d648b16-f9dc-479b-9473-06bdb0c0e63b@cherry.de> <AS8PR08MB72516677F87CEF721A3C556FD5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
In-Reply-To: <AS8PR08MB72516677F87CEF721A3C556FD5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 18 May 2026 12:44:57 +0200
X-Gm-Features: AVHnY4It1Ve7ilhLft4o8EMGSBjrtKnISE8AKLB-Cf-mtdK8ijG4GZRF7mRw1tU
Message-ID: <CANNYZj94rNNiDb1e4Dns7X+dJOH=MbgY-ZbYDzQPmJn5+s+ctA@mail.gmail.com>
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
To: yocto@lists.yoctoproject.org, ext-antti.garding@kempower.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 May 2026 10:45:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66574

On Mon, 18 May 2026 at 07:00, EXT-Antti G=C3=A4rding via
lists.yoctoproject.org
<ext-antti.garding=3Dkempower.com@lists.yoctoproject.org> wrote:
> What are you referring to as a hack? Are some of these approaches that ha=
ve been mentioned in this tread not recommended for some reason?

Basically anonymous python, event handlers and everything else you
tried is *way* over-thinking and over-engineering, and no one will be
able to understand what you did there, and why, because that's not how
such things are typically solved.

The standard, working approach to form SRC_URI dynamically is to first
set a variable with a function, then use the variable inside SRC_URI
assignment. Which is what we all are trying to get across.

Alex

