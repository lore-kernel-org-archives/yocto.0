Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3719.1607331649294536634
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 01:00:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ek364FTl;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7858138C085B
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2020 09:00:48 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id q16so12833606edv.10
        for <yocto@yoctoproject.org>; Mon, 07 Dec 2020 01:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=m+7TdJ+PCAHAobhDZr2ggq0sl69s5aHEhQ1B6a7OZ1c=;
        b=ek364FTlydmiKBePN8BjHeS9HAvpokD8HvY7pqoRzn5XSOnR/s8ThnSzfzP+3IHvBg
         ePcsR3NANHhBWRtblXQ7jgffZW55WNh1cW3oXAYpCVnLAdvNK3s+1Ll5a3O6Dn0LJKSI
         jXasvEHCsMZclytVvDDrMCBmpZXcxXxyd51C+EUkPBUwvEvttcB+LljK6pCEL+7YsfeJ
         7cjI2yeGMrhWEJvMcXbMGVsKc9uQW46V+IYruLUgPBad2bCaYIlsZ8i+7I9B8iCLfG6h
         f/ujKEY9YO8erlaAKNzSd1gbug4Sbpk0xEbvm2eu8PYYWrReTdi8XTbWseW64AkaR5rP
         +NCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=m+7TdJ+PCAHAobhDZr2ggq0sl69s5aHEhQ1B6a7OZ1c=;
        b=P8zPBxWYxJKY+iONAqTa6FCzOUO5bCYCa3ou4Y7prgkKaP40nQEuN2hQ6GF1YgQOOc
         f4TgQgPgi4kKYKYpGjcGH0FLUXf9L9ytg5bOG0WeD837LbhTmjy1tNKdR+MsyMnSgBbX
         db7AvAHCpQdCpFEyzsxcuKu7SOcgWKJ+1ClailtjWRAnri2+SESdqKqE7wokZqxX3LwH
         5e96Iyz7FX0IUjAu3AaH4WNgxKdFk2XtJEcnU+KLosqMmzyc8u8RdD9hjRt/N3n5siZT
         bFPqU/mu03Zv3Q+AfnbDE4xckxOnmnEGj++fdvpUxI+3mmTUUvuNFyI2sDlwDtub0OZO
         ReUQ==
X-Gm-Message-State: AOAM533WhpfbfaDWvF49efLBvRT5kB9O19+nmHHbj+NADj6iPOIpuUkw
	C4smWUdT6LRGeXkGHN2TfpX8rZw+1pyyZEnH+fJ9J+bGIfbF7Q==
X-Google-Smtp-Source: ABdhPJzI4HVSUGMnGAknDXF94J2t3Ncyo+qLEunYoEfB5a6T4L6F1zX8/an/AJNIC2ecBXYn1dmKcDhwLXd9Avtdt+k=
X-Received: by 2002:a50:9f4a:: with SMTP id b68mr18756600edf.296.1607331646692;
 Mon, 07 Dec 2020 01:00:46 -0800 (PST)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Mon, 7 Dec 2020 10:00:35 +0100
Message-ID: <CAAfyv3548QmcBobrxxpq8eUx8Nq270b9sT2yaMB31VT0h1mjbw@mail.gmail.com>
Subject: npm node-gyp python3 compatibility issue
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm adding custom npm app using devtool  (using poky dunfel) and
hittin build issue like:
TypeError: write() argument must be str, not bytes while trying to
load binding.gyp

To me it seems it's this exact problem described
here:https://github.com/nodejs/node-gyp/issues/2051 as release of
nodejs fits. Do we have fix for that or it's only possible to get it
by bumping node package? Thanks.

BR,

marek
