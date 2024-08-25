Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9430CC5321E
	for <webhook@archiver.kernel.org>; Sun, 25 Aug 2024 16:54:54 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.34951.1724604890648627018
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Aug 2024 09:54:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WaKjrLpX;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: martin.jansa@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2f4f505118fso24535571fa.3
        for <yocto@lists.yoctoproject.org>; Sun, 25 Aug 2024 09:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724604889; x=1725209689; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VW1ZiH/x5wKXnSVrVpn7vGMaYhJkljOz61Aya8ZcmcE=;
        b=WaKjrLpXBwGT6Iw0rRYN80ADzsQjiwwrTGd0voLob6JHsH1+xW8QCmz0k7CYoG6oHP
         2zwAdgQxz+wQWQoD1dW36XSNKX9n1NgI1lc2nC0Pr2KDshjXJ3wNtALqXOMXVuqgvFtC
         IP3CU8lVHjMBuF7vhZAzZBYJnq4NXB29qN9FQvbVNqSW9OGu0Hb18n9mpJpt5o3FjinO
         hB/SHKgYv+Jn1utSxhyLnYKKCnKWOBQIUqQWWvZbIVCAe3IrZYtbFh7bzEIy2dKcAQe4
         cgD5fYKiPsSQCrDf4mSTPZe3HjCCMQa7BFgvDEZdUQjVpUoW5YVghkiT603t9R4y4iiR
         lXpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724604889; x=1725209689;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VW1ZiH/x5wKXnSVrVpn7vGMaYhJkljOz61Aya8ZcmcE=;
        b=Ngi9UQZZ90d7UeHNhDEx3Yk63W87RJWRS6mnGBVNY0TvUTlaoWxR4tT5uOq3TySSf8
         su39rQamSNL8+0/eOmMrxCcERn5ouMLWvr+JQWaqx3quuPLYoFnQxS77VyPX15ixoyMY
         CGd241XRW9AZt7wm82BlspCbcR4bJcPTS3EbumGWglQ/YRKsnI6SQ1Go1Z2DtJP0MLsK
         xf4SbhP5i/PP/2lke2FNiGTbSVKRisnqJT1YsE79JCaJlGbGo6oXcSFC5RpR6be/bulN
         FskG23mAUMnhyNtX61V6ka4Q0rvzREOSXPIg5EyEa2eZNqoqRx8oC6I/MnOUTDjQWMZu
         +7Ug==
X-Gm-Message-State: AOJu0Yz2GzZv8V0jInejQFftayohzIxPXc89yo+hhbRRGXTcNlBpVIgu
	5So7CMAZv+vUkIBTSdgMHzyswpn5FzfrTxLtArIBKC1OoOw288mTIvsAXajp7GSPv6bciVcYPBu
	7dqfkVd6qXOSRpJm6rqJRjw8VXvHOR6Sg
X-Google-Smtp-Source: AGHT+IG4mGJRlHRrX3pSIPbKT2Tj4dIajuIwcYche02BRw2EBynGltQl+4UAUT26J6YRHmghbFkZPLIZ0Ip/Mu+ajCY=
X-Received: by 2002:a05:651c:2119:b0:2ee:d5c3:388b with SMTP id
 38308e7fff4ca-2f4f4927df9mr60359201fa.39.1724604887836; Sun, 25 Aug 2024
 09:54:47 -0700 (PDT)
MIME-Version: 1.0
References: <TahU.1724592361212592626.ihmJ@lists.yoctoproject.org>
In-Reply-To: <TahU.1724592361212592626.ihmJ@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 25 Aug 2024 18:54:20 +0200
Message-ID: <CA+chaQdd9c-NZxOUe2jUmfhkeEr6GmEGxKaSr=FuRXcx-vq1SA@mail.gmail.com>
Subject: Re: [yocto] fsbl recipe changed during migration from Zeus to
 Honister? #honister #zeus
To: yocto@lists.yoctoproject.org, haimbachar2008@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Aug 2024 16:54:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63741

Use git log to see the history in git, e.g. this:
https://git.yoctoproject.org/meta-xilinx/commit/?h=3Dnanbield&id=3D674d7ba0=
f675f92bea884165558ef080b58e39c5
should help you understand.

On Sun, Aug 25, 2024 at 3:26=E2=80=AFPM Haimbach via lists.yoctoproject.org
<haimbachar2008=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hello everyone,
>
> I've encounter a problem while try to append changes into FSBL recipe in =
the Honister distribution.
> Previously I've worked with Zeus distribution and successfully I was enab=
le to make changes to fsbl recipe via the fsbl_%.bbappend
>
> But now on the Honister I try to follow the same process, but during the =
build `bitbake fsbl` I got the next error:
> "Nothing provides fsbl recipe"
>
> While digging little bit more I found I should make the changes now to th=
e fsbl-firmawre_%.bbappend instead of the fsbl_%.bbappend
>
> someone can clarify this to me?
>
> Regards,
> Haim
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63740): https://lists.yoctoproject.org/g/yocto/messag=
e/63740
> Mute This Topic: https://lists.yoctoproject.org/mt/108087004/3617156
> Mute #honister:https://lists.yoctoproject.org/g/yocto/mutehashtag/honiste=
r
> Mute #zeus:https://lists.yoctoproject.org/g/yocto/mutehashtag/zeus
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

