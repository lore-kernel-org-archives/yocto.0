Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B22BC47088
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 17:01:45 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.49780.1669914103871234149
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 09:01:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Lw/PBGnk;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id l8so2548589ljh.13
        for <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 09:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DhB/gxzyRE0RJr6iy4YPgGynMm6eVllzB60p6NIOwuQ=;
        b=Lw/PBGnkEvLaQerqqC/ETwNVbHcYBTFAnnGafgykkOcwNSO6SS1PsUPzOmgFBeM/x4
         YRJWFa7BMKO96kk174wGGEub6VLkD3FhiiVrvlU5NQiDFQIHzIfnY7VYGL+7/q6ebt+y
         8DaftZxcxYxQ9j7dH+nkp0PQCyvHVgjKJDFXDBHV0yD2S1Qz3mphr3X5rDKi/Fx3c8rB
         REK0sKZnhpml/gAfvDJ0Yf91KtaUqfY6J+BOsUvYN0BX3wGBy05r6xk3UQAW13wZ37Qt
         sdBU38etfJX14X9bEApAAOrnzja7S6Sb/PmCbmwdASdtYybzdhPut3bNhnEz/g4s40iR
         YMaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DhB/gxzyRE0RJr6iy4YPgGynMm6eVllzB60p6NIOwuQ=;
        b=hS6JuhoPGjJSbUyM8767A4qRTEpM/RyXlc3WY0j1vUfS2VX8BZlb1CnekJ2ao/mB4d
         3p318vMU0J6HOusEDj7DL5oz4nSXpc2nn6uR1G3OEFSRLrqOvfkwVLXGrQVDYiZ5GPzM
         GmoC8wV69XfhAVI+ceQgmNDYuEPKYGH65HX7Hwhr9s0Eyf5+DZwBR47lXdegfnXABBbl
         kg+kepws1vhM/daefplHzTOfyXh1YbKVvSOG9jBumFB7X5cjqN7B92N3rU0vM7fpuyGU
         3a2JAl5/IlphhWDFVkPyhg+Ofn1deFeWJopfesJJceRVWu5EZoQS005nLnA/82dJVnsu
         i0pQ==
X-Gm-Message-State: ANoB5pnJeltqZ9Cs/igtzPXrIsT8QcjkXkV+rjtgrCM9tY2a2++wGxRy
	ArH5a/RmdalMWnA5UDS+XvOGmqIHmJkd0HZmihs=
X-Google-Smtp-Source: AA0mqf5YtGJ37fyRBUDQ6fgIVkBatLnmAEhLldJRL8wgkOephje0e58AgSEaeSu69vnU6wey9t/Ztc52ff02J7g2GKQ=
X-Received: by 2002:a2e:be8a:0:b0:26f:c081:9aed with SMTP id
 a10-20020a2ebe8a000000b0026fc0819aedmr21264301ljr.222.1669914102029; Thu, 01
 Dec 2022 09:01:42 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
 <CAPxNcnfmGrJU9X5xBy034Ndz-zS4cgzwxWaVmmv4Dq4WCYFyjA@mail.gmail.com>
 <CA+chaQcphLsdya8v9SD=+XAb2bNWQ1bWxCdCRWOVpjwyiZePQg@mail.gmail.com> <4f4a8c61-be1c-27e2-950e-4266d1c358b2@ibeeto.com>
In-Reply-To: <4f4a8c61-be1c-27e2-950e-4266d1c358b2@ibeeto.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 1 Dec 2022 18:01:30 +0100
Message-ID: <CANNYZj8DSp=j+gdn2x+dUb1=efg0-BL2RXKp1kNHx2-2a0BRrA@mail.gmail.com>
Subject: Re: [yocto] LAYERSERIES_COMPAT_ variable in the layer's recipe
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Martin Jansa <martin.jansa@gmail.com>, Zoran <zoran.stojsavljevic@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 17:01:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58709

On Thu, 1 Dec 2022 at 17:41, Rudolf J Streif <rudolf.streif@ibeeto.com> wrote:
>
>
> > Recently I've also seen this:
> > LAYERSERIES_COMPAT_phytec = "${LAYERSERIES_COMPAT_core}"
> >
> Oh no, now the entire Yocto Project world knows about this hack. Now we
> need a sanity checker for this in the insane class. :)

It's a slippery slope. We can also for example make bitbake forcibly
not expand any variables in it, and write out an angry rant when
someone tries, and then I'm sure determined people will find a way
around that too.

Alex

