Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.6417.1588599882043588924
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2020 06:44:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=N9RB++EF;
 spf=pass (domain: burtonini.com, ip: 209.85.208.182, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f182.google.com with SMTP id e25so9715286ljg.5
        for <yocto@lists.yoctoproject.org>; Mon, 04 May 2020 06:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=NBUVUgplhQd8g/VgNREjKF0o93IMb7Qo84iY1UpTKr4=;
        b=N9RB++EFKFVmy6YmctmvlDdiyPW4na2er26qH+vGuJ0rK7NeR5XZcsH/PUTwfjTvw/
         tLA9LyEPa4dzTkLfLc17C5ZnMDjo1txhld8anhaU837pyR7xr/DWD/GIHpF0SF3zv/Mz
         TMblY+O3uM1qUKOnP9Fkn0Yi1rVSnJr2Owi3pqtidiXatEENvBeW1RJDsC6LZQgylFf3
         2F+QdhefNDpgOu24Zyg9qgZPOJAPvR56cHnRX49VM2Mr2C3Jbc8i+jzU6xWRHZA6WKub
         Y3jEdrv2iZjACJpQDx5IG+RMnkPe/DYOBJ5MEvRIPdn/tR6L5hWG1WXko25tdvO+RoyC
         9rlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=NBUVUgplhQd8g/VgNREjKF0o93IMb7Qo84iY1UpTKr4=;
        b=Stpb8RZNvHhuFBTF89MRby5mQNQh8CHl14qizIokpmw0kaVfjdMu9nyeJI9DQGc0de
         a86ULa75y72yv28w8dno2L96moktCQVcJe0WRjz9G//uhG5TzfeDXE9Z0LLSAWtcnwv3
         ZlabKx/XllbgPsbbAMIlOhQt4VzQZPncU7jVvnIFpsSQIkd5S1jimqeEraX0YIJyvWa+
         F88JD+M4zXrLtrnu660StkzBUCG8NdXgZW0n6HQ8LgkPbjL1t4dz85Mn+93x2xthcpZ2
         VupGdQ7bWhg6MUc0VMY2YQiy+YnRwsEyA9860j0oOmiJC0Lod49RQpyOV6WvCAJWDFu1
         BtvA==
X-Gm-Message-State: AGi0PuYLFO4got4zIDWevJT2ebRtziI1RPQ+r1L2i6Y+I+6msprcQ+Ra
	izs4tb+PwX4X8z/wFd3fxF/HJdkK8Q4HyqtnoBcVeNjs5Lo=
X-Google-Smtp-Source: APiQypLcZ0w/1fBcZLfSnkYXcyyZ+8IPA3Mw5cCDi9MS/pEgZdu/1iI5EDJwMSmg9QlbTj6LcCiPhUrmkJb2w97u98U=
X-Received: by 2002:a2e:8658:: with SMTP id i24mr9712151ljj.287.1588599879929;
 Mon, 04 May 2020 06:44:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAAnfSTuzEbam1UCtrYhWUqnKxP+6duRTShKER9auYcxSbXT_fg@mail.gmail.com>
 <9838.1588597519955769955@lists.yoctoproject.org>
In-Reply-To: <9838.1588597519955769955@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 4 May 2020 14:44:28 +0100
Message-ID: <CAAnfSTuhn9Bz6VSTxdvMQnD9Z0-iUHBPC5NT5EN2R-_PMqEpwg@mail.gmail.com>
Subject: Re: [yocto] #yocto do_package error for custom app
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 4 May 2020 at 14:06, Bastien0530
<bastien.gallet-pesenti@pi.esisar.grenoble-inp.fr> wrote:
> I have just resolved the issue, that was a mistake in my makefile, I fixed CC=GCC instead of CC?=GCC.

FWIW, you never need that in a Makefile, as there is a default value for CC.

Ross
