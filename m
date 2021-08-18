Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web11.58891.1629312817804528696
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 11:53:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uHfATVjP;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id d9so2341342qty.12
        for <yocto@lists.yoctoproject.org>; Wed, 18 Aug 2021 11:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gWNO3FLm04U8l86aGUMQ1FLDKtfxTRoZsr9lRVywMHs=;
        b=uHfATVjPp0xOkRVdP+e2XP4I7Oq91uCMK+bdBnAkv1tqosQ2EHGgH9G+jWvOllVr9f
         V/wrgwzD3ADVNeaB9K4YWfbbMYq0H/9+f1OZeNbq5y6g8pmgQKee2Ri/QvAe6twQgg6T
         dVBTAvyHu3e3yRmulaaaCxS67aQJ9tJvbBpbo4ctEqBhX4H1ZTS/IrlN6sBbQW8bSeup
         msFR6NGcv5G5Jre1qWX2qdLebmXFYQTuYr8AbVbg1/SRKe1IRRe/H25YGhoyiTu+iHpj
         9VXQsPhwabJap4RNpfBblDvNl0dEtGdkUypQAqsTBc8z8tOmeXCyLG3c4tfyUGzk8rcy
         xrVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gWNO3FLm04U8l86aGUMQ1FLDKtfxTRoZsr9lRVywMHs=;
        b=IWA1uvrtKE5OH61s/XVpYn8dlvaUlUdDz5FsvUiizdGcDGZxsZjNlY5+BevHyLOo7H
         h26Me1vUNohEASM9rf0yp6f7jjLmiJBBPxndRK7sldTWxOvSBmdSlmxxZU5SLRBtbJ0z
         3z3JgVmxgJdMQeBrN6vb+Jalk1QB/jMEOl+P1mN1ilU9kdETf6gHcdUKBk9Y4oQuWDOT
         +3tb8aLijD15Bp3uDwDEZahzOyYKbnrADjoG+4CkQJ/vXuNvr5qqJeZh35buxLYpX29k
         l0tIDnQ7WCfrgRoxmiNskBAi8D7UPhinPP691aEw6Ul90LiMzTvM0sQCom2ww+Uva+p7
         /eTw==
X-Gm-Message-State: AOAM532LBrvUaHJWgn5t26c2pYHnoZwzYWOGRgkV4y9dS/vHWmsiEur+
	jih3m6MAARxmioJo2V+0QXeCR4TzEdE8mL3yKQU=
X-Google-Smtp-Source: ABdhPJyru/13ULNN2RMiLOehOu6UZu5mQL8NXDV6rWABBDOgOHAqBIx/KjYGe1XieCkIPa5sCNGdFIUy7IEaE7Yt28U=
X-Received: by 2002:ac8:b82:: with SMTP id h2mr9232025qti.214.1629312816981;
 Wed, 18 Aug 2021 11:53:36 -0700 (PDT)
MIME-Version: 1.0
References: <pEay.1629291102515339443.r5Cw@lists.yoctoproject.org>
In-Reply-To: <pEay.1629291102515339443.r5Cw@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 18 Aug 2021 11:53:10 -0700
Message-ID: <CAMKF1socsr3=6EZSa0LK3vPDMP9HLMW95xnqpXiZWdKBB9m7Ww@mail.gmail.com>
Subject: Re: [yocto] Raspberrypi #raspberrypi
To: yasminebenghozzi6@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 18, 2021 at 5:51 AM <yasminebenghozzi6@gmail.com> wrote:
>
> Hello everyone,
>
> Why I can't execute an executable python script in the raspberry? what should I add to the yocto image?

you will need python3 in image

IMAGE_INSTALL+= "python3"

might be minimally needed.

> 
>
