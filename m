Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B97AD5CC92
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 10:59:02 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.12074.1730285938518946079
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Oct 2024 03:58:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kTYdnjeE;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2fb3debdc09so50967931fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 03:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730285936; x=1730890736; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=seEdYJJ5pzzbFoB9BjMXOiyKx9bGL0SyagybM7P2HBw=;
        b=kTYdnjeE5W5ftN8SIagZY95jnGloewE/WUzcMUTe0pAyjG34zFQ6WV8ZpjFCiRdEg/
         MdapruWzgoQFjGajQSHBHPzrRaRCMn6w9st5nLaq847sMhIC8mc9iEArgJQh3gGneb+T
         AzeAoPjBwXftYSRu9G4YXevR26GvWRprB91eqP5efc5wcNSD3um4vO9zg9UG3/9och3U
         HozYHt5sflejDq5/+QcWE7Id2YvvZ93zt7Kk3Ln9NJ6TrMV5ofxXQrgMGPazOSf0IA+3
         ImAFjU1Ik4eikoDytiPpDxqDtn51rvNhZyehnmjMXfvANspyyafqtm32ro7iVY0FXUI2
         63yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730285936; x=1730890736;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=seEdYJJ5pzzbFoB9BjMXOiyKx9bGL0SyagybM7P2HBw=;
        b=iF0Pv6L+9+1QZAWHbugYNnjaYPdmzef+NKEVyE0G8kDaoLzFCFby5cMvpv09dPf2IC
         TLu/XnyihtvMy/f30QHCVsNKIX86aKIkyPQTAsWIU+4aqZFE53e9/fNoGyOCKIc3737L
         zSEbzDsjAaGdkZ+di9e31cOn36L4KBD3Lpray3WMVZt3nGTtyne9HsjzCnkfn791tiyU
         fG3q6SE1IkbinMuHINuOEXqZ6+OLEYJ5mCSQsnsh+3X5YpuAVQJuLTInoCVAYK6GrKen
         dbL5UFmTg4jXwfbFh/JSwWZFm0/ASHM0tWmL5c1JAQ7O2BnWsH2PJ4MftuYyBoYisHqy
         it7g==
X-Gm-Message-State: AOJu0Yy4qFaf1rpQtR9EVZzWoFnA83FNsa1OSK7b/bso2GPYBzoZ5gB/
	EiHrvcKpczBx622QC3XxNt2aiVtOL3fdPntygORvhpGBpgoor4Qd3WJ0bPfrRK9OkXLfLlNEOQw
	6fVsAmVXasQgA4wR6/o6PoAnPYiQ=
X-Google-Smtp-Source: AGHT+IG31VA6i3W+pLs3eM2IPMwOrI5LnE9Xq0K9T3Rtoa6/6/7icu3mIt5R+8wHXLYLTXB/76Agf3tzvlLV1nYdJCw=
X-Received: by 2002:a2e:be88:0:b0:2fc:a507:19c6 with SMTP id
 38308e7fff4ca-2fcbdfe781dmr66616791fa.22.1730285935865; Wed, 30 Oct 2024
 03:58:55 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_Au_rJn9rvTJit984CvYtRzOmY38P=JJ_E-fiEJi1jjA@mail.gmail.com>
 <21197.1730285362777128927@lists.yoctoproject.org>
In-Reply-To: <21197.1730285362777128927@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 30 Oct 2024 11:58:44 +0100
Message-ID: <CANNYZj_zzRO0Bi84_xAHCe2xNRBXXnsBEgzr-=kohwqKQhE2UQ@mail.gmail.com>
Subject: Re: [yocto] Building SDK fails after update to scarthgap
To: freddy.boman@bastec.se
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 10:59:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64178

On Wed, 30 Oct 2024 at 11:49, freddy.boman via Lists.Yoctoproject.Org
<freddy.boman=bastec.se@lists.yoctoproject.org> wrote:
> I've found where the config option comes from (it's in qemu.inc).
> But I can't seem to find a way to add a :remove for the option that works.
> I created a normal .bbappend for qemu but this does not seem to be applied when making nativesdk-qemu.
> Is the only option to clone the full qemu-recipe into our own distro and make the changes there or is there some magic that can be done elsewehere?

There's some other issue there that you need to look into, and
disabling the option would only cover it up instead of fixing it.

If the option is enabled, then the needed pieces should be in the
sysroot and qemu build shouldn't be failing with a missing header
error. Is the header in the sysroot? Are you doing other tweaks to
qemu recipe that break something? Does the issue occur if you try
building nativesdk-qemu in plain poky?

Alex

