Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F5C433EF
	for <webhook@archiver.kernel.org>; Thu, 23 Jun 2022 09:06:17 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web12.5219.1655975174722231574
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jun 2022 02:06:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bEQ/bb3M;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id m1so19209213wrb.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jun 2022 02:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=Jpozwf4dYFNz76Deo29wWRT7sEEcw9T6jFLrUfQoWbA=;
        b=bEQ/bb3MVEWntP20QVbfyVNEtckQmlOOU+OFMR7uXwN33lHgiWd1iqn04gukuzhvan
         0jx9U5WVS2aZUQf3m52r3v5JgDWe/+1OEKsoBrVaIbYNQ1V/j3KftLPaL8ORFlkxEk76
         QU/QrRiTMumNBHz/8plUOHM8aYXDHYMk472s4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=Jpozwf4dYFNz76Deo29wWRT7sEEcw9T6jFLrUfQoWbA=;
        b=BmpT8jjCogBRTl2HjdYQOvKL9vvZsdh1KeZ1T+jUB/QF0srEsBOb5SMj1H9/xsrx5F
         RaY0vDoiHa2l72brVNQhsupdZI0dAAfhH8M/yIjpKxFXSxTfPHogiR6+Rk9SxfaeP0NX
         bPEwiyTcmZycHSQplgxKfLS7aSA+hitoGfNV6YmGTiE/NyoO+oLaqlPKbEniW6KrXsVz
         b1r3kt+Nee+KiMBuIp+a5T3c+GgQJw9UuZ29M1r7UmfhyqwbmpG0t/JjV5xcapbgNacD
         uZ3gqblTBHIiXe6hOzM4e9Db5PNf4LbJDS7JpPDuZ6xBu7JReleey+hWvvaam/KlNUXl
         hLxg==
X-Gm-Message-State: AJIora9VbJPIEhzuvIxV7rL61LQI8RnzDayV3x3O6PdqWtrCwBbouTAs
	nRpqtrNXDZRTT+nz0e4Rr3Tff3YqPyDWLg==
X-Google-Smtp-Source: 
 AGRyM1upDpK4TFhjcbq8oAE1I7uKFjhYTdwp5A0UAk5tXVIWZJ7WSI4BMVovVWZJxORdE4oJguUi4g==
X-Received: by 2002:a05:6000:18ad:b0:21b:a24a:1786 with SMTP id
 b13-20020a05600018ad00b0021ba24a1786mr6483876wri.115.1655975172935;
        Thu, 23 Jun 2022 02:06:12 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:318d:5232:b266:93f8?
 ([2001:8b0:aba:5f3c:318d:5232:b266:93f8])
        by smtp.gmail.com with ESMTPSA id
 h15-20020a5d504f000000b0021b8a78fba3sm13400855wrt.95.2022.06.23.02.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jun 2022 02:06:11 -0700 (PDT)
Message-ID: 
 <2da3e522678696068a01639181acf9487de4b372.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper]
 scripts/archive_buildstats.py: copy all buildstats
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Randy MacLeod <randy.macleod@windriver.com>, yocto@lists.yoctoproject.org
Date: Thu, 23 Jun 2022 10:06:10 +0100
In-Reply-To: <20220622211231.159988-1-Randy.MacLeod@windriver.com>
References: <20220622211231.159988-1-Randy.MacLeod@windriver.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jun 2022 09:06:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57381

On Wed, 2022-06-22 at 17:12 -0400, Randy MacLeod wrote:
> As a first pass, collect all the tmp/buildstats logs
> using 'cp -a', to enable review and graphing of all builds.
> The goal is to understand the trends in the /proc/pressure/{cpu|io}
> data that is now gathered as part of the buildstats system.
>=20
> Signed-off-by: Aryaman Gupta <Aryaman.Gupta@windriver.com>
> Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
> ---
>  scripts/archive_buildstats.py | 27 +++++++++++++++++++++++++++
>  scripts/run-config            |  1 +
>  2 files changed, 28 insertions(+)
>  create mode 100755 scripts/archive_buildstats.py

The NAS couldn't cope with the number of small files these data trees
contained leading to timeouts. If you want to do something like this
you'll probably have to create tarball archives of the results.

Cheers,

Richard

