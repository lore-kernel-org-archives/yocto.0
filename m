Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 146CFC282EC
	for <webhook@archiver.kernel.org>; Mon, 17 Mar 2025 10:24:49 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web10.49017.1742207088009601586
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Mar 2025 03:24:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cx68zI5G;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6eb16dfa988so2285936d6.2
        for <yocto@lists.yoctoproject.org>; Mon, 17 Mar 2025 03:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742207087; x=1742811887; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1sZ/nF7Ou0kwB19gml6wqUL7bYez6U2qlX6JBbUA9vA=;
        b=cx68zI5G9xGY4z5IhLtckXWwsL6A5UqJ8GBhaCWZfXFxiJa95a73NS/ZdZ8vx10xYO
         1y3O1e+O3Y1Sh3rlnNBi6xrrV5OIw8p97g3ptzYc6nLsYuKr3o2jg/uf5aa79ta3p9Ub
         t7xQ+Y4dx4QBJoH4QKQXsuhnTzNg8lxdDvF35ft/IuonpCxomOWHmbRmoFEvbCEO8H+P
         uIK+06YcE8rkMIYIciemvIY1BFkNcmTE2KxAX+soUg6doaX95gkoHWV2VJKV8QLu7hwT
         1Xa5Ghv971iNORZri0qFshL+HLDC9beydoIpjK5gjr3Pf8qermEEnHumlbI45Z5BICJ6
         llcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742207087; x=1742811887;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1sZ/nF7Ou0kwB19gml6wqUL7bYez6U2qlX6JBbUA9vA=;
        b=MfS7TL+7OCQAmdsK3E6u8W8NVyrQtpmLfrPxBx0TUrYwfwXkBV4P1AdA78vrrUfL7s
         O4IDGeZLe2G/UTgEFY1xCNicsrl7kk1M8VSZtCcbM4jO6etj8BbhBwLCNV35lU0aSNMe
         smLC0RQZZyOlkLUgwrmkLc4aLh6VxCOyGQnDjztAp5ufyPIC28IA6g9R/znmQvf8mVXm
         wbEGmyjqBCyhAnYBOJevDYy6B58C/xtLHV6t+BhJ48WA5q9wfGkBJZv+ato8fHaRn3Ua
         WGMcYv1Yu2TSJVXAhnFJ270gMRLjYA7UEMDunuFVmSplf8VgsuTGBhkDl8nbxDF0JlhX
         EbWg==
X-Gm-Message-State: AOJu0YxcYldXTf+TynhMCkf9O9PN6sCqgVO6jlcR0YP4Pz3EKBPQ1s/V
	bkynuh/Vn9DZnWfhIPzvdjkhx7CguzM8+jA+/drKFxP1ht5XbrFbvtAvOIe8F3xPNerIk+eNPP6
	mrV05AdMXxd3qfqc4tNLVAEJvcVfbGw==
X-Gm-Gg: ASbGncuwj5psOKA4jfU9QSSY447DPpMlwjdXP4nBzUGf4AD7F+i3z0aDp7vGE7n1jJI
	0K1EdKAEAGjtroQ86pQcnyVkaXGyraByfBVyC0+ENxmWahMuNuAzufaRY7tYPG9X6NaicPQ9WQa
	jimWlnmru0yfCyA9KclWpckbqZLQsExJZQaocLwPvHLru0KBrsv3fbTyxthCZFzzBBh9cENGc=
X-Google-Smtp-Source: AGHT+IGl3XGa3M1nVqbKC/feBwjMIBIvVtIHRsHZj1+3myBrUqDE1YrEo1kVsx3WMu0AaltyGa+AisEfKX0OknyQbuY=
X-Received: by 2002:a05:6214:2483:b0:6e8:eabf:fd55 with SMTP id
 6a1803df08f44-6eaeaae0998mr174556656d6.39.1742207086952; Mon, 17 Mar 2025
 03:24:46 -0700 (PDT)
MIME-Version: 1.0
References: <852477278.5779554.1742203477554@webmail.strato.de>
In-Reply-To: <852477278.5779554.1742203477554@webmail.strato.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 17 Mar 2025 11:24:35 +0100
X-Gm-Features: AQ5f1Jq6Q35lpPwa9NQt9mRGS9jMozFc66n2Pk_BMYxs0dHn2bE-xB0CGePFPTo
Message-ID: <CANNYZj_+csNysr1sb2pR4nQrctLOLVuK8y8An0YTxB48tgH4bg@mail.gmail.com>
Subject: Re: [yocto] Migrating npm installation script into Yocto BSP
To: yocto@lists.yoctoproject.org, kontakt@daniel-kampert.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Mar 2025 10:24:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64960

Dunfell reached end of life almost a year ago, and is no longer
supported. You need to update to a more recent yocto.

Alex

On Mon, 17 Mar 2025 at 10:24, Daniel Kampert via
lists.yoctoproject.org
<kontakt=3Ddaniel-kampert.de@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I have a BSP with a npm installation script. The script is sourced during=
 the initialization and contains the following commands:
>
> #!/bin/sh
>
> # Install Node.js version 18.20.2
> curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh =
| bash
> export NVM_DIR=3D"$HOME/.nvm"
> [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
> nvm install 18.20.2
>
> # Install pm2 via npm
> npm --prefix /opt/app/backend/ install
>
> Now I=C2=B4m wondering how I can add this to the Yocto recipes of my BSP.=
 The current Dunfell BSP only supports npm 14.x but I need this upgrade to =
18.20.
>
> How can I do it? Has someone done anything similar so far?
>
> Thanks for help!
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
>
> Ing. Daniel Kampert, M. Sc.
> Embedded Systems Solutions
> Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> Phone: +49 (0)174 6932561
> E-Mail: kontakt@daniel-kampert.de
> Web: www.daniel-kampert.de
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64959): https://lists.yoctoproject.org/g/yocto/messag=
e/64959
> Mute This Topic: https://lists.yoctoproject.org/mt/111745830/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

