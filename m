Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24872EDE9BF
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 12:46:19 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.11315.1694695577567416917
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 05:46:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=lPO4QrjW;
 spf=pass (domain: gmail.com, ip: 209.85.221.41, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-31c8321c48fso1347761f8f.1
        for <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 05:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694695576; x=1695300376; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JF7qWnQCH7qWRHaxENSzZyZKBXcMbu7/uDMVvnI5q+8=;
        b=lPO4QrjWRBniGHU5jAPtTFtCs3lZ36uJgIdqZN12Wi+lUVp/BilE6GmylT0RwLAwDf
         dJs8quI8YxbDqh20bE+CX6D/cj0GO1c7OUc1dQs724bBKKzy9pGbxsy1nRUhhTBA65/y
         UnjTS57jqJpLgyFsTTenRvPnkzCN0CFLGsPiDvAlsLUdcpC7L0ItxEjcViSq8IK/UJpH
         l4Hfxx+l6gj0SQrPzkdu6FcgdbixZQ5bL3H3qGqBN6QnA2KX1/atbk0+O4V0pPtQdCLC
         0LfyMiu+kh4h37HPntdrGvUbrOBwW+VMxnXMM6GARdP/hYdXeSQPWy0t+oOeRSqKe00C
         k14Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694695576; x=1695300376;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JF7qWnQCH7qWRHaxENSzZyZKBXcMbu7/uDMVvnI5q+8=;
        b=RiH9EVbaBdwE+EB3aMwl8uB9cVoNiHmuOXuQCxFIlb/uZ8Tl9nqBZmhWCTHFVhGUT+
         T2sqj1tAHt4TEXg/VPaedXpJDm0wb5wfv351m4DsiU3WefndCHNE9u9jbv6Kv++RP8DO
         h9RSqROgpZnMR5uVGu0T+57CSeOCjjwkaq8vF91fUxQp47TKv9O18AZOgBeq3f8k+Hqh
         qcHI/Ryiio1H2VRGSfOfF2mIK39COBiqsXjyEOPWDFun+RasrSmcbzWO/s4jOcwY1n/o
         lwA9vX61u4miIy/fvJaUPXzmtRDK3Igq7kfLF7aESV/O9psJLsDqm6oUQ5PFqZPSRV9p
         B0KA==
X-Gm-Message-State: AOJu0Yz3zCtOk53X81XzYaP4gPUaw59xJ89pKay9c5OuUK2ACfWtQCff
	nwQs9fyDQiOuIHkENxqat8SxV3Q1/28PKLuSPGk=
X-Google-Smtp-Source: AGHT+IH7uyccB4lyyng6t+RfoDQY2Fa3ylV42hgqEIdeviB6I0+zZyAYmZrHJUY1QlFZhpCj4Q18bJ2XM1p1ZzPW7PU=
X-Received: by 2002:adf:e483:0:b0:317:59ea:1c6b with SMTP id
 i3-20020adfe483000000b0031759ea1c6bmr990048wrm.35.1694695575624; Thu, 14 Sep
 2023 05:46:15 -0700 (PDT)
MIME-Version: 1.0
References: <AM9PR03MB70126259019EF2AD25999A2892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <CA+chaQefpv8V2gsmnk_DYfOCRstcp1985RNVTAdRu3hJki0x4Q@mail.gmail.com> <AM9PR03MB7012488D10FE95C6F4D12AA892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
In-Reply-To: <AM9PR03MB7012488D10FE95C6F4D12AA892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 14 Sep 2023 14:46:02 +0200
Message-ID: <CA+chaQdRXYCW0wdKJcCTZDkzU5u1QG49L-Gh6yL41ZDUXhvLiA@mail.gmail.com>
Subject: Re: [yocto] Errno=No space left on device
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c9a31d0605510f11"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 12:46:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61002

--000000000000c9a31d0605510f11
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 14, 2023 at 2:35=E2=80=AFPM Dave Hitchman <dave.hitchman@kymati=
.com>
wrote:

> Does anyone know what IS enough?
>

Depends on how big your metadata layers are, so there isn't single value
which would suite everybody. But 1M works for me even for very big builds,
so it should be big enough for you as well (for whatever PHYTEC is doing).


> Watching the video series around
> https://www.youtube.com/watch?v=3DbTEdfwtPtNY he doesnt mention changing
> this size. I dont actually know what this watch manager thing is supposed
> to be doing, there is one command prompt doing one thing, I cant believe
> that it would need that many things being watched? What is it even watchi=
ng
> for?
>

It's watching for changes in metadata, which is a lot of files.


------------------------------
> *From:* Martin Jansa <martin.jansa@gmail.com>
> *Sent:* 14 September 2023 14:17
> *To:* Dave Hitchman <dave.hitchman@kymati.com>
> *Cc:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] Errno=3DNo space left on device
>
> On Thu, Sep 14, 2023 at 2:07=E2=80=AFPM Dave Hitchman <dave.hitchman@kyma=
ti.com>
> wrote:
>
> ERROR: No space left on device or exceeds fs.inotify.max_user_watches?
> ERROR: To check max_user_watches: sysctl -n fs.inotify.max_user_watches.
> ERROR: To modify max_user_watches: sysctl -n -w
> fs.inotify.max_user_watches=3D<value>.
>
>
>
> pyinotify.WatchManagerError: add_watch: cannot watch
> /home/dave/Documents/Kymati/yocto/build/conf WD=3D-1, Errno=3DNo space le=
ft on
> device (ENOSPC)
>
> dave@dave-TUXEDO-Aura-15-Gen1:~/Documents/Kymati/yocto/build$ sysctl -n
> fs.inotify.max_user_watches
> 65536
>
> What IS the actual problem and how is it actually fixed? I cant be the
> only person facing this surely?
>
>
> Have you tried to increase fs.inotify.max_user_watches as the error says?
>
> $ sysctl -n fs.inotify.max_user_watches
> 1048576
>
> 64K might not be enough.
>

--000000000000c9a31d0605510f11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Sep 14, 2023 at 2:35=E2=80=AFPM D=
ave Hitchman &lt;<a href=3D"mailto:dave.hitchman@kymati.com">dave.hitchman@=
kymati.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div class=3D"msg-4919416456226241996"=
>




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Does anyone know what IS enough?</div></div></div></blockquote><div><br></d=
iv><div>Depends on how big your metadata layers are, so there isn&#39;t sin=
gle value which would suite everybody. But 1M works for me even for very bi=
g builds, so it should be big enough for you as well (for whatever=C2=A0PHY=
TEC is doing).</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div class=3D"msg-4919416456226241996"><div dir=3D"ltr"><div st=
yle=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Hel=
vetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"> Watching the video seri=
es around=C2=A0<a href=3D"https://www.youtube.com/watch?v=3DbTEdfwtPtNY" id=
=3D"m_-4919416456226241996LPlnk606127" target=3D"_blank">https://www.youtub=
e.com/watch?v=3DbTEdfwtPtNY</a>=C2=A0he doesnt mention changing this size. =
I dont actually know what this watch
 manager thing is supposed to be doing, there is one command prompt doing o=
ne thing, I cant believe that it would need that many things being watched?=
 What is it even watching for?</div></div></div></blockquote><div><br></div=
><div>It&#39;s watching for changes in metadata, which is a lot of files.</=
div><div>=C2=A0<br></div><div><br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div class=3D"msg-4919416456226241996"><div dir=3D"ltr">
<div id=3D"m_-4919416456226241996appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-4919416456226241996divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b>=
 Martin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blan=
k">martin.jansa@gmail.com</a>&gt;<br>
<b>Sent:</b> 14 September 2023 14:17<br>
<b>To:</b> Dave Hitchman &lt;<a href=3D"mailto:dave.hitchman@kymati.com" ta=
rget=3D"_blank">dave.hitchman@kymati.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] Errno=3DNo space left on device</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Thu, Sep 14, 2023 at 2:07=E2=80=AFPM Dave Hitchman &lt;=
<a href=3D"mailto:dave.hitchman@kymati.com" target=3D"_blank">dave.hitchman=
@kymati.com</a>&gt; wrote:<br>
</div>
<div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div>ERROR: No space left on device or exceeds fs.inotify.max_user_watches?=
<br>
</div>
<div>ERROR: To check max_user_watches: sysctl -n fs.inotify.max_user_watche=
s.</div>
<div>ERROR: To modify max_user_watches: sysctl -n -w fs.inotify.max_user_wa=
tches=3D&lt;value&gt;.</div>
<div></div>
</div>
</div>
</blockquote>
<div>=C2=A0</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div>pyinotify.WatchManagerError: add_watch: cannot watch /home/dave/Docume=
nts/Kymati/yocto/build/conf WD=3D-1, Errno=3DNo space left on device (ENOSP=
C)<br>
</div>
<div><br>
</div>
<div>dave@dave-TUXEDO-Aura-15-Gen1:~/Documents/Kymati/yocto/build$ sysctl -=
n fs.inotify.max_user_watches</div>
<div>65536</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
What IS the actual problem and how is it actually fixed? I cant be the only=
 person facing this surely?</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Have you tried to increase fs.inotify.max_user_watches as the error sa=
ys?</div>
<div><br>
</div>
<div>$ sysctl -n fs.inotify.max_user_watches<br>
1048576<br>
</div>
<div><br>
</div>
<div>64K might not be enough.</div>
</div>
</div>
</div>
</div>

</div></blockquote></div></div>

--000000000000c9a31d0605510f11--

