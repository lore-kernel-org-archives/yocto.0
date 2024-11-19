Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36B53D60D06
	for <webhook@archiver.kernel.org>; Tue, 19 Nov 2024 16:50:01 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web10.26173.1732034996291508893
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Nov 2024 08:49:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PG7MvUYj;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6cd7a2ed34bso27462666d6.2
        for <yocto@lists.yoctoproject.org>; Tue, 19 Nov 2024 08:49:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732034995; x=1732639795; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JI4cOqEw0vn9OTNDQy001ze7oscmZusYCfvMJcZOuUI=;
        b=PG7MvUYj3LeJwpryttmSs9Is2LYqNm78NA/MWAOvZodijBQCha5jNU7TFMDg36TKVJ
         fOOdA+uxekcVTwpNwy4jX+XRKg5JbOTpu+ksuiccerVaeV3KEqTTOea9uNE5VM3Wcvw8
         9w7gL6vtTnb4rlg1HemR/wBUrn11TsW4wSj0E0UWpuoXl24Oryz3enQ0iUJNJeBAMPe1
         w0OcItTb2vcytstTIBppfgYZoaiVQJqCIcBom6a8FWsOARUb31yPjAEhuNIw4yMALbiH
         muy4bG+lo6PwlT4HR+z6RX1d+K2sVIeI+uRj42szOiXDUe+nMpTXzCcFxPG230Invac9
         8vRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732034995; x=1732639795;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JI4cOqEw0vn9OTNDQy001ze7oscmZusYCfvMJcZOuUI=;
        b=AWwxH843jA9aab45sxKHMHqSA6xPLD/WNHs6fpLDfblDR1GW0HLw50a8TkNg18CJQ+
         qeLd+rTnUS24epS/mnRPRfqti3r4boeCJT/tOtV9FssVcOJfV90K/lhL9k/s25lZFcCU
         fKPRpOcu90Rz55VB0IRqStjZKIFWEvQj66IeQbOtQmOL8q+QoOSIN0J4kW/+YxESMgY6
         QauMJz50nO52q3mPOdjPfRboXijr5GBwV73caCLizalobvcAcWOvgRmdqRZ2GaoB1pi6
         HLd8YsXx640BE4hXUR46yd1ZLZrinALnwLJmZoRDN8f7xsBy3oiGbqNFKohhpo2fzfPO
         iAMQ==
X-Gm-Message-State: AOJu0YzwVJqFJVvf5x1QCQK47JOrN9rTvQORs61hHXhYDcO3kgAZN/ky
	GXk6obq+oOYcCY3JSMJ6vb0GE4G+p5p7RqsMyekXw7uh2Ee7ZML4N408QXCB1iB+9Ij3TpehRuj
	0JkXJywE2CSrF9AmOPmzHfbMLQV7uOg==
X-Google-Smtp-Source: AGHT+IHHkHcmMLPeTn2wkE1d5wUo73ukM4dOBeZxCPEh5GX1jx6YEpIIY5BZnped+aaVOGazmCABSC1d10A26835H58=
X-Received: by 2002:a05:6214:19e7:b0:6d4:8ef:1514 with SMTP id
 6a1803df08f44-6d408ef2004mr272097226d6.47.1732034995138; Tue, 19 Nov 2024
 08:49:55 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb86fozR98DkvKZAaEu5Uw8CzeF0NfA=xJgRO1fx7rDFzA@mail.gmail.com>
In-Reply-To: <CAK5yBb86fozR98DkvKZAaEu5Uw8CzeF0NfA=xJgRO1fx7rDFzA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 19 Nov 2024 17:49:43 +0100
Message-ID: <CANNYZj-ugVg+GTa0O7x45jjwQvCg__Lz3eaQ6HTR+deJoEWYyw@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 19 Nov. 2024 (WW47)
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: ",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Nov 2024 16:50:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64301

On Tue, 19 Nov 2024 at 16:46, Stephen Jolley via
lists.openembedded.org
<sjolley.yp.pm=gmail.com@lists.openembedded.org> wrote:

> Patches in the Pending State: 178 (17%) [last week 175 (16%)]

For once, I don't have to tell anyone off :) These three patches were
copied from tcl 9.x into tcl 8.x recipe.

Alex

