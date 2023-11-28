Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41C6CC07CA9
	for <webhook@archiver.kernel.org>; Tue, 28 Nov 2023 06:06:44 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web10.26789.1701151602099792577
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Nov 2023 22:06:42 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: fede.evol@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-54ba30784ecso479835a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 27 Nov 2023 22:06:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701151600; x=1701756400;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ryUxOw6STE61HvLNlvMmftgQlDyGXn1XpcsaYCoNvwE=;
        b=wvkonII0EqYwWG9ELZ86u2HXb9aiVLESb01ARpoWIdZa8EwiYBCDjv8S4FT4iyEwqj
         LbZjvHiWHx32uBSIrUNnkAl1IcXS+bn0PtKGFSlRyes8yR0k+O+wOarYiazRtZ718zsg
         RoujGSaviHpm4BHveCTEW7n1evmqlaihyhniJuluIZj9cD8d1shM20dgx1sAU4UC67Di
         xAvNoKuO8P9eZEL44DCsHuWzzk2dUz4aVqfLCpVTWs8/w+p0SiFFIQQxTVoNOd7LkCQC
         2O0MzDY06hthw4ngyS23yLpopkNXem7JlTDCaZcuiRKqfwReZHv3q94PD2p1KC9Z1JDl
         6Tgw==
X-Gm-Message-State: AOJu0YwXTNHYzJsSX4Em+O+POUHOr8j+Kc7WtLHF+oEwBzcw9CoRFeIX
	sfUwVJ5NnNNoBq2XzuotfRPyffzbeaR534HEdpk=
X-Google-Smtp-Source: AGHT+IEZDB1lPgbBo52Y4BLZj8DdpCkQx3F++nwfI9l4qK3dIGbKnQmVjt6+9dmlJkS4KE15WZo58JY+ukMNYYLSp5M=
X-Received: by 2002:a17:906:29d4:b0:9fa:caf3:fb17 with SMTP id
 y20-20020a17090629d400b009facaf3fb17mr10351423eje.51.1701151600263; Mon, 27
 Nov 2023 22:06:40 -0800 (PST)
MIME-Version: 1.0
References: <UQTS.1701151253143685515.Msu1@lists.yoctoproject.org>
In-Reply-To: <UQTS.1701151253143685515.Msu1@lists.yoctoproject.org>
From: Federico Pellegrin <fede@evolware.org>
Date: Tue, 28 Nov 2023 07:06:29 +0100
Message-ID: <CAM6O0Zjb=wciAJQsVr+pswqn=OYD1__9YynrqFaOdKTWuzs6xQ@mail.gmail.com>
Subject: Re: [yocto] TI AM62x based EV charger platform with Pionix UI s/w
 Image build problem. #apt #bitbake #distro #poky
To: sairajlp99@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d7c67f060b30389a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Nov 2023 06:06:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61765

--000000000000d7c67f060b30389a
Content-Type: text/plain; charset="UTF-8"

Hi,
nodejs is very, *very*, heavy to build due to it's complex C++ code. I
would suggest you to limit the number of parallel builds supported: this
may slow down other (lighter) builds but will avoid going out of memory for
heavy ones such as node.

This can be done by putting in your local configuration
(build/conf/local.conf or replace "build" with your build directory)
directives like:

BB_NUMBER_THREADS = '4'
PARALLEL_MAKE = '-j 4'

(this limits to 4, you can play on this depending on number of cores and
amount of RAM of course)

hth,
Federico


Il giorno mar 28 nov 2023 alle ore 07:00 <sairajlp99@gmail.com> ha scritto:

> Hi team,
>
>
> we are trying to build TI AM62x EVSE SDK referring to
> https://github.com/PionixPublic/ti-am62x-evse-sdk  we have tried building
> in virtual machine and now we are trying to build in Linux  host pc with
> 500gb of storage and 16gb ram but still bitbake runs till 99 percentage
>   and last module Nodejs takes forever to run system experiences a freeze.
> Tried multiple times running the bitbake but still problem remains same .
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61764):
> https://lists.yoctoproject.org/g/yocto/message/61764
> Mute This Topic: https://lists.yoctoproject.org/mt/102846254/5117409
> Mute #distro:https://lists.yoctoproject.org/g/yocto/mutehashtag/distro
> Mute #poky:https://lists.yoctoproject.org/g/yocto/mutehashtag/poky
> Mute #apt:https://lists.yoctoproject.org/g/yocto/mutehashtag/apt
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> fede@evolware.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000d7c67f060b30389a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hi,</div><div>nodejs is very, *very*, =
heavy to build due to it&#39;s complex C++ code. I would suggest you to lim=
it the number of parallel builds supported: this may slow down other (light=
er) builds but will avoid going out of memory for heavy ones such as node.<=
/div><div><br></div><div>This can be done by putting in your local configur=
ation (build/conf/local.conf or replace &quot;build&quot; with your build d=
irectory) directives like:</div><div><br></div><div>BB_NUMBER_THREADS =3D &=
#39;4&#39;<br>PARALLEL_MAKE =3D &#39;-j 4&#39;<br></div><div><br></div><div=
>(this limits to 4, you can play on this depending on number of cores and a=
mount of RAM of course)<br></div><div><br></div><div>hth,</div><div>Federic=
o<br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">Il giorno mar 28 nov 2023 alle ore 07:00 &lt;<a h=
ref=3D"mailto:sairajlp99@gmail.com">sairajlp99@gmail.com</a>&gt; ha scritto=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p style=3D"ma=
rgin:0px"><span lang=3D"EN-US" style=3D"font-size:12pt">Hi team,</span></p>
<p style=3D"margin:0px"><span lang=3D"EN-US" style=3D"font-size:12pt">=C2=
=A0</span></p>
<span style=3D"font-size:12pt;font-family:&quot;Aptos&quot;,sans-serif;colo=
r:black">we are trying to build TI AM62x EVSE SDK referring to <a href=3D"h=
ttps://github.com/PionixPublic/ti-am62x-evse-sdk" target=3D"_blank"><span s=
tyle=3D"color:blue">https://github.com/PionixPublic/ti-am62x-evse-sdk</span=
></a>=C2=A0 we have tried building in virtual machine and now we are trying=
 to build in Linux =C2=A0host pc with 500gb of storage and 16gb ram but sti=
ll bitbake runs till 99 percentage =C2=A0=C2=A0and last module Nodejs takes=
 forever to run system experiences a freeze. Tried multiple times running t=
he bitbake but still problem remains same .</span>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61764): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61764" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61764</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102846254/511=
7409" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/102846254/5117409</a><br>
Mute #distro:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/=
distro" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/mutehashtag/distro</a><br>
Mute #poky:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/po=
ky" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/mutehashtag/poky</a><br>
Mute #apt:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/apt=
" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yoc=
to/mutehashtag/apt</a><br>
Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/bitbake" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/bitbake</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:fede@evolware.org" target=3D"_blank">fede@evolwa=
re.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000d7c67f060b30389a--

