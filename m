Return-Path: <schnitzeltony@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3BE7C433EF
	for <webhook@archiver.kernel.org>; Wed, 29 Dec 2021 15:57:47 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web12.52544.1640793467032225365
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Dec 2021 07:57:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=V+9ch2pF;
 spf=pass (domain: gmail.com, ip: 209.85.214.170,
 mailfrom: schnitzeltony@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id l16so4066720plg.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 29 Dec 2021 07:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=psfRtJlhrbTbbw+RH69K8HpYgDjQPCArFu1d3iqgMdQ=;
        b=V+9ch2pFvN8vJVTcPH3/OBzAgEL9qJ+N9GbR7MsLRHAWUGjBPJjCkzIyzjHmOkQx6N
         uPA+a+zYqY+sDwt2jEFcH+DCM7fYKNMQ7TQJL9Q11oumUQTLM1owsQoX0iaE425IK1sg
         Q7qdtEiv8+KXt+PRnXqFBP/nQiKvv/8A2s7GdPa+bPlUEoG5BLDzYA5klYQf6X3XZ+Wh
         Vp+tk89WjYo6nDkfi6xlx3MjgTUXvtMQ/zDw4+vuG8mYikIKY3Mm33nNbFcgMyjZ0UFP
         arJZiAC570gCbrmlYeHAka7YdeRKwm2My6Q4c/aSX6+r9SUd3Ie5okjROtGDzR3hkH9G
         D1PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=psfRtJlhrbTbbw+RH69K8HpYgDjQPCArFu1d3iqgMdQ=;
        b=ubNcCodnOOYE2cynKrKGRbj5o8eC/8H9qAP9USRVZtgzzX4hk8j1iMVG/xHJ9H9iVb
         hbXZt7gKCPdkLkAs9H8n249AupjkEyPBelFQpG8s2vtuqu10wbxn6KMS/qQlneo5oOcK
         uZnkklc3/pjZL+z/re2NDZxa/SUGPPz0lQh5m9df295g526tWAhFZKumCKT0iWNlq7mH
         CwsbVHFhx3t8qr8G5Uy7N4mU7yPvUl1IFiTDaVUPKmtVlF4OrXNo0ewqx5mc6iFlUCTX
         5V7YfOKEpdLPDzFOSll1n6oHdWCoGIu9dY8LzZisV/o/bh2B+SmFZdGHzSsgeEyeb5ny
         ggFw==
X-Gm-Message-State: AOAM533thzRzjp6neQC2U/byrpAAFNpaY2fT3x13vpEKN8zPZIFI0PX8
	9ZvynNDBY2II4UThqLy7pYyUy+K/QATMcZeCvGo=
X-Google-Smtp-Source: 
 ABdhPJynSf3kzK5ReHGwcGC+Wvi+VyrM1+PLFfBAteiitq8E9idReM1uwYP+LNULESmCgLhgcs8ZsgRFjp0mY5wMlD0=
X-Received: by 2002:a17:902:e5c2:b0:149:3cd:ebf5 with SMTP id
 u2-20020a170902e5c200b0014903cdebf5mr27198886plf.1.1640793466573; Wed, 29 Dec
 2021 07:57:46 -0800 (PST)
MIME-Version: 1.0
References: <20211209025956.41679-1-mingli.yu@windriver.com>
 <CAMKF1spEXRKjDgoC9AA42=yitDtWO8YYPhuLnuCKsRzTBdJN9Q@mail.gmail.com>
In-Reply-To: 
 <CAMKF1spEXRKjDgoC9AA42=yitDtWO8YYPhuLnuCKsRzTBdJN9Q@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Wed, 29 Dec 2021 16:57:35 +0100
Message-ID: 
 <CALbNGRSRPG=ManpBHzQO2oucdT3SVeOB=o+yBWESpR6tsujT0w@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH] xserver-xorg: remove xshmfence
 configure option
To: Khem Raj <raj.khem@gmail.com>
Cc: "Yu, Mingli" <mingli.yu@windriver.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Dec 2021 15:57:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55687

On Thu, Dec 9, 2021 at 6:37 AM Khem Raj <raj.khem@gmail.com> wrote:
>
>
>
> On Wed, Dec 8, 2021 at 7:03 PM Yu, Mingli <mingli.yu@windriver.com> wrote=
:
>>
>> From: Mingli Yu <mingli.yu@windriver.com>
>>
>> After the commit [1] introduced in openembedded-core layer,
>> some configure options is't carried over include xshmfence
>> option, so remove the xshmfence configure option to silence
>> the below warning.
>>   WARNING: xserver-xorg-2_21.1.1-r0 do_configure: QA Issue: xserver-xorg=
: invalid PACKAGECONFIG: xshmfence [invalid-packageconfig]
>
>
> That=E2=80=99s ok to remove it but more importantly does it work now with=
out this option
Looked into xserver's meson.build: As soon as dri3  is added - which
we do - libxshmfence turns into a mandatory dependency. So this patch
is correct.
Somehow libxshmfence is added to sysroot - maybe we should add it
explicitly to dri3 PACKAGECONFIG in oe-core to be more explicit.

Slightly off-topic but we are on xserver on Raspi: Has anybody tested
xserver recently? I see nasty issues on raspi4-64 / XFCE (haven't
tried other desktops yet):

* As soon as a window is opened, screen turns black for 1-2 seconds.
Have not yet found helpful in logs yet.
* There are two mouse devices detected with name 'vc4'. What?

Cheers

Andreas

