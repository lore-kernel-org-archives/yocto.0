Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.6305.1587574143926310562
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2020 09:49:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=PHU1pQQM;
 spf=pass (domain: burtonini.com, ip: 209.85.208.178, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f178.google.com with SMTP id f18so3013856lja.13
        for <yocto@lists.yoctoproject.org>; Wed, 22 Apr 2020 09:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=leJxQp3dqMIzZ6DF99e71MAJkU8TqL7x3MSzJTZQJew=;
        b=PHU1pQQMmMLEUKScaLP8LZkNd275geah/Qous6Ik7iEqV09aCSCZWyVp5lQZCyT2+O
         RT7RTMa1RA6UpHBpzI8NAwUlgogTNuO4UOF5E4kOTNh5Piy3zB9kJk1KRq9ZaDroprGE
         L01KK8I2DDxefQeAoCxY0wdYj+igU/1IwuvRDCxAau9CYZg+J4nji9kmc7i/T44eePLk
         ZQrbTakg9eSN4TWytPP2GHVGUFDvTdi6x+wq6GvHE6hrCAJtSvAgJn8m15IWjeOPUIZe
         N208NoeazczllyiW3+uHKMNr1t4itE8Rj5z8/urfS7fLQzG5dNZrbAN8PwLWSuyBObud
         LfMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=leJxQp3dqMIzZ6DF99e71MAJkU8TqL7x3MSzJTZQJew=;
        b=GsO+A6J7/OpB/nGAXCG+6ulA+Xt/b9R1e2KkXxpPnJW06t+gQPnAbt20t494dmbzBh
         iz9Bsac/8BP/UdBKjy42ipTETj9VHS99YS1DOcG6v0XJzpWqSuxO/aEGf0mFN4ne4aWW
         ALbBi2LIXN667/c4WuIxzR7Uor/1L5gbdx9UVgcel4zOONG+5pV/+wSF9U9QDrYVwthd
         OdEInwgDAEYOtHrMtFZWJKoWxcu3w5D7UqFG2ulblEKYeY8jhvKgCSqBTi91ao3wxntl
         RMW17PZmSv+BVcspkQ7LbVfKfj/KU7h9NgAeKn1TtEjN5GlOEFiwJ1mn9/7P3zMjYdRm
         oA/g==
X-Gm-Message-State: AGi0PuZZFUt6dDrnBLz3tP6DRYQoGKsj7nPFgy53HS3nEdlwQkBURO/+
	cXgvhMmuIL3bdcMKUAAlS5lp96twiRZivw0ZQtp2xQ==
X-Google-Smtp-Source: APiQypKdZuYcJV6D7SmVIbhX0mYNYb5wuBC8MBtfkGX9uoeBv0zcedi8TP1D89NvSs1nTK/EG18VPAgxnnkwNQ7X544=
X-Received: by 2002:a2e:9713:: with SMTP id r19mr16890162lji.89.1587574142093;
 Wed, 22 Apr 2020 09:49:02 -0700 (PDT)
MIME-Version: 1.0
References: <DB6P190MB027724C10B8D23DD78C85440F8D20@DB6P190MB0277.EURP190.PROD.OUTLOOK.COM>
In-Reply-To: <DB6P190MB027724C10B8D23DD78C85440F8D20@DB6P190MB0277.EURP190.PROD.OUTLOOK.COM>
From: "Ross Burton" <ross@burtonini.com>
Date: Wed, 22 Apr 2020 17:48:50 +0100
Message-ID: <CAAnfSTuBKRDUO3S0WKM2xTYUYD+uwy_3u6gymzxU=vCU61=qOA@mail.gmail.com>
Subject: Re: [yocto] HELP NEEDED TO ENABLE CUPS IN YOCTO
To: "Dan O'Donovan" <dan.odonovan@emutex.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 22 Apr 2020 at 16:58, Dan O'Donovan <dan.odonovan@emutex.com> wrote:
> This meta-printing layer has worked well for me in the past:
> https://github.com/rossburton/meta-printing.git

Those recipes exist in other layers, meta-printing is dead so please
don't use it.

Ross
