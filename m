Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10983EB64DC
	for <webhook@archiver.kernel.org>; Fri, 14 Jul 2023 19:24:47 +0000 (UTC)
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com [209.85.219.66])
 by mx.groups.io with SMTP id smtpd.web11.4378.1689362682631616192
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jul 2023 12:24:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@teknique-com.20221208.gappssmtp.com header.s=20221208 header.b=s1LwGN4u;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.219.66, mailfrom: tom.isaacson@teknique.com)
Received: by mail-qv1-f66.google.com with SMTP id 6a1803df08f44-6348a8045a2so13732896d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 14 Jul 2023 12:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20221208.gappssmtp.com; s=20221208; t=1689362681; x=1691954681;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XnQ4Aca1tWnibLFE2SoD19ACDmWy0mfVFB4Szp9b1Rw=;
        b=s1LwGN4uLwlhsvGBVXFh6p9XukPNXDtU/OSYproRMttR4hxCUWO5Gr0/jEEuc8lTcq
         K3nQq+LAoH4jD3Gu22iULjcK877qLvN8qv3F2wmU4K92mFt0HO8wHN0giUMM3FRKDSN4
         O1Lk3ZUz8MEZWUGbwpIzIe2s3DACakNzu7HVxiebC7THs/LGZZysyad2UfqsXM8wclh6
         7JDKlzUj2ioFysg1kDhsQhjbzqIlYdxwwG7+5yvapGzpb5qi80O0o8/Pg2/SUpOCOxfH
         kc6/CiZNboXA/3Qg9n3bN50pZSTvn3XFI7F6WVHH/QQV2sXx83YsMOxAkXk025dz3Fgh
         ZAHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689362681; x=1691954681;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XnQ4Aca1tWnibLFE2SoD19ACDmWy0mfVFB4Szp9b1Rw=;
        b=KbEyN03zbcVl8AR1vzZkw7ESuZ6LLC8i0BDSomxyFdU9B9yhaU2IsPHhmPVnYLZlE8
         +252Q5q9VML1LRGx3/vA+nly73sQxWPSri5DamFoUt6l9QltsdwWL3BFgPP4sA4Ue3RF
         tpQzYSIv9WPjvhRAgR+P5ARPpXRlJG+m6XeoA5xQtH5XgOoMHehlnLEo+++WFtAiBEQr
         UPwKQ+wDKJs9qrQ69J0CDu3w6aijwkGsjpO5F+4NAOzA6W7xm7hzJXCm58Qvr5eD3wIX
         ijDfwj3TfNr6H4FiSF/WNhugIgGsBIVIzLGjiyoB1b2kDdEzzOyzU74K+933lqoUfZSH
         wb8Q==
X-Gm-Message-State: ABy/qLZXIsfmimPs8Mk8DoaRC1g1I+Mfyu9MGjJB5QLvpy8mPLvkHwVb
	iHPvBoL4G5AX+c6sDbOB9mMCBHOeu80/2vDqlF6MfJOZ4uv1/nGLxhkcgF2Nrcw=
X-Google-Smtp-Source: APBJJlFiTPKVBYR/tYH3KZuBIDABqYgsih7OuKFvhSlyBbdLC1c97NqZtwVwHJEb63zesbPMYfWQ3OTuYd6AI04ZJhQ=
X-Received: by 2002:a0c:8b92:0:b0:626:1862:7d6c with SMTP id
 r18-20020a0c8b92000000b0062618627d6cmr4649413qva.46.1689362681460; Fri, 14
 Jul 2023 12:24:41 -0700 (PDT)
MIME-Version: 1.0
From: Tom Isaacson <tom.isaacson@teknique.com>
Date: Sat, 15 Jul 2023 07:24:32 +1200
Message-ID: <CA+EiEZLqLzBreVxigh9f2uM2L9bP3Z6RZ0UfEWhQcGBNaLoD1A@mail.gmail.com>
Subject: How does SOURCEFORGE_MIRROR work?
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jul 2023 19:24:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60580

I'm looking at the Kirkstone recipe for gsoap
http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/gsoap/gsoap_2.8.106.bb?h=kirkstone
and it downloads from:
SRC_URI = "${SOURCEFORGE_MIRROR}/${BPN}2/${BPN}_${PV}.zip

SOURCEFORGE_MIRROR is defined in poky/meta/conf/bitbake.conf:
SOURCEFORGE_MIRROR = "https://downloads.sourceforge.net"
BPN = "gsoap"
so the URL is:
https://downloads.sourceforge.net/gsoap2/gsoap_2.8.106.zip

But this doesn't exist:
$ wget https://downloads.sourceforge.net/gsoap2/gsoap_2.8.106.zip
--2023-07-15 07:23:40--
https://downloads.sourceforge.net/gsoap2/gsoap_2.8.106.zip
Resolving downloads.sourceforge.net (downloads.sourceforge.net)...
204.68.111.105
Connecting to downloads.sourceforge.net
(downloads.sourceforge.net)|204.68.111.105|:443... connected.
HTTP request sent, awaiting response... 404 Not Found
2023-07-15 07:23:40 ERROR 404: Not Found.

So where is the build getting the file? Does SOURCEFORGE_MIRROR fall
back to a different location?

-- 
Tom Isaacson

