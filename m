Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.33689.1612782611419884423
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Feb 2021 03:10:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=pQuVT2Yn;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.167.53, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f53.google.com with SMTP id v5so19396832lft.13
        for <yocto@lists.yoctoproject.org>; Mon, 08 Feb 2021 03:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XTTYMMRC+fuRnfgj0K86qccPJYGrXSJALz615Pg9b6U=;
        b=pQuVT2Yn38Em9WEPt/kLFzJOFtBYmNFPayDDz1dUwWOBWXfzq2YVn5PY/75XNY7fvL
         gbsXDks1UiAa9bFApfhgegC+5GKscex4T/UEHJuBK0XORB/UJmC4rTZFuJS9+zEtlhg4
         hm3G/9UzdmO8d2tHn4AccqtmlPBKwann+kHNFKLJiBgSVPZbIXr5eJZZD8Ndg6ae6M1g
         ZPsE3dk4aMAXGbZRhSGHMMRlA5jB2wmF7AL7pEkJh+yLChiExlRdjU5YbgtQ39nRnqYB
         xeuaNVQI5KUOXJSleCnRluNXLQRKRhGE09kbraXdaZAabZstcrGTsokB6C4VTV0nD+Ko
         vq0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XTTYMMRC+fuRnfgj0K86qccPJYGrXSJALz615Pg9b6U=;
        b=HDhh/u+NwsjN4n8tqJRs35czILpQq6kvH2xBowniFzRH2OW27ABjnCZotr2ofOJUx/
         5qSEMKfmrv3UoXOJXuQ2mVBgJO38VYDueBFpWb7dKp8EibnHDqmyEG9YWRv3ohJsXxGU
         nIi3U9Mzac9u3gMKVvzOGliEFE1rIfIBq8xvPtbSE2rXR2C7ZYRdmjJlAQaH8Ffst0nc
         sgvOEL7fYSFSR8TOGiXUSdt93s+OnQYyGQcYxlpb1j4/iAmYjPD7QJk+WAGHVIj+cPm4
         MMOWwxeOr3PGzcX/S2H3hLE3zcI+rX+9zNAq4ds3O+Za0+t9Arb3L4x02mzUbgz6Y3va
         YsMA==
X-Gm-Message-State: AOAM5333LVQy8TKIgNMckz+9ZzHefk6J7tgsU66zrWHTOFGOxBqtjjuM
	cu/HI0Sxa+MvQUSeIcbaxiihdX79IpFag/R1J9Os/Q==
X-Google-Smtp-Source: ABdhPJwDgzH4VqNDsACCQg3SZzeAYL5q6aeTxsor3zbHIIBMPDlyxWCuepMrqDe2N6rbkb+z8oyG1TkkWuNW29tEQno=
X-Received: by 2002:a05:6512:31d0:: with SMTP id j16mr2341648lfe.467.1612782609247;
 Mon, 08 Feb 2021 03:10:09 -0800 (PST)
MIME-Version: 1.0
References: <dce0933f-55a7-cdab-aec7-3662f130240b@faresoftware.it>
In-Reply-To: <dce0933f-55a7-cdab-aec7-3662f130240b@faresoftware.it>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Mon, 8 Feb 2021 12:09:42 +0100
Message-ID: <CAEt6Nwrtg1PPD8uiiox18v6Tjy7SHZvBv2GndaF9-EaxxoR4jg@mail.gmail.com>
Subject: Re: [yocto] PREFERRED_VERSION_pn-: which version is selected?
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Howdy!

Am Mo., 8. Feb. 2021 um 11:52 Uhr schrieb Mauro Ziliani <mauro@faresoftware.it>:
> In the image recipe I put
>
> image-recipe.bb
>
> IMAGE_INSTALL_append := " \
>      recipe1 \
> "
>
> PREFERRED_VERSION_pn-recipe1 := "0.9"

As usual, recipe data is local, conf data is global. Setting things
that should affect other recipes (like PREFERRED_VERSION) does not
work inside a recipe - and an image recipe is still just a recipe.
This needs to go into the DISTRO config, usually.

Greetz
