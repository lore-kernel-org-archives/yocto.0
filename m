Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DD94C433F5
	for <webhook@archiver.kernel.org>; Fri, 28 Jan 2022 17:38:02 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web11.1662.1643391481425044917
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 09:38:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KdsK8Hj4;
 spf=pass (domain: gmail.com, ip: 209.85.222.179,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id 13so6173678qkd.13
        for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 09:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lN2FtDvEOB0WT5QfQfqt3S6HASyKXjkKGEhedQqjjTU=;
        b=KdsK8Hj4oPPWvM6AKYIcQA9Z7Qm5ZlX9vY7V34fs5FL5/xE3QPAX02Y74T+MB1OPcE
         3YJwTr2CAijEdJrU08223GB+Hbd3HS2/4mu+3H6eec09c1izzVRL8dCukeJQ7NExIYpO
         N55TwOj1jl6gPXg3QmJJSoYtOSeAk+xW4oJ784RR/o53t/ZruFbipYZMGZ3hi+lAT2Kl
         4QNToRgKEFa81ddpz+J4G0WVymnL3aKmGuInK+bSjZjBFfYOLJaDPfZwwR+RNZq6Pk5d
         eT8N7dAQUWYsB3fnDQJQOREvqUpO78A4EYAWs6Kkw1L8fUzsy21oKJlXFXKUITbNACtB
         n2Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lN2FtDvEOB0WT5QfQfqt3S6HASyKXjkKGEhedQqjjTU=;
        b=W3MpMVuaOhZY2Y6ULNxDFmUUCMJRUJ9VZLyc2BmCq0IERInqnHavEGL/Gfx5tkL7vC
         IkXA0O2DJN+HAL1IPxTqNcQyWOS8coEc+6ALy161VYHfj0Akz5iiaeTgrkfiDQMWLBdB
         ooEr/4Et1IQuoasRPo8ELAUTl7TPAfX8W3G4iNxtYLQ5cPHtwBgU3HIk6OHjz75AIkgS
         lLIpDlWzjN0D1YkR+tJHQTnRwNQLjRa/6uXHXbMHJk4ImZEk9wbDbIZteRMXMm+NN9aS
         MTdn1DTJgaHbEIit5vSI7iRfQrPNkQUQYTT0mVdm6w3TKEtXO0Fmk0q5AAXFnT1sGV3G
         mFyQ==
X-Gm-Message-State: AOAM532R2noXijy46Aaeb6AzsCw4fdtKDJd6u3cd5Q9zfvVHfA5iGn4D
	A0ytX34XOks6R8WL6HZFsjewLjlCaB2Yy+1R1f3YZWOz9Sc=
X-Google-Smtp-Source: 
 ABdhPJzfHtSIA7AfUGGQsKGlSpYyf/SPrDW3w2EMDILba5f039tcNKwHu0HVqDx2CkJdp/edr7zXw1gdWDN1D5NqijE=
X-Received: by 2002:a05:620a:152b:: with SMTP id
 n11mr6443636qkk.463.1643391480447;
 Fri, 28 Jan 2022 09:38:00 -0800 (PST)
MIME-Version: 1.0
References: <uhQ4.1643181389477081324.P09X@lists.yoctoproject.org>
 <664d7ef6f28584b0d7310774ad48660437562589.camel@delisys.ch>
 <CADYjeSsxC=LzFMLGTZy1u4m_MfNsHJ3Nq3Y+zYwY_toJYZFhMg@mail.gmail.com>
 <79aff859cb334b3f83a8c5c16cea7bc8@vivavis.com>
In-Reply-To: <79aff859cb334b3f83a8c5c16cea7bc8@vivavis.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 28 Jan 2022 09:37:34 -0800
Message-ID: 
 <CAMKF1sp3rh9WFF6xinUcYocxui4d3qm4MshYWaK1xXW_y3jbVw@mail.gmail.com>
Subject: Re: [yocto] Fetch private gitlab repo using ssh with Yocto recipe
 #bitbake
To: VIVAVIS AG <embedded@vivavis.com>
Cc: Sourabh Hegde <hrsourabh011@gmail.com>,
 Nicolas Jeker <n.jeker@delisys.ch>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jan 2022 17:38:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56013

On Fri, Jan 28, 2022 at 2:27 AM VIVAVIS AG <embedded@vivavis.com> wrote:
>
> Hi,
>
> > Von: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> Im Auftrag von Sourabh Hegde
> > Gesendet: Freitag, 28. Januar 2022 10:47
> >
> > Can you please let me know how to "forward SSH_AGENT into it to be able
> > to fetch from internal projects without the need to mount the key into the container."? I never did that before.
>
> I use the following options within the Docker run command:
>   -v $SSH_AUTH_SOCK:/ssh.socket \
>   -e SSH_AUTH_SOCK=/ssh.socket \
>
> Furthermore, I had to mount the .ssh folder into the container to make it working (be aware of security risk).
> Additionally, you should check that uid, gid of the user in the container is the same on the host.
>

yeah something like that works, we use it for yoe which always uses
container to build
see

https://github.com/YoeDistro/yoe-distro/blob/master/envsetup.sh#L528-L541

> Regards,
>
> Carsten
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56008): https://lists.yoctoproject.org/g/yocto/message/56008
> Mute This Topic: https://lists.yoctoproject.org/mt/88691891/1997914
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

