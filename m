Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E7A2C77B7A
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 11:59:57 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web10.6572.1686139195935768976
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 04:59:56 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@snap.com header.s=google header.b=Av09o5/r;
 spf=pass (domain: snapchat.com, ip: 209.85.218.45, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-977d55ac17bso623490166b.3
        for <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 04:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1686139194; x=1688731194;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xqg73SHg5mBFBaE75NfR0ujGVNMYryJojzWlAkDl7As=;
        b=Av09o5/rduziy2OVNhL0HrWQEztFPIRvsNEHVnRiMWptI5OjCVsaUFV8xNi94zp0Ln
         ez+Jy8ICL2+Qbw6JKGWSh5k/wrtgU6n9NRvozAXPYPZm4UPW7lN7QQ7gehnHcUeMNa4Z
         rUtbTIvD3xLEmCmX96srrB/TyoZeyKAAOzj1k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686139194; x=1688731194;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xqg73SHg5mBFBaE75NfR0ujGVNMYryJojzWlAkDl7As=;
        b=hLi9k2/2Bt3rKX3BnsQhzsfMa3ovyXtjdouuMnjmQ4aBlVx0iTEMKtAp85d04L6Djl
         ISej1iIpOtTyDfILn4T6lHupnQqusnnMRt4bPlUnQTazgY7yC47LFN6THoiPOeBct1hl
         mCSulVanowCf46aIw4YtzVfPtN7eF52MW8mBRAg33sQk4xA4kTr1rfsDL4l9pGgEWbrH
         3AP862tHMYbwsGXTPu3QPfxyN5xDxRocQNt6GUkWJ7Tg5BD4nsIaxrKtHFLUQ0ALg9cp
         XdlKXw0q61o+EIFVUWwktccUHrBpgqeJyGuJz7gRszaxkcpwjSpkW2WzYXSHRDN0BptM
         fb2A==
X-Gm-Message-State: AC+VfDzTtGxR0/hm+LYpME/4vrpuwgt3sEWBK5PRco+jeGuEO0YdoJ34
	8UTONIH6I26rMK3pjCwNlHdq8fgKNd9uZT3aYxzWpg==
X-Google-Smtp-Source: ACHHUZ76/h/Ortm7yHBIRlAX3u+4bHlnx1vLIN83k2tD51GrpAXtqCt0NuojbctQT02KfAe/KVvozYDxBg79WFLcEio=
X-Received: by 2002:a17:907:6e08:b0:978:6a95:512d with SMTP id
 sd8-20020a1709076e0800b009786a95512dmr6735645ejc.11.1686139194075; Wed, 07
 Jun 2023 04:59:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAHUKmYbWvf9LoEkk31rNg+dzqFnw_zxyYuwNBr1HkUmjVUGe7w@mail.gmail.com>
 <CANNYZj8Q5AOVig83euLbs7+Jv9YR+sDajSedg4nen-93egP1ww@mail.gmail.com>
In-Reply-To: <CANNYZj8Q5AOVig83euLbs7+Jv9YR+sDajSedg4nen-93egP1ww@mail.gmail.com>
From: Etienne Cordonnier <ecordonnier@snap.com>
Date: Wed, 7 Jun 2023 13:59:43 +0200
Message-ID: <CAHUKmYY9GDCj=7_Knu8Q351sCvNd+rM7ywd2tbKTC1wyCoMB4w@mail.gmail.com>
Subject: Re: [yocto] How to scroll in the yocto devshell?
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b504c705fd88df63"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 11:59:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60201

--000000000000b504c705fd88df63
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks, using "ps -a" I found it's a tmux environment:
https://superuser.com/questions/209437/how-do-i-scroll-in-tmux

On Wed, Jun 7, 2023 at 11:37=E2=80=AFAM Alexander Kanavin <alex.kanavin@gma=
il.com>
wrote:

> devshell is not a regular terminal window, but something running under
> tmux or screen. Use ps to see what you got, then read the manpage for
> it to see how to scroll :)
>
> Alex
>
> On Wed, 7 Jun 2023 at 11:26, Etienne Cordonnier via
> lists.yoctoproject.org <ecordonnier=3Dsnap.com@lists.yoctoproject.org>
> wrote:
> >
> > Hi,
> > how to scroll up/down in the yocto devshell (started with bitbake -c
> devshell my-recipe)?
> >
> > Scrolling with the mouse is scrolling through the command history
> instead of through the terminal. Using shift + page up simply prints "~2"=
.
> Using "reset" doesn't fix it.
> >
> > Environment: Ubuntu 22.04 with default terminal.
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#60198):
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_yocto_message_60198&d=3DDwIBaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkIC=
C2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DBmJJaSJ6cAmD=
jEPUumOYv-iwSSd2HaRQr4uOY6kRWeVxUc8rzX8HjDxwoeASMQp4&s=3Dd-wmgTy0QzYCGd4Wce=
ettWyC5ylvx7t-5HYqElFIM4g&e=3D
> > Mute This Topic:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_mt_99380857_1686489&d=3DDwIBaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2=
epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DBmJJaSJ6cAmDjE=
PUumOYv-iwSSd2HaRQr4uOY6kRWeVxUc8rzX8HjDxwoeASMQp4&s=3DbF1xkFxFiz3s_f2SwR5D=
izsK5mZipHbaDJgnmbbozSg&e=3D
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_yocto_unsub&d=3DDwIBaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfd=
iw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DBmJJaSJ6cAmDjEPUumOY=
v-iwSSd2HaRQr4uOY6kRWeVxUc8rzX8HjDxwoeASMQp4&s=3DJI6NcFL7YinjnR-YtvJhnzprh9=
QH3DfNC8e0llkfU6U&e=3D
> [alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--000000000000b504c705fd88df63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, using &quot;ps -a&quot; I found it&#39;s a tmux en=
vironment:=C2=A0<a href=3D"https://superuser.com/questions/209437/how-do-i-=
scroll-in-tmux">https://superuser.com/questions/209437/how-do-i-scroll-in-t=
mux</a></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Jun 7, 2023 at 11:37=E2=80=AFAM Alexander Kanavin &lt;<a hre=
f=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">devshell is not a=
 regular terminal window, but something running under<br>
tmux or screen. Use ps to see what you got, then read the manpage for<br>
it to see how to scroll :)<br>
<br>
Alex<br>
<br>
On Wed, 7 Jun 2023 at 11:26, Etienne Cordonnier via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> &lt;ecordonnier=3D<a href=3D"mailto:snap.com=
@lists.yoctoproject.org" target=3D"_blank">snap.com@lists.yoctoproject.org<=
/a>&gt;<br>
wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt; how to scroll up/down in the yocto devshell (started with bitbake -c d=
evshell my-recipe)?<br>
&gt;<br>
&gt; Scrolling with the mouse is scrolling through the command history inst=
ead of through the terminal. Using shift + page up simply prints &quot;~2&q=
uot;. Using &quot;reset&quot; doesn&#39;t fix it.<br>
&gt;<br>
&gt; Environment: Ubuntu 22.04 with default terminal.<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#60198): <a href=3D"https://urldefense.proofpoint.c=
om/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_message_60198&amp;d=
=3DDwIBaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbN=
onVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DBmJJaSJ6cAmDjEPUumOYv-iwSSd2=
HaRQr4uOY6kRWeVxUc8rzX8HjDxwoeASMQp4&amp;s=3Dd-wmgTy0QzYCGd4WceettWyC5ylvx7=
t-5HYqElFIM4g&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldef=
ense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_mes=
sage_60198&amp;d=3DDwIBaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfd=
iw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DBmJJaSJ6cAmD=
jEPUumOYv-iwSSd2HaRQr4uOY6kRWeVxUc8rzX8HjDxwoeASMQp4&amp;s=3Dd-wmgTy0QzYCGd=
4WceettWyC5ylvx7t-5HYqElFIM4g&amp;e=3D</a> <br>
&gt; Mute This Topic: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=
=3Dhttps-3A__lists.yoctoproject.org_mt_99380857_1686489&amp;d=3DDwIBaQ&amp;=
c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj=
9TsRih1DULJTKUkSGa66m67E&amp;m=3DBmJJaSJ6cAmDjEPUumOYv-iwSSd2HaRQr4uOY6kRWe=
VxUc8rzX8HjDxwoeASMQp4&amp;s=3DbF1xkFxFiz3s_f2SwR5DizsK5mZipHbaDJgnmbbozSg&=
amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoin=
t.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_mt_99380857_1686489&amp;d=
=3DDwIBaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbN=
onVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DBmJJaSJ6cAmDjEPUumOYv-iwSSd2=
HaRQr4uOY6kRWeVxUc8rzX8HjDxwoeASMQp4&amp;s=3DbF1xkFxFiz3s_f2SwR5DizsK5mZipH=
baDJgnmbbozSg&amp;e=3D</a> <br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dh=
ttps-3A__lists.yoctoproject.org_g_yocto_unsub&amp;d=3DDwIBaQ&amp;c=3DncDTmp=
hkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DUL=
JTKUkSGa66m67E&amp;m=3DBmJJaSJ6cAmDjEPUumOYv-iwSSd2HaRQr4uOY6kRWeVxUc8rzX8H=
jDxwoeASMQp4&amp;s=3DJI6NcFL7YinjnR-YtvJhnzprh9QH3DfNC8e0llkfU6U&amp;e=3D" =
rel=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoint.com/v2/u=
rl?u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_unsub&amp;d=3DDwIBaQ&amp;c=
=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9=
TsRih1DULJTKUkSGa66m67E&amp;m=3DBmJJaSJ6cAmDjEPUumOYv-iwSSd2HaRQr4uOY6kRWeV=
xUc8rzX8HjDxwoeASMQp4&amp;s=3DJI6NcFL7YinjnR-YtvJhnzprh9QH3DfNC8e0llkfU6U&a=
mp;e=3D</a>=C2=A0 [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_bla=
nk">alex.kanavin@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--000000000000b504c705fd88df63--

