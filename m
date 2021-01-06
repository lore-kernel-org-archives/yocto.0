Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web09.4383.1609912990504033666
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Jan 2021 22:03:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jhOjOSjs;
 spf=pass (domain: gmail.com, ip: 209.85.219.181, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f181.google.com with SMTP id k78so1788570ybf.12
        for <yocto@lists.yoctoproject.org>; Tue, 05 Jan 2021 22:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=wa/cV99kkOHldhXdSSInMXV/aG7whrPkfXXbbqLECVU=;
        b=jhOjOSjslyig1I1IoHizTGQavHYqAOJKWE+rtylixhXjxIVy1B0G8jAA/hXbbfm9oW
         s50zRa2Z8xGbgPJYVvmuyUvhtcY+j35KmMjgNB/vclNhUZTNbfWj+FKezVbzvLlMH/w+
         qE5XyMjVhoJ9gMfhIMIJY5TZe4cHT+RN87mDCVL0zbM92WwGhzo4ThK9oxgrgGVKP39O
         d/IVPSukCFXCrqc8ZT5P7gNw6CH8/NzCVP/ybgqJpzFNQw7VURpyWoUL1KUBmACfxp2q
         5M9zxiMyUZsEbcZ5XrirGpfJTopT2D035hTPE3fpj+Fe4we51VMypU5o21b+7exFYeSp
         GpCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=wa/cV99kkOHldhXdSSInMXV/aG7whrPkfXXbbqLECVU=;
        b=KDxMNWNV1t5ZEJmOF93SGObRHGEDBNVAqwZrWiV6n2Ahgkx06RWyFmGF1kEIkmEUZ4
         n2ydD6GqNj/G0G2e/+2w4AahP9oe3fEbhOslglUV+M20CTP4Xp3mu4ul8gK5N3/QGqBu
         A9+R3/aY1wplu5h7C+r61cJ3CSjs4iSgdUIZXwjxtN31IyBFIjqYuLmTtZIxeaaQQSjh
         uXN2cdiF349luIaIx1uCx3ic8/XN2uG7Hg6RI/NjIxXz98f7dK/iF6JirxORWO8CzITl
         ulZL+FI+KCyRuBiiwb+dLRqslD9f8BA91fYR3kK427FuZcAQeI1ZI24ZeJyO4cO1Esmy
         +CNw==
X-Gm-Message-State: AOAM531tqG8achoyNwqGG1EiWHGVmVcyPHtHrFM0YUheVexi8wn5xrYk
	IVjvIsKtaRjYtfhthCzpoxOhO/det8bPW31Ba20ZMyhS
X-Google-Smtp-Source: ABdhPJywT3cnNv2ORJLQVD1N13uRom4CEgWnpp7dvRpFob4RsFg8kejpa0Tn8OhtikQbklP3F3NVcwo1l5OypQ83KQA=
X-Received: by 2002:a25:e646:: with SMTP id d67mr4017287ybh.405.1609912989402;
 Tue, 05 Jan 2021 22:03:09 -0800 (PST)
MIME-Version: 1.0
From: "JH" <jupiter.hce@gmail.com>
Date: Wed, 6 Jan 2021 17:02:33 +1100
Message-ID: <CAA=hcWTML9Dg=yxt5TVw6Z7w35tJA3i6LouFMrVjAy5bo551KA@mail.gmail.com>
Subject: How to select Linux kernel version?
To: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I replaced Linux kernel version from 4.19 by 5.10 bb file, but it
still built 4.19 zImage, I add PREFERRED_VERSION_linux-yocto = "5.10%"
in local.conf, it still built 4.19 zImage. Where the linux kernel
version is defined in configure files?

Thank you.

Kind regards,

- j
