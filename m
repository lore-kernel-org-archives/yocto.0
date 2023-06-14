Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB558EB64D9
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 10:04:14 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.7936.1686737044771775623
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 03:04:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=nnuCfwH6;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2b34969e65fso5633731fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 03:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686737043; x=1689329043;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SrLJPwlieAmHuIPWnhFBDMMbAl4UcoxNwbae2++ZFCo=;
        b=nnuCfwH6dYblhokWNDQZbgWDEp5aGKPIXut3PECBhgtfC4rp0v6vpvD6i5roCQIMZ/
         keKIOMfQG0EIE33JaOsRjLwlkty9ZfiGMjEBA6d8Kv5q6XE/BDFFIMLNrOB//gkgUbHe
         sVbDvj54w3n2FewQlm+IjlyPk6Pl/dPcqXxB+MXQIUEFm/vrOLLSzy52BuDw1AOY9U2O
         +seHsNg29NxeuWrEVx//gbjxxhReeX2NqsJ5978nWO49w7LwQTVk3rAx+1bUg/blb0xL
         sEjyKYzMCRSb4mWhkaro5gtYeJJCIrp6pqtODO6cgJSLurKoihYyfDlsmYObPzCA8UbL
         jgwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686737043; x=1689329043;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SrLJPwlieAmHuIPWnhFBDMMbAl4UcoxNwbae2++ZFCo=;
        b=QO/XCMoqdLyQcFeZXjCkwCkGMnJkyqac/XRXmE6AHhAAIMRJRArzbNg6QWo0cZ0Cg4
         vFdqnb11I7FwSeytq3r+5UsYlJZjBrbMVBrTiaEuZWjAPbi7ypvv+x/1yHupSBiCbqE6
         jmjaDlQd0rHeGgzkFebPQNXcOAgOauel9lU3aETnwHfzT7vHWroSEblkmxjfx1pbIumW
         fWHaQ6m2n29uypzbhvcNTnAqpehQ/lEGi7udhrUC/4U0RyD/nBziumEEwHrUcZdQJDrK
         PT27kWZn4mQIYoekOcUygchYsS18u1j/5WD37x/cFZ3xV+9fXStxgeItlTx+SgkYuE1O
         /3aA==
X-Gm-Message-State: AC+VfDz+Q2bTUH4DZkIw6PrUP6blhaBK+PELS3PD77wejbnQ2+Kulez3
	4Ka4HUp7fm3OED9IjUVs7+ebYrs0/T5c1GpkNvw=
X-Google-Smtp-Source: ACHHUZ6aZSJgSNW1XeUPoMjYGRK1zy/B/FBiSXTordmbhndnuEGM5OA8RuW2cCyVuLoPFZx7t6IINO3Jv1pYsFeOIdk=
X-Received: by 2002:a2e:9dd9:0:b0:2b3:4581:4a2d with SMTP id
 x25-20020a2e9dd9000000b002b345814a2dmr1447413ljj.3.1686737042563; Wed, 14 Jun
 2023 03:04:02 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj88p-YF6jN+JxmPT3Pw=nmaC7OAZaUde4koK4sYCddfww@mail.gmail.com>
 <32579.1686736030692782839@lists.yoctoproject.org>
In-Reply-To: <32579.1686736030692782839@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 14 Jun 2023 12:03:51 +0200
Message-ID: <CANNYZj-v_hMs9y2tghhS9bH3Zu0PERXPqU9_LzdzhZQSYkH35A@mail.gmail.com>
Subject: Re: [yocto] Error while testing "core-image-base" through "bitbake
 core-image-base -c testimage -v" #dunfell
To: lavkhush2208@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004064a405fe14121f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 10:04:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60296

--0000000000004064a405fe14121f
Content-Type: text/plain; charset="UTF-8"

Using your own custom what? Can we see that please?

Alex

On Wed 14. Jun 2023 at 11.47, <lavkhush2208@gmail.com> wrote:

> I donot want testimage with qemu, i am using my own custom, automatically
> it is taking qemu, how can i stop qemu.
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60294):
> https://lists.yoctoproject.org/g/yocto/message/60294
> Mute This Topic: https://lists.yoctoproject.org/mt/99522880/1686489
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000004064a405fe14121f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Using your own custom what? Can we see that please?</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed 14. Jun 2023 =
at 11.47, &lt;<a href=3D"mailto:lavkhush2208@gmail.com">lavkhush2208@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-=
left:1ex;border-left-color:rgb(204,204,204)">I donot want testimage with qe=
mu, i am using my own custom, automatically it is taking qemu, how can i st=
op qemu.
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60294): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60294" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60294</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99522880/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/99522880/1686489</a><br>
Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/bitbake" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/bitbake</a><br>
Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/dunfell" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/dunfell</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000004064a405fe14121f--

