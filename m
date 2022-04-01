Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC2D3C49EA4
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:43 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web08.5162.1648851004727996927
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 15:10:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jjG+SgTX;
 spf=pass (domain: gmail.com, ip: 209.85.222.180,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id r127so3208355qke.13
        for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 15:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8k0Nrbs3Re2s10YdBnhK55nViyfqdB82u9d4WKgK8xI=;
        b=jjG+SgTX38FdE7ugU7PbfsEujBkK9cz6IF0+UMu0Pf0M75dZmTMDrICQOybnTOYR77
         /lrc/RM2WGjgf/cJ8DiAn3hmWXhOItVyB708vgBj1sQ5bF5xrt2NTzSfDzlBo86f6yIU
         RPYqu5dmAp4cDd9SZjQFb/rTjgLTn2hSfrteryCK8qIN9hE0wJZIFfjJsM+U2g6H782h
         FYAFC9l0/gT+J8ZDTaIUnlaC3KkFHVcWUQHbyI3TbNTDgxGoZ9v+BNuRJHcO3g/XMSDH
         nky3W1TZK0DKR8VmwaVcrPu6/vHAvQA9fNYnbQqckQr/H0qQZASxbDYAg4jkCcuNG1Jz
         PjXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8k0Nrbs3Re2s10YdBnhK55nViyfqdB82u9d4WKgK8xI=;
        b=qTCDEyHUA8fowroVtsRy1/vL51hHgRSM8gGIt4pl9AmP/lrerrX5Mmi0dcMpMq8+5f
         LhHwuuZOF8EI1bp4sb2rqIEOhKjpoEsr/0h50fkpQP1PGZ4qQLtVeb+8ZhdHfC3YWW+q
         sybAzs7Iz0bWnIMbgLmU90vXVUEsj8IiVFP8aG6qYikiGTT6hws5YJRpxFMbIqOb1Nsd
         Hp9Sk6cRREIs1H7GofNtpAR8mfN2SO97R5S6f3g/i73iTRXteGUvPtfnmaB+PYGNe03u
         2eIxnq/Dg6UMzAl7brfMNPcBFUsW6dz5KIayAVu3rHLVON9oylfQdxQidkzzi0+sUXRU
         hf1A==
X-Gm-Message-State: AOAM533dkoHi61ytF7bPtHsEa5IxLkhIUUNW52GebeO2BvSvsc2mkytn
	ND//ccTld/Cfh37nahIvTtep9ivKAZdTOA9eH7QhFwdoM+E=
X-Google-Smtp-Source: 
 ABdhPJw9d1EuxvYRIHaUZvyDI57mYFkFPIdcDUCn3Jmze0RDClJ16ht9oYqdSnbZI86P3heJWiAvxTrSrSG7HVosU/Y=
X-Received: by 2002:a05:620a:460e:b0:680:9d1c:2493 with SMTP id
 br14-20020a05620a460e00b006809d1c2493mr7861399qkb.227.1648851003738; Fri, 01
 Apr 2022 15:10:03 -0700 (PDT)
MIME-Version: 1.0
References: <d53c8921e56ece2984cb97f78c4b038f@vivaldi.net>
 <CAMKF1sqZHZRNvW0BY3MfVH+cKv3nRtjTRab_EXJwKGpANu_EZQ@mail.gmail.com>
 <16E1E0852A508284.15950@lists.yoctoproject.org>
 <b4f0f9c76768d68ad2f4b1822d11bca8@vivaldi.net>
In-Reply-To: <b4f0f9c76768d68ad2f4b1822d11bca8@vivaldi.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 1 Apr 2022 15:09:37 -0700
Message-ID: 
 <CAMKF1sqsAEdLEtD6c_vnoNX1FXBZteiDuuMyEiFvMZ4i7n3AXQ@mail.gmail.com>
Subject: Re: [yocto] Specified SDKMACHINE value is not valid
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56618

On Fri, Apr 1, 2022 at 2:02 PM jchludzinski <jchludzinski@vivaldi.net> wrote:
>
> But obviously commented out.
>
> On 2022-04-01 16:43, jchludzinski via lists.yoctoproject.org wrote:
> > There's this:
> > #SDKMACHINE ?= "i686"

OK it should be ok then. Can you describe your steps to setup the system?
maybe there is some caveat

> >
> > ---John
> >
> > On 2022-04-01 16:22, Khem Raj wrote:
> >
> >> On Fri, Apr 1, 2022 at 1:09 PM jchludzinski via
> >> lists.yoctoproject.org
> >> [1 [1]] <jchludzinski=vivaldi.net@lists.yoctoproject.org> wrote:
> >>
> >>> I'm trying an experiment building yocto/OE on a Raspberry Pi 4 to
> >>> host on the same RP4. Admittedly, a not practical platform for
> >>> this
> >>> purpose but it should work.
> >>>
> >>> I'm trying to target the ARM ISA for the image using yocto-3.4.2.
> >>> I've tried simply using the default setting and end up with:
> >>>
> >>> _ERROR:  OE-core's config sanity checker detected a potential
> >>> misconfiguration._
> >>> _    Either fix the cause of this error or at your own risk
> >>> disable
> >>> the checker (see sanity.conf)._
> >>> _    Following is the list of potential problems / advisories:_
> >>> _ _
> >>> _    Specified SDKMACHINE value is not valid_
> >>>
> >>> I've tried editing ./conf/local.conf:
> >>>
> >>> MACHINE ?= "qemuarm64"
> >>>
> >>> #MACHINE ??= "qemux86-64"
> >>
> >> It's complaining about SDKMACHINE setting which is a separate
> >> variable, can you check your local.conf if it's set to something
> >>
> >>> But this accomplishes nothing. Needless to say, I'm a yacto/OE
> >>> newbie, so any suggestions would be greatly appreciated.
> >>>
> >>> ---John
> >>
> >> Links:
> >> ------
> >> [1] http://lists.yoctoproject.org
> >
> >
> > Links:
> > ------
> > [1] http://lists.yoctoproject.org
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#56616):
> > https://lists.yoctoproject.org/g/yocto/message/56616
> > Mute This Topic: https://lists.yoctoproject.org/mt/90188098/5071304
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> > [jchludzinski@vivaldi.net]
> > -=-=-=-=-=-=-=-=-=-=-=-

