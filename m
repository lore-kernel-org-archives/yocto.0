Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web09.11509.1620732366271952707
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 04:26:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tGulbXrc;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: mohammed.billoo@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id w4so24649247ljw.9
        for <yocto@lists.yoctoproject.org>; Tue, 11 May 2021 04:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=pn2QhZ9SctcDeqPW1s+5VUgCvTZvKg0+ljWjPxmgTJ4=;
        b=tGulbXrcFoaR0IZT2OwYVoHu0772lRPRXYCBKIPCKHNzkjphls4+PWr/sQsezUWgea
         K1oe7vGOzPDG45ypTeOqtJoCAnBRtNaOz4htCK+7TsEB5ijzT167G+cNOsv4JEoqFoEk
         Ic7mHGCzJswsWXM7trqtDdalLkK6K+J8bbSZ2YGzJZSbausHOoFXk4iYJoSEnSPsRQOg
         HBUHvUfiSPwnkdpUJyFwlmScxm1Md6b/du2Fv59jfRIQ3rG9jkKekNSn8Sbhqo0v9Uww
         AS2FfejOGb4p8ZZN9JMr1feOLPiY72I+F8tvdflAZ2vgCAABkD6RhSmYNJlMTw1kcbCJ
         yD8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=pn2QhZ9SctcDeqPW1s+5VUgCvTZvKg0+ljWjPxmgTJ4=;
        b=eBUGLSHvMxP+V8v+/bOMU3O8aAKl5nEI6Yx2+sjl0b0h9H429XlBht+fSZBxdGIhih
         TN6vOieHaZZVC3JRVIhr6wa2cWxYvJSdNW67lDdvOf9JBqFJhG3EVinNXJ82WJlXHqwI
         dN6bTrzttLzmp7NwRqdGv/G/8z4bstHOZe+azDGv+ud45zTZj5sjVb+n3LOlgPupIXrU
         P92t+KGUZ69jWqrACIsOtphIE7dyNMV9+EqHC+kFRbW8BrRU4J/av2k2IA9jF2tYQGD/
         +BenneOUWQAKGnNW3+7g6TuQFqKOcRx9aPg0sr/1gnFYsgIicVlBETqg4F+aKqZ0sh9w
         nGYA==
X-Gm-Message-State: AOAM530/wlIdH9h7rfjDq91Ul4neavyvfXRaJhWAd84PNZ0rNKosSzPk
	pgDyPUQnUBfUmYjJaDLN1jSH9h4s0B23fY9KZa5tqgRu5Z4yzg==
X-Google-Smtp-Source: ABdhPJz0ZzTP2oXw1Fmp6ZGEeXQWDPAVWCif5UN4nWjWk/UutVJ2i2bOMXskkqGZh3dxX608I4LAf9MGuVxp4AP8WzQ=
X-Received: by 2002:a2e:9e88:: with SMTP id f8mr23869388ljk.88.1620732364352;
 Tue, 11 May 2021 04:26:04 -0700 (PDT)
MIME-Version: 1.0
From: "Mohammed Billoo" <mohammed.billoo@gmail.com>
Date: Tue, 11 May 2021 07:25:53 -0400
Message-ID: <CAPUUs4FUgSMRPQEctWypjq2H3pPKUXv=zxafpjTq+Tkt-pe50Q@mail.gmail.com>
Subject: Kernel/application signing and verification
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm not sure if this is the appropriate mailing list to ask this
question. I am working on customizing a BSP for an Nvidia Jetson Nano
based board (using the meta-tegra layer as the basis for most of the
development).  One of the requirements for the project is to get
secure-boot working, which Nvidia supports only up to u-boot (i.e. the
custom Nvidia bootloader ensures that u-boot is signed using the
public portion of the key that is burned onto the fuses).

Yet, we need to go a bit further and use u-boot to confirm that the
kernel is also signed with the same key. Likewise with all executables
on the rootfs. Does yocto provide functionality akin to this that I
can leverage?

Thanks
-- 
Mohammed Billoo
