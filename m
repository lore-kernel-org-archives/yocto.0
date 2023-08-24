Return-Path: <karthik.poduval@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A672C3DA6F
	for <webhook@archiver.kernel.org>; Thu, 24 Aug 2023 07:50:14 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
 by mx.groups.io with SMTP id smtpd.web11.5917.1692863406219707975
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Aug 2023 00:50:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=dwrSupNj;
 spf=pass (domain: gmail.com, ip: 209.85.210.43, mailfrom: karthik.poduval@gmail.com)
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6bca857accbso4936761a34.0
        for <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 00:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692863405; x=1693468205;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iCvI2U4Cuwx2rYTnFhMuWjixuaJEc4gvSAgwkadTMUg=;
        b=dwrSupNjAeICbZExtDEoYgVnpMcpmfFe6/5oj/YN1srln3jVs03o8xsVkfeGrIwSjw
         usTvO5h6WDJHzaEvsYEZ7cJA9MehpsZXTswSlZ4HGuNQ1VWckOivO+yGyJWkSYYRbkYt
         sx76heUU81V7kYwdY4sK0S8+kAPy3snqOzay44dgyLkUjLx75y0UtebZ/51jot8pzyV0
         DWE4KoJlysHtJ+qt3+B/ZLkw5tSuNVvMF21/pzTqhDmNxeFyjRt7zP9h3b0BT5FN8htN
         wgwqotu3Tg6XUc6uzGmBVyRh5lovkaFLSM4gLpAeXJKmQ3r7zJdvBGv/nlBLi/X23QFF
         B2cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692863405; x=1693468205;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iCvI2U4Cuwx2rYTnFhMuWjixuaJEc4gvSAgwkadTMUg=;
        b=RwUAEY3zWvJp5lgoYzm2VuKgcMc1Id1jJOr0pKRBSqL3GVapfxY5rAuSzAStis7wIs
         u4VEotu6d2EwWnvMzxfAFGMGpDhE+dNrCeS49+10kyFEYFWqtqlPOf5emwObjJ8qx7/v
         B7dRUhu6Dex4eJh1pBofyMmKK7LyrJAp/v3V46cKkVkJthFCYmXTt6dzM0boLhadOHuk
         WpWLtG/6WplpvV2wnbOID6kgec0bWwN39FCuHwtCL2oGtzet/lVUwXn6NA8nLdJR3puP
         lS8KN9h9t217zsW4kRqg37QJB3608k1YOTiYjXNMq/eYES07mzGqoYhrY3DIswIYBDGE
         SXxw==
X-Gm-Message-State: AOJu0YxerB3CreRZfQ7NS3e8JvpVTIR1ovkNkB83JHMki7X+19ZD2ww3
	UT3goT+4VqwKl8ahDdzxUhWJiPntvMgx4X8Z0fU=
X-Google-Smtp-Source: AGHT+IFGDMmIQG0VYLPkJwsIKygwRf3OwAPMmCijrhF9B6dvKt0XPfxK47zkysllPzQhWl7fsaOYAL7p0CMU9dleUWE=
X-Received: by 2002:a05:6870:1810:b0:1b4:689b:209f with SMTP id
 t16-20020a056870181000b001b4689b209fmr16810606oaf.52.1692863405030; Thu, 24
 Aug 2023 00:50:05 -0700 (PDT)
MIME-Version: 1.0
References: <DfV4.1691194788292637127.95jM@lists.yoctoproject.org> <28551.1691251529288891578@lists.yoctoproject.org>
In-Reply-To: <28551.1691251529288891578@lists.yoctoproject.org>
From: Karthik Poduval <karthik.poduval@gmail.com>
Date: Thu, 24 Aug 2023 00:49:56 -0700
Message-ID: <CAFP0Ok-7EAb86axu68ETu69kdK9SP74suSKP8W0+9Ost2t2yyA@mail.gmail.com>
Subject: Re: [yocto] the way to create patch for Linux kernel configuration
To: Crane <crane2018@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e9023c0603a67981"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 07:50:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60876

--000000000000e9023c0603a67981
Content-Type: text/plain; charset="UTF-8"

You could try using SCC like linux-yocto recipe does it here.
https://git.yoctoproject.org/poky/plain/meta/recipes-kernel/linux/linux-yocto_6.1.bb

I have use this in the past to override bsp layer config and also add
patches in my own derived bsp layer.

--
Regards,
Karthik Poduval


On Sat, Aug 5, 2023, 9:05 AM Crane <crane2018@gmail.com> wrote:

> Finally found two ways to do this and worked in my case:
> 1. use bitbake -c diffconfig to create a fragment config and then add the
> fragment config to a .bbappend
> 2. add an out-of-tree defconfig in .bb
>     The documentation says out-of-tree defconfig takes precedence. But in
> my case KBUILD_DEFCONFIG is used and the out-of-tree defconfig is dropped.
>     No idea why. I have to use KBUILD_DEFCONFIG:remove to clear it.
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60717):
> https://lists.yoctoproject.org/g/yocto/message/60717
> Mute This Topic: https://lists.yoctoproject.org/mt/100557707/3618339
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> karthik.poduval@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000e9023c0603a67981
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">You could try using SCC like linux-yocto recipe does it h=
ere.<div dir=3D"auto"><a href=3D"https://git.yoctoproject.org/poky/plain/me=
ta/recipes-kernel/linux/linux-yocto_6.1.bb">https://git.yoctoproject.org/po=
ky/plain/meta/recipes-kernel/linux/linux-yocto_6.1.bb</a><br></div><div dir=
=3D"auto"><br></div><div dir=3D"auto">I have use this in the past to overri=
de bsp layer config and also add patches in my own derived bsp layer.</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">--</div><div dir=3D"auto">Reg=
ards,</div><div dir=3D"auto">Karthik Poduval=C2=A0</div><br><br><div class=
=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Sat,=
 Aug 5, 2023, 9:05 AM Crane &lt;<a href=3D"mailto:crane2018@gmail.com">cran=
e2018@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Fina=
lly found two ways to do this and worked in my case:<br>1. use bitbake -c d=
iffconfig to create a fragment config and then add the fragment config to a=
 .bbappend<br>2. add an out-of-tree defconfig in .bb<br>=C2=A0 =C2=A0 The d=
ocumentation says out-of-tree defconfig takes precedence. But in my case KB=
UILD_DEFCONFIG is used and the out-of-tree defconfig is dropped.=C2=A0<br>=
=C2=A0 =C2=A0 No idea why. I have to use KBUILD_DEFCONFIG:remove to clear i=
t.
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60717): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60717" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/60717</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/100557707/361=
8339" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/mt/100557707/3618339</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:karthik.poduval@gmail.com" target=3D"=
_blank" rel=3D"noreferrer">karthik.poduval@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000e9023c0603a67981--

