Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web12.556.1605907471072929606
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Nov 2020 13:24:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=nNc8BkwS;
 spf=pass (domain: burtonini.com, ip: 209.85.167.53, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f53.google.com with SMTP id 74so15436869lfo.5
        for <yocto@lists.yoctoproject.org>; Fri, 20 Nov 2020 13:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YcreqrfTAiOZKxJTkqTvqh6PgZJBnuWYgZYPS6AJAEE=;
        b=nNc8BkwSsydRDd9pClpdrD/PO1a9coNPhXJll03t0MqQ9/NI/h/FPJRF8qxoqni8ts
         lm7gRkfTjNkIEBpytgFHXLulxlbxHj4mG9+ytVALECeJOxXFc+OjiWsZd+9o8T3e61X+
         fsd5tH7BQuxwxxQEdGbA/bPaVnhP8E2MKdBQ/R4x7W/YSgFVFlsoWopUOmCaxw70sN6j
         r6v87SMUCrGYV5dMbpBmv5IxEppDFfpWQ8WWhwZ9X3iNdtkkf8KqkFFROxl0xN1qKvVv
         MtHe0FXzUvH3jNdV1qWHEp9HXbFqk/vNr1zxbLhQsggeMMJP66NcknSHGQKqh/wFQx7b
         V+Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YcreqrfTAiOZKxJTkqTvqh6PgZJBnuWYgZYPS6AJAEE=;
        b=leOxMgAfYb5xs6IZcJ7a7ZmGmMVXUXEG96bRoctGhFPiLcg5h6J/I1aP296j/5IWKH
         lfQDQWBMfxUOm+nDg8pLmAHqCrAg4c1WqURn/wQN3392ToUf8kU30QcT9x0K8ZYS9QrR
         mPU/e6qZeUck2+AzLW3PUZDmvWPji/sH1EQ8W1HF7xm/HHeqo8JbbiZ5/HX9Wx4wSgrJ
         HHKeBN5JzlfEwEACuaxRAD2rzv+MRoBmrK9i7CDWUM9Fe7BVKDA2PNZe+1mfR13SxQ01
         29xuxGfXH1Ab7tmuhnMGvi6wt+i8+AIDsbYV+ztnVCfIYDKOYdIhXeFFPU5aFyGSdlXV
         jHug==
X-Gm-Message-State: AOAM530zaS4GgsQOaxSuL8Vwye9iKujm+0cXPeEETWTlO8dLYrJGeNGT
	5K6AR1NcCTegkmSVB0pJ82+HIN3WDejEcBhckj2dEg==
X-Google-Smtp-Source: ABdhPJxiRxmQRCTyoKinKeBd3tv5P8sbPicCyI2hqUxAulPjza/DmLQaNA5atyG9lk6LTBM5roqvNA1KQ3yrHco/kMw=
X-Received: by 2002:a05:6512:6c9:: with SMTP id u9mr8788842lff.475.1605907469150;
 Fri, 20 Nov 2020 13:24:29 -0800 (PST)
MIME-Version: 1.0
References: <rAhd.1605891833153450845.ITtk@lists.yoctoproject.org>
In-Reply-To: <rAhd.1605891833153450845.ITtk@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Fri, 20 Nov 2020 21:24:18 +0000
Message-ID: <CAAnfSTvmBOkZ1EMSvwBa3W6-wZpf0-6WsQp3wUKx8bgfsdwitw@mail.gmail.com>
Subject: Re: [Yocto] Architecture did not match #yocto
To: yuvaraj.velumani@denso-ten.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 20 Nov 2020 at 17:04, <yuvaraj.velumani@denso-ten.com> wrote:
> I am getting error while building google chromium depot-tools. My intentions is to build meta-flutter which depends on depot-tools.
>
> ERROR: depot-tools-git-r0 do_package_qa: QA Issue: Architecture did not match (x86-64, expected AArch64) on /work/aarch64-oe-linux/depot-tools/git-r0/packages-split/depot-tools-dev/usr/bin/depot_tools/ninja-linux64
> Architecture did not match (x86, expected AArch64) on /work/aarch64-oe-linux/depot-tools/git-r0/packages-split/depot-tools-dev/usr/bin/depot_tools/ninja-linux32 [arch]

The recipe for depot-tools is broken and is building native code when
a target depot-tools should be x86-64.

Whilst that is a valid issue in the recipe, did you mean to build
depot-tools-native instead?

Ross
