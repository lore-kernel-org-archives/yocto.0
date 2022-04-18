Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69507C4167B
	for <webhook@archiver.kernel.org>; Tue, 19 Apr 2022 02:46:34 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web08.1932.1650316896042054021
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Apr 2022 14:21:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dcnit6Ga;
 spf=pass (domain: gmail.com, ip: 209.85.208.41,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id c64so18848810edf.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 18 Apr 2022 14:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=3MI5ljguUrhW5O7zS1jgfRcBzLGh01JaDnAabkk7wg8=;
        b=dcnit6GaYh2yodRWNlWQhqPUZnt0IrQLnSDD79iwyrFDWSLpepE/uo0yw9jpIG60ZD
         JnUvJmweE4gjI1LMO1T50V3SGv2sjMFBMrBOPL6ak96Ga3nrfP2p1zdk/JO6Y5SG7gaw
         EUA1BCSs/g8eH5OYkjgoktAab0YEZBhnMnfjRo5lLengYuLtGiS+v5zZR/kpzDJoPrRI
         7xjUUGel2i728G6eHFmJwD+DTOpx2qS9tKa+kMwBSh3zfN3ZyqkRIdYl4nNqCK4syFSa
         1DXKZU8eJKMF01paY42T3VH23oDb0OK2ozhtyDbkxQiKMdp+2pOO8sPtdOpXWJGaXlTI
         curg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=3MI5ljguUrhW5O7zS1jgfRcBzLGh01JaDnAabkk7wg8=;
        b=aHZgxPsycVuWT8kU2eS3Ct5kFnLXWsvBj/R+PBpd+fhNwab5pxzLYH7HS1uDQR1wM5
         UujyUS1Q2EQgFXS7VV6/2pa5R6MjFivbwCixR2mQXYz+gIiViHaKugzGlU+/igcrhJ9u
         eKeZ6h36buzouLEPtK3kM1/33RFRfp0F9zN8klwkwJunm64oH/6RujTIIXsopetRt0yY
         u1cPCOfdR6eW70qEl/Ru1uFmfH/zbMH9R69ewCiXx31lqyt5OSwdhYC7laqWYalWEVJ7
         GMKtwijf7Q7c0noE52KJDlmwLHXeaY64jJNVruo9MKJ5COpInbYEHal8Q1ZP5B9tXAA3
         Gq7Q==
X-Gm-Message-State: AOAM531TOoXf1g+GA0AYaEd4KzGz40D7+ZHllniOCvldfydHOGHsM6fI
	xfWe9Iv0SdzLmA49VVHt/7sQjB2qMHZCxVo5gsfergBtm6Gx9g==
X-Google-Smtp-Source: 
 ABdhPJyo3x9BwfJkEXxUP/0b2j04pCnzOISxHpyGjl4KPXVLyQSXSzNN1zPIpY+Lvi3Pkv0h3mjWbrhccUbQwraLF6w=
X-Received: by 2002:aa7:c04e:0:b0:400:4daf:bab1 with SMTP id
 k14-20020aa7c04e000000b004004dafbab1mr13795086edo.101.1650316894072; Mon, 18
 Apr 2022 14:21:34 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CABKMkPJvygqaUs+e0RA4snPFrsKOQY-FD0BY2iRkQzBVoSXJsw@mail.gmail.com>
In-Reply-To: 
 <CABKMkPJvygqaUs+e0RA4snPFrsKOQY-FD0BY2iRkQzBVoSXJsw@mail.gmail.com>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Mon, 18 Apr 2022 14:21:23 -0700
Message-ID: 
 <CABKMkP+z2PCE7-PzofSS9b38LggFFpo_oCu73V-EEQwHM-Tc0Q@mail.gmail.com>
Subject: Re: NPM support on Dunfell
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003cf20705dcf45805"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Apr 2022 02:46:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56804

--0000000000003cf20705dcf45805
Content-Type: text/plain; charset="UTF-8"

The takeaways using inherit npm:

1. Does not support 'scoped packages'

2. fetching is not multi-threaded.  A NPM based recipe will run uni-proc
with a considerable amount of overhead; each package is pulled and cached
independently.  Whereas "npm install" or "npm ci" runs multi-threaded.

For my use case I used base.bbclass, and implemented it all manually.  The
downside with this approach is there is no long term support via DL_DIR.

A reference for others that might hit this:
https://github.com/meta-webthings/meta-webthings/blob/dunfell/recipes/webthings-gateway/webthings-gateway_git.bb

Cheers,
Joel


On Mon, Apr 11, 2022 at 7:18 PM Joel Winarske <joel.winarske@gmail.com>
wrote:

> I'm seeing some gaps and performance issues.
>
> Examples:
> 1. Setting NPM_INSTALL_DEV = "1" I am rewarded with:
>
> 169
> <https://github.com/meta-flutter/meta-flutter/runs/5982719348?check_suite_focus=true#step:10:169>npm
> ERR! Could not install from
> "../../__w/meta-flutter/rpi4-drm-dunfell-latest/raspberrypi4-64/tmp/work/aarch64-poky-linux/webthings-gateway/1.0.0+gitAUTOINC+4c600fc973-r0/git/node_modules/@babel/compat-data"
> as it does not contain a package.json file.
> 170
> <https://github.com/meta-flutter/meta-flutter/runs/5982719348?check_suite_focus=true#step:10:170>
>
> The upstream build uses equivalent to:
>     npm --user root --cache "${NPM_CACHE}" ci
>     ./node_modules/.bin/webpack
>     npm --cache "${NPM_CACHE}" prune --production
>
> 2. Running npm_do_configure is taking 48+ minutes.  Granted it's a large
> project, but basically the configure task is running uni-proc.
>
> Who is the POC supporting NPM on Dunfell?
>
> Thanks,
> Joel
>

--0000000000003cf20705dcf45805
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The takeaways=C2=A0using inherit npm:<div><br></div><div>1=
. Does not support &#39;scoped packages&#39;<br><br>2. fetching is not mult=
i-threaded.=C2=A0 A NPM based recipe will run uni-proc with a considerable =
amount of overhead; each package is pulled and cached independently.=C2=A0 =
Whereas &quot;npm install&quot; or &quot;npm ci&quot; runs multi-threaded.<=
br></div><div><br></div><div>For my use case I used base.bbclass, and imple=
mented it all manually.=C2=A0 The downside with this approach is there is n=
o long term support via DL_DIR.</div><div><br></div><div>A reference for ot=
hers that might hit this:</div><div><a href=3D"https://github.com/meta-webt=
hings/meta-webthings/blob/dunfell/recipes/webthings-gateway/webthings-gatew=
ay_git.bb">https://github.com/meta-webthings/meta-webthings/blob/dunfell/re=
cipes/webthings-gateway/webthings-gateway_git.bb</a><br></div><div><br></di=
v><div>Cheers,</div><div>Joel</div><div><br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 11, 2022 at 7=
:18 PM Joel Winarske &lt;<a href=3D"mailto:joel.winarske@gmail.com">joel.wi=
narske@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:s=
olid;border-left-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div>I&#39;m seeing some gaps and performance issues.<br></div><div><br></d=
iv><div>Examples:</div><div>1. Setting NPM_INSTALL_DEV =3D &quot;1&quot; I =
am rewarded with:</div><div><br></div><div><div style=3D"color:rgb(0,0,0);b=
ox-sizing:border-box"><div style=3D"box-sizing:border-box;line-height:20px;=
display:flex"><a href=3D"https://github.com/meta-flutter/meta-flutter/runs/=
5982719348?check_suite_focus=3Dtrue#step:10:169" style=3D"box-sizing:border=
-box;text-decoration:none;width:48px;overflow:hidden;text-align:right;text-=
overflow:ellipsis;white-space:nowrap;font-family:ui-monospace,SFMono-Regula=
r,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot;,monospace;=
display:inline-block" target=3D"_blank">169</a><span style=3D"box-sizing:bo=
rder-box;overflow-x:auto;white-space:pre-wrap;margin-left:16px;display:inli=
ne-block"><span style=3D"box-sizing:border-box">npm ERR! Could not install =
from &quot;../../__w/meta-flutter/rpi4-drm-dunfell-latest/raspberrypi4-64/t=
mp/work/aarch64-poky-linux/webthings-gateway/1.0.0+gitAUTOINC+4c600fc973-r0=
/git/node_modules/@babel/compat-data&quot; as it does not contain a package=
.json file.
</span></span></div></div><div style=3D"color:rgb(0,0,0);box-sizing:border-=
box"><div style=3D"box-sizing:border-box;line-height:20px;font-family:ui-mo=
nospace,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation =
Mono&quot;,monospace;font-size:12px;display:flex"><a href=3D"https://github=
.com/meta-flutter/meta-flutter/runs/5982719348?check_suite_focus=3Dtrue#ste=
p:10:170" style=3D"box-sizing:border-box;text-decoration:none;width:48px;ov=
erflow:hidden;text-align:right;text-overflow:ellipsis;white-space:nowrap;di=
splay:inline-block" target=3D"_blank">170</a></div><br></div><div style=3D"=
color:rgb(0,0,0);box-sizing:border-box">The upstream build uses equivalent =
to:</div><div style=3D"color:rgb(0,0,0);box-sizing:border-box">=C2=A0 =C2=
=A0 npm --user root --cache &quot;${NPM_CACHE}&quot; ci<br>=C2=A0 =C2=A0 ./=
node_modules/.bin/webpack<br>=C2=A0 =C2=A0 npm --cache &quot;${NPM_CACHE}&q=
uot; prune --production<br></div><div style=3D"color:rgb(0,0,0);box-sizing:=
border-box"><br></div>2. Running npm_do_configure is taking 48+ minutes.=C2=
=A0 Granted it&#39;s a large project, but basically the configure task is r=
unning uni-proc.</div><div><br></div><div>Who is the POC supporting NPM on =
Dunfell?<br></div><div><br></div><div>Thanks,</div><div>Joel</div></div>
</blockquote></div>

--0000000000003cf20705dcf45805--

