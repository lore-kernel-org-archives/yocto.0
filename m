Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web08.9095.1604652723609400219
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Nov 2020 00:52:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=OsjO6DkS;
 spf=pass (domain: burtonini.com, ip: 209.85.167.48, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f48.google.com with SMTP id l2so863920lfk.0
        for <yocto@lists.yoctoproject.org>; Fri, 06 Nov 2020 00:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AF+DveIIX0BChvgOolFZEk/nbEDObAFZZ1jdcYEVYDc=;
        b=OsjO6DkSd7kGjJcAY8pZZTsd+yHqtdOkOSbr0nujMH3304WuU1z1SiSADoM9GOw0Ou
         URU+EzmRmq4aVeDaHVUS/suSfwebFtPlyQGFr1oLsJn6MlhU14pMX7bKyrUJZpSI+wRP
         ujATIl2K9I4fS8FTniettYB6DrlFoCeDsxluzJXTmoX3Qh42IHpYhhqp1D58/mxN+ajb
         j8gFmu3+hFzJfALd5zkbBcDaLWaDfexJ7rnDi68Cg1qTidWVvUOslXBp9srMyWLFcKTY
         0pdi1hhvZNB8DlzbbdhRoy8PI3pC82jpxmAPf58PeIfLRZSb3ePQ/C+cSC1zKV3iL5Vc
         6pkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AF+DveIIX0BChvgOolFZEk/nbEDObAFZZ1jdcYEVYDc=;
        b=lRbkf8ZuO1KofhTQvCXFKmplTXATpkBLcFH6ifP+jmSWc7dYT2zD/RyL18/HyDMvbu
         UxQ0S5Ga7FGmZ2r0Ch3yq6o0II9Vz5ufzefqTF6XbUE0vHgN0kLCkXRNGLnd8Ij163ih
         awHIRgNzwgJsBrrnvtO2JguzqKYKNUtwYSlm3EAMz1AMd8X7IQ+pCk7GPVHZCLtlsJjc
         ZT2A0QL/TX/4U8g2/AOs4RyMJgKuebQuHV1UCaOuZgdNHi1mxv6h/req9E2ePzJiPC+5
         dMJsItgs36GA5WYoGaK5mYFhrm1Qzpf4HIhNQMvFMn+v+9aGWw7108NYTjxHp773HNMH
         7IAw==
X-Gm-Message-State: AOAM532XVP4pjOI2ZvxhZxDjUi3XdD60yX5JW26JkhVr9wxrUgk6m7JN
	R9NVOKzXjSMKx4O0q1qrZzgGRE2OOPRZxubfFpyJwg==
X-Google-Smtp-Source: ABdhPJxhaN5DOaYRTizr/tpkan06+bZ3FIO6KV8+8GhUCIZW2OTLj8X2+cszxrPCuErjd9Xj6CnodRAbzrAcYK4Mht4=
X-Received: by 2002:a19:8745:: with SMTP id j66mr488858lfd.189.1604652721792;
 Fri, 06 Nov 2020 00:52:01 -0800 (PST)
MIME-Version: 1.0
References: <jx1l.1604651022903638809.kssq@lists.yoctoproject.org>
In-Reply-To: <jx1l.1604651022903638809.kssq@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Fri, 6 Nov 2020 08:51:50 +0000
Message-ID: <CAAnfSTu8N11SfDGCpPN=hsQNL-ahG6WMf62EK_-56iqMzzKVng@mail.gmail.com>
Subject: Re: [yocto] Why python3 is build native in yocto ??? #python
To: william.jacob@sama.com.sg
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 6 Nov 2020 at 08:23, <william.jacob@sama.com.sg> wrote:
> I am trying to compile python package for yocto and I found  python3 (python3.7) is  build native then it cross compiled.I want to know why it is done like this in python.

The python3 build for target doesn't directly depend on python3-native.

Some recipes do depend on python3-native (although by definition there
is a python3 on your host) as they need to run non-standard Python
modules as part of their build.  We don't want to assume that you've
installed all of these modules (as the list is ever growing) and we
don't want to assume that you've installed python3-dev on the host (as
we want to have minimal build requirements, and C modules are not
portable between Python versions).

> Basically I want python3 binary cross compiled for arm architecture should be available in recipe-sysroot and  recipe-sysroot-native directory . Right now it is available only in recipe-sysroot-native.

Please explain what you are actually trying to do.  For 99% of python
modules, simply inheriting setuptool3 or even better pypi is
sufficient.  If a package has hand-coded Python detection then it gets
a lot more complicated as Python doesn't have great support for
cross-compiling, and most people writing the build scripts don't
consider it at all.

Ross
