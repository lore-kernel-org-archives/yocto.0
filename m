Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B843AC433FE
	for <webhook@archiver.kernel.org>; Mon, 21 Nov 2022 16:45:58 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.44058.1669049151420910919
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Nov 2022 08:45:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZBMihlKM;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id s24so15097539ljs.11
        for <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 08:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZhRLc6fiwOv7sAJWwXdSfcBlhCUQv3ZLnERtCkUTs4k=;
        b=ZBMihlKM8yhJqATPF3qlC4KvTPy4AXsqBgBYjdlpmP0kS90fhENT8irIYJvIyuOvkI
         ydNGJhiJ+MQf69PgFt6fGeXBwsPJGAjnV55XTA+fA5chWVGKOvTi+DL+2x3Y7CEGbPWu
         ASOTGHFIckmPArJKJ1cf7Ez4it4FOJCPAFYD9bitToapYFTmUbYeZ8ULERByl9NEF1D3
         JQTAdDTWFHlEgfIu1Lm/7RdF6aY2Zi+JGm1QO3UAIH6HOR9kDpn9H5jo9W0sZ3x7HX14
         Ubb8QtTy3A+eqCoy851Tt7ifFktAl5BzGKKk3TLsvAxFgxaR181UNLpk/05//aLgQQ68
         UpEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZhRLc6fiwOv7sAJWwXdSfcBlhCUQv3ZLnERtCkUTs4k=;
        b=FMrswg6jcwPVuwcS7vQ+jPdy7KhEaScaxveJzYl+vvDml+6lwNqFMBHpZyTpNeWrHP
         GMPb8lQ79bxeoHvZgVOiPPsPzr2M6biR9g7tKggdvAZOUQDxnW/Z/d3XVx/HobDIHYEE
         gdTx3Gsb/bB68XR49jqrV/N4SdGcdTJcCOxfP7jP4MWryvVh28B2tyECt9spHSKbywPP
         3BQWRsKxhLO1F+wRC3POFRZWtS1ZmEQh4BfqzXCFGWip/Qn/FT4AaAU263hmEjWZoqlv
         IbtYKBNCxXAPsyirUYHiSdtQlAwMSYgiYre75IZDOzocrYfVbmYj9SOVRLA+TXt5pgnq
         DpGA==
X-Gm-Message-State: ANoB5pnOCYQS74FcnvYu8sDxWxV0xc8cT1Jxxe0hW7ieSLwK/KvZrsgD
	HSM2dnGaFB+zN7WF3k4Qmcr3+L1d1toDYO3B8+w=
X-Google-Smtp-Source: AA0mqf7P+GRe1wfeAPFd5WEmrEtjMZaRH2UHzc6Y79ch4H5o5ogcG3L5R/CFHsIHmrHJBnKiGumYETY4sjw1oFgEe2s=
X-Received: by 2002:a05:651c:c8f:b0:26d:d196:d04 with SMTP id
 bz15-20020a05651c0c8f00b0026dd1960d04mr6420263ljb.403.1669049149023; Mon, 21
 Nov 2022 08:45:49 -0800 (PST)
MIME-Version: 1.0
References: <4cca945b-8514-0524-aeb1-33a7606a60ae@gmail.com> <26677.1669046870894552681@lists.yoctoproject.org>
In-Reply-To: <26677.1669046870894552681@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 21 Nov 2022 17:45:38 +0100
Message-ID: <CANNYZj86L6OzctJFVUABRXauP8BcuFK9QxnL0pbC5D46vFB2EQ@mail.gmail.com>
Subject: Re: [yocto] Reproducible builds not working with musl?
To: Kenth Eriksson <kenth.eriksson@infinera.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a400aa05edfdc9a0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 16:45:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58605

--000000000000a400aa05edfdc9a0
Content-Type: text/plain; charset="UTF-8"

You have to find them yourself with gut bisect I would say. Too many things
have changed.

Alex

On Mon 21. Nov 2022 at 17.07, Kenth Eriksson <kenth.eriksson@infinera.com>
wrote:

> I see. Any particular fixes you can point me to that may be relevant also
> for musl?
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58604):
> https://lists.yoctoproject.org/g/yocto/message/58604
> Mute This Topic: https://lists.yoctoproject.org/mt/95172718/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000a400aa05edfdc9a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">You have to find them yourself with gut bisect I would sa=
y. Too many things have changed.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Mon 21. Nov 2022 at 17.07, Kenth Eriksson &lt;<a href=
=3D"mailto:kenth.eriksson@infinera.com">kenth.eriksson@infinera.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;bo=
rder-left-color:rgb(204,204,204)">I see. Any particular fixes you can point=
 me to that may be relevant also for musl?
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58604): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58604" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58604</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95172718/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/95172718/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000a400aa05edfdc9a0--

