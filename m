Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85111C433EF
	for <webhook@archiver.kernel.org>; Wed,  1 Dec 2021 18:59:52 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.1278.1638385191465561458
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Dec 2021 10:59:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=XoaQnp4p;
 spf=softfail (domain: sakoman.com, ip: 209.85.221.41,
 mailfrom: steve@sakoman.com)
Received: by mail-wr1-f41.google.com with SMTP id d24so54581154wra.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 01 Dec 2021 10:59:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5NWx1vV6SDniFX79katLxIy4QoIHY+ki7eX+rQb8h/A=;
        b=XoaQnp4pDjLE0eVqeELCiEQlFInrydGSKTIVDf6+fssZ9kV3lxtU300wPbLHR6DQxN
         4OcTz45EuFcY2wdH33eeYgIiSbTkfqrJTvZIe1v+GvFJuEoCTknH0EonooKpzPYNtJq8
         /jrxvgpVulCsjlK4UlL0lo00TXCLO+1mDIwAedF707lqI6Tda7q5YqnzUC8GMkaiHCEz
         77AoOPSYNeFhunDiZwVv/Ws/RyJHVEmlZrutSgPH9GipRzA9pbtaJaBoG+7AaiwF2Znk
         xsT9Rx2qJo7H4kWwVBYMjAcYBUSDe27cm8CCf9ZUxL2R9axOGjrgM7h0wCkZzf2osQcf
         LoHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5NWx1vV6SDniFX79katLxIy4QoIHY+ki7eX+rQb8h/A=;
        b=3qPvRSCU+zCqnsaQDUNVAVXwbblIDtfQOrlLsARo9/LADCLD4re2fViizo0g/gYJVF
         eAcQfXrapu7DIq7vqG8S2uIbCkLrQVxdmRDMv/iy+8xE3JCH5qjBjDpeub7I4zX5QMFr
         W+0uieeO3vhrYqveXkPsxmGthpMC5JOTWC3nwGGSD9sT8qaMaAeb925IQ8c8cRAtOjHq
         I2b/qd536+98FzWD8zYYrSr00TkJcZJTCi1fG4Who50MtQDxOGGdAVjtcDhbpYdpEgWr
         RdxkujlijYv7aHOqxEbEDf2lOPvCo1sMLsG0RFj6ya7OxMhRfRC937NJphHT2BtyxWMk
         dcow==
X-Gm-Message-State: AOAM5339f9G2iQxLqQL48qGQKpYDmcJCavamcK2jomx7rmwheojXXXrj
	fVmG3cgeilsn6xAQUG9TD9kK2E9NLfsDT50FAm4OiA==
X-Google-Smtp-Source: 
 ABdhPJyXeu29FHtOxPYWvPfZwIk0njfudSuBNPHo1lkVXxywo/7qOsJjesWzwWM+TJn+QOEUbi3uRribuUJYSdVfw+I=
X-Received: by 2002:adf:f80c:: with SMTP id s12mr8784255wrp.627.1638385189655;
 Wed, 01 Dec 2021 10:59:49 -0800 (PST)
MIME-Version: 1.0
References: 
 <CALbNGRSHUSdJMr3ZEVFO9NoktSspSJLdkuE3yTbr32+WErEEhQ@mail.gmail.com>
In-Reply-To: 
 <CALbNGRSHUSdJMr3ZEVFO9NoktSspSJLdkuE3yTbr32+WErEEhQ@mail.gmail.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Wed, 1 Dec 2021 08:59:37 -1000
Message-ID: 
 <CAOSpxdYyoSafAe+fhCsQJnpshpYCbZYd19AEGBJNM0TLsTxsbg@mail.gmail.com>
Subject: Re: [yocto] downloads.yoctoproject.org down?
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Dec 2021 18:59:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55461

On Wed, Dec 1, 2021 at 8:45 AM Andreas M=C3=BCller <schnitzeltony@gmail.com=
> wrote:
>
> Hi,
>
> Trying to install buildtools (dunfell) I get
>
> ./sources/openembedded-core/scripts/install-buildtools
> INFO: Fetching buildtools installer
> ERROR: Could not download file from
> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M1/=
buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1%2Bsnapshot-2=
0200617.sh
>
> Has anybody a chance to help me not being killed :)

Yes, some of the infrastructure is down right now.  Michael knows and
is hard at work fixing the issue.

Steve

> Cheers,
>
> Andreas
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55460): https://lists.yoctoproject.org/g/yocto/messag=
e/55460
> Mute This Topic: https://lists.yoctoproject.org/mt/87435425/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

