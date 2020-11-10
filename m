Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.32068.1605033893829174130
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 10:44:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BqhvwDXN;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D005138C0883
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2020 10:44:52 -0800 (PST)
Received: by mail-ed1-f44.google.com with SMTP id v22so3529920edt.9
        for <yocto@yoctoproject.org>; Tue, 10 Nov 2020 10:44:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=obkq7qJkiRm7Vcn1us4fVorabWTMUADcOX5EZUzfDDQ=;
        b=BqhvwDXNv7vINIYr5kYv2gqHYjdazfvlmrgOc9OzM1SKXZsCuaIyQWjr2r5ndQcNrc
         z/+2t+oMhFFMHT2xFyTxz5SG+0vk3RpXZaEP1L91In5QjVBWqB5TEdo4B1z65HrFVnTi
         /SFnDyVCZHODTS3TSQw/czwkKAHUA1A9QGh+Li5X5FVZbZs4NOdSdPVTCuP4OZCiTIRe
         yVPzICMN74uoaJKfwaE6SaAMLe/lJKUHVP5f0F8yffszDp5jYWf52LoQowAatNQ2QvHc
         yQAB8YqPKjHqw2ECtYhJOOeNiPX/k02Uqzigxq52KE/vLFoKAkYV9hOFir4PooZ0WCkk
         8kKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=obkq7qJkiRm7Vcn1us4fVorabWTMUADcOX5EZUzfDDQ=;
        b=B7m6/u+7C3JF2GBQkpkjJA3HZLUjuwwL3NR8PPPi8CwiouU+G7nuV0p4xjhMFNO5fu
         Owtqiu3oQ1ROuQb+Jmnxm0ZOQXgsxd+kpVdK5IkqhbDDpVphXB2Ze4Ugx4rA3eOvvdaa
         Qr1w/XinOvjTqWtPKzoyiG2ExgWcwHKR5eXmeDSQRuG3Ah0wZze1jCz7etKATG+OMQGr
         wa8fp7xsLoJIHOQBV7GciRYmlZOFGCF68o9H4YSzDHIHy6sdjNDNKpMBNOw7HRucee9I
         UpKxA5E8c8HNYZMGxidvYirzVIHCMoIbW1EdN9lKU9f/XHkGOzqqvaDW8r2m2HnXWGgO
         6Bdw==
X-Gm-Message-State: AOAM533bbiM3kNBcLNn+hJ4hutFYPaEbmzFr6uYQy4mbYUbmdIprjl+f
	NDQZDjF/EPFP5b2bf/6YNd9f17uPSsCNbXLtt3BcH3NJGuNlkA==
X-Google-Smtp-Source: ABdhPJw/ikXG6uJkQeb9Q08IL1haed5nEjTqscLQljucIxJsqPCBatbMl21ZF4b7oodeLuCOZ3lw4O+0tVBHhsG0ZXY=
X-Received: by 2002:a05:6402:1c8e:: with SMTP id cy14mr23297363edb.39.1605033890765;
 Tue, 10 Nov 2020 10:44:50 -0800 (PST)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Tue, 10 Nov 2020 19:44:39 +0100
Message-ID: <CAAfyv37ayVuQRRk+oKAX_=HtMeN_oGW+tCGCw2F8GEPBOzCdbQ@mail.gmail.com>
Subject: python bump
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm using poky release thud and would like to bump python3 to 3.8.x. I
took recipe from most recent poky version but I'm hitting issue with
e.g. meson build like:
Log data follows:
| DEBUG: Executing shell function do_configure
| Traceback (most recent call last):
|   File "setup.py", line 25, in <module>
|     from setuptools import setup
| ModuleNotFoundError: No module named 'setuptools'

Are there some other things I need to take care when want to bump python3?

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
