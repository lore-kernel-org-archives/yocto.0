Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F9FCA5506
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 12:54:59 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.11469.1694696096592146609
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 05:54:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=UNmSN5L5;
 spf=pass (domain: gmail.com, ip: 209.85.128.51, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-404573e6c8fso6371985e9.1
        for <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 05:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694696095; x=1695300895; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Nl0mpEEQFoGXCwxdqqFX3eTHqqGuX3mnfgOVa0hEhNU=;
        b=UNmSN5L568ETsZhzwgKpIqLeSF6kTRycxf6Lyoy3gFzOCtCD6I/qXJrhZjInhzfrlf
         xf3FYM3G3VHMjr3ixJdVAGA3QUPT835UjBFS+hNsXRYINQkraivb7qbtoem+f1CZODOK
         JIiYObllBNOdDqfICu5XZAdDxfSDRWWo2+kPKGzz3h1Lit7ymS2TtCSOk90slCF53t55
         yNp93CaWC2n8qXzeQjgLKVDQvB87b4Q6/sLS0N5bWVfZUS0W9P+3juX5MJLfxbaVUA2j
         tYUzCQUrTZrXN+Va7jgqs3KrgPqFGmnhX7ItsUNi5VPWaVeY9iK9cFNeUEr8kbRwiw7A
         KmGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694696095; x=1695300895;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nl0mpEEQFoGXCwxdqqFX3eTHqqGuX3mnfgOVa0hEhNU=;
        b=tdPrlCVth2z7xu7mw2R/7suZuAqJjlkvtdkmLy1q4+QkcG7wizLLRof4r3xArfHg2C
         pplcpZZAXfQADK+ltpvGff9S/M/OBllCKRdQPWdUIyu/uXPokJGUIWYvqM0O+2YJALJ7
         HmObT+BfUFKoV4KWHtkMKo+8Qh25cfcUmY31f3MPm5B4UkcZdtWavYKGCHxUwCxWmeX3
         BlVfN/pwVgNKpM1nNgXKCS2iRWlldigpqLZhdEuz8AqeUdaDW3hkAEpfA/OKBrdR1Qq7
         ENrujvyRe871BlIxd5oCzSYIERyc9strOmyV3ROGdt9lWbgqDmNa6DjLC91jP9wmZWf0
         1ClQ==
X-Gm-Message-State: AOJu0YwUfvv02dlSKGvRmcUKI7+XEjG/Bdu8jMJrFJAdoyE2MhWmzPrl
	lvkxbuE2OC+3Na4o0lOT4QVogtZzVZiBz1fpkKQ=
X-Google-Smtp-Source: AGHT+IF5V17/xVj98tv6HXAAeZV1NuGmqgdFyuMYYMyPnhgwCP6hyAl+R+7vyrQQrqXmUgD382ZCZ6RdmObEo2jA21E=
X-Received: by 2002:a7b:c849:0:b0:3fe:e8b4:436f with SMTP id
 c9-20020a7bc849000000b003fee8b4436fmr4944960wml.14.1694696094812; Thu, 14 Sep
 2023 05:54:54 -0700 (PDT)
MIME-Version: 1.0
References: <AM9PR03MB70126259019EF2AD25999A2892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <CA+chaQefpv8V2gsmnk_DYfOCRstcp1985RNVTAdRu3hJki0x4Q@mail.gmail.com> <AM9PR03MB701228E6AE99AC15DA40AB7692F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
In-Reply-To: <AM9PR03MB701228E6AE99AC15DA40AB7692F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 14 Sep 2023 14:54:41 +0200
Message-ID: <CA+chaQe_wybQ6ww08hwvsCmLdC1aH86Ajto94A4YMv5oa3WHPQ@mail.gmail.com>
Subject: Re: [yocto] Errno=No space left on device
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000bbcd720605512eac"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 12:54:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61005

--000000000000bbcd720605512eac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 14, 2023 at 2:47=E2=80=AFPM Dave Hitchman <dave.hitchman@kymati=
.com>
wrote:

> Well using that enormous number worked... for the moment, until when it
> next stops. I still would like to know what the devil is being done in my
> system with that one build that is consuming such a crazy number of
> watches, what is being watched, why etc.
>

bitbake is open source, you can read what exactly it does here:
https://git.openembedded.org/bitbake/


> This is taking memory away from other things, maybe I do have a thumping
> great machine but just endlessly sucking bigger and bigger numbers of
> watches appears to me to be the wrong thing to be doing, not everyone can
> afford enough ram to store an encyclopedia britannicas worth of data abou=
t
> every grain of sand on the planet.
>

If you're afraid that number of watches will eat your thumping great
machine, then maybe you should avoid building software completely and use
that machine in toaster. Other things will eat a lot more ram, cpu and disk
once you pass the parsing phase.

The same question from 2019
https://www.yoctoproject.org/pipermail/yocto/2019-May/045221.html - you
don't need to copy encyclopedia or count grains of sand on the planet, you
can just google "yocto fs.inotify.max_user_watches" to find it.

>

--000000000000bbcd720605512eac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Sep 14, 2023 at 2:47=E2=80=AFPM D=
ave Hitchman &lt;<a href=3D"mailto:dave.hitchman@kymati.com">dave.hitchman@=
kymati.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div class=3D"msg-7773867045663100651"=
>




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Well using that enormous number worked... for the moment, until when it nex=
t stops. I still would like to know what the devil is being done in my syst=
em with that one build that is consuming such a crazy number of watches, wh=
at is being watched, why etc.</div></div></div></blockquote><div><br></div>=
<div>bitbake is open source, you can read what exactly it does here:</div><=
div><a href=3D"https://git.openembedded.org/bitbake/">https://git.openembed=
ded.org/bitbake/</a><br></div><div>=C2=A0</div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div class=3D"msg-7773867045663100651"><div dir=3D"lt=
r"><div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,C=
alibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">This
 is taking memory away from other things, maybe I do have a thumping great =
machine but just endlessly sucking bigger and bigger numbers of watches app=
ears to me to be the wrong thing to be doing, not everyone can afford enoug=
h ram to store an encyclopedia britannicas
 worth of data about every grain of sand on the planet.=C2=A0</div></div></=
div></blockquote><div><br></div><div>If you&#39;re afraid that number of wa=
tches will eat your thumping great machine, then maybe you should avoid bui=
lding software completely and use that machine in toaster. Other things wil=
l eat a lot more ram, cpu and disk once you pass the parsing phase.</div><d=
iv><br></div><div>The same question from 2019=C2=A0<a href=3D"https://www.y=
octoproject.org/pipermail/yocto/2019-May/045221.html">https://www.yoctoproj=
ect.org/pipermail/yocto/2019-May/045221.html</a> - you don&#39;t need to co=
py encyclopedia or count grains of sand on the planet, you can just google =
&quot;yocto=C2=A0fs.inotify.max_user_watches&quot; to find it.</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-77738670456631=
00651"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>
</div>
</div>
</div>
</div>

</div></blockquote></div></div>

--000000000000bbcd720605512eac--

