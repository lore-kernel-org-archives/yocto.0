Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F4CD1358B
	for <webhook@archiver.kernel.org>; Sun, 27 Oct 2024 22:21:06 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web11.39028.1730067661573615550
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Oct 2024 15:21:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=D9VWIzlb;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2e2b9480617so2939405a91.1
        for <yocto@lists.yoctoproject.org>; Sun, 27 Oct 2024 15:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730067660; x=1730672460; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RD0BHyDS0n9GhS8gTlDdq8SLK+WgVmKwAgSUFtmZEHs=;
        b=D9VWIzlbq/NM2o2L7heGyDBp9tJum00HTShKr5BTIAf7PZb/QJywk0lRMUoLTPw+2E
         w+TY/nPfQG9+N6W90TSx3I2QXhHsVocmUNFd2+Wxh7m2M20sQF6/6MI05rs/yWQI4Y5q
         Z4rsz2OQxiqK1Eb3H+twcy2nDfqij36qAVI5Wuji3erV3KLd1oKFu8ZyOb1k0jBhsDrF
         RnG5XEYtjj06JBv0mnGwI1Rrqv+E5tENTRwfVXYJkl1YYezzQXZWHA1+peCbfwo3+Qvm
         jbtaxnVF7FRe9bvTir57Pj7F12Ni6uchXAfEGIk3q+J6EpqAEyUyCtDpe8Tf/ZU9lf/o
         HlbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730067660; x=1730672460;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RD0BHyDS0n9GhS8gTlDdq8SLK+WgVmKwAgSUFtmZEHs=;
        b=TYRXu4LPIG9KV8qowika7LlzHWeW091Xox0uI3rPG435L4qB58RWTFHVXTdQJ6PkFS
         lOWxpDgA8bWHilsEqZ8IuLDonUAEDqhq6eJ8dLeMTiG1Dew53vwIVf2TwgWyInCZ2g0p
         q5nCnvLkIlUrCpPB73qP1LSB/K3E+Yx5iIoigpOUd2NA3V94W4kmEyy4LIWtc99eSsF4
         Lalp+avFGLrKjytXBPlzofrgmk55fAiz6cRgmbdvfqKDZDsLSDMyL82uWxlH1uwF9vvP
         i/BfKF7rOdqCd1qOkujrOVj7WCFNB4EtUIy4xhR//t/wONRNQjntkSxq2IWC3ieKn0UJ
         2THg==
X-Gm-Message-State: AOJu0YwSuseyX26/gFuEenxOu9Vwljm+jaUW/ELFWDHZxMRmX33mjxWh
	Pe8PrFDuBdyjn/aAgyKt81W8+RtiPRac/Qs3Pz78KPStI/q3vAwiVl3gdjTpPCPwiVgx2VSqhES
	xAn/U3B8kTffS4NoXCybtgwZ0bhkES70ri9o=
X-Google-Smtp-Source: AGHT+IFII1FF1hXM9+Dofx27WcvewCek+omsOmV2L9H7FwpFCJJeXkaehBVP4fG7EV8NQZYfGitlcZEdxeKULvvnHJc=
X-Received: by 2002:a17:90a:5d11:b0:2e0:b65b:6b4d with SMTP id
 98e67ed59e1d1-2e8f12e1370mr7141012a91.41.1730067660500; Sun, 27 Oct 2024
 15:21:00 -0700 (PDT)
MIME-Version: 1.0
References: <d8d28f79-8b34-4309-8778-49bae8267cf8@gmail.com> <27982.1729962606213889652@lists.yoctoproject.org>
In-Reply-To: <27982.1729962606213889652@lists.yoctoproject.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Sun, 27 Oct 2024 18:20:49 -0400
Message-ID: <CADkTA4NCoj4xTDQ4U-xyYosuJECWd0cMNWK8wUDSPJ7WGYHDMw@mail.gmail.com>
Subject: Re: [yocto] How to set real time patch correctly? #honister
To: yocto@lists.yoctoproject.org, haimbachar2008@gmail.com
Cc: Gyorgy Sarvari <skandigraun@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000005777d506257cc483"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 27 Oct 2024 22:21:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64147

--0000000000005777d506257cc483
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Alternatively:

https://git.yoctoproject.org/linux-yocto/log/?h=3Dv6.6/standard/preempt-rt/=
sdkv6.6/xlnx-soc

Also, please anyone reading this. Do not expect any magic from 6.12 to make
all your -rt dreams come true. Outside of patching the kernel, all of the
challenges with supporting -rt in embedded SDKs and devices will be exactly
the same. Dust off our tracing and latency spike debugging skills, because
you are going to need them.

Cheers,

Bruce

On Sat, Oct 26, 2024 at 1:10=E2=80=AFPM Haimbach via lists.yoctoproject.org
<haimbachar2008=3Dgmail.com@lists.yoctoproject.org> wrote:

> Do you know if there any example of setting the rt patch with Xilinx
> kernel?
> the default procedure not working as you say it=E2=80=99s for the vanilla=
 kernel.
>
> Regards,
> Haim
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64142):
> https://lists.yoctoproject.org/g/yocto/message/64142
> Mute This Topic: https://lists.yoctoproject.org/mt/109223260/1050810
> Mute #honister:https://lists.yoctoproject.org/g/yocto/mutehashtag/honiste=
r
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000005777d506257cc483
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Alt=
ernatively:</div><div class=3D"gmail_default" style=3D"font-size:small"><br=
></div><div class=3D"gmail_default" style=3D"font-size:small"><a href=3D"ht=
tps://git.yoctoproject.org/linux-yocto/log/?h=3Dv6.6/standard/preempt-rt/sd=
kv6.6/xlnx-soc">https://git.yoctoproject.org/linux-yocto/log/?h=3Dv6.6/stan=
dard/preempt-rt/sdkv6.6/xlnx-soc</a><br></div><div class=3D"gmail_default" =
style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"f=
ont-size:small">Also, please anyone reading this. Do not expect any magic f=
rom 6.12 to make all your -rt dreams come true. Outside of patching the ker=
nel, all of the challenges with supporting -rt in embedded SDKs and devices=
 will be exactly the same. Dust off our tracing and latency spike debugging=
 skills, because you are going to need them.</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=
=3D"font-size:small">Cheers,</div><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:sma=
ll">Bruce</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Oct 26, 2024 at 1:10=E2=80=AFPM Haimbach via <a hre=
f=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;haimbach=
ar2008=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@list=
s.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div>Do you know if there any example of setting the rt p=
atch with Xilinx kernel?=C2=A0<br>the default procedure not working as you =
say it=E2=80=99s for the vanilla kernel.</div>
<div>=C2=A0</div>
<div>Regards,</div>
<div>Haim</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64142): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64142" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64142</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109223260/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109223260/1050810</a><br>
Mute #honister:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashta=
g/honister" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject=
.org/g/yocto/mutehashtag/honister</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruc=
e.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">- =
Thou shalt not follow the NULL pointer, for chaos and madness await thee at=
 its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br><b=
r></div>

--0000000000005777d506257cc483--

