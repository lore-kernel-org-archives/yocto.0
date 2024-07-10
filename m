Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F3FC3DA42
	for <webhook@archiver.kernel.org>; Wed, 10 Jul 2024 15:26:51 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web10.17379.1720625206890829490
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jul 2024 08:26:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ElobyucS;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2eea7e2b073so46065171fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 08:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720625205; x=1721230005; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oguo7+p329p5U7gaKPbfY78CMiuyWFHXpBuoovJZQhc=;
        b=ElobyucSXO3qTYu59hnhNrjU3W8/LF6YiWYHP8tdEKOsmxdXL8baoCsekfsVNhN3q3
         2r2eoj9eEBL7JENxxTCk0TS717jFJMMlDsNkYcoTEHUMhx4FcrX2Lece7sD+qO03XWsQ
         qvo9MTiRsAR5Z+7GpFgq5ZPYAUhtq/i6VWpUMBqFR7db7DwBTxfvxUGxRbgqjn6CyiUk
         FbjVuoN5NYW1yeUN6Wrekz/SdCV5vG5F8vyhRBiGqurVOsBpcTqMYrq1UEXpOdX2VmPU
         dFAjzLMhPubGcxNzu00boJovHGZCf1XRv6fLw94Qzty3x2Ce0xK9KhRQ3J9q6JWTxhCz
         iU1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720625205; x=1721230005;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Oguo7+p329p5U7gaKPbfY78CMiuyWFHXpBuoovJZQhc=;
        b=tk3dZ694PVAqVw7TY17iXzqW3EwAjN2x+mMPrEpK/o+WuWS7w4eW8VHtscjLl+rG8/
         RsldW6PAPmn4uKVwc+rF0TpAWCBe8DE3SbScpBn8kd544Y8u5/nV1MilwTt4gVrmau1O
         iQZ+DoNQrgliLuJe0M8gaEzWZpK8xqahYwtdsAi8/+IWQyChb/E8w+6qpoCH8kip4enY
         U/sUh4KH+QwpulE4r6xD3g5VDlvcCrODpcgMRFcLfp+C0EEdndxEdBb2h0ibnu8uO2sQ
         96rWJj/eNThSOP2QE0VhEmTIXYm86U1GYW+RfCmykGGYxe4Tg4QdY55zPPoIbEXOcsSJ
         B9wA==
X-Gm-Message-State: AOJu0Yy3ArAEMleDg9DpD/B2VgsABKC6y5V6HBDDENBBetB7SsEbYdpN
	xAKXJ09307euTeVumbbxRF7J/JdqofNuHm/csqle9QQp4jythcy/MCMYtAYpTe9PVbUWph5k9ph
	8jfo/AprwaqkpWwpVSQmfIZtvzH2GbA==
X-Google-Smtp-Source: AGHT+IFSFBVy5g693TsdSLLOpILYXiLz9oEsLATRsKdMr7zdmeoeUa3ToPNCM3rm7t7/kREYXK6PZ/l04ZOJD1o2ZgY=
X-Received: by 2002:a2e:a99f:0:b0:2ee:8817:422b with SMTP id
 38308e7fff4ca-2eeb30e39d1mr48653991fa.19.1720625204917; Wed, 10 Jul 2024
 08:26:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAC3TgAK9+yDoz=3emvD6GTB6PNNe7=o5w6hkGpWm0juwt_X=pA@mail.gmail.com>
In-Reply-To: <CAC3TgAK9+yDoz=3emvD6GTB6PNNe7=o5w6hkGpWm0juwt_X=pA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 10 Jul 2024 17:26:33 +0200
Message-ID: <CANNYZj99c_sfCDt+MtAswB4UvoTnc-97RiAKjfG5dd7a2kin1A@mail.gmail.com>
Subject: Re: [Yocto][QA] patches : QA Issue: Missing Upstream-Status in patch
To: yocto@lists.yoctoproject.org, ycnakajsph@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 15:26:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63462

On Wed, 10 Jul 2024 at 15:45, Yann CARDAILLAC via
lists.yoctoproject.org <ycnakajsph=3Dgmail.com@lists.yoctoproject.org>
wrote:
> I'm not having the issue anymore, but I don't want to do that for all the=
 patches I'm going to backport, can you explain why and when this error occ=
urs? And if it's systematic how can I systematically ignore it as I don't r=
eally care about the "Upstream-Status".

Having a well-defined upstream-status in every patch is a layer
maintenance practice we do want to encourage. You might not care about
this information right now, but you might want it a few months from
now. Or someone else working with your layer might want it when they
need to rebase the software being patched to some different version.
It will help them find where the original commit is, or give them a
reason why the patch was never submitted upstream and shouldn't be
etc. We have a rich nomenclature that covers almost every scenario.

If you're backporting patches, put 'Upstream-Status: Backport [link
from where]' into them. 'Pending' without a reason is basically same
as 'no status', and even though it's currently allowed, the
restrictions on it will get tighter over time.

Alex

