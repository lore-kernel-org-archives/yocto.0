Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 867FEC54E58
	for <webhook@archiver.kernel.org>; Tue, 12 Mar 2024 16:04:02 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.157.1710259438749191216
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Mar 2024 09:03:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YFJl/lYH;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d094bc2244so87771941fa.1
        for <yocto@lists.yoctoproject.org>; Tue, 12 Mar 2024 09:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710259437; x=1710864237; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W+CgFj5Dvji7jb4/EP9NRuMFZddnqGMhdZtJUObgM3Y=;
        b=YFJl/lYHUnyhMxgOReybiOPTgZ4Jp1nf1/6zeJNodbK5wk8pWqUcuEKuyddBCKHOx5
         LHTkcLEjKDz6IV7kDHR3LXnhOonVWEhlFChuq0ASlF1pUVIdSYtSf4f4VQrHeHjSXser
         C8Jf6MVbAvRcU+bD66DPQdnk+z3ACXJuClTJUaLlZLeGXpqzdMjTJqto/39L7BNGmTxI
         t09eZaeF6OTpNrgSibBX8Q4sBkZb9XM9G/dV6K+TrkS2QK9hVMj3ip4GI91RJelf8fn1
         Tv4j/gLxyMQ0lsCluxBUnSd5SggUsGG+ghHkGqMBdCHBEqkHspBg3X+P9JKtYb4G8tFi
         Svxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710259437; x=1710864237;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W+CgFj5Dvji7jb4/EP9NRuMFZddnqGMhdZtJUObgM3Y=;
        b=B+eIfvL6hn1QYssSnKZe4Xdu+gWETT12jxaveCLgVxVmTMec3fGJLQEuJkVFuc/2rU
         Tzj1tH/+SmB/k5DRJWFGR9ssh+3gmWchqOzQ2pfR3ns0x8egcKseNZZ878nFVQfyINDp
         Ym8yavp6WLyAvZEMHq2wruoeGjRaUQ5xX9a2LCVZ/HCQnSwh8BNTm3lnbSlEHxgY3xpd
         DmSI4Yt5duu/2pq++yd2e8RM+xv0JPyDMMhFFzEufBlUUVWJDmrkeAIOXlpwLMH7sCcv
         tu9Ro3z4sdMgLuCswMq7P8mE1mjpnWPpeABF2PUGd9wS2QQJdoj112OoNUTyOIQrTMVq
         lemA==
X-Gm-Message-State: AOJu0YygcYD2/X4dStghNFd+NNLreHIcqya/qKuofaMb9P6kYRa/xK3W
	c2Gu4+KmYslxkAP4+2X0hWC7fxvCBk+7gbrC+bSHIfg7b5Dq21JtAHXPXX8qYQ1tPYLuCrugToT
	B+oSo0STmK7LxU+IjhkzByMZYL3Xo7sfN
X-Google-Smtp-Source: AGHT+IEuMZgWOCFUYQnjBvjs0mo3Ou7gjhH7THAK01JUIMF22SejU91r35gxe1u7SFwzVeB6p+YRFZS9gXRofS0uSUM=
X-Received: by 2002:a2e:a9ac:0:b0:2d4:22d1:d96c with SMTP id
 x44-20020a2ea9ac000000b002d422d1d96cmr1871284ljq.25.1710259436389; Tue, 12
 Mar 2024 09:03:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb-rUZzdqbXD4yoHiF5V-L2sOg1DVWMEsDGXWk36F2cexQ@mail.gmail.com>
In-Reply-To: <CAK5yBb-rUZzdqbXD4yoHiF5V-L2sOg1DVWMEsDGXWk36F2cexQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 12 Mar 2024 17:03:44 +0100
Message-ID: <CANNYZj9q5baYcA1AZ6UkqL+E+Z=H+4aJ3iAeD9SuCB7SoktX5g@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 12 March 2024 (WW11)
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: ",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Mar 2024 16:04:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62744

On Tue, 12 Mar 2024 at 15:45, Stephen Jolley <sjolley.yp.pm@gmail.com> wrot=
e:
> We are seeing issues with devtool tests changing metadata and causing rac=
e issues. It is unclear why we=E2=80=99re seeing these now.

I'd like to see the issue, as one recent change in devtool tests was
in the minicom version update commit.

Alex

