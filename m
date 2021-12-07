Return-Path: <henrik.riomar@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4881EC433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Dec 2021 10:22:00 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web09.65135.1638872518852816130
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 02:21:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=R1YMcfAq;
 spf=pass (domain: gmail.com, ip: 209.85.216.46,
 mailfrom: henrik.riomar@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id
 gf14-20020a17090ac7ce00b001a7a2a0b5c3so1535468pjb.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 02:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SiZby+5cqszxTFpYrCwWKyAKLr4ziJSXEvBPPmpgk/U=;
        b=R1YMcfAqBeAz8e4URwS6BysAEffm9wsFNiXZ7njAQQqlXPuA3R+NFDycNBXl//oqbV
         6BPisvzcFlpfWYa93iSpwEbP+uRg2cp1aNPdMPsW0VUfBsAtvdIq4M/QzwqZYnQCmHtx
         xHZURZDpYE/At3c/Mv8si1Djlj9bSe29V6azYJ/03777EDO8qC5rrjiw1m2NCPW1Ll06
         vG7ILy+43RRon7uyOoMBBSixqUn9t7ufM6jTYDyVpjA7VVG6Th/cLmTUbioi1JVeuaZn
         2+l6Qn7xr+m98HtrjZuLt91ReQW7QOPDcFo/pOYC59OB4O2k+BLrcxIPPrumlXHijdJM
         NvbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SiZby+5cqszxTFpYrCwWKyAKLr4ziJSXEvBPPmpgk/U=;
        b=6bocHmtovJaTl0fTX634pcbyEq4bhEgnH+bYwWfH2zYOCb3c4BUEUC/uHbCl9SLnZV
         Saq4PJRcwXIVbybnl1Cb0Dl3j5n/SbZaL9s2y9zdXpjhumimXDkkTMJZ4r8giXUQkZ3y
         sDHawp/+gDuX+GU7IkZEbL0fS7Szq/5A0KfKKFz7CBqgExtcBW4yCNCb5kXvtDpX6igQ
         571eChepKa8WEFOD5i8vOrPg7PAs1FaxyMa+b5lD6i26Bgh16xm/s6WJ3DqEyJtcVW4J
         bsSUyUQ2MX2d0Cep71TA0JlMrzBAaI/msz1T8vNXaz44zWpE4GP1sk+sdXmKoXt4zR0D
         4i1Q==
X-Gm-Message-State: AOAM532calpGsKpT4WI++1ptYS0XmXUrSEXQA1aefUK9Ua/2m5uyiCGh
	tWE4fhnX7f+Wntymoy0vvM1y2o44zi0tAgxKb1A=
X-Google-Smtp-Source: 
 ABdhPJyVxa0gmNmsrdBs0Tfrmp7Y2RM/YybcBwGJilmFcJ0RnEcOXWKxvbWCCBIbPI7suzgUDXtgCXKdzZVexy3txCU=
X-Received: by 2002:a17:902:b28b:b0:142:4abc:ac20 with SMTP id
 u11-20020a170902b28b00b001424abcac20mr50822170plr.88.1638872518181; Tue, 07
 Dec 2021 02:21:58 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAF1P4FEULketOK1DizcW5hmutF2HZdVyPZLhD4gh3cuiP31GAg@mail.gmail.com>
 <CAOSpxdap8+v96Dkk9ofrQmFkbc43Cuv=VErjgdj6CDupJ=uGxg@mail.gmail.com>
 <41007b2c8c85ad4e0f30d73a29080accb70a4189.camel@linuxfoundation.org>
In-Reply-To: 
 <41007b2c8c85ad4e0f30d73a29080accb70a4189.camel@linuxfoundation.org>
From: Henrik Riomar <henrik.riomar@gmail.com>
Date: Tue, 7 Dec 2021 11:21:47 +0100
Message-ID: 
 <CAF1P4FFW9Xj4MzAhpBVaPSxdmxQq_5NTL3R4hU-zGX3n0BErwA@mail.gmail.com>
Subject: Re: [yocto] Setting BUILDNAME to a string broke in 3.1.12
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Steve Sakoman <steve@sakoman.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Dec 2021 10:22:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55500

Hi

On Tue, Dec 7, 2021 at 1:34 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:

> # Perform any additional adjustments needed to make rootf binary reproducible
> rootfs_reproducible () {
>         if [ "${REPRODUCIBLE_TIMESTAMP_ROOTFS}" != "" ]; then
>                 # Convert UTC into %4Y%2m%2d%2H%2M%2S
>                 sformatted=`date -u -d @${REPRODUCIBLE_TIMESTAMP_ROOTFS} +%4Y%2m%2d%2H%2M%2S`
>                 echo $sformatted > ${IMAGE_ROOTFS}/etc/version
>                 bbnote "rootfs_reproducible: set /etc/version to $sformatted"
>
>                 if [ -d ${IMAGE_ROOTFS}${sysconfdir}/gconf ]; then
>                         find ${IMAGE_ROOTFS}${sysconfdir}/gconf -name '%gconf.xml' -print0 | xargs -0r \
>                         sed -i -e 's@\bmtime="[0-9][0-9]*"@mtime="'${REPRODUCIBLE_TIMESTAMP_ROOTFS}'"@g'
>                 fi
>         fi
> }
>
> so I'd try setting REPRODUCIBLE_TIMESTAMP_ROOTFS to "". I suspect the change
> above started setting that to some value incidentally.

confirmed by commenting out the echo above that that "solves the
issue", so it's in fact this code that is now wrongfully triggered.

/ Henrik

