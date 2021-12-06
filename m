Return-Path: <daniel@qtec.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9BCDC433F5
	for <webhook@archiver.kernel.org>; Mon,  6 Dec 2021 17:30:13 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web09.54630.1638811810954953170
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Dec 2021 09:30:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@qtec.com header.s=google header.b=LPD2kDDa;
 spf=pass (domain: qtec.com, ip: 209.85.208.181, mailfrom: daniel@qtec.com)
Received: by mail-lj1-f181.google.com with SMTP id k23so22450554lje.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 06 Dec 2021 09:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qtec.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6d8ULG7XO5aaCJlnt95FuErPdka+xxBS2zmiStJzGXU=;
        b=LPD2kDDavGEKqCs9B6TXkGX3AXDe3Z5MqV6I/L848OVd9EfnhglB/DsLE1EtIgQ69b
         urMogDMstZ2nCW24Mw8MLhBwMZvc6uyLIrH8P86kv1TP0hEoqGYBtt4i29lRZVU4L0y2
         6B/+y3KnC4pKaB8KskS40VfMjR+r45UxL/YsIdcOGldmwSccCsrUvujyJk2scyHWQGLZ
         WwU6eachdPwKLJiYD96DEl2F7VjvA/czlNMm74K5AsP3aNzmjxS14m+ySA/NOMvN3+Cg
         Zw1sEY6/WHQOMRxUsrMPznZjU+WZ/Ul+pUNbavWgf4aQ+gatvtCNm1hMkYLK26zPScyY
         n53A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6d8ULG7XO5aaCJlnt95FuErPdka+xxBS2zmiStJzGXU=;
        b=dgCXsmGXtpk6ybjEUFdK802cMP9ZuQSPleooOVBKEzX9aaykyGqor43A25e+ydGXi9
         uDvheYEw0dc2Dcn3AA/7h7UQmk0wQ5HiPJilaKpxH3FOAnux85oKWnDbOfZ7OMmJye/7
         EmS7oXxKqvz8K7vup1cDR7f8RV7ya0R1+rhZ0nbunqOgeLPex9Il8jjXWyFiAfQbKyVy
         ZukIvB4zVwySxHdn7T1gAwBhzCtoyaIXhy6BmLCSDGfzaUCdz1ApwQoyvNK7iKZUSQYQ
         WaqwMrm6WujYv3VDKwVUAZ1OIDjz6IOkpfikkYU0loF7Sx/MARKmHAtdB96IPI5ThemD
         JGEA==
X-Gm-Message-State: AOAM532RRxzkRzSZ7TkWvo+kX1kH3HL+LUV4yKq/nkKAnNDBIwpMgQ+0
	W8HA3KICr7XZE5vZHf7psv1gZ3Q3xH/Yp32D5ur4yw==
X-Google-Smtp-Source: 
 ABdhPJxS9rmj0SmQfmeZn5szECjzCiPgUbMoVNV5gMaxOnpPSz9eIhGnOQd0cyHKTMUi6NzLtylF6AOi3y5jWm9E84I=
X-Received: by 2002:a2e:9056:: with SMTP id n22mr7647266ljg.127.1638811808648;
 Mon, 06 Dec 2021 09:30:08 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAF1P4FEULketOK1DizcW5hmutF2HZdVyPZLhD4gh3cuiP31GAg@mail.gmail.com>
In-Reply-To: 
 <CAF1P4FEULketOK1DizcW5hmutF2HZdVyPZLhD4gh3cuiP31GAg@mail.gmail.com>
From: Daniel Gomez <daniel@qtec.com>
Date: Mon, 6 Dec 2021 18:29:57 +0100
Message-ID: 
 <CAH1Ww+Qus=b2eMN=S-ecwOaqJ=fkZviFid_1sZVDNJx6WEzu3g@mail.gmail.com>
Subject: Re: [yocto] Setting BUILDNAME to a string broke in 3.1.12
To: Henrik Riomar <henrik.riomar@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Dec 2021 17:30:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55485

Hi,

On Mon, 6 Dec 2021 at 17:40, Henrik Riomar <henrik.riomar@gmail.com> wrote:
>
> Hi,
>
> We set the BUILDNAME (via local.conf) variable to the output of "git
> describe --long --always" so this info ends up in /etc/version instead
> of a date. (i.e to know the exact source version of the code
> deployed on a target)
>
> This has worked fine for us up until 3.1.12, but now we just get a
> date (201803...) in /etc/version.
>
> Note that since switching to Dunfell we were forced to set
> BUILD_REPRODUCIBLE_BINARIES to 0, so the build system would not "mess
> up" /etc/version, but not even that helps now.
>
> What's the official way to get something more useful than a date (in
> the long past) in /etc/version?
We use build image-buildinfo class:
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#ref-classes-image-buildinfo

Just add INHERIT += "image-buildinfo" to your local.conf to get the build info.

Daniel

>
> Thanks,
>  Henrik
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55484): https://lists.yoctoproject.org/g/yocto/message/55484
> Mute This Topic: https://lists.yoctoproject.org/mt/87544009/1985121
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [daniel@qtec.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

