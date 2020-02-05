Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.8493.1580914641324991734
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Feb 2020 06:57:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=exfM31Qb;
 spf=none, err=permanent DNS error (domain: burtonini.com, ip: 209.85.167.43, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f43.google.com with SMTP id c23so1696763lfi.7
        for <yocto@lists.yoctoproject.org>; Wed, 05 Feb 2020 06:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EMwCRX9++GFAbQpPHdCEVQwIGk91/fKmWHNYAz+ISX0=;
        b=exfM31QbjfmNd6M1N8HP1X+Knc84aZEhABUApNRTC8rPcHTWau+MpcyPto2vISEdPy
         j3jd2GkeE9/f78DXJewoDgP6sd4TWMhzZNM44MzXirG6m2q4JdlfOMuaZUf7Urm5i/js
         TwCOhbL+yfzyFHoL6gNwm02Ifxgpmx/NsMae25lwnQFq88iEHmKy/J86PvIOGv7iFtP5
         KbnQugbGkU4f/yWcCxZVvRZsbT3jxjixNPNCsTyHaP3D55u9U8MrHjGbM1wjsgCdskxW
         jfLTjm1UiNtUyxD6Uu0qe088E7FUvjEQSEFSZKxavIkNqlm2GS08sGXvNJ0RKzcz2g4O
         VRUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EMwCRX9++GFAbQpPHdCEVQwIGk91/fKmWHNYAz+ISX0=;
        b=AMnhMWY57jgNw0IPf9uLe/8mS096o0hfI5qXXWz0XELlv7o/Njnu7zEf+K6JdLLcWd
         Y+ipgiIP7TxyPvZ248F3wVwz0eIrOOQxsYP6Soh6A3Ra9OCjQCvjOvbC1G0kg7Un9sz2
         XOFBDpBr2UBmu2eJsLWp5v3PvfsGbJwYhMpi62GLWmuzI1Uo/+FDUzI/XfLTfo8Ple6P
         UylqrvdamfKcVPJviQ6USQ1+pmBNge1SiHya+fkxT4meybBAYVP5/3lEy8Da3GUGxrb2
         fEZWt29aW2f2L70qa29L7n78i904dQ2Vh1g6X3QjmyTDJpJgqAkhXeXQMJwvf+xLylsm
         v8ag==
X-Gm-Message-State: APjAAAWEeuLboqmicnYZtmarujt+XGHHGtRDwExAQP9iq2zkn/4w390L
	qCx1iKvoKef97yetVUTrVNFnXJsYRlvKt+RzYDoHtA==
X-Google-Smtp-Source: APXvYqw0U9Dui28bH87TiAPYAnEz04q+40O1Ml2UMlxYa2BLplDSgETDRuGTXhTukLmlqYGEh9bhE/hrksuDu7yALho=
X-Received: by 2002:ac2:52a5:: with SMTP id r5mr18013721lfm.19.1580914639409;
 Wed, 05 Feb 2020 06:57:19 -0800 (PST)
MIME-Version: 1.0
References: <SlU8.1580904983761204077.5wgg@lists.yoctoproject.org>
In-Reply-To: <SlU8.1580904983761204077.5wgg@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Wed, 5 Feb 2020 14:57:08 +0000
Message-ID: <CAAnfSTvEkfxksg_V_G4QVmu77JKSuyEhvs5v30mdyEk9BWVVWg@mail.gmail.com>
Subject: Re: [yocto] Busybox and scripts licensing
To: lukasz.odw39@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 5 Feb 2020 at 12:16, <lukasz.odw39@gmail.com> wrote:
> Let's assume we have busybox on our device (that's populated by default by Yocto). What license shall be chosen for package containing custom shell scripts?
> I heard opinion, that all shell scripts running on Busybox shall be GPLv2(?).

That opinion is very wrong indeed.

If you write the scripts then you get to pick the license.

Ross
