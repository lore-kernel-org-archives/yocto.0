Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5C32C433F5
	for <webhook@archiver.kernel.org>; Thu,  3 Mar 2022 21:27:45 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web10.16765.1646342862966911136
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 13:27:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lCR4ozBG;
 spf=pass (domain: gmail.com, ip: 209.85.160.178,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id b23so5806759qtt.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 13:27:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=widt6bc/z0uxUbngQX/Aa2h3JT8Q6hWB6ouMLVZFWlE=;
        b=lCR4ozBGL58qBWvljQ0I74Pn64INngTGTe/JU4olpJhJeBUvz/LIJ09GBY8VbcrceT
         gnM4WaVNr10VX9I+GLuICBkgc9UCbMSpz36jfanU/ngaFgGBU2JHCyOGwZtCwrIS1lFW
         xve/IOlqbBsfO0Lsd0YseCJ3GjPSES03kZNK8lqMikTnU3bj+kYUnW0AwF2wWZQE3fBT
         DKrZpbiGRBfFEMOyJAibqyJMRi/WBjYJMePB10e4UGORuJ7xfoL/9Qv44ZLqj6LrsI57
         vqESPe09qzFLDuamnikHEgin/tVo1nx/XLxmj5Lg7q5zXC8POepY0vOpHav4pp3WzsTg
         GmkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=widt6bc/z0uxUbngQX/Aa2h3JT8Q6hWB6ouMLVZFWlE=;
        b=0C+KVqxmkGNd2+4RK1Bg30K5aCP30gU+6MaDM6VKAqWe1uuQNPMuUEZk69yeyFmp1K
         ofC2GuUPLZjrZyf73mxHq8e76sFEMg7xEqFUxH3dkPXU+djMT+HY1F0CZWOhikjE+lL6
         jFP2XiUyzrDEHmTwIVuB6sRJvsJpLxZRXVc4HvJ5eZ6SEol/efeuoNEnpHM9R/lhD9Da
         IME4tFYwd4VMAoOioKXePlYO20rqNE/cJ+OXn9l/lPPnTHToiDCq+s36AzzPXHpcAfm+
         0UiOiJ/wpvJ4k9Jc6bDQgfJ66tTdVVeO5RWGBQhfia/wkOsH5PKynDSmTQXJGAnhAcsv
         SXxg==
X-Gm-Message-State: AOAM533bBfNU7mrsVqV4JwaMRJSTQtR3FrXZAdT8xPvQNieCx6ucVOM0
	63Cyyjt0nrlwKf08GuBZx9HgSCEVtXqUX3Q5cvCSm0emE/esXw==
X-Google-Smtp-Source: 
 ABdhPJz/Cra2kBqUuZo4b8WzJhxLqojr3XMrfJ4W2jx4IGIx6WMqj0TCIZhiyqWBnEMONzSqtYGiypftXTZU8UVjusM=
X-Received: by 2002:ac8:574e:0:b0:2df:f40a:8b79 with SMTP id
 14-20020ac8574e000000b002dff40a8b79mr21360724qtx.634.1646342861988; Thu, 03
 Mar 2022 13:27:41 -0800 (PST)
MIME-Version: 1.0
References: <e1372f3c-6576-3ad3-1c21-f1aa872fc84f@bytesatwork.ch>
In-Reply-To: <e1372f3c-6576-3ad3-1c21-f1aa872fc84f@bytesatwork.ch>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 3 Mar 2022 13:27:16 -0800
Message-ID: 
 <CAMKF1spzrtBY2NtSEv8_tg8KGoE843eYhvPaQbKsMMHVXWHtnA@mail.gmail.com>
Subject: Re: [yocto] Honister on Ubuntu 14.04
To: Daniel Ammann <daniel.ammann@bytesatwork.ch>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Mar 2022 21:27:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56360

On Thu, Mar 3, 2022 at 10:07 AM Daniel Ammann
<daniel.ammann@bytesatwork.ch> wrote:
>
> Hi,
>
> I'm trying to build honister on Ubuntu 14.04. This is meant as a temporary
> solution until the build server can be upgraded to something recent.
> For now, I got it running with extended buildtools from poky, but the build of
> libnsl2-native fails. It appears that the pkgconfig step is not executed
> properly since do_compile fails with a header not found error.
>
> Has anybody done a successful build of honister on Ubuntu 14.04? Is it even
> possible?

Honister is newer releases, Always check the tested sanity distros
list for honister ( 3.4.x release)

https://docs.yoctoproject.org/3.4.2/ref-manual/system-requirements.html#detailed-supported-distros

it seems ubuntu 18.04 is oldest tested ubuntu distro.

>
> Kind regards
>
> Daniel
>
> --
> bytes at work
> Technoparkstrasse 7
> CH-8406 Winterthur
> Switzerland
>
> phone: +41 52 550 50 67
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56358): https://lists.yoctoproject.org/g/yocto/message/56358
> Mute This Topic: https://lists.yoctoproject.org/mt/89531212/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

