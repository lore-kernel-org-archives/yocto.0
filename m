Return-Path: <yishai1999@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D0FFC46467
	for <webhook@archiver.kernel.org>; Tue, 10 Jan 2023 19:03:15 +0000 (UTC)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
 by mx.groups.io with SMTP id smtpd.web10.2204.1673377391054016436
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jan 2023 11:03:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nhyWjJv2;
 spf=pass (domain: gmail.com, ip: 209.85.160.46, mailfrom: yishai1999@gmail.com)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-15027746720so13079614fac.13
        for <yocto@lists.yoctoproject.org>; Tue, 10 Jan 2023 11:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kgaRe2o9RJ7yTJJWkVuCqL/YLUj4T5hiICuI2DYAhRE=;
        b=nhyWjJv26l5HaviaveL3CEZnvDVoKtfYdS05SjIXxzsDUTndR0zNqFnxnRtyVdYmfL
         K0dTFF0Wg9SwbgE9fxokiaG4Dl2XeewUs6Jy9ehmIvutD8OYMreW2St9nsN22JVKJwbH
         JhHrhHCbJ1hbv/z85edxqOr8p6beDtUjA4sATcTiXagB4O8KUy5W0+tMM6GVoHU4Rt9b
         ZSIMovBhvSHH1mPo2SjMHSipQf5zhoX80I55fW60iB4yXls8Jgx3YzlMsEcBSwBLuULC
         E6YA1u3Hz+ZVAfsUitvGUQoHYywIKMSGJA26fGaa3DXfOYa4y/szCxYZa8ozR+Z06kcP
         0N6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kgaRe2o9RJ7yTJJWkVuCqL/YLUj4T5hiICuI2DYAhRE=;
        b=Ck7zCtS0i7iIXKDrKJjC5Y1oJ5aycsPKvufD1lC6e3yIuPMyYYSkqdC9e2lw8aZsQq
         wPc0Egr9IpaDSjfom+Ql4DGy1qv2H1oqpJoV5e8wxTaQSwfmTYwuondhvIecqERPV1BY
         /o/P1nWvwTIz1ZeJc604QqYGhRV+UU4lw1X5xm59wOaz09DeX3/aETy/rRR1H7LYJgZb
         KYsZMi6H79J2L1WVsif1kkE9gBfCfyTHG6qKjy3aqkfokIpWNTEs0JaF7XCws3je2k6n
         9cn2bukv9pDpOg6pNqN0pF5aEHlVDC3lTMf2LWb+9KJgExaGZWzoMWx6/jxQzaRuBGHC
         YhpQ==
X-Gm-Message-State: AFqh2kqiSpL2YTaHLVU6Mfc8BsqagkvMsme6BRkRn2OyfP1LpXxp3mK1
	UXbF+LBVSBmWaebbKqkoTmfo3q2KTeKcVTfQ0/I=
X-Google-Smtp-Source: AMrXdXtj+qiLKym+5RQ1xjOqikmrzIn/H2CyEmdBjV8Vk3yt7x0spzoBxXN0j7iGhtL+ATWEcuFwBmlpRJpyPc/YsSo=
X-Received: by 2002:a05:6870:f818:b0:13c:45c8:ab01 with SMTP id
 fr24-20020a056870f81800b0013c45c8ab01mr6440604oab.189.1673377390086; Tue, 10
 Jan 2023 11:03:10 -0800 (PST)
MIME-Version: 1.0
References: <ebcbd116-7fd9-bb09-588e-c851139b33ea@bootlin.com>
In-Reply-To: <ebcbd116-7fd9-bb09-588e-c851139b33ea@bootlin.com>
From: Yishai Jaffe <yishai1999@gmail.com>
Date: Tue, 10 Jan 2023 21:02:57 +0200
Message-ID: <CAJw49vqM_amOPSNRdHV-emO3RN+=cUsHVsNuS_QCwYe1UhboMw@mail.gmail.com>
Subject: Re: [yocto] Can't find go-helloworld in my image
To: michael.opdenacker@bootlin.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e9523005f1ed88a1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jan 2023 19:03:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58962

--000000000000e9523005f1ed88a1
Content-Type: text/plain; charset="UTF-8"

Yishai Jaffe

On Tue, Jan 10, 2023, 7:48 PM Michael Opdenacker via lists.yoctoproject.org
<michael.opdenacker=bootlin.com@lists.yoctoproject.org> wrote:

> Greetings,
>
> Using Poky master, I added go-helloworld to my local.conf file:
> IMAGE_install:append = " go-helloworld"


> The variable you are trying to extend is called IMAGE_INSTALL, so I think
you meant to write:
IMAGE_INSTALL:append = " go-helloworld"



>
> ... to build the recipe on
>
> https://git.yoctoproject.org/poky/tree/meta/recipes-extended/go-examples/go-helloworld_0.1.bb
>
> I then built "core-image-minimal", but though it seemed that the recipe
> was built, I found no such binary in my image.
>
> What could be wrong?
> Thanks in advance
> Cheers
> Michael.
>
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58959):
> https://lists.yoctoproject.org/g/yocto/message/58959
> Mute This Topic: https://lists.yoctoproject.org/mt/96182550/7294075
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yishai1999@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000e9523005f1ed88a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div data-smartmail=3D"gmail_signature">Yish=
ai Jaffe </div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Tue, Jan 10, 2023, 7:48 PM Michael Opdenacker via <a href=3D"ht=
tp://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;michael.opdenac=
ker=3D<a href=3D"mailto:bootlin.com@lists.yoctoproject.org">bootlin.com@lis=
ts.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
Greetings,<br>
<br>
Using Poky master, I added go-helloworld to my local.conf file:<br>
IMAGE_install:append =3D &quot; go-helloworld&quot;</blockquote><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><br></blockquote><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"></block=
quote></div></div><div dir=3D"auto">The variable you are trying to extend i=
s called IMAGE_INSTALL, so I think you meant to write:</div><div dir=3D"aut=
o">IMAGE_INSTALL:append =3D &quot; go-helloworld&quot;</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gm=
ail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"></blockquote></div></div><div dir=
=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br></b=
lockquote></div></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">
<br>
... to build the recipe on <br>
<a href=3D"https://git.yoctoproject.org/poky/tree/meta/recipes-extended/go-=
examples/go-helloworld_0.1.bb" rel=3D"noreferrer noreferrer" target=3D"_bla=
nk">https://git.yoctoproject.org/poky/tree/meta/recipes-extended/go-example=
s/go-helloworld_0.1.bb</a><br>
<br>
I then built &quot;core-image-minimal&quot;, but though it seemed that the =
recipe <br>
was built, I found no such binary in my image.<br>
<br>
What could be wrong?<br>
Thanks in advance<br>
Cheers<br>
Michael.<br>
<br>
-- <br>
Michael Opdenacker, Bootlin<br>
Embedded Linux and Kernel engineering<br>
<a href=3D"https://bootlin.com" rel=3D"noreferrer noreferrer" target=3D"_bl=
ank">https://bootlin.com</a><br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58959): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58959" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/58959</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96182550/7294=
075" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/96182550/7294075</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:yishai1999@gmail.com" target=3D"_blan=
k" rel=3D"noreferrer">yishai1999@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div></div>

--000000000000e9523005f1ed88a1--

