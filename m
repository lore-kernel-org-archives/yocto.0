Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.7946.1617969534047261313
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Apr 2021 04:58:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uORqNICk;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3B6D638C08EA
	for <yocto@yoctoproject.org>; Fri,  9 Apr 2021 11:58:52 +0000 (UTC)
Received: by mail-yb1-f172.google.com with SMTP id k73so2759ybf.3
        for <yocto@yoctoproject.org>; Fri, 09 Apr 2021 04:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=yiJ1tl/KWBlYiRii5sRw1jgzIwPitQxwSLmGABYRQ30=;
        b=uORqNICk+W7h0LZaopdtcnjaz05B868qOkenNnvOwOXK9r4V2eq+9yXV3rwRhvcxJd
         +JEmY61nFjPEmGVYLEaw5EUmEny3teuGVSrla1VqY6jghkovXJXqkZAvLybVExAlcUZd
         TSXAEFmDnVW1iGrZoC8KP7bs90SXpVZ2ZROP9m+pat0Kq144dIGQgCWZmJYVYxZhqwF6
         2G7ARNgREuZC5d5P5T/fYL2kxziIGkjQ40GJdKYtf84/gtyQRxDqDRFhrSNCit2M/v9d
         Ms+PBISamPq81pqswkKbD4Ug0yhLXM6IiXA5tyIYlUGYmgOg3lZCqQcOHamDZh61Tbjv
         ISIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=yiJ1tl/KWBlYiRii5sRw1jgzIwPitQxwSLmGABYRQ30=;
        b=IbIPG8OrnLKvSpeuVDv3akzkVLz0NvmOnWfWN9VWvXc9VWQTqlUWCDmwO04wOzvCpk
         N//9L5Gb4sOr8pkRLkWtEbUXJhzxYGvcxbwzd6w/1G54STeLz6GDax+hz7Zwks+S90S+
         j5qxzeynAeEpPvCfrBLX5FT0775wMia7x57xjrNfZQjz5OoK9blbM0a1z5WcTtjngxpA
         rT1z7Sg9Ei1RSW732fT+cRWP27P+TcIs+2xZqgCpAsETsKu1Gedw2z7mYkyW2KnczQ4q
         FFMWw5tf5zQmpFpywP+nFbIm5iqDny1dt1g/oYrxKBlFMmg4VBFZtURRUf8mNNJvAm2V
         mbkA==
X-Gm-Message-State: AOAM5329nSzhCKMZ13ksNUWPI6NgsMewP1AFnwfq0JW7DEXe3Cw2z53f
	STyewgtfyDUm8EvGPgpWmChIqKm/NJdx9an1zYKihT3KvUczJdZ5
X-Google-Smtp-Source: ABdhPJycyEsXevltU/WbZVhqwV6s8j6p67rTFgtTChdoO7AKsYvSm5VBG4xmPHQ6rzstuMWbXVNkGHpX8ixLrwsDpM4=
X-Received: by 2002:a25:cf16:: with SMTP id f22mr18276308ybg.342.1617969530984;
 Fri, 09 Apr 2021 04:58:50 -0700 (PDT)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Fri, 9 Apr 2021 13:58:40 +0200
Message-ID: <CAAfyv34u-w-+Q8PoV+6DU6ucJQwFMSru4RF9ic3o2Q1c_AopTQ@mail.gmail.com>
Subject: pycoral recipe
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

Just want to ask if anyone working/can share a recipe for a pycoral
package (https://github.com/google-coral/pycoral). I have some
barebone but seems not straightforward. It's using bazel build system
and as I understand it needs to add some patch for adding yocto
compiler otherwise it fails with:

Error in which: Program argument of which() may not contains a / or a
\ ('arm-poky-linux-gnueabi-gcc  -mthumb -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 -fstack-protector-strong
-D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security
--sysroot=/home/test/recipe-sysroot' given)

Any suggestions?

Thanks and regards,

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
