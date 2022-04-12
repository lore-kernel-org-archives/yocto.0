Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D236C3A59D
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:40 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web11.6127.1649729937782111677
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 19:18:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=krKROVGx;
 spf=pass (domain: gmail.com, ip: 209.85.208.53,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id w18so20634161edi.13
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 19:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=Y81F6KGgYOMBnZtPsltteFZrSVzDB2Peepa3hjqd/vA=;
        b=krKROVGxBBqZNEuF6S1xiLJstOIon1KvBZtknFOSVwapggLA/uM8DAbnAk2bMegSAy
         HVZpCEhUkvdGdhd6J95UPrx+Q8PghOM3EuPJCxbQf4hUSeVL6J58VjMUSke8hfzgVvWo
         9d7G40GGP4y7Duhs4ZrzhqP7tzM04S3NRSjsrA78l4njinJxHoL5A5U3Zq82yb5dHNwk
         i9kA2t9P0rrDdnnwJN9XMUWzzoyv9KDbgnzLVOZkwoqYb3cMMBzhjnASBLdrS5NU4Sup
         Hxt/NAePD8UEenls3D84yWXOJg9I0FC5b4a6gngyHAz0lM/00togifc03y29hEA9aSIr
         qv/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Y81F6KGgYOMBnZtPsltteFZrSVzDB2Peepa3hjqd/vA=;
        b=LMbhBetY/kKsWgdaPvgcPPhwhZjo4IIN3d6h3u7Yol4J1sCssaVD0DybJ61rD+zTZL
         2Wzspvdx4Nj+2Hd5P/m+B5icJW9cpa8nXjPzs3ckDUZCd92nMbisOoh8NOa8gloF83X+
         zUmPfHwitCOi9Jj/hlhKF5ieZd4YqifYaATA45AzkjI/XlBCZ4JGmIrUql0EuAqXR+cl
         iJEeJVoxDnxslhkWOOwJYZ4cxPkYK6aaO+gQaqm4J1om8ioQ735qOMAPB/ZNnF6P4J04
         wn20apaeYnYeWS/QHYpQne+KkcnPMXV8ehT+9jOw1ude5bv8mHR1OX46n+l0Fj1Ya+iN
         T9Cg==
X-Gm-Message-State: AOAM530W9s5L3Dypg0ioqwrQdNyb/vuAiR7uw6h3ZbY82/XlyoFNg6xs
	UuCyyTW7KI2bkkHluZ6bOp/LIOm8zwKC4o/xbguf2hZDy+sHeA==
X-Google-Smtp-Source: 
 ABdhPJxc7vYyTpqDWA+zSfxtamoazOwUewhBSwbip5FyisyzNdbB6QGbRr1dTHYIpByY5TKkFn/DKFgoZkspfzE7xQM=
X-Received: by 2002:a05:6402:5146:b0:415:fd95:6afa with SMTP id
 n6-20020a056402514600b00415fd956afamr36716912edd.200.1649729935784; Mon, 11
 Apr 2022 19:18:55 -0700 (PDT)
MIME-Version: 1.0
From: Joel Winarske <joel.winarske@gmail.com>
Date: Mon, 11 Apr 2022 19:18:44 -0700
Message-ID: 
 <CABKMkPJvygqaUs+e0RA4snPFrsKOQY-FD0BY2iRkQzBVoSXJsw@mail.gmail.com>
Subject: NPM support on Dunfell
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000cc3d7305dc6bae4e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56737

--000000000000cc3d7305dc6bae4e
Content-Type: text/plain; charset="UTF-8"

I'm seeing some gaps and performance issues.

Examples:
1. Setting NPM_INSTALL_DEV = "1" I am rewarded with:

169
<https://github.com/meta-flutter/meta-flutter/runs/5982719348?check_suite_focus=true#step:10:169>npm
ERR! Could not install from
"../../__w/meta-flutter/rpi4-drm-dunfell-latest/raspberrypi4-64/tmp/work/aarch64-poky-linux/webthings-gateway/1.0.0+gitAUTOINC+4c600fc973-r0/git/node_modules/@babel/compat-data"
as it does not contain a package.json file.
170
<https://github.com/meta-flutter/meta-flutter/runs/5982719348?check_suite_focus=true#step:10:170>

The upstream build uses equivalent to:
    npm --user root --cache "${NPM_CACHE}" ci
    ./node_modules/.bin/webpack
    npm --cache "${NPM_CACHE}" prune --production

2. Running npm_do_configure is taking 48+ minutes.  Granted it's a large
project, but basically the configure task is running uni-proc.

Who is the POC supporting NPM on Dunfell?

Thanks,
Joel

--000000000000cc3d7305dc6bae4e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m seeing some gaps and performance issues.<br><=
/div><div><br></div><div>Examples:</div><div>1. Setting NPM_INSTALL_DEV =3D=
 &quot;1&quot; I am rewarded with:</div><div><br></div><div><div style=3D"c=
olor:rgb(0,0,0);box-sizing:border-box"><div class=3D"gmail-js-check-step-li=
ne gmail-CheckStep-line gmail-d-flex gmail-log-line-plain" style=3D"box-siz=
ing:border-box;line-height:20px;display:flex"><a class=3D"gmail-CheckStep-l=
ine-number gmail-d-inline-block gmail-text-mono gmail-text-normal gmail-fle=
x-shrink-0" href=3D"https://github.com/meta-flutter/meta-flutter/runs/59827=
19348?check_suite_focus=3Dtrue#step:10:169" style=3D"box-sizing:border-box;=
text-decoration:none;width:48px;overflow:hidden;text-align:right;text-overf=
low:ellipsis;white-space:nowrap;font-family:ui-monospace,SFMono-Regular,&qu=
ot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot;,monospace;displ=
ay:inline-block">169</a><span class=3D"gmail-CheckStep-line-content gmail-d=
-inline-block gmail-flex-auto gmail-ml-3 gmail-js-check-line-content" style=
=3D"box-sizing:border-box;overflow-x:auto;white-space:pre-wrap;margin-left:=
16px;display:inline-block"><span class=3D"gmail-" style=3D"box-sizing:borde=
r-box">npm ERR! Could not install from &quot;../../__w/meta-flutter/rpi4-dr=
m-dunfell-latest/raspberrypi4-64/tmp/work/aarch64-poky-linux/webthings-gate=
way/1.0.0+gitAUTOINC+4c600fc973-r0/git/node_modules/@babel/compat-data&quot=
; as it does not contain a package.json file.
</span></span></div></div><div style=3D"color:rgb(0,0,0);box-sizing:border-=
box"><div class=3D"gmail-js-check-step-line gmail-CheckStep-line gmail-d-fl=
ex gmail-log-line-undefined" style=3D"box-sizing:border-box;line-height:20p=
x;font-family:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consola=
s,&quot;Liberation Mono&quot;,monospace;font-size:12px;display:flex"><a cla=
ss=3D"gmail-CheckStep-line-number gmail-d-inline-block gmail-text-mono gmai=
l-text-normal gmail-flex-shrink-0" href=3D"https://github.com/meta-flutter/=
meta-flutter/runs/5982719348?check_suite_focus=3Dtrue#step:10:170" style=3D=
"box-sizing:border-box;text-decoration:none;width:48px;overflow:hidden;text=
-align:right;text-overflow:ellipsis;white-space:nowrap;display:inline-block=
">170</a></div><br class=3D"gmail-Apple-interchange-newline"></div><div sty=
le=3D"color:rgb(0,0,0);box-sizing:border-box">The upstream build uses equiv=
alent to:</div><div style=3D"color:rgb(0,0,0);box-sizing:border-box">=C2=A0=
 =C2=A0 npm --user root --cache &quot;${NPM_CACHE}&quot; ci<br>=C2=A0 =C2=
=A0 ./node_modules/.bin/webpack<br>=C2=A0 =C2=A0 npm --cache &quot;${NPM_CA=
CHE}&quot; prune --production<br></div><div style=3D"color:rgb(0,0,0);box-s=
izing:border-box"><br></div>2. Running npm_do_configure is taking 48+ minut=
es.=C2=A0 Granted it&#39;s a large project, but basically the configure tas=
k is running uni-proc.</div><div><br></div><div>Who is the POC supporting N=
PM on Dunfell?<br></div><div><br></div><div>Thanks,</div><div>Joel</div></d=
iv>

--000000000000cc3d7305dc6bae4e--

