Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16313C433FE
	for <webhook@archiver.kernel.org>; Tue,  7 Dec 2021 15:13:55 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web08.68275.1638890033750914036
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 07:13:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=LEVfDcRW;
 spf=softfail (domain: sakoman.com, ip: 209.85.167.170,
 mailfrom: steve@sakoman.com)
Received: by mail-oi1-f170.google.com with SMTP id r26so28296835oiw.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 07:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FcJzBGzzm5UYG9Jq5FPqw4g5OAvyUTPFAa/wfirt+hw=;
        b=LEVfDcRWbyOA6iat5wUWG1SvdcGoTo9zLDhyli84Q+k2Dta6srBf6wR0HqYmSk5U+u
         QfUKzL3Qfe81cFsHo1VBKM5Edd/9rrWAxiB+V+GqZXKusSv1Di9fElInpk0Iq2ZLzzCs
         zwGebAivdvlErzbPGUaYTzgHPQPfd6S1mfHpTQymTg/ebVOgslF6AReRsFaRGuaDam7Y
         25c0a/QJF2fpSzxhi1sfxdnrlIEp7AQ+36aRetlJanQiGaj+V0hTReN7z7YFU4L9iPCc
         plFm6gqP/0SZzEOlGA108hVCSYlMyPJkUx+TCfHGERbpN0IjZAU7OLT///1HxS/bl+jP
         0zPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FcJzBGzzm5UYG9Jq5FPqw4g5OAvyUTPFAa/wfirt+hw=;
        b=LictZ9p4IrFyj8OfXc4itaMXIrTLkrh1NXefZZigcvKdKdYzijS8OyHsztyCT2KCYq
         xHk4p5CdGyxzPsAcq1mJVWbP58d9obopBramJfu+/sl/QjESkXbD2hMqo+ZCGH7sD2p2
         bNN/mA4SuCK1GrmY1fW1y6E77HBg69VOWoTx4IOPmEB/uS9PVdoOXpXiEDfBarvWsNVy
         EugTKhHKXEfnshZrOyJbL0dTowv87XunR5t6VQun5hQW9IYWas8nFvPJCVfAUYPDCX5T
         F/X4UER6gp1EECfs42eBl4BUfufvG73rGSWOGz74ha5Ico5JeRWESgs4oYQxEvZMLk7L
         Ublg==
X-Gm-Message-State: AOAM532YjvdjceQREvdC/yDAfLzFjNe3QP6AEUYKVv0VoxWwo6KP2An2
	A2Y8CPSQbT7mN35FbcGSkyf8gZiXFcYmEUtWsd0fyA==
X-Google-Smtp-Source: 
 ABdhPJwxR/e0gb0VAIyoHsgRkbRJlsknrWVlwJFWHe35jhzOqm9yYw7yhYSBRJ0STNv5g/3YvmrMm/jHU1n1/k1uGZg=
X-Received: by 2002:a05:6808:158d:: with SMTP id
 t13mr5773467oiw.31.1638890032697;
 Tue, 07 Dec 2021 07:13:52 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAF1P4FEULketOK1DizcW5hmutF2HZdVyPZLhD4gh3cuiP31GAg@mail.gmail.com>
 <CAOSpxdap8+v96Dkk9ofrQmFkbc43Cuv=VErjgdj6CDupJ=uGxg@mail.gmail.com>
 <41007b2c8c85ad4e0f30d73a29080accb70a4189.camel@linuxfoundation.org>
 <CAF1P4FFW9Xj4MzAhpBVaPSxdmxQq_5NTL3R4hU-zGX3n0BErwA@mail.gmail.com>
In-Reply-To: 
 <CAF1P4FFW9Xj4MzAhpBVaPSxdmxQq_5NTL3R4hU-zGX3n0BErwA@mail.gmail.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Tue, 7 Dec 2021 05:13:38 -1000
Message-ID: 
 <CAOSpxdZyuwr83Wik1JtHbzURnx8=ZE5fRXYOCbpqzdj4-EuTgg@mail.gmail.com>
Subject: Re: [yocto] Setting BUILDNAME to a string broke in 3.1.12
To: Henrik Riomar <henrik.riomar@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org,
	Mark Hatle <mark.hatle@kernel.crashing.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Dec 2021 15:13:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55502

On Tue, Dec 7, 2021 at 12:21 AM Henrik Riomar <henrik.riomar@gmail.com> wrote:
>
> Hi
>
> On Tue, Dec 7, 2021 at 1:34 AM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>
> > # Perform any additional adjustments needed to make rootf binary reproducible
> > rootfs_reproducible () {
> >         if [ "${REPRODUCIBLE_TIMESTAMP_ROOTFS}" != "" ]; then
> >                 # Convert UTC into %4Y%2m%2d%2H%2M%2S
> >                 sformatted=`date -u -d @${REPRODUCIBLE_TIMESTAMP_ROOTFS} +%4Y%2m%2d%2H%2M%2S`
> >                 echo $sformatted > ${IMAGE_ROOTFS}/etc/version
> >                 bbnote "rootfs_reproducible: set /etc/version to $sformatted"
> >
> >                 if [ -d ${IMAGE_ROOTFS}${sysconfdir}/gconf ]; then
> >                         find ${IMAGE_ROOTFS}${sysconfdir}/gconf -name '%gconf.xml' -print0 | xargs -0r \
> >                         sed -i -e 's@\bmtime="[0-9][0-9]*"@mtime="'${REPRODUCIBLE_TIMESTAMP_ROOTFS}'"@g'
> >                 fi
> >         fi
> > }
> >
> > so I'd try setting REPRODUCIBLE_TIMESTAMP_ROOTFS to "". I suspect the change
> > above started setting that to some value incidentally.
>
> confirmed by commenting out the echo above that that "solves the
> issue", so it's in fact this code that is now wrongfully triggered.

I think Richard was suggesting that you add
REPRODUCIBLE_TIMESTAMP_ROOTFS to "" to your local.conf.

I did so and confirmed that /etc/version now has BUILDNAME for its
contents as expected.

Richard is correct that the patch was setting
REPRODUCIBLE_TIMESTAMP_ROOTFS incidentally.  This part of Mark's patch
seems to be the cause:

-inherit ${@oe.utils.ifelse(d.getVar('BUILD_REPRODUCIBLE_BINARIES') ==
'1', 'reproducible_build_simple', '')}
+inherit reproducible_build_simple

And reproducible_build_simple does:

BUILD_REPRODUCIBLE_BINARIES = "1"

export PYTHONHASHSEED = "0"
export PERL_HASH_SEED = "0"
export SOURCE_DATE_EPOCH ??= "1520598896"

REPRODUCIBLE_TIMESTAMP_ROOTFS ??= "1520598896"

So it is now overwriting what you've set in local.conf for
BUILD_REPRODUCIBLE_BINARIES. And if you look at your rootfs, you'll
probably see that all of the files are dated March 2019.

Master branch has restructured the code, but retained this behavior.

I'm not sure what the right answer is for dealing with the BUILDNAME
issue.  Richard and Mark understand the reproducible build code far
better than I,  perhaps they can offer an opinion on what to do here.

Steve

