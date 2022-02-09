Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8887BC433EF
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 16:37:20 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web11.28804.1644424638597988965
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 08:37:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=PAnOtwKA;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.51,
 mailfrom: steve@sakoman.com)
Received: by mail-ej1-f51.google.com with SMTP id p24so9043761ejo.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 08:37:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CJJu8NkdqYQue/j/cv1lCNQTMNMBgZXZL26tLqeuPKM=;
        b=PAnOtwKADiwdB/LLb6j2ykKgA4AqB78MeCrlnSWb6LRWnxvfx+9RM68vWEuz3Ko93N
         Ky0d3PGg0K+okVq84+CrdpOo1CbXgH/78bt88VFXmdVey49kjvA64FAss+U1lonFJ/+F
         SJMxv46KJvTCJXTeFodoaQ13v4Raij1R+KB56j9ncg4RJXE80nQkeRIu4auTVC4avK5f
         pOPGhgkkYBdFEpBkXGBvPukPmfPD6u+2knQGXG9jEjtjnYjzKKG8Q+CQbjJ0k1Km/enk
         H5kmmeTnLezVII+IbdedtCCv7sqkMGnhW6kFkA0WjwrWo86av6YydHOKxaFE+ijfxKqU
         9gFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CJJu8NkdqYQue/j/cv1lCNQTMNMBgZXZL26tLqeuPKM=;
        b=N/Q9hmOG+ju7luR/doZaj5K+/JBXRbGE70lx6WbJ3IJupUuDu/VtKm/MguhQ8Tq7wc
         Gz3bgJH6wdaS5mdCaQyByrFgZYIxpQrh51YabwqQlM6SEaYV+sPLCBGvYP+tKNcAUxiM
         wsP8+ihcRcHfHBLUViKgTrQozwXG0K/Q1uYurJhgbCWiQvYHYSqNojnSfe7eFpXo4yjr
         ziNBy9siTwvlXBRWCADEWg1laVcYBoGJnLs0AG59zdR31OZftn9V6KoY6c6E/9J7U/q6
         eV0X/6W0MXTOgqxLflYiM+YFT0cZYLAolpWw7e38veOczPVOeAZaFe5aKSFQEAG+yiih
         pKGw==
X-Gm-Message-State: AOAM5308m7ep59wTUls7p1GZYiHaYsR70FUXHkCEKq9crOdetYY4YfuN
	6BuVqzL1287lVDrsLmjnhiRMZ481Ka11JXGWSSbt9Q==
X-Google-Smtp-Source: 
 ABdhPJwKWnNBQIl60FQv0+v3WLT0fCZBPWR2ralyqJNETYi7xwF5fEIGVkNvErlsXCYA0pSKF2YG0Sna8VSSRs03xLc=
X-Received: by 2002:a17:907:3d8f:: with SMTP id
 he15mr2666938ejc.246.1644424636597;
 Wed, 09 Feb 2022 08:37:16 -0800 (PST)
MIME-Version: 1.0
References: <90135b4d-6a37-f5d7-dbba-7d0ef47aa778@kernel.org>
 <f0fe3b45abdc3f073d3efc53d4f12fd6dd9b8951.camel@linuxfoundation.org>
In-Reply-To: 
 <f0fe3b45abdc3f073d3efc53d4f12fd6dd9b8951.camel@linuxfoundation.org>
From: Steve Sakoman <steve@sakoman.com>
Date: Wed, 9 Feb 2022 06:37:05 -1000
Message-ID: 
 <CAOSpxdb2_Nfk=eadm-+o17Ec4R1qS-s5KKSYQQ61vY0K3GjuXg@mail.gmail.com>
Subject: Re: Maintaining ABI Compatibility for LTS branch
To: Sinan Kaya <okaya@kernel.org>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>,
	Paul Eggleton <bluelightning@bluelightning.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 16:37:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56121

On Tue, Feb 8, 2022 at 1:07 PM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> Forwarding to the correct list address and cc the LTS maintainer.
>
> Cheers,
>
> Richard
>
>
>
> ---------- Forwarded message ----------
> From: Sinan Kaya <okaya@kernel.org>
> To: Richard Purdie <richard.purdie@linuxfoundation.org>, Paul Eggleton <bluelightning@bluelightning.org>, Yocto list discussion <yocto@yoctoproject.org>
> Cc:
> Bcc:
> Date: Sun, 6 Feb 2022 20:14:37 -0500
> Subject: Maintaining ABI Compatibility for LTS branch
> Hi Everyone,
>
> One of the limitations of Yocto LTS branch is that there is no
> guaranteed backwards compatibility. Therefore, any time we move a branch
> forward to move to latest dunfell release, we are taking a risk of
> breaking our customers.

I'd be interested in hearing about any cases where we've broken things!

In general I don't take version upgrades (other than bug fix/cve fix
only dot releases)

> Yocto reserves the right to move a package version forward if a
> security fix cannot be applied properly as an example.

These cases should be extremely rare, and the community/technical
steering committee is given an opportunity to review this before it
happens.

I'm certainly open to suggestions on how we can do better.

I'd love to see some tooling to do ABI checking!

Steve

> This promise is being held true on the kernel by running kernel API
> tests etc. and running test benches across different CI environments.
>
> I was curious about how everyone is approaching this problem.
> There was some attempt to bring ABI checking functionality in the past
> but this has never been merged.
>
> Is everyone rolling their own solution? or never moving forward?
>
> Sinan
>

