Return-Path: <schnitzeltony@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79A66C433F5
	for <webhook@archiver.kernel.org>; Wed,  1 Dec 2021 20:06:45 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web11.2103.1638389204724951397
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Dec 2021 12:06:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=S7KdJ7GK;
 spf=pass (domain: gmail.com, ip: 209.85.210.170,
 mailfrom: schnitzeltony@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id b68so25660074pfg.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 01 Dec 2021 12:06:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=7zU+XcqcOldlTZx3a7rH4rZsOm27ZHZxhrZNJ327Gio=;
        b=S7KdJ7GKKDxZJLLBCaPTrtdtVGVai4eazSHc+fk3xBp7iLw0MRoekB/quub7bUx9Bf
         aHTz4hGruSopDKtMlZZzvHvgWvawfEZmYS9FgQiEEQ8ezrO+OfXhkOhkWstbHM9zs7KO
         DCVvixjM706c4a/KCw+txXm1uMmNQ0INm5PYPfEXUPq5V+BwFF3BPqxJi3ov21JKHyrJ
         eXwT35Izc8JZiEvLl3+C3PNYd94nQ2DV/SUyPmw6j0Y69yd9NWWcug8mV6gIoB3bjd08
         TcxCTOnkBNt6hvSjj9xkBIIsqn+4S6frWkDex2q0KqJrIzqXkdfvdsY/iJ4SNTziFdAE
         nQQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=7zU+XcqcOldlTZx3a7rH4rZsOm27ZHZxhrZNJ327Gio=;
        b=GUoiTZCZdWbJNVKErcAlY6CP1tNrr4XldfyKazM1gQhsWpcYsysLS2I7wULjE2JueF
         0s2fm/3FzSvR9FSqWby+9ZEmWpZKIELWpyeVDU3NMgdvZKOt+Mu6FT1QeBaIsoX7ZfNs
         OzVo0X1g1Gs1PtJFw82RlA+mxunRUo91EUt63jO12vefCu3lZNbZs1D69MS2f02awQ1p
         HLAjM6b8CSELPDQDewWq9jayix263fBWXO3HaixkNW/PD5sGpQz8NDH5wkhzWUMfhQ+0
         5gogoN8QMVaROkrDypCh7nhV1Js1Lu6327AzobgNyyf2R5PYwJfqu+dNQgi28sRGkTBo
         WhNw==
X-Gm-Message-State: AOAM531f7vz2dNAO0bFiQA0Ube3iQDpl/I3SRbj72RwcpJ5bQz+gEXBV
	8mtKF3eDkSO5sWzCFUo8LkfuvMLB6M4V1OuHYxw=
X-Google-Smtp-Source: 
 ABdhPJwKb2QmTVrrh7UYSls9xj9bI1tGh6lIfRfCoYOBVZ59Q0/60Dl5g51B7pcl+K989O4PMLyAjFEW61J43sNDxos=
X-Received: by 2002:a05:6a00:1c65:b0:49f:d8d0:c5d9 with SMTP id
 s37-20020a056a001c6500b0049fd8d0c5d9mr7995801pfw.72.1638389203870; Wed, 01
 Dec 2021 12:06:43 -0800 (PST)
MIME-Version: 1.0
References: 
 <CALbNGRSHUSdJMr3ZEVFO9NoktSspSJLdkuE3yTbr32+WErEEhQ@mail.gmail.com>
 <CAOSpxdYyoSafAe+fhCsQJnpshpYCbZYd19AEGBJNM0TLsTxsbg@mail.gmail.com>
In-Reply-To: 
 <CAOSpxdYyoSafAe+fhCsQJnpshpYCbZYd19AEGBJNM0TLsTxsbg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Wed, 1 Dec 2021 21:06:32 +0100
Message-ID: 
 <CALbNGRSw2Ax2hFzi2nb9SzOqzEoGv4R-GrqJKgEjomFgwtezNA@mail.gmail.com>
Subject: Re: [yocto] downloads.yoctoproject.org down?
To: Steve Sakoman <steve@sakoman.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Dec 2021 20:06:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55462

On Wed, Dec 1, 2021 at 7:59 PM Steve Sakoman <steve@sakoman.com> wrote:
>
> On Wed, Dec 1, 2021 at 8:45 AM Andreas M=C3=BCller <schnitzeltony@gmail.c=
om> wrote:
> >
> > Hi,
> >
> > Trying to install buildtools (dunfell) I get
> >
> > ./sources/openembedded-core/scripts/install-buildtools
> > INFO: Fetching buildtools installer
> > ERROR: Could not download file from
> > http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M=
1/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1%2Bsnapshot=
-20200617.sh
> >
> > Has anybody a chance to help me not being killed :)
>
> Yes, some of the infrastructure is down right now.  Michael knows and
> is hard at work fixing the issue.
So there is hope

Thanks a lot all involved!

Andreas

