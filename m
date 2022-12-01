Return-Path: <zoran.stojsavljevic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1732AC43217
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 13:02:12 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.42382.1669899725271055473
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 05:02:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IVwWHIPL;
 spf=pass (domain: gmail.com, ip: 209.85.128.45, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id 125-20020a1c0283000000b003d076ee89d6so1176846wmc.0
        for <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 05:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WaUl0Q5emsQqwWtnckUe4GB3mYqJhs5iKjC4D00vph4=;
        b=IVwWHIPLLTYzzPrfOQrCp+dz2DfPoB4WfvNznmxLXvl+LmSDO9ZgfeJNY2xSl+b6bx
         SUU3TiFOlpSjTaAjl8FOk3rPZs0Vn8ILYHhFD+bWUHlMy8qTVUEtgcNh9vvDriod2GMw
         FMp3usOOD/AdmfPiSpxTirq8EjTmZhE/5MogbYVCeRRLWkhV88avf3JR0zrGCzUiJJ4k
         HjUNRbrbtNt59vynSlkWSgszOiami+9Pbf3LO2QzaqR/MjbIoY/tYELA6JbzGhn8K0UV
         wTEoUT+spiFQIEY7Ni9XE17+snlzpnywJV72FRcHnSbRQzQeiMmI6xxYl7w+Pe8oMyra
         mmQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WaUl0Q5emsQqwWtnckUe4GB3mYqJhs5iKjC4D00vph4=;
        b=3kDFddyd0az9uxvg2K8lpvn0mCRtM7Pb3pIls5J73d4uzeix29Is/v4JpobhMS5kmT
         /1H1lwUyF6UkOg6y55ce1d2LXVjgcpqnVgIGqFdvOp6eCBFIbtFPFdEfDfuTALBlAJAz
         se44sZm3Al8ql9V4yrY4LI/2mkZWMwqLTVjXaEa7hbQMvUeBw6CD+wK78uL5USeI4RTp
         QMomM2EJ/bo+oehyc1jrenBEhMBru8YpoejLHNbO5OfOLKn/q9jd3yPWT0UPP1SR/OmD
         bm1rIkXfON+9CkQDQMRqKiYe3l0mq49Fg/u7z57ccXM9z5VWJcxGXORQNFiDMAxCC4NQ
         iQGg==
X-Gm-Message-State: ANoB5plHgATrQ+OHw2dGNwmE0c9Lkf6UsC37rWKdIckh5kOt98G2Ep0B
	DLRM98nVcCHDyzUXcqSl4UUiFepOAa8AQKSv/JU=
X-Google-Smtp-Source: AA0mqf4YxxgMtCf7BPmmstiKL6TdHZ+h/of7G+hQFt0JNCEBHZ/gULU51QwKMZ0NCuvuTpmiqPohVhQZMxlwrJsZk30=
X-Received: by 2002:a05:600c:35c4:b0:3cf:9668:e8f8 with SMTP id
 r4-20020a05600c35c400b003cf9668e8f8mr39485738wmq.195.1669899723616; Thu, 01
 Dec 2022 05:02:03 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
 <9D944DA0-C890-4E71-A82A-3E30892E8684@arm.com> <CA+chaQcbVjpF79hRgQYE=RSBCr4-4=+2XYv+TviUdZuOMbkTxw@mail.gmail.com>
 <CAGAf8LzJbxMrZQWjjqD3zhrTD4xgcHc2v_eMxaqe-G711KHEUA@mail.gmail.com> <0A87AABA-C4D6-4885-8898-D1B2A52DD143@arm.com>
In-Reply-To: <0A87AABA-C4D6-4885-8898-D1B2A52DD143@arm.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 1 Dec 2022 14:01:52 +0100
Message-ID: <CAGAf8Lx1UNcs8qXsMUeKQVUuEmix5KixA6dUj=o7D-U7cGk3sA@mail.gmail.com>
Subject: Re: [yocto] LAYERSERIES_COMPAT_ variable in the layer's recipe
To: Ross Burton <Ross.Burton@arm.com>
Cc: Martin Jansa <martin.jansa@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 13:02:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58705

Agreed. Will revert.

Zee
_______

On Thu, Dec 1, 2022 at 1:48 PM Ross Burton <Ross.Burton@arm.com> wrote:
>
> On 1 Dec 2022, at 12:46, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
> > But, could you, please, allow me to have my own original cannelloni
> > recipe (yes, I developed it with some help from this community) on my
> > own terms? I DID not copy it from anywhere. It is an ORIGINAL.
>
> As I explained in the bug I filed in your repository, the LICENSE statement is the license of the contents of the packages, not the recipe itself.
>
> https://github.com/mguentner/cannelloni clearly says GPLv2.
>
> Ross

